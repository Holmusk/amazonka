-- |
-- Module      : Amazonka.Data.EventStream
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- Support for the @application\/vnd.amazon.eventstream@ binary framing
-- protocol, which AWS uses for streaming operations such as Bedrock
-- @ConverseStream@, Kinesis @SubscribeToShard@, Transcribe streaming, and
-- S3 @SelectObjectContent@.
--
-- Each message on the wire is framed as:
--
-- > [ total length   (4 bytes, big-endian) ]
-- > [ headers length (4 bytes, big-endian) ]
-- > [ prelude CRC32  (4 bytes, over the preceding 8 bytes) ]
-- > [ headers        (headers-length bytes) ]
-- > [ payload        (total - headers - 16 bytes) ]
-- > [ message CRC32  (4 bytes, over everything before it) ]
--
-- Headers are a sequence of @[name length (1 byte)][name (UTF-8)]
-- [value type (1 byte)][value]@ tuples. Checksums are standard (IEEE)
-- CRC-32 as computed by zlib\/@binascii.crc32@ — /not/ CRC-32C.
--
-- This module is intended to be imported qualified, and is deliberately
-- /not/ re-exported by "Amazonka.Data" since names such as 'Message' and
-- 'Header' would otherwise clash with generated service types:
--
-- > import qualified Amazonka.Data.EventStream as EventStream
--
-- This implementation follows the reference decoders in @aws-sdk-go-v2@
-- (@aws\/protocol\/eventstream@) and botocore (@eventstream.py@).
module Amazonka.Data.EventStream
  ( -- * Messages
    Message (..),
    Header (..),
    HeaderValue (..),

    -- ** Header lookup
    lookupHeader,
    stringHeader,
    messageType,
    eventType,
    exceptionType,
    contentType,
    errorCode,
    errorMessage,

    -- * Errors
    EventStreamError (..),

    -- * Typed event streams
    EventStream (..),
    _EventStream,
    FromEventStream (..),
    parseJSONPayload,
    sinkEvents,

    -- * Incremental decoding
    decodeMessages,
    decodeEvents,
    messageParser,

    -- * Encoding
    encodeMessage,

    -- * Checksums
    crc32,
    crc32Update,
  )
where

import Amazonka.Core.Lens.Internal (coerced)
import Amazonka.Prelude
import Control.Monad.Trans.Resource (MonadThrow, ResourceT, throwM)
import qualified Data.Aeson as Aeson
import qualified Data.Attoparsec.ByteString as Atto
import qualified Data.Bits as Bits
import qualified Data.ByteString as BS
import qualified Data.ByteString.Builder as Builder
import qualified Data.ByteString.Lazy as LBS
import Data.Conduit (ConduitM, (.|))
import qualified Data.Conduit as Conduit
import qualified Data.Conduit.Attoparsec as Conduit.Attoparsec
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text

-- | A single decoded @vnd.amazon.eventstream@ message.
data Message = Message
  { -- | Message headers, in wire order. AWS uses the reserved
    -- @:message-type@, @:event-type@, @:exception-type@, @:content-type@,
    -- @:error-code@ and @:error-message@ headers to describe how the
    -- payload should be interpreted.
    headers :: [Header],
    -- | The raw message payload. For AWS JSON protocols this is the JSON
    -- serialisation of the event shape.
    payload :: ByteString
  }
  deriving stock (Eq, Show, Generic)

-- | A single message header: a name and a typed value.
data Header = Header
  { name :: Text,
    value :: HeaderValue
  }
  deriving stock (Eq, Show, Generic)

-- | A header value. The wire encoding tags each value with a type byte:
-- @0@ boolean true, @1@ boolean false, @2@ byte, @3@ short, @4@ integer,
-- @5@ long, @6@ byte array, @7@ string, @8@ timestamp, @9@ UUID.
data HeaderValue
  = HeaderBool Bool
  | HeaderByte Int8
  | HeaderShort Int16
  | HeaderInteger Int32
  | HeaderLong Int64
  | HeaderByteArray ByteString
  | HeaderString Text
  | -- | Milliseconds since the Unix epoch.
    HeaderTimestamp Int64
  | -- | The raw 16 UUID bytes.
    HeaderUuid ByteString
  deriving stock (Eq, Show, Generic)

-- | Look up the value of the first header with the given name.
lookupHeader :: Text -> Message -> Maybe HeaderValue
lookupHeader n Message {headers} =
  listToMaybe [value | Header {name, value} <- headers, name == n]

-- | Look up a header whose value is expected to be a string.
stringHeader :: Text -> Message -> Maybe Text
stringHeader n msg =
  lookupHeader n msg >>= \case
    HeaderString t -> Just t
    _ -> Nothing

-- | The @:message-type@ header: @event@, @exception@, or @error@.
messageType :: Message -> Maybe Text
messageType = stringHeader ":message-type"

