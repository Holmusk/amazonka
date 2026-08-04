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
-- Module      : Amazonka.BedrockRuntime.ConverseStream
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Sends messages to the specified Amazon Bedrock model and returns the
-- response in a stream. @ConverseStream@ provides a consistent API that
-- works with all Amazon Bedrock models that support messages.
--
-- To find out if a model supports streaming, call
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html GetFoundationModel>
-- and check the @responseStreamingSupported@ field in the response.
--
-- For information about the Converse API, see /Use the Converse API/ in
-- the /Amazon Bedrock User Guide/.
--
-- This operation requires permission for the
-- @bedrock:InvokeModelWithResponseStream@ action.
--
-- The response is delivered as an @application\/vnd.amazon.eventstream@
-- stream of 'ConverseStreamOutput' events; consume
-- 'converseStreamResponse_stream' with
-- 'Amazonka.Data.EventStream.sinkEvents' (or any conduit machinery)
-- within the 'Control.Monad.Trans.Resource.ResourceT' scope of the
-- request:
--
-- > runResourceT $ do
-- >   resp <- send env (newConverseStream modelId)
-- >   EventStream.sinkEvents (resp ^. converseStreamResponse_stream) $
-- >     Conduit.mapM_ (liftIO . print)
--
-- /Hand-written module:/ the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so this operation is maintained by
-- hand on top of "Amazonka.Data.EventStream". See @HANDWRITTEN.md@ in
-- this package.
module Amazonka.BedrockRuntime.ConverseStream
  ( -- * Creating a Request
    ConverseStream (..),
    newConverseStream,

    -- * Request Lenses
    converseStream_additionalModelRequestFields,
    converseStream_additionalModelResponseFieldPaths,
    converseStream_guardrailConfig,
    converseStream_inferenceConfig,
    converseStream_messages,
    converseStream_outputConfig,
    converseStream_performanceConfig,
    converseStream_promptVariables,
    converseStream_requestMetadata,
    converseStream_serviceTier,
    converseStream_system,
    converseStream_toolConfig,
    converseStream_modelId,

    -- * Destructuring the Response
    ConverseStreamResponse (..),
    newConverseStreamResponse,

    -- * Response Lenses
    converseStreamResponse_httpStatus,
    converseStreamResponse_stream,
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

-- | /See:/ 'newConverseStream' smart constructor.
data ConverseStream = ConverseStream'
  { -- | Additional inference parameters that the model supports, beyond the base
    -- set of inference parameters that @Converse@ and @ConverseStream@ support
    -- in the @inferenceConfig@ field. For more information, see
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Model parameters>.
    additionalModelRequestFields :: Prelude.Maybe Document,
    -- | Additional model parameters field paths to return in the response.
    -- @Converse@ and @ConverseStream@ return the requested fields as a JSON
    -- Pointer object in the @additionalModelResponseFields@ field.
    additionalModelResponseFieldPaths :: Prelude.Maybe [Prelude.Text],
    -- | Configuration information for a guardrail that you want to use in the
    -- request.
    guardrailConfig :: Prelude.Maybe GuardrailStreamConfiguration,
    -- | Inference parameters to pass to the model. @Converse@ and
    -- @ConverseStream@ support a base set of inference parameters.
    inferenceConfig :: Prelude.Maybe InferenceConfiguration,
    -- | The messages that you want to send to the model.
    messages :: Prelude.Maybe [Message],
    -- | Output configuration for a model response.
    outputConfig :: Prelude.Maybe OutputConfig,
    -- | Model performance settings for the request.
    performanceConfig :: Prelude.Maybe PerformanceConfiguration,
    -- | Contains a map of variables in a prompt from Prompt management to
    -- objects containing the values to fill in for them when running model
    -- invocation.
    promptVariables :: Prelude.Maybe (Data.Sensitive (Prelude.HashMap Prelude.Text PromptVariableValues)),
    -- | Key-value pairs that you can use to filter invocation logs.
    requestMetadata :: Prelude.Maybe (Data.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | Specifies the processing tier configuration used for serving the
    -- request.
    serviceTier :: Prelude.Maybe ServiceTier,
    -- | A prompt that provides instructions or context to the model about the
    -- task it should perform, or the persona it should adopt during the
    -- conversation.
    system :: Prelude.Maybe [SystemContentBlock],
    -- | Configuration information for the tools that the model can use when
    -- generating a response.
    toolConfig :: Prelude.Maybe ToolConfiguration,
    -- | Specifies the model or throughput with which to run inference, or the
    -- prompt resource to use in inference.
    modelId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConverseStream' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'additionalModelRequestFields', 'converseStream_additionalModelRequestFields' - Additional inference parameters that the model supports.
--
-- 'additionalModelResponseFieldPaths', 'converseStream_additionalModelResponseFieldPaths' - Additional model parameters field paths to return in the response.
--
-- 'guardrailConfig', 'converseStream_guardrailConfig' - Configuration information for a guardrail that you want to use in the
-- request.
--
-- 'inferenceConfig', 'converseStream_inferenceConfig' - Inference parameters to pass to the model.
--
-- 'messages', 'converseStream_messages' - The messages that you want to send to the model.
--
-- 'outputConfig', 'converseStream_outputConfig' - Output configuration for a model response.
--
-- 'performanceConfig', 'converseStream_performanceConfig' - Model performance settings for the request.
--
-- 'promptVariables', 'converseStream_promptVariables' - Contains a map of variables in a prompt from Prompt management.
--
-- 'requestMetadata', 'converseStream_requestMetadata' - Key-value pairs that you can use to filter invocation logs.
--
-- 'serviceTier', 'converseStream_serviceTier' - Specifies the processing tier configuration used for serving the
-- request.
--
-- 'system', 'converseStream_system' - A prompt that provides instructions or context to the model.
--
-- 'toolConfig', 'converseStream_toolConfig' - Configuration information for the tools that the model can use when
-- generating a response.
--
-- 'modelId', 'converseStream_modelId' - Specifies the model or throughput with which to run inference, or the
-- prompt resource to use in inference.
newConverseStream ::
  -- | 'modelId'
  Prelude.Text ->
  ConverseStream
newConverseStream pModelId_ =
  ConverseStream'
    { additionalModelRequestFields =
        Prelude.Nothing,
      additionalModelResponseFieldPaths = Prelude.Nothing,
      guardrailConfig = Prelude.Nothing,
      inferenceConfig = Prelude.Nothing,
      messages = Prelude.Nothing,
      outputConfig = Prelude.Nothing,
      performanceConfig = Prelude.Nothing,
      promptVariables = Prelude.Nothing,
      requestMetadata = Prelude.Nothing,
      serviceTier = Prelude.Nothing,
      system = Prelude.Nothing,
      toolConfig = Prelude.Nothing,
      modelId = pModelId_
    }

-- | Additional inference parameters that the model supports.
converseStream_additionalModelRequestFields :: Lens.Lens' ConverseStream (Prelude.Maybe Document)
converseStream_additionalModelRequestFields = Lens.lens (\ConverseStream' {additionalModelRequestFields} -> additionalModelRequestFields) (\s@ConverseStream' {} a -> s {additionalModelRequestFields = a} :: ConverseStream)

-- | Additional model parameters field paths to return in the response.
converseStream_additionalModelResponseFieldPaths :: Lens.Lens' ConverseStream (Prelude.Maybe [Prelude.Text])
converseStream_additionalModelResponseFieldPaths = Lens.lens (\ConverseStream' {additionalModelResponseFieldPaths} -> additionalModelResponseFieldPaths) (\s@ConverseStream' {} a -> s {additionalModelResponseFieldPaths = a} :: ConverseStream) Prelude.. Lens.mapping Lens.coerced

-- | Configuration information for a guardrail that you want to use in the
-- request.
converseStream_guardrailConfig :: Lens.Lens' ConverseStream (Prelude.Maybe GuardrailStreamConfiguration)
converseStream_guardrailConfig = Lens.lens (\ConverseStream' {guardrailConfig} -> guardrailConfig) (\s@ConverseStream' {} a -> s {guardrailConfig = a} :: ConverseStream)

-- | Inference parameters to pass to the model.
converseStream_inferenceConfig :: Lens.Lens' ConverseStream (Prelude.Maybe InferenceConfiguration)
converseStream_inferenceConfig = Lens.lens (\ConverseStream' {inferenceConfig} -> inferenceConfig) (\s@ConverseStream' {} a -> s {inferenceConfig = a} :: ConverseStream)

-- | The messages that you want to send to the model.
converseStream_messages :: Lens.Lens' ConverseStream (Prelude.Maybe [Message])
converseStream_messages = Lens.lens (\ConverseStream' {messages} -> messages) (\s@ConverseStream' {} a -> s {messages = a} :: ConverseStream) Prelude.. Lens.mapping Lens.coerced

-- | Output configuration for a model response.
converseStream_outputConfig :: Lens.Lens' ConverseStream (Prelude.Maybe OutputConfig)
converseStream_outputConfig = Lens.lens (\ConverseStream' {outputConfig} -> outputConfig) (\s@ConverseStream' {} a -> s {outputConfig = a} :: ConverseStream)

-- | Model performance settings for the request.
converseStream_performanceConfig :: Lens.Lens' ConverseStream (Prelude.Maybe PerformanceConfiguration)
converseStream_performanceConfig = Lens.lens (\ConverseStream' {performanceConfig} -> performanceConfig) (\s@ConverseStream' {} a -> s {performanceConfig = a} :: ConverseStream)

-- | Contains a map of variables in a prompt from Prompt management.
converseStream_promptVariables :: Lens.Lens' ConverseStream (Prelude.Maybe (Prelude.HashMap Prelude.Text PromptVariableValues))
converseStream_promptVariables = Lens.lens (\ConverseStream' {promptVariables} -> promptVariables) (\s@ConverseStream' {} a -> s {promptVariables = a} :: ConverseStream) Prelude.. Lens.mapping (Data._Sensitive Prelude.. Lens.coerced)

-- | Key-value pairs that you can use to filter invocation logs.
converseStream_requestMetadata :: Lens.Lens' ConverseStream (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
converseStream_requestMetadata = Lens.lens (\ConverseStream' {requestMetadata} -> requestMetadata) (\s@ConverseStream' {} a -> s {requestMetadata = a} :: ConverseStream) Prelude.. Lens.mapping (Data._Sensitive Prelude.. Lens.coerced)

-- | Specifies the processing tier configuration used for serving the
-- request.
converseStream_serviceTier :: Lens.Lens' ConverseStream (Prelude.Maybe ServiceTier)
converseStream_serviceTier = Lens.lens (\ConverseStream' {serviceTier} -> serviceTier) (\s@ConverseStream' {} a -> s {serviceTier = a} :: ConverseStream)

-- | A prompt that provides instructions or context to the model.
converseStream_system :: Lens.Lens' ConverseStream (Prelude.Maybe [SystemContentBlock])
converseStream_system = Lens.lens (\ConverseStream' {system} -> system) (\s@ConverseStream' {} a -> s {system = a} :: ConverseStream) Prelude.. Lens.mapping Lens.coerced

-- | Configuration information for the tools that the model can use when
-- generating a response.
converseStream_toolConfig :: Lens.Lens' ConverseStream (Prelude.Maybe ToolConfiguration)
converseStream_toolConfig = Lens.lens (\ConverseStream' {toolConfig} -> toolConfig) (\s@ConverseStream' {} a -> s {toolConfig = a} :: ConverseStream)

-- | Specifies the model or throughput with which to run inference, or the
-- prompt resource to use in inference.
converseStream_modelId :: Lens.Lens' ConverseStream Prelude.Text
converseStream_modelId = Lens.lens (\ConverseStream' {modelId} -> modelId) (\s@ConverseStream' {} a -> s {modelId = a} :: ConverseStream)

instance Core.AWSRequest ConverseStream where
  type AWSResponse ConverseStream = ConverseStreamResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveEventStream
      ( \s h x ->
          Prelude.Right
            ( ConverseStreamResponse'
                (Prelude.fromEnum s)
                x
            )
      )

instance Prelude.Hashable ConverseStream where
  hashWithSalt _salt ConverseStream' {..} =
    _salt
      `Prelude.hashWithSalt` additionalModelRequestFields
      `Prelude.hashWithSalt` additionalModelResponseFieldPaths
      `Prelude.hashWithSalt` guardrailConfig
      `Prelude.hashWithSalt` inferenceConfig
      `Prelude.hashWithSalt` messages
      `Prelude.hashWithSalt` outputConfig
      `Prelude.hashWithSalt` performanceConfig
      `Prelude.hashWithSalt` promptVariables
      `Prelude.hashWithSalt` requestMetadata
      `Prelude.hashWithSalt` serviceTier
      `Prelude.hashWithSalt` system
      `Prelude.hashWithSalt` toolConfig
      `Prelude.hashWithSalt` modelId

instance Prelude.NFData ConverseStream where
  rnf ConverseStream' {..} =
    Prelude.rnf additionalModelRequestFields `Prelude.seq`
      Prelude.rnf additionalModelResponseFieldPaths `Prelude.seq`
        Prelude.rnf guardrailConfig `Prelude.seq`
          Prelude.rnf inferenceConfig `Prelude.seq`
            Prelude.rnf messages `Prelude.seq`
              Prelude.rnf outputConfig `Prelude.seq`
                Prelude.rnf performanceConfig `Prelude.seq`
                  Prelude.rnf promptVariables `Prelude.seq`
                    Prelude.rnf requestMetadata `Prelude.seq`
                      Prelude.rnf serviceTier `Prelude.seq`
                        Prelude.rnf system `Prelude.seq`
                          Prelude.rnf toolConfig `Prelude.seq`
                            Prelude.rnf modelId

instance Data.ToHeaders ConverseStream where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToJSON ConverseStream where
  toJSON ConverseStream' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("additionalModelRequestFields" Data..=)
              Prelude.<$> additionalModelRequestFields,
            ("additionalModelResponseFieldPaths" Data..=)
              Prelude.<$> additionalModelResponseFieldPaths,
            ("guardrailConfig" Data..=)
              Prelude.<$> guardrailConfig,
            ("inferenceConfig" Data..=)
              Prelude.<$> inferenceConfig,
            ("messages" Data..=) Prelude.<$> messages,
            ("outputConfig" Data..=) Prelude.<$> outputConfig,
            ("performanceConfig" Data..=)
              Prelude.<$> performanceConfig,
            ("promptVariables" Data..=)
              Prelude.<$> promptVariables,
            ("requestMetadata" Data..=)
              Prelude.<$> requestMetadata,
            ("serviceTier" Data..=) Prelude.<$> serviceTier,
            ("system" Data..=) Prelude.<$> system,
            ("toolConfig" Data..=) Prelude.<$> toolConfig
          ]
      )

instance Data.ToPath ConverseStream where
  toPath ConverseStream' {..} =
    Prelude.mconcat
      ["/model/", Data.toBS modelId, "/converse-stream"]

instance Data.ToQuery ConverseStream where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newConverseStreamResponse' smart constructor.
data ConverseStreamResponse = ConverseStreamResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The output stream that the model generated.
    stream :: EventStream.EventStream ConverseStreamOutput
  }
  deriving (Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConverseStreamResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'converseStreamResponse_httpStatus' - The response's http status code.
--
-- 'stream', 'converseStreamResponse_stream' - The output stream that the model generated.
newConverseStreamResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'stream'
  EventStream.EventStream ConverseStreamOutput ->
  ConverseStreamResponse
newConverseStreamResponse pHttpStatus_ pStream_ =
  ConverseStreamResponse'
    { httpStatus = pHttpStatus_,
      stream = pStream_
    }

-- | The response's http status code.
converseStreamResponse_httpStatus :: Lens.Lens' ConverseStreamResponse Prelude.Int
converseStreamResponse_httpStatus = Lens.lens (\ConverseStreamResponse' {httpStatus} -> httpStatus) (\s@ConverseStreamResponse' {} a -> s {httpStatus = a} :: ConverseStreamResponse)

-- | The output stream that the model generated. Consume it with
-- 'Amazonka.Data.EventStream.sinkEvents' within the
-- 'Control.Monad.Trans.Resource.ResourceT' scope of the request.
converseStreamResponse_stream :: Lens.Lens' ConverseStreamResponse (EventStream.EventStream ConverseStreamOutput)
converseStreamResponse_stream = Lens.lens (\ConverseStreamResponse' {stream} -> stream) (\s@ConverseStreamResponse' {} a -> s {stream = a} :: ConverseStreamResponse)
