-- |
-- Module      : Test.Amazonka.Data.EventStream
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Test.Amazonka.Data.EventStream (tests) where

import qualified Amazonka.Bytes as Bytes
import Amazonka.Data.EventStream
import Amazonka.Prelude
import Control.Exception (try)
import qualified Data.Aeson as Aeson
import qualified Data.Aeson.Types as Aeson.Types
import qualified Data.ByteString as BS
import Data.Conduit ((.|))
import qualified Data.Conduit as Conduit
import qualified Data.Conduit.List as Conduit.List
import Test.Tasty
import Test.Tasty.HUnit
import Test.Tasty.QuickCheck

tests :: TestTree
tests =
  testGroup
    "eventstream"
    [ testGroup
        "crc32"
        [ testCase "empty" $ crc32 "" @?= 0,
          testCase "check vector" $ crc32 "123456789" @?= 0xCBF43926,
          testProperty "incremental" $ \(xs :: [Word8]) (ys :: [Word8]) ->
            let a = BS.pack xs
                b = BS.pack ys
             in crc32Update (crc32 a) b === crc32 (a <> b)
        ],
      testGroup
        "golden"
        [ testCase "encode empty message" $
            encodeMessage emptyMessage @?= unhex emptyWire,
          testCase "decode empty message" $
            decodeAll [unhex emptyWire] >>= (@?= [emptyMessage]),
          testCase "encode event message" $
            encodeMessage eventMessage @?= unhex eventWire,
          testCase "decode event message" $
            decodeAll [unhex eventWire] >>= (@?= [eventMessage]),
          testCase "encode all header types" $
            encodeMessage allTypesMessage @?= unhex allTypesWire,
          testCase "decode all header types" $
            decodeAll [unhex allTypesWire] >>= (@?= [allTypesMessage])
        ],
      testGroup
        "chunking"
        [ testCase "one byte at a time" $ do
            let bytes = BS.concat (map encodeMessage goldenMessages)
            decoded <- decodeAll (map BS.singleton (BS.unpack bytes))
            decoded @?= goldenMessages,
          testCase "empty chunks interleaved" $ do
            let chunks =
                  concatMap
                    (\b -> ["", BS.singleton b, ""])
                    (BS.unpack (BS.concat (map encodeMessage goldenMessages)))
            decoded <- decodeAll chunks
            decoded @?= goldenMessages,
          testProperty "arbitrary chunk boundaries" $
            forAll (listOf genMessage) $ \msgs ->
              forAll (genChunks (BS.concat (map encodeMessage msgs))) $ \chunks ->
                ioProperty $ do
                  decoded <- decodeAll chunks
                  pure (decoded === msgs)
        ],
      testGroup
        "failures"
        [ testCase "prelude checksum mismatch" $ do
            res <- decodeAllEither [corrupt 4 (unhex eventWire)]
            case res of
              Left (PreludeChecksumMismatch {}) -> pure ()
              other -> assertFailure ("expected PreludeChecksumMismatch: " ++ show other),
          testCase "message checksum mismatch" $ do
            let bytes = unhex eventWire
            res <- decodeAllEither [corrupt (BS.length bytes - 6) bytes]
            case res of
              Left (MessageChecksumMismatch {}) -> pure ()
              other -> assertFailure ("expected MessageChecksumMismatch: " ++ show other),
          testCase "truncated stream" $ do
            res <- decodeAllEither [BS.take 20 (unhex eventWire)]
            case res of
              Left (MessageFormatError {}) -> pure ()
              other -> assertFailure ("expected MessageFormatError: " ++ show other),
          testCase "trailing garbage" $ do
            res <- decodeAllEither [unhex eventWire <> "\x00\x00"]
            case res of
              Left (MessageFormatError {}) -> pure ()
              other -> assertFailure ("expected MessageFormatError: " ++ show other)
        ],
      testGroup
        "events"
        [ testCase "dispatches on event type" $ do
            let msgs =
                  [ jsonEvent "textEvent" "{\"text\":\"hello\"}",
                    jsonEvent "stopEvent" "{}"
                  ]
            events <- eventsOf (map encodeMessage msgs)
            events @?= Right [TextEvent "hello", StopEvent],
          testCase "surfaces exception messages" $ do
            let msg =
                  Message
                    { headers =
                        [ Header ":message-type" (HeaderString "exception"),
                          Header ":exception-type" (HeaderString "throttlingException")
                        ],
                      payload = "{\"message\":\"slow down\"}"
                    }
            events <- eventsOf [encodeMessage msg]
            events
              @?= Left
                ( EventStreamException
                    (Just "throttlingException")
                    "{\"message\":\"slow down\"}"
                ),
          testCase "surfaces error messages" $ do
            let msg =
                  Message
                    { headers =
                        [ Header ":message-type" (HeaderString "error"),
                          Header ":error-code" (HeaderString "InternalError"),
                          Header ":error-message" (HeaderString "oops")
                        ],
                      payload = ""
                    }
            events <- eventsOf [encodeMessage msg]
            events @?= Left (EventStreamRemoteError (Just "InternalError") (Just "oops")),
          testCase "rejects undecodable event payloads" $ do
            events <- eventsOf [encodeMessage (jsonEvent "textEvent" "{\"nope\":1}")]
            case events of
              Left (EventParseError (Just "textEvent") _) -> pure ()
              other -> assertFailure ("expected EventParseError: " ++ show other)
        ]
    ]