-- | The @:event-type@ header, which selects the event union member.
eventType :: Message -> Maybe Text
eventType = stringHeader ":event-type"

-- | The @:exception-type@ header, which names the modelled exception
-- carried by an @exception@ message.
exceptionType :: Message -> Maybe Text
exceptionType = stringHeader ":exception-type"

-- | The @:content-type@ header describing the payload serialisation.
contentType :: Message -> Maybe Text
contentType = stringHeader ":content-type"

-- | The @:error-code@ header of an unmodelled @error@ message.
errorCode :: Message -> Maybe Text
errorCode = stringHeader ":error-code"

-- | The @:error-message@ header of an unmodelled @error@ message.
errorMessage :: Message -> Maybe Text
errorMessage = stringHeader ":error-message"

-- | Errors that can occur while decoding an event stream. Thrown from the
-- decoding conduits ('decodeMessages', 'decodeEvents') via 'throwM', which
-- means consuming a response stream can throw in 'IO'.
data EventStreamError
  = -- | The byte stream is structurally invalid: impossible lengths,
    -- malformed headers, an unknown header value type, truncated input,
    -- or trailing bytes that do not form a complete message.
    MessageFormatError Text
  | -- | The prelude CRC32 did not match: expected (from the wire), actual
    -- (computed).
    PreludeChecksumMismatch Word32 Word32
  | -- | The trailing message CRC32 did not match: expected (from the
    -- wire), actual (computed).
    MessageChecksumMismatch Word32 Word32
  | -- | The service sent a message with @:message-type: exception@,
    -- carrying the @:exception-type@ header and the raw (usually JSON)
    -- payload of the modelled exception.
    EventStreamException (Maybe Text) ByteString
  | -- | The service sent a message with @:message-type: error@, carrying
    -- the @:error-code@ and @:error-message@ headers.
    EventStreamRemoteError (Maybe Text) (Maybe Text)
  | -- | An @event@ message was framed correctly but its payload could not
    -- be decoded into the expected type: the @:event-type@ header and the
    -- parse error.
    EventParseError (Maybe Text) String
  deriving stock (Eq, Show, Generic)

instance Exception EventStreamError

-- | A typed, streaming sequence of events decoded from a
-- @vnd.amazon.eventstream@ response body.
--
-- Consume it with 'sinkEvents' (or any conduit machinery) /within/ the
-- 'Control.Monad.Trans.Resource.ResourceT' scope of the request, exactly
-- like 'Amazonka.Data.Body.ResponseBody'. Consuming the stream throws
-- 'EventStreamError' on checksum mismatches, malformed frames, or
-- in-stream @exception@\/@error@ messages.
--
-- @newtype@ for show\/orphan instance purposes.
newtype EventStream a = EventStream
  {body :: ConduitM () a (ResourceT IO) ()}
  deriving stock (Generic)

instance Show (EventStream a) where
  show = const "EventStream { ConduitM () a (ResourceT IO) () }"

