{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.Amazonka.Gen.BedrockRuntime
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.Amazonka.Gen.BedrockRuntime where

import Amazonka.BedrockRuntime
import qualified Data.Proxy as Proxy
import Test.Amazonka.BedrockRuntime.Internal
import Test.Amazonka.Fixture
import Test.Amazonka.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestApplyGuardrail $
--             newApplyGuardrail
--
--         , requestConverse $
--             newConverse
--
--         , requestCountTokens $
--             newCountTokens
--
--         , requestGetAsyncInvoke $
--             newGetAsyncInvoke
--
--         , requestInvokeGuardrailChecks $
--             newInvokeGuardrailChecks
--
--         , requestInvokeModel $
--             newInvokeModel
--
--         , requestListAsyncInvokes $
--             newListAsyncInvokes
--
--         , requestStartAsyncInvoke $
--             newStartAsyncInvoke
--
--           ]

--     , testGroup "response"
--         [ responseApplyGuardrail $
--             newApplyGuardrailResponse
--
--         , responseConverse $
--             newConverseResponse
--
--         , responseCountTokens $
--             newCountTokensResponse
--
--         , responseGetAsyncInvoke $
--             newGetAsyncInvokeResponse
--
--         , responseInvokeGuardrailChecks $
--             newInvokeGuardrailChecksResponse
--
--         , responseInvokeModel $
--             newInvokeModelResponse
--
--         , responseListAsyncInvokes $
--             newListAsyncInvokesResponse
--
--         , responseStartAsyncInvoke $
--             newStartAsyncInvokeResponse
--
--           ]
--     ]

-- Requests

requestApplyGuardrail :: ApplyGuardrail -> TestTree
requestApplyGuardrail =
  req
    "ApplyGuardrail"
    "fixture/ApplyGuardrail.yaml"

requestConverse :: Converse -> TestTree
requestConverse =
  req
    "Converse"
    "fixture/Converse.yaml"

requestCountTokens :: CountTokens -> TestTree
requestCountTokens =
  req
    "CountTokens"
    "fixture/CountTokens.yaml"

requestGetAsyncInvoke :: GetAsyncInvoke -> TestTree
requestGetAsyncInvoke =
  req
    "GetAsyncInvoke"
    "fixture/GetAsyncInvoke.yaml"

requestInvokeGuardrailChecks :: InvokeGuardrailChecks -> TestTree
requestInvokeGuardrailChecks =
  req
    "InvokeGuardrailChecks"
    "fixture/InvokeGuardrailChecks.yaml"

requestInvokeModel :: InvokeModel -> TestTree
requestInvokeModel =
  req
    "InvokeModel"
    "fixture/InvokeModel.yaml"

requestListAsyncInvokes :: ListAsyncInvokes -> TestTree
requestListAsyncInvokes =
  req
    "ListAsyncInvokes"
    "fixture/ListAsyncInvokes.yaml"

requestStartAsyncInvoke :: StartAsyncInvoke -> TestTree
requestStartAsyncInvoke =
  req
    "StartAsyncInvoke"
    "fixture/StartAsyncInvoke.yaml"

-- Responses

responseApplyGuardrail :: ApplyGuardrailResponse -> TestTree
responseApplyGuardrail =
  res
    "ApplyGuardrailResponse"
    "fixture/ApplyGuardrailResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ApplyGuardrail)

responseConverse :: ConverseResponse -> TestTree
responseConverse =
  res
    "ConverseResponse"
    "fixture/ConverseResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy Converse)

responseCountTokens :: CountTokensResponse -> TestTree
responseCountTokens =
  res
    "CountTokensResponse"
    "fixture/CountTokensResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CountTokens)

responseGetAsyncInvoke :: GetAsyncInvokeResponse -> TestTree
responseGetAsyncInvoke =
  res
    "GetAsyncInvokeResponse"
    "fixture/GetAsyncInvokeResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy GetAsyncInvoke)

responseInvokeGuardrailChecks :: InvokeGuardrailChecksResponse -> TestTree
responseInvokeGuardrailChecks =
  res
    "InvokeGuardrailChecksResponse"
    "fixture/InvokeGuardrailChecksResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy InvokeGuardrailChecks)

responseInvokeModel :: InvokeModelResponse -> TestTree
responseInvokeModel =
  res
    "InvokeModelResponse"
    "fixture/InvokeModelResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy InvokeModel)

responseListAsyncInvokes :: ListAsyncInvokesResponse -> TestTree
responseListAsyncInvokes =
  res
    "ListAsyncInvokesResponse"
    "fixture/ListAsyncInvokesResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListAsyncInvokes)

responseStartAsyncInvoke :: StartAsyncInvokeResponse -> TestTree
responseStartAsyncInvoke =
  res
    "StartAsyncInvokeResponse"
    "fixture/StartAsyncInvokeResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy StartAsyncInvoke)
