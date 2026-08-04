{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.BedrockRuntime.InvokeModelWithResponseStream
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Invoke the specified Amazon Bedrock model to run inference using the
-- prompt and inference parameters provided in the request body. The
-- response is returned in a stream.
--
-- To see if a model supports streaming, call
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html GetFoundationModel>
-- and check the @responseStreamingSupported@ field in the response.
--
-- This operation requires permissions to perform the
-- @bedrock:InvokeModelWithResponseStream@ action.
--
-- The response is delivered as an @application\/vnd.amazon.eventstream@
-- stream of 'ResponseStream' events; consume
-- 'invokeModelWithResponseStreamResponse_body' with
-- 'Amazonka.Data.EventStream.sinkEvents' (or any conduit machinery)
-- within the 'Control.Monad.Trans.Resource.ResourceT' scope of the
-- request.
--
-- /Hand-written module:/ the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so this operation is maintained by
-- hand on top of "Amazonka.Data.EventStream". See @HANDWRITTEN.md@ in
-- this package.
module Amazonka.BedrockRuntime.InvokeModelWithResponseStream
  ( -- * Creating a Request
    InvokeModelWithResponseStream (..),
    newInvokeModelWithResponseStream,

    -- * Request Lenses
    invokeModelWithResponseStream_accept,
    invokeModelWithResponseStream_body,
    invokeModelWithResponseStream_contentType,
    invokeModelWithResponseStream_guardrailIdentifier,
    invokeModelWithResponseStream_guardrailVersion,
    invokeModelWithResponseStream_performanceConfigLatency,
    invokeModelWithResponseStream_requestMetadata,
    invokeModelWithResponseStream_serviceTier,
    invokeModelWithResponseStream_trace,
    invokeModelWithResponseStream_modelId,

    -- * Destructuring the Response
    InvokeModelWithResponseStreamResponse (..),
    newInvokeModelWithResponseStreamResponse,

    -- * Response Lenses
    invokeModelWithResponseStreamResponse_performanceConfigLatency,
    invokeModelWithResponseStreamResponse_serviceTier,
    invokeModelWithResponseStreamResponse_httpStatus,
    invokeModelWithResponseStreamResponse_body,
    invokeModelWithResponseStreamResponse_contentType,
  )
where

import Amazonka.BedrockRuntime.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Data.EventStream as EventStream
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newInvokeModelWithResponseStream' smart constructor.
data InvokeModelWithResponseStream = InvokeModelWithResponseStream'
  { -- | The desired MIME type of the inference body in the response. The default
    -- value is @application\/json@.
    accept :: Prelude.Maybe Prelude.Text,
    -- | The prompt and inference parameters in the format specified in the
    -- @contentType@ in the header. You must provide the body in JSON format.
    -- To see the format and content of the request and response bodies for
    -- different models, refer to
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters>.
    body :: Prelude.Maybe Prelude.ByteString,
    -- | The MIME type of the input data in the request. You must specify
    -- @application\/json@.
    contentType :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the guardrail that you want to use. If you
    -- don\'t provide a value, no guardrail is applied to the invocation.
    guardrailIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The version number for the guardrail. The value can also be @DRAFT@.
    guardrailVersion :: Prelude.Maybe Prelude.Text,
    -- | Model performance settings for the request.
    performanceConfigLatency :: Prelude.Maybe PerformanceConfigLatency,
    -- | Key-value pairs that you can use to filter invocation logs.
    requestMetadata :: Prelude.Maybe (Data.Sensitive Prelude.Text),
    -- | Specifies the processing tier type used for serving the request.
    serviceTier :: Prelude.Maybe ServiceTierType,
    -- | Specifies whether to enable or disable the Bedrock trace. If enabled,
    -- you can see the full Bedrock trace.
    trace :: Prelude.Maybe Trace,
    -- | The unique identifier of the model to invoke to run inference.
    modelId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InvokeModelWithResponseStream' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accept', 'invokeModelWithResponseStream_accept' - The desired MIME type of the inference body in the response.
--
-- 'body', 'invokeModelWithResponseStream_body' - The prompt and inference parameters in the format specified in the
-- @contentType@ in the header.
--
-- 'contentType', 'invokeModelWithResponseStream_contentType' - The MIME type of the input data in the request.
--
-- 'guardrailIdentifier', 'invokeModelWithResponseStream_guardrailIdentifier' - The unique identifier of the guardrail that you want to use.
--
-- 'guardrailVersion', 'invokeModelWithResponseStream_guardrailVersion' - The version number for the guardrail.
--
-- 'performanceConfigLatency', 'invokeModelWithResponseStream_performanceConfigLatency' - Model performance settings for the request.
--
-- 'requestMetadata', 'invokeModelWithResponseStream_requestMetadata' - Key-value pairs that you can use to filter invocation logs.
--
-- 'serviceTier', 'invokeModelWithResponseStream_serviceTier' - Specifies the processing tier type used for serving the request.
--
-- 'trace', 'invokeModelWithResponseStream_trace' - Specifies whether to enable or disable the Bedrock trace.
--
-- 'modelId', 'invokeModelWithResponseStream_modelId' - The unique identifier of the model to invoke to run inference.
newInvokeModelWithResponseStream ::
  -- | 'modelId'
  Prelude.Text ->
  InvokeModelWithResponseStream
newInvokeModelWithResponseStream pModelId_ =
  InvokeModelWithResponseStream'
    { accept =
        Prelude.Nothing,
      body = Prelude.Nothing,
      contentType = Prelude.Nothing,
      guardrailIdentifier = Prelude.Nothing,
      guardrailVersion = Prelude.Nothing,
      performanceConfigLatency = Prelude.Nothing,
      requestMetadata = Prelude.Nothing,
      serviceTier = Prelude.Nothing,
      trace = Prelude.Nothing,
      modelId = pModelId_
    }

-- | The desired MIME type of the inference body in the response.
invokeModelWithResponseStream_accept :: Lens.Lens' InvokeModelWithResponseStream (Prelude.Maybe Prelude.Text)
invokeModelWithResponseStream_accept = Lens.lens (\InvokeModelWithResponseStream' {accept} -> accept) (\s@InvokeModelWithResponseStream' {} a -> s {accept = a} :: InvokeModelWithResponseStream)

-- | The prompt and inference parameters in the format specified in the
-- @contentType@ in the header.
invokeModelWithResponseStream_body :: Lens.Lens' InvokeModelWithResponseStream (Prelude.Maybe Prelude.ByteString)
invokeModelWithResponseStream_body = Lens.lens (\InvokeModelWithResponseStream' {body} -> body) (\s@InvokeModelWithResponseStream' {} a -> s {body = a} :: InvokeModelWithResponseStream)

-- | The MIME type of the input data in the request.
invokeModelWithResponseStream_contentType :: Lens.Lens' InvokeModelWithResponseStream (Prelude.Maybe Prelude.Text)
invokeModelWithResponseStream_contentType = Lens.lens (\InvokeModelWithResponseStream' {contentType} -> contentType) (\s@InvokeModelWithResponseStream' {} a -> s {contentType = a} :: InvokeModelWithResponseStream)

-- | The unique identifier of the guardrail that you want to use.
invokeModelWithResponseStream_guardrailIdentifier :: Lens.Lens' InvokeModelWithResponseStream (Prelude.Maybe Prelude.Text)
invokeModelWithResponseStream_guardrailIdentifier = Lens.lens (\InvokeModelWithResponseStream' {guardrailIdentifier} -> guardrailIdentifier) (\s@InvokeModelWithResponseStream' {} a -> s {guardrailIdentifier = a} :: InvokeModelWithResponseStream)

-- | The version number for the guardrail.
invokeModelWithResponseStream_guardrailVersion :: Lens.Lens' InvokeModelWithResponseStream (Prelude.Maybe Prelude.Text)
invokeModelWithResponseStream_guardrailVersion = Lens.lens (\InvokeModelWithResponseStream' {guardrailVersion} -> guardrailVersion) (\s@InvokeModelWithResponseStream' {} a -> s {guardrailVersion = a} :: InvokeModelWithResponseStream)

-- | Model performance settings for the request.
invokeModelWithResponseStream_performanceConfigLatency :: Lens.Lens' InvokeModelWithResponseStream (Prelude.Maybe PerformanceConfigLatency)
invokeModelWithResponseStream_performanceConfigLatency = Lens.lens (\InvokeModelWithResponseStream' {performanceConfigLatency} -> performanceConfigLatency) (\s@InvokeModelWithResponseStream' {} a -> s {performanceConfigLatency = a} :: InvokeModelWithResponseStream)

-- | Key-value pairs that you can use to filter invocation logs.
invokeModelWithResponseStream_requestMetadata :: Lens.Lens' InvokeModelWithResponseStream (Prelude.Maybe Prelude.Text)
invokeModelWithResponseStream_requestMetadata = Lens.lens (\InvokeModelWithResponseStream' {requestMetadata} -> requestMetadata) (\s@InvokeModelWithResponseStream' {} a -> s {requestMetadata = a} :: InvokeModelWithResponseStream) Prelude.. Lens.mapping Data._Sensitive

-- | Specifies the processing tier type used for serving the request.
invokeModelWithResponseStream_serviceTier :: Lens.Lens' InvokeModelWithResponseStream (Prelude.Maybe ServiceTierType)
invokeModelWithResponseStream_serviceTier = Lens.lens (\InvokeModelWithResponseStream' {serviceTier} -> serviceTier) (\s@InvokeModelWithResponseStream' {} a -> s {serviceTier = a} :: InvokeModelWithResponseStream)

-- | Specifies whether to enable or disable the Bedrock trace.
invokeModelWithResponseStream_trace :: Lens.Lens' InvokeModelWithResponseStream (Prelude.Maybe Trace)
invokeModelWithResponseStream_trace = Lens.lens (\InvokeModelWithResponseStream' {trace} -> trace) (\s@InvokeModelWithResponseStream' {} a -> s {trace = a} :: InvokeModelWithResponseStream)

-- | The unique identifier of the model to invoke to run inference.
invokeModelWithResponseStream_modelId :: Lens.Lens' InvokeModelWithResponseStream Prelude.Text
invokeModelWithResponseStream_modelId = Lens.lens (\InvokeModelWithResponseStream' {modelId} -> modelId) (\s@InvokeModelWithResponseStream' {} a -> s {modelId = a} :: InvokeModelWithResponseStream)

instance
  Core.AWSRequest
    InvokeModelWithResponseStream
  where
  type
    AWSResponse InvokeModelWithResponseStream =
      InvokeModelWithResponseStreamResponse
  request overrides =
    Request.postBody (overrides defaultService)
  response =
    Response.receiveEventStream
      ( \s h x ->
          InvokeModelWithResponseStreamResponse'
            Prelude.<$> ( h
                            Data..#? "X-Amzn-Bedrock-PerformanceConfig-Latency"
                        )
            Prelude.<*> (h Data..#? "X-Amzn-Bedrock-Service-Tier")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (Prelude.pure x)
            Prelude.<*> (h Data..# "X-Amzn-Bedrock-Content-Type")
      )

instance
  Prelude.Hashable
    InvokeModelWithResponseStream
  where
  hashWithSalt
    _salt
    InvokeModelWithResponseStream' {..} =
      _salt
        `Prelude.hashWithSalt` accept
        `Prelude.hashWithSalt` body
        `Prelude.hashWithSalt` contentType
        `Prelude.hashWithSalt` guardrailIdentifier
        `Prelude.hashWithSalt` guardrailVersion
        `Prelude.hashWithSalt` performanceConfigLatency
        `Prelude.hashWithSalt` requestMetadata
        `Prelude.hashWithSalt` serviceTier
        `Prelude.hashWithSalt` trace
        `Prelude.hashWithSalt` modelId

instance Prelude.NFData InvokeModelWithResponseStream where
  rnf InvokeModelWithResponseStream' {..} =
    Prelude.rnf accept `Prelude.seq`
      Prelude.rnf body `Prelude.seq`
        Prelude.rnf contentType `Prelude.seq`
          Prelude.rnf guardrailIdentifier `Prelude.seq`
            Prelude.rnf guardrailVersion `Prelude.seq`
              Prelude.rnf performanceConfigLatency `Prelude.seq`
                Prelude.rnf requestMetadata `Prelude.seq`
                  Prelude.rnf serviceTier `Prelude.seq`
                    Prelude.rnf trace `Prelude.seq`
                      Prelude.rnf modelId

instance Data.ToBody InvokeModelWithResponseStream where
  toBody InvokeModelWithResponseStream' {..} =
    Data.toBody body

instance Data.ToHeaders InvokeModelWithResponseStream where
  toHeaders InvokeModelWithResponseStream' {..} =
    Prelude.mconcat
      [ "X-Amzn-Bedrock-Accept" Data.=# accept,
        "Content-Type" Data.=# contentType,
        "X-Amzn-Bedrock-GuardrailIdentifier"
          Data.=# guardrailIdentifier,
        "X-Amzn-Bedrock-GuardrailVersion"
          Data.=# guardrailVersion,
        "X-Amzn-Bedrock-PerformanceConfig-Latency"
          Data.=# performanceConfigLatency,
        "X-Amzn-Bedrock-Request-Metadata"
          Data.=# requestMetadata,
        "X-Amzn-Bedrock-Service-Tier" Data.=# serviceTier,
        "X-Amzn-Bedrock-Trace" Data.=# trace
      ]

instance Data.ToPath InvokeModelWithResponseStream where
  toPath InvokeModelWithResponseStream' {..} =
    Prelude.mconcat
      [ "/model/",
        Data.toBS modelId,
        "/invoke-with-response-stream"
      ]

instance Data.ToQuery InvokeModelWithResponseStream where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newInvokeModelWithResponseStreamResponse' smart constructor.
data InvokeModelWithResponseStreamResponse = InvokeModelWithResponseStreamResponse'
  { -- | Model performance settings for the request.
    performanceConfigLatency :: Prelude.Maybe PerformanceConfigLatency,
    -- | Specifies the processing tier type used for serving the request.
    serviceTier :: Prelude.Maybe ServiceTierType,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Inference response from the model in the format specified by the
    -- @contentType@ header.
    body :: EventStream.EventStream ResponseStream,
    -- | The MIME type of the inference result.
    contentType :: Prelude.Text
  }
  deriving (Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InvokeModelWithResponseStreamResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'performanceConfigLatency', 'invokeModelWithResponseStreamResponse_performanceConfigLatency' - Model performance settings for the request.
--
-- 'serviceTier', 'invokeModelWithResponseStreamResponse_serviceTier' - Specifies the processing tier type used for serving the request.
--
-- 'httpStatus', 'invokeModelWithResponseStreamResponse_httpStatus' - The response's http status code.
--
-- 'body', 'invokeModelWithResponseStreamResponse_body' - Inference response from the model in the format specified by the
-- @contentType@ header.
--
-- 'contentType', 'invokeModelWithResponseStreamResponse_contentType' - The MIME type of the inference result.
newInvokeModelWithResponseStreamResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'body'
  EventStream.EventStream ResponseStream ->
  -- | 'contentType'
  Prelude.Text ->
  InvokeModelWithResponseStreamResponse
newInvokeModelWithResponseStreamResponse
  pHttpStatus_
  pBody_
  pContentType_ =
    InvokeModelWithResponseStreamResponse'
      { performanceConfigLatency =
          Prelude.Nothing,
        serviceTier = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        body = pBody_,
        contentType = pContentType_
      }

-- | Model performance settings for the request.
invokeModelWithResponseStreamResponse_performanceConfigLatency :: Lens.Lens' InvokeModelWithResponseStreamResponse (Prelude.Maybe PerformanceConfigLatency)
invokeModelWithResponseStreamResponse_performanceConfigLatency = Lens.lens (\InvokeModelWithResponseStreamResponse' {performanceConfigLatency} -> performanceConfigLatency) (\s@InvokeModelWithResponseStreamResponse' {} a -> s {performanceConfigLatency = a} :: InvokeModelWithResponseStreamResponse)

-- | Specifies the processing tier type used for serving the request.
invokeModelWithResponseStreamResponse_serviceTier :: Lens.Lens' InvokeModelWithResponseStreamResponse (Prelude.Maybe ServiceTierType)
invokeModelWithResponseStreamResponse_serviceTier = Lens.lens (\InvokeModelWithResponseStreamResponse' {serviceTier} -> serviceTier) (\s@InvokeModelWithResponseStreamResponse' {} a -> s {serviceTier = a} :: InvokeModelWithResponseStreamResponse)

-- | The response's http status code.
invokeModelWithResponseStreamResponse_httpStatus :: Lens.Lens' InvokeModelWithResponseStreamResponse Prelude.Int
invokeModelWithResponseStreamResponse_httpStatus = Lens.lens (\InvokeModelWithResponseStreamResponse' {httpStatus} -> httpStatus) (\s@InvokeModelWithResponseStreamResponse' {} a -> s {httpStatus = a} :: InvokeModelWithResponseStreamResponse)

-- | Inference response from the model in the format specified by the
-- @contentType@ header. Consume it with
-- 'Amazonka.Data.EventStream.sinkEvents' within the
-- 'Control.Monad.Trans.Resource.ResourceT' scope of the request.
invokeModelWithResponseStreamResponse_body :: Lens.Lens' InvokeModelWithResponseStreamResponse (EventStream.EventStream ResponseStream)
invokeModelWithResponseStreamResponse_body = Lens.lens (\InvokeModelWithResponseStreamResponse' {body} -> body) (\s@InvokeModelWithResponseStreamResponse' {} a -> s {body = a} :: InvokeModelWithResponseStreamResponse)

-- | The MIME type of the inference result.
invokeModelWithResponseStreamResponse_contentType :: Lens.Lens' InvokeModelWithResponseStreamResponse Prelude.Text
invokeModelWithResponseStreamResponse_contentType = Lens.lens (\InvokeModelWithResponseStreamResponse' {contentType} -> contentType) (\s@InvokeModelWithResponseStreamResponse' {} a -> s {contentType = a} :: InvokeModelWithResponseStreamResponse)