{-# INLINE _EventStream #-}
_EventStream :: Iso' (EventStream a) (ConduitM () a (ResourceT IO) ())
_EventStream = coerced

-- | Connect a sink to a stream of decoded events.
sinkEvents :: MonadIO m => EventStream a -> ConduitM a Void (ResourceT IO) b -> m b
sinkEvents (EventStream body) sink =
  liftIO $ Conduit.runConduitRes $ body .| sink

-- | Types that can be decoded from a single event stream @event@ message —
-- typically a service's \"event stream union\" shape, dispatching on the
-- @:event-type@ header ('eventType') and decoding the payload (usually via
-- 'parseJSONPayload').
--
-- Messages with @:message-type@ of @exception@ or @error@ are handled by
-- 'decodeEvents' and never reach 'parseEvent'.
class FromEventStream a where
  parseEvent :: Message -> Either String a

-- | Decode a JSON event payload.
parseJSONPayload :: Aeson.FromJSON a => Message -> Either String a
parseJSONPayload = Aeson.eitherDecodeStrict' . payload

-- | Incrementally decode a byte stream into event stream messages,
-- validating both checksums. Frames may be split arbitrarily across the
-- incoming chunks. Throws 'EventStreamError' on invalid input, including
-- when the byte stream ends part-way through a message.
decodeMessages :: MonadThrow m => ConduitM ByteString Message m ()
decodeMessages =
  dropEmpty
    .| Conduit.Attoparsec.conduitParserEither messageParser
    .| Conduit.awaitForever
      ( \case
          Left err ->
            throwM (MessageFormatError (Text.pack (show err)))
          Right (_, Left err) -> throwM err
          Right (_, Right msg) -> Conduit.yield msg
      )
  where
    -- attoparsec treats an empty chunk as end-of-input, so ensure the
    -- parser never sees one mid-stream.
    dropEmpty =
      Conduit.awaitForever (\x -> unless (BS.null x) (Conduit.yield x))

-- | Incrementally decode a byte stream into typed events.
--
-- Messages are dispatched on their @:message-type@ header:
--
-- * @event@ — decoded with 'parseEvent' and yielded downstream; a payload
--   that fails to decode throws 'EventParseError'.
-- * @exception@ — throws 'EventStreamException'.
-- * @error@ — throws 'EventStreamRemoteError'.
decodeEvents ::
  (MonadThrow m, FromEventStream a) =>
  ConduitM ByteString a m ()
decodeEvents = decodeMessages .| Conduit.awaitForever step
  where
    step msg =
      case messageType msg of
        Just "event" ->
          case parseEvent msg of
            Left err -> throwM (EventParseError (eventType msg) err)
            Right x -> Conduit.yield x
        Just "exception" ->
          throwM (EventStreamException (exceptionType msg) (payload msg))
        Just "error" ->
          throwM (EventStreamRemoteError (errorCode msg) (errorMessage msg))
        Just other ->
          throwM . MessageFormatError $
            "unknown :message-type header: " <> other
        Nothing ->
          throwM (MessageFormatError "missing :message-type header")

-- | The maximum size of the headers block, per the AWS reference
-- implementations.
maxHeadersLength :: Word32
maxHeadersLength = 128 * 1024

-- | The maximum size of a message payload, per the AWS reference
-- implementations.
maxPayloadLength :: Word32
maxPayloadLength = 16 * 1024 * 1024

-- | An incremental attoparsec parser for a single message.
--
-- Structural problems and checksum mismatches are reported as 'Left' so
-- they can be distinguished from incomplete input, which attoparsec
-- handles by demanding more of the byte stream.
messageParser :: Atto.Parser (Either EventStreamError Message)
messageParser = do
  preludeBytes <- Atto.take 8
  preludeCrcBytes <- Atto.take 4

  let totalLength = word32be preludeBytes 0
      headersLength = word32be preludeBytes 4
      expectedPreludeCrc = word32be preludeCrcBytes 0
      actualPreludeCrc = crc32 preludeBytes

      checkPrelude
        | expectedPreludeCrc /= actualPreludeCrc =
            Just (PreludeChecksumMismatch expectedPreludeCrc actualPreludeCrc)
        | totalLength < 16 =
            Just . MessageFormatError $
              "total length too small: " <> Text.pack (show totalLength)
        | headersLength > totalLength - 16 =
            Just . MessageFormatError $
              "headers length "
                <> Text.pack (show headersLength)
                <> " exceeds total length "
                <> Text.pack (show totalLength)
        | headersLength > maxHeadersLength =
            Just . MessageFormatError $
              "headers length too large: " <> Text.pack (show headersLength)
        | totalLength - 16 - headersLength > maxPayloadLength =
            Just . MessageFormatError $
              "payload length too large: "
                <> Text.pack (show (totalLength - 16 - headersLength))
        | otherwise = Nothing

  case checkPrelude of
    Just err -> pure (Left err)
    Nothing -> do
      body <- Atto.take (fromIntegral totalLength - 16)
      messageCrcBytes <- Atto.take 4

      let expectedMessageCrc = word32be messageCrcBytes 0
          actualMessageCrc =
            crc32Update (crc32Update actualPreludeCrc preludeCrcBytes) body
          (headerBytes, payload) =
            BS.splitAt (fromIntegral headersLength) body

      if expectedMessageCrc /= actualMessageCrc
        then
          pure
            (Left (MessageChecksumMismatch expectedMessageCrc actualMessageCrc))
        else
          pure $
            parseHeaders headerBytes <&> \headers ->
              Message {headers, payload}
  where
    word32be bs off =
      Bits.shiftL (fromIntegral (BS.index bs off)) 24
        Bits..|. Bits.shiftL (fromIntegral (BS.index bs (off + 1))) 16
        Bits..|. Bits.shiftL (fromIntegral (BS.index bs (off + 2))) 8
        Bits..|. fromIntegral (BS.index bs (off + 3)) ::
        Word32

-- | Parse the headers block of a message.
parseHeaders :: ByteString -> Either EventStreamError [Header]
parseHeaders = go id
  where
    go acc bs
      | BS.null bs = Right (acc [])
      | otherwise = do
          (lenByte, rest) <- takeBytes 1 bs
          (rawName, rest') <- takeBytes (fromIntegral (BS.head lenByte)) rest
          name <- utf8 rawName
          (tag, rest'') <- maybe (Left truncated) Right (BS.uncons rest')
          (value, rest''') <- parseValue tag rest''
          go (acc . (Header {name, value} :)) rest'''

    parseValue tag bs = case tag of
      0 -> Right (HeaderBool True, bs)
      1 -> Right (HeaderBool False, bs)
      2 -> fixed 1 (HeaderByte . fromIntegral . BS.head) bs
      3 -> fixed 2 (HeaderShort . fromIntegral . beWord) bs
      4 -> fixed 4 (HeaderInteger . fromIntegral . beWord) bs
      5 -> fixed 8 (HeaderLong . fromIntegral . beWord) bs
      6 -> variable (Right . HeaderByteArray) bs
      7 -> variable (fmap HeaderString . utf8) bs
      8 -> fixed 8 (HeaderTimestamp . fromIntegral . beWord) bs
      9 -> fixed 16 HeaderUuid bs
      _ ->
        Left . MessageFormatError $
          "unknown header value type: " <> Text.pack (show tag)

    fixed n f bs = do
      (raw, rest) <- takeBytes n bs
      Right (f raw, rest)

    variable f bs = do
      (lenBytes, rest) <- takeBytes 2 bs
      (raw, rest') <- takeBytes (fromIntegral (beWord lenBytes)) rest
      value <- f raw
      Right (value, rest')

    -- A big-endian unsigned interpretation of all the given bytes; callers
    -- narrow with fromIntegral to reinterpret as signed values.
    beWord :: ByteString -> Word64
    beWord = BS.foldl' (\acc w -> Bits.shiftL acc 8 Bits..|. fromIntegral w) 0

    takeBytes n bs
      | BS.length bs >= n = Right (BS.splitAt n bs)
      | otherwise = Left truncated

    utf8 =
      first
        (MessageFormatError . ("header name/value is not UTF-8: " <>) . Text.pack . show)
        . Text.decodeUtf8'

    truncated = MessageFormatError "truncated header block"

-- | Encode a message to its wire representation, computing both
-- checksums.
--
-- The caller is responsible for respecting the protocol limits: header
-- names of at most 255 bytes, and string\/byte-array header values of at
-- most 32 KiB.
encodeMessage :: Message -> ByteString
encodeMessage Message {headers, payload} = beforeCrc <> word32be messageCrc
  where
    headerBytes =
      LBS.toStrict (Builder.toLazyByteString (foldMap header headers))

    totalLength = BS.length headerBytes + BS.length payload + 16

    prelude =
      word32be (fromIntegral totalLength)
        <> word32be (fromIntegral (BS.length headerBytes))

    beforeCrc = prelude <> word32be (crc32 prelude) <> headerBytes <> payload

    messageCrc = crc32 beforeCrc

    header Header {name, value} =
      let rawName = Text.encodeUtf8 name
       in Builder.word8 (fromIntegral (BS.length rawName))
            <> Builder.byteString rawName
            <> headerValue value

    headerValue = \case
      HeaderBool True -> Builder.word8 0
      HeaderBool False -> Builder.word8 1
      HeaderByte x -> Builder.word8 2 <> Builder.int8 x
      HeaderShort x -> Builder.word8 3 <> Builder.int16BE x
      HeaderInteger x -> Builder.word8 4 <> Builder.int32BE x
      HeaderLong x -> Builder.word8 5 <> Builder.int64BE x
      HeaderByteArray x -> Builder.word8 6 <> prefixed x
      HeaderString x -> Builder.word8 7 <> prefixed (Text.encodeUtf8 x)
      HeaderTimestamp x -> Builder.word8 8 <> Builder.int64BE x
      HeaderUuid x -> Builder.word8 9 <> Builder.byteString x

    prefixed x =
      Builder.word16BE (fromIntegral (BS.length x)) <> Builder.byteString x

    word32be =
      LBS.toStrict . Builder.toLazyByteString . Builder.word32BE

-- | Standard (IEEE) CRC-32 of a 'ByteString', as computed by zlib and
-- @binascii.crc32@. /Not/ CRC-32C (Castagnoli).
crc32 :: ByteString -> Word32
crc32 = crc32Update 0

-- | Incrementally extend a CRC-32 checksum, such that
-- @'crc32Update' ('crc32' a) b == 'crc32' (a <> b)@.
--
-- This is a straightforward bitwise implementation. Event stream messages
-- are small control-plane frames, so simplicity is preferred over a
-- table-driven implementation here.
crc32Update :: Word32 -> ByteString -> Word32
crc32Update crc =
  Bits.complement . BS.foldl' step (Bits.complement crc)
  where
    step :: Word32 -> Word8 -> Word32
    step acc byte = go (8 :: Int) (acc `Bits.xor` fromIntegral byte)

    go 0 x = x
    go n x =
      go (n - 1) $
        if Bits.testBit x 0
          then Bits.shiftR x 1 `Bits.xor` 0xEDB88320
          else Bits.shiftR x 1
