{-# LANGUAGE OverloadedStrings #-}

-- |
-- Module      : Test.Amazonka.BedrockRuntime
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Hand tests for the hand-written @vnd.amazon.eventstream@ operations
-- (@ConverseStream@, @InvokeModelWithResponseStream@). See
-- @HANDWRITTEN.md@ in this package.
module Test.Amazonka.BedrockRuntime
  ( tests,
    fixtures,
  )
where

import Amazonka.BedrockRuntime
import Amazonka.Data.Base64 (Base64 (..))
import qualified Amazonka.Data.EventStream as EventStream
import Data.ByteString (ByteString)
import Data.Text (Text)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit

tests :: [TestTree]
tests =
  [ testGroup
      "ConverseStreamOutput"
      [ testCase "messageStart" $
          parse (jsonEvent "messageStart" "{\"role\":\"assistant\"}")
            @?= Right
              ( ConverseStreamOutput_MessageStart
                  (newMessageStartEvent ConversationRole_Assistant)
              ),
        testCase "contentBlockStart (toolUse)" $
          parse
            ( jsonEvent
                "contentBlockStart"
                "{\"contentBlockIndex\":1,\"start\":{\"toolUse\":{\"toolUseId\":\"t-1\",\"name\":\"run_sql\"}}}"
            )
            @?= Right
              ( ConverseStreamOutput_ContentBlockStart
                  ( newContentBlockStartEvent
                      ( ContentBlockStart'
                          (Just (newToolUseBlockStart "t-1" "run_sql"))
                      )
                      1
                  )
              ),
        testCase "contentBlockDelta (text)" $
          parse
            ( jsonEvent
                "contentBlockDelta"
                "{\"contentBlockIndex\":0,\"delta\":{\"text\":\"Hello\"}}"
            )
            @?= Right
              ( ConverseStreamOutput_ContentBlockDelta
                  ( newContentBlockDeltaEvent
                      (ContentBlockDelta' Nothing Nothing (Just "Hello") Nothing)
                      0
                  )
              ),
        testCase "contentBlockDelta (reasoning text)" $
          case parse
            ( jsonEvent
                "contentBlockDelta"
                "{\"contentBlockIndex\":0,\"delta\":{\"reasoningContent\":{\"text\":\"thinking\"}}}"
            ) of
            Right (ConverseStreamOutput_ContentBlockDelta _) -> pure ()
            other -> assertFailure ("expected ContentBlockDelta: " ++ show other),
        testCase "contentBlockDelta (toolUse input)" $
          parse
            ( jsonEvent
                "contentBlockDelta"
                "{\"contentBlockIndex\":1,\"delta\":{\"toolUse\":{\"input\":\"{\\\"sql\\\":\"}}}"
            )
            @?= Right
              ( ConverseStreamOutput_ContentBlockDelta
                  ( newContentBlockDeltaEvent
                      ( ContentBlockDelta'
                          Nothing
                          Nothing
                          Nothing
                          (Just (newToolUseBlockDelta "{\"sql\":"))
                      )
                      1
                  )
              ),
        testCase "contentBlockStop" $
          parse (jsonEvent "contentBlockStop" "{\"contentBlockIndex\":2}")
            @?= Right
              ( ConverseStreamOutput_ContentBlockStop
                  (newContentBlockStopEvent 2)
              ),
        testCase "messageStop" $
          parse (jsonEvent "messageStop" "{\"stopReason\":\"end_turn\"}")
            @?= Right
              ( ConverseStreamOutput_MessageStop
                  (newMessageStopEvent StopReason_End_turn)
              ),
        testCase "metadata" $
          parse
            ( jsonEvent
                "metadata"
                "{\"usage\":{\"inputTokens\":10,\"outputTokens\":20,\"totalTokens\":30},\"metrics\":{\"latencyMs\":321}}"
            )
            @?= Right
              ( ConverseStreamOutput_Metadata
                  ( newConverseStreamMetadataEvent
                      (newTokenUsage 10 20 30)
                      (newConverseStreamMetrics 321)
                  )
              ),
        testCase "unknown event type is rejected" $
          case parse (jsonEvent "someFutureEvent" "{}") :: Either String ConverseStreamOutput of
            Left _ -> pure ()
            Right x -> assertFailure ("expected failure: " ++ show x)
      ],
    testGroup
      "ResponseStream"
      [ testCase "chunk" $
          parse (jsonEvent "chunk" "{\"bytes\":\"aGVsbG8=\"}")
            @?= Right
              (ResponseStream_Chunk (PayloadPart' (Just (Base64 "hello"))))
      ]
  ]

parse ::
  EventStream.FromEventStream a =>
  EventStream.Message ->
  Either String a
parse = EventStream.parseEvent

jsonEvent :: Text -> ByteString -> EventStream.Message
jsonEvent etype body =
  EventStream.Message
    { EventStream.headers =
        [ EventStream.Header
            ":message-type"
            (EventStream.HeaderString "event"),
          EventStream.Header
            ":event-type"
            (EventStream.HeaderString etype),
          EventStream.Header
            ":content-type"
            (EventStream.HeaderString "application/json")
        ],
      EventStream.payload = body
    }

fixtures :: [TestTree]
fixtures = []