-- | A test event union, decoded like a service event stream shape.
data TestEvent
  = TextEvent Text
  | StopEvent
  deriving stock (Eq, Show)

instance FromEventStream TestEvent where
  parseEvent msg =
    case eventType msg of
      Just "textEvent" ->
        TextEvent
          <$> ( parseJSONPayload msg
                  >>= Aeson.Types.parseEither
                    (Aeson.withObject "textEvent" (Aeson..: "text"))
              )
      Just "stopEvent" -> Right StopEvent
      other -> Left ("unknown event type: " ++ show other)

jsonEvent :: Text -> ByteString -> Message
jsonEvent etype body =
  Message
    { headers =
        [ Header ":message-type" (HeaderString "event"),
          Header ":event-type" (HeaderString etype),
          Header ":content-type" (HeaderString "application/json")
        ],
      payload = body
    }

decodeAll :: [ByteString] -> IO [Message]
decodeAll chunks =
  Conduit.runConduit $
    Conduit.List.sourceList chunks .| decodeMessages .| Conduit.List.consume

decodeAllEither :: [ByteString] -> IO (Either EventStreamError [Message])
decodeAllEither = try . decodeAll

eventsOf :: [ByteString] -> IO (Either EventStreamError [TestEvent])
eventsOf chunks =
  try . Conduit.runConduit $
    Conduit.List.sourceList chunks .| decodeEvents .| Conduit.List.consume

-- | Flip a bit of the byte at the given offset.
corrupt :: Int -> ByteString -> ByteString
corrupt i bs =
  case BS.splitAt i bs of
    (before, after) ->
      before <> BS.singleton (BS.head after + 1) <> BS.drop 1 after

unhex :: ByteString -> ByteString
unhex = either error id . Bytes.decodeBase16

genMessage :: Gen Message
genMessage =
  Message
    <$> listOf genHeader
    <*> (BS.pack <$> resize 64 (listOf arbitrary))

genHeader :: Gen Header
genHeader =
  Header
    <$> elements [":message-type", ":event-type", "custom-header", "x"]
    <*> genHeaderValue

genHeaderValue :: Gen HeaderValue
genHeaderValue =
  oneof
    [ HeaderBool <$> arbitrary,
      HeaderByte <$> arbitrary,
      HeaderShort <$> arbitrary,
      HeaderInteger <$> arbitrary,
      HeaderLong <$> arbitrary,
      HeaderByteArray . BS.pack <$> resize 16 (listOf arbitrary),
      HeaderString . fromString <$> resize 16 (listOf (elements ['a' .. 'z'])),
      HeaderTimestamp <$> arbitrary,
      HeaderUuid . BS.pack <$> vectorOf 16 arbitrary
    ]

-- | Split a 'ByteString' at arbitrary boundaries, including empty chunks.
genChunks :: ByteString -> Gen [ByteString]
genChunks bs
  | BS.null bs = pure []
  | otherwise = do
      n <- chooseInt (1, BS.length bs)
      rest <- genChunks (BS.drop n bs)
      pure (BS.take n bs : rest)

-- Golden wire formats generated with Python's @struct@ + @binascii.crc32@
-- (i.e. zlib), independently of the implementation under test. The empty
-- message matches the well-known AWS reference vector.

emptyMessage :: Message
emptyMessage = Message {headers = [], payload = ""}

emptyWire :: ByteString
emptyWire = "000000100000000005c248eb7d98c8ff"

eventMessage :: Message
eventMessage = jsonEvent "chunk" "{\"foo\":\"bar\"}"

eventWire :: ByteString
eventWire =
  "000000680000004b2d6e7bfd0d3a6d6573736167652d747970650700056576656e740b3a65"
    <> "76656e742d747970650700056368756e6b0d3a636f6e74656e742d747970650700106170"
    <> "706c69636174696f6e2f6a736f6e7b22666f6f223a22626172227dcf833236"

allTypesMessage :: Message
allTypesMessage =
  Message
    { headers =
        [ Header "bool-true" (HeaderBool True),
          Header "bool-false" (HeaderBool False),
          Header "byte" (HeaderByte (-1)),
          Header "short" (HeaderShort (-300)),
          Header "integer" (HeaderInteger (-70000)),
          Header "long" (HeaderLong (-5000000000)),
          Header "bytes" (HeaderByteArray "\x01\x02\x03"),
          Header "string" (HeaderString "héllo"),
          Header "timestamp" (HeaderTimestamp 1700000000123),
          Header "uuid" (HeaderUuid (BS.pack [0 .. 15]))
        ],
      payload = "PAYLOAD"
    }

allTypesWire :: ByteString
allTypesWire =
  "0000009e0000008778c8509b09626f6f6c2d74727565000a626f6f6c2d66616c7365010462"
    <> "79746502ff0573686f727403fed407696e746567657204fffeee90046c6f6e6705ffffff"
    <> "fed5fa0e00056279746573060003010203"
    <> "06737472696e6707000668c3a96c6c6f"
    <> "0974696d657374616d70080000018bcfe5687b"
    <> "047575696409000102030405060708090a0b0c0d0e0f"
    <> "5041594c4f4144f579f708"

goldenMessages :: [Message]
goldenMessages = [emptyMessage, eventMessage, allTypesMessage]
