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
-- Module      : Amazonka.BedrockRuntime.Converse
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends messages to the specified Amazon Bedrock model. @Converse@
-- provides a consistent interface that works with all models that support
-- messages. This allows you to write code once and use it with different
-- models. If a model has unique inference parameters, you can also pass
-- those unique parameters to the model.
--
-- Amazon Bedrock doesn\'t store any text, images, or documents that you
-- provide as content. The data is only used to generate the response.
--
-- You can submit a prompt by including it in the @messages@ field,
-- specifying the @modelId@ of a foundation model or inference profile to
-- run inference on it, and including any other fields that are relevant to
-- your use case.
--
-- You can also submit a prompt from Prompt management by specifying the
-- ARN of the prompt version and including a map of variables to values in
-- the @promptVariables@ field. You can append more messages to the prompt
-- by using the @messages@ field. If you use a prompt from Prompt
-- management, you can\'t include the following fields in the request:
-- @additionalModelRequestFields@, @inferenceConfig@, @system@, or
-- @toolConfig@. Instead, these fields must be defined through Prompt
-- management. For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-use.html Use a prompt from Prompt management>.
--
-- For information about the Converse API, see /Use the Converse API/ in
-- the /Amazon Bedrock User Guide/. To use a guardrail, see /Use a
-- guardrail with the Converse API/ in the /Amazon Bedrock User Guide/. To
-- use a tool with a model, see /Tool use (Function calling)/ in the
-- /Amazon Bedrock User Guide/
--
-- For example code, see /Converse API examples/ in the /Amazon Bedrock
-- User Guide/.
--
-- This operation requires permission for the @bedrock:InvokeModel@ action.
--
-- To deny all inference access to resources that you specify in the
-- modelId field, you need to deny access to the @bedrock:InvokeModel@ and
-- @bedrock:InvokeModelWithResponseStream@ actions. Doing this also denies
-- access to the resource through the base inference actions
-- (<https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_InvokeModel.html InvokeModel>
-- and
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_InvokeModelWithResponseStream.html InvokeModelWithResponseStream>).
-- For more information see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference Deny access for inference on specific models>.
--
-- For troubleshooting some of the common errors you might encounter when
-- using the @Converse@ API, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html Troubleshooting Amazon Bedrock API Error Codes>
-- in the Amazon Bedrock User Guide
module Amazonka.BedrockRuntime.Converse
  ( -- * Creating a Request
    Converse (..),
    newConverse,

    -- * Request Lenses
    converse_additionalModelRequestFields,
    converse_additionalModelResponseFieldPaths,
    converse_guardrailConfig,
    converse_inferenceConfig,
    converse_messages,
    converse_outputConfig,
    converse_performanceConfig,
    converse_promptVariables,
    converse_requestMetadata,
    converse_serviceTier,
    converse_system,
    converse_toolConfig,
    converse_modelId,

    -- * Destructuring the Response
    ConverseResponse (..),
    newConverseResponse,

    -- * Response Lenses
    converseResponse_additionalModelResponseFields,
    converseResponse_performanceConfig,
    converseResponse_serviceTier,
    converseResponse_trace,
    converseResponse_httpStatus,
    converseResponse_output,
    converseResponse_stopReason,
    converseResponse_usage,
    converseResponse_metrics,
  )
where

import Amazonka.BedrockRuntime.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newConverse' smart constructor.
data Converse = Converse'
  { -- | Additional inference parameters that the model supports, beyond the base
    -- set of inference parameters that @Converse@ and @ConverseStream@ support
    -- in the @inferenceConfig@ field. For more information, see
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Model parameters>.
    additionalModelRequestFields :: Prelude.Maybe Document,
    -- | Additional model parameters field paths to return in the response.
    -- @Converse@ and @ConverseStream@ return the requested fields as a JSON
    -- Pointer object in the @additionalModelResponseFields@ field. The
    -- following is example JSON for @additionalModelResponseFieldPaths@.
    --
    -- @[ \"\/stop_sequence\" ]@
    --
    -- For information about the JSON Pointer syntax, see the
    -- <https://datatracker.ietf.org/doc/html/rfc6901 Internet Engineering Task Force (IETF)>
    -- documentation.
    --
    -- @Converse@ and @ConverseStream@ reject an empty JSON Pointer or
    -- incorrectly structured JSON Pointer with a @400@ error code. if the JSON
    -- Pointer is valid, but the requested field is not in the model response,
    -- it is ignored by @Converse@.
    additionalModelResponseFieldPaths :: Prelude.Maybe [Prelude.Text],
    -- | Configuration information for a guardrail that you want to use in the
    -- request. If you include @guardContent@ blocks in the @content@ field in
    -- the @messages@ field, the guardrail operates only on those messages. If
    -- you include no @guardContent@ blocks, the guardrail operates on all
    -- messages in the request body and in any included prompt resource.
    guardrailConfig :: Prelude.Maybe GuardrailConfiguration,
    -- | Inference parameters to pass to the model. @Converse@ and
    -- @ConverseStream@ support a base set of inference parameters. If you need
    -- to pass additional parameters that the model supports, use the
    -- @additionalModelRequestFields@ request field.
    inferenceConfig :: Prelude.Maybe InferenceConfiguration,
    -- | The messages that you want to send to the model.
    messages :: Prelude.Maybe [Message],
    -- | Output configuration for a model response.
    outputConfig :: Prelude.Maybe OutputConfig,
    -- | Model performance settings for the request.
    performanceConfig :: Prelude.Maybe PerformanceConfiguration,
    -- | Contains a map of variables in a prompt from Prompt management to
    -- objects containing the values to fill in for them when running model
    -- invocation. This field is ignored if you don\'t specify a prompt
    -- resource in the @modelId@ field.
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
    --
    -- For information about models that support tool use, see
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference.html#conversation-inference-supported-models-features Supported models and model features>.
    toolConfig :: Prelude.Maybe ToolConfiguration,
    -- | Specifies the model or throughput with which to run inference, or the
    -- prompt resource to use in inference. The value depends on the resource
    -- that you use:
    --
    -- -   If you use a base model, specify the model ID or its ARN. For a list
    --     of model IDs for base models, see
    --     <https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns Amazon Bedrock base model IDs (on-demand throughput)>
    --     in the Amazon Bedrock User Guide.
    --
    -- -   If you use an inference profile, specify the inference profile ID or
    --     its ARN. For a list of inference profile IDs, see
    --     <https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html Supported Regions and models for cross-region inference>
    --     in the Amazon Bedrock User Guide.
    --
    -- -   If you use a provisioned model, specify the ARN of the Provisioned
    --     Throughput. For more information, see
    --     <https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html Run inference using a Provisioned Throughput>
    --     in the Amazon Bedrock User Guide.
    --
    -- -   If you use a custom model, first purchase Provisioned Throughput for
    --     it. Then specify the ARN of the resulting provisioned model. For
    --     more information, see
    --     <https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html Use a custom model in Amazon Bedrock>
    --     in the Amazon Bedrock User Guide.
    --
    -- -   To include a prompt that was defined in
    --     <https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html Prompt management>,
    --     specify the ARN of the prompt version to use.
    --
    -- The Converse API doesn\'t support
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html imported models>.
    modelId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Converse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'additionalModelRequestFields', 'converse_additionalModelRequestFields' - Additional inference parameters that the model supports, beyond the base
-- set of inference parameters that @Converse@ and @ConverseStream@ support
-- in the @inferenceConfig@ field. For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Model parameters>.
--
-- 'additionalModelResponseFieldPaths', 'converse_additionalModelResponseFieldPaths' - Additional model parameters field paths to return in the response.
-- @Converse@ and @ConverseStream@ return the requested fields as a JSON
-- Pointer object in the @additionalModelResponseFields@ field. The
-- following is example JSON for @additionalModelResponseFieldPaths@.
--
-- @[ \"\/stop_sequence\" ]@
--
-- For information about the JSON Pointer syntax, see the
-- <https://datatracker.ietf.org/doc/html/rfc6901 Internet Engineering Task Force (IETF)>
-- documentation.
--
-- @Converse@ and @ConverseStream@ reject an empty JSON Pointer or
-- incorrectly structured JSON Pointer with a @400@ error code. if the JSON
-- Pointer is valid, but the requested field is not in the model response,
-- it is ignored by @Converse@.
--
-- 'guardrailConfig', 'converse_guardrailConfig' - Configuration information for a guardrail that you want to use in the
-- request. If you include @guardContent@ blocks in the @content@ field in
-- the @messages@ field, the guardrail operates only on those messages. If
-- you include no @guardContent@ blocks, the guardrail operates on all
-- messages in the request body and in any included prompt resource.
--
-- 'inferenceConfig', 'converse_inferenceConfig' - Inference parameters to pass to the model. @Converse@ and
-- @ConverseStream@ support a base set of inference parameters. If you need
-- to pass additional parameters that the model supports, use the
-- @additionalModelRequestFields@ request field.
--
-- 'messages', 'converse_messages' - The messages that you want to send to the model.
--
-- 'outputConfig', 'converse_outputConfig' - Output configuration for a model response.
--
-- 'performanceConfig', 'converse_performanceConfig' - Model performance settings for the request.
--
-- 'promptVariables', 'converse_promptVariables' - Contains a map of variables in a prompt from Prompt management to
-- objects containing the values to fill in for them when running model
-- invocation. This field is ignored if you don\'t specify a prompt
-- resource in the @modelId@ field.
--
-- 'requestMetadata', 'converse_requestMetadata' - Key-value pairs that you can use to filter invocation logs.
--
-- 'serviceTier', 'converse_serviceTier' - Specifies the processing tier configuration used for serving the
-- request.
--
-- 'system', 'converse_system' - A prompt that provides instructions or context to the model about the
-- task it should perform, or the persona it should adopt during the
-- conversation.
--
-- 'toolConfig', 'converse_toolConfig' - Configuration information for the tools that the model can use when
-- generating a response.
--
-- For information about models that support tool use, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference.html#conversation-inference-supported-models-features Supported models and model features>.
--
-- 'modelId', 'converse_modelId' - Specifies the model or throughput with which to run inference, or the
-- prompt resource to use in inference. The value depends on the resource
-- that you use:
--
-- -   If you use a base model, specify the model ID or its ARN. For a list
--     of model IDs for base models, see
--     <https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns Amazon Bedrock base model IDs (on-demand throughput)>
--     in the Amazon Bedrock User Guide.
--
-- -   If you use an inference profile, specify the inference profile ID or
--     its ARN. For a list of inference profile IDs, see
--     <https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html Supported Regions and models for cross-region inference>
--     in the Amazon Bedrock User Guide.
--
-- -   If you use a provisioned model, specify the ARN of the Provisioned
--     Throughput. For more information, see
--     <https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html Run inference using a Provisioned Throughput>
--     in the Amazon Bedrock User Guide.
--
-- -   If you use a custom model, first purchase Provisioned Throughput for
--     it. Then specify the ARN of the resulting provisioned model. For
--     more information, see
--     <https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html Use a custom model in Amazon Bedrock>
--     in the Amazon Bedrock User Guide.
--
-- -   To include a prompt that was defined in
--     <https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html Prompt management>,
--     specify the ARN of the prompt version to use.
--
-- The Converse API doesn\'t support
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html imported models>.
newConverse ::
  -- | 'modelId'
  Prelude.Text ->
  Converse
newConverse pModelId_ =
  Converse'
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

-- | Additional inference parameters that the model supports, beyond the base
-- set of inference parameters that @Converse@ and @ConverseStream@ support
-- in the @inferenceConfig@ field. For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Model parameters>.
converse_additionalModelRequestFields :: Lens.Lens' Converse (Prelude.Maybe Document)
converse_additionalModelRequestFields = Lens.lens (\Converse' {additionalModelRequestFields} -> additionalModelRequestFields) (\s@Converse' {} a -> s {additionalModelRequestFields = a} :: Converse)

-- | Additional model parameters field paths to return in the response.
-- @Converse@ and @ConverseStream@ return the requested fields as a JSON
-- Pointer object in the @additionalModelResponseFields@ field. The
-- following is example JSON for @additionalModelResponseFieldPaths@.
--
-- @[ \"\/stop_sequence\" ]@
--
-- For information about the JSON Pointer syntax, see the
-- <https://datatracker.ietf.org/doc/html/rfc6901 Internet Engineering Task Force (IETF)>
-- documentation.
--
-- @Converse@ and @ConverseStream@ reject an empty JSON Pointer or
-- incorrectly structured JSON Pointer with a @400@ error code. if the JSON
-- Pointer is valid, but the requested field is not in the model response,
-- it is ignored by @Converse@.
converse_additionalModelResponseFieldPaths :: Lens.Lens' Converse (Prelude.Maybe [Prelude.Text])
converse_additionalModelResponseFieldPaths = Lens.lens (\Converse' {additionalModelResponseFieldPaths} -> additionalModelResponseFieldPaths) (\s@Converse' {} a -> s {additionalModelResponseFieldPaths = a} :: Converse) Prelude.. Lens.mapping Lens.coerced

-- | Configuration information for a guardrail that you want to use in the
-- request. If you include @guardContent@ blocks in the @content@ field in
-- the @messages@ field, the guardrail operates only on those messages. If
-- you include no @guardContent@ blocks, the guardrail operates on all
-- messages in the request body and in any included prompt resource.
converse_guardrailConfig :: Lens.Lens' Converse (Prelude.Maybe GuardrailConfiguration)
converse_guardrailConfig = Lens.lens (\Converse' {guardrailConfig} -> guardrailConfig) (\s@Converse' {} a -> s {guardrailConfig = a} :: Converse)

-- | Inference parameters to pass to the model. @Converse@ and
-- @ConverseStream@ support a base set of inference parameters. If you need
-- to pass additional parameters that the model supports, use the
-- @additionalModelRequestFields@ request field.
converse_inferenceConfig :: Lens.Lens' Converse (Prelude.Maybe InferenceConfiguration)
converse_inferenceConfig = Lens.lens (\Converse' {inferenceConfig} -> inferenceConfig) (\s@Converse' {} a -> s {inferenceConfig = a} :: Converse)

-- | The messages that you want to send to the model.
converse_messages :: Lens.Lens' Converse (Prelude.Maybe [Message])
converse_messages = Lens.lens (\Converse' {messages} -> messages) (\s@Converse' {} a -> s {messages = a} :: Converse) Prelude.. Lens.mapping Lens.coerced

-- | Output configuration for a model response.
converse_outputConfig :: Lens.Lens' Converse (Prelude.Maybe OutputConfig)
converse_outputConfig = Lens.lens (\Converse' {outputConfig} -> outputConfig) (\s@Converse' {} a -> s {outputConfig = a} :: Converse)

-- | Model performance settings for the request.
converse_performanceConfig :: Lens.Lens' Converse (Prelude.Maybe PerformanceConfiguration)
converse_performanceConfig = Lens.lens (\Converse' {performanceConfig} -> performanceConfig) (\s@Converse' {} a -> s {performanceConfig = a} :: Converse)

-- | Contains a map of variables in a prompt from Prompt management to
-- objects containing the values to fill in for them when running model
-- invocation. This field is ignored if you don\'t specify a prompt
-- resource in the @modelId@ field.
converse_promptVariables :: Lens.Lens' Converse (Prelude.Maybe (Prelude.HashMap Prelude.Text PromptVariableValues))
converse_promptVariables = Lens.lens (\Converse' {promptVariables} -> promptVariables) (\s@Converse' {} a -> s {promptVariables = a} :: Converse) Prelude.. Lens.mapping (Data._Sensitive Prelude.. Lens.coerced)

-- | Key-value pairs that you can use to filter invocation logs.
converse_requestMetadata :: Lens.Lens' Converse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
converse_requestMetadata = Lens.lens (\Converse' {requestMetadata} -> requestMetadata) (\s@Converse' {} a -> s {requestMetadata = a} :: Converse) Prelude.. Lens.mapping (Data._Sensitive Prelude.. Lens.coerced)

-- | Specifies the processing tier configuration used for serving the
-- request.
converse_serviceTier :: Lens.Lens' Converse (Prelude.Maybe ServiceTier)
converse_serviceTier = Lens.lens (\Converse' {serviceTier} -> serviceTier) (\s@Converse' {} a -> s {serviceTier = a} :: Converse)

-- | A prompt that provides instructions or context to the model about the
-- task it should perform, or the persona it should adopt during the
-- conversation.
converse_system :: Lens.Lens' Converse (Prelude.Maybe [SystemContentBlock])
converse_system = Lens.lens (\Converse' {system} -> system) (\s@Converse' {} a -> s {system = a} :: Converse) Prelude.. Lens.mapping Lens.coerced

-- | Configuration information for the tools that the model can use when
-- generating a response.
--
-- For information about models that support tool use, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference.html#conversation-inference-supported-models-features Supported models and model features>.
converse_toolConfig :: Lens.Lens' Converse (Prelude.Maybe ToolConfiguration)
converse_toolConfig = Lens.lens (\Converse' {toolConfig} -> toolConfig) (\s@Converse' {} a -> s {toolConfig = a} :: Converse)

-- | Specifies the model or throughput with which to run inference, or the
-- prompt resource to use in inference. The value depends on the resource
-- that you use:
--
-- -   If you use a base model, specify the model ID or its ARN. For a list
--     of model IDs for base models, see
--     <https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns Amazon Bedrock base model IDs (on-demand throughput)>
--     in the Amazon Bedrock User Guide.
--
-- -   If you use an inference profile, specify the inference profile ID or
--     its ARN. For a list of inference profile IDs, see
--     <https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html Supported Regions and models for cross-region inference>
--     in the Amazon Bedrock User Guide.
--
-- -   If you use a provisioned model, specify the ARN of the Provisioned
--     Throughput. For more information, see
--     <https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html Run inference using a Provisioned Throughput>
--     in the Amazon Bedrock User Guide.
--
-- -   If you use a custom model, first purchase Provisioned Throughput for
--     it. Then specify the ARN of the resulting provisioned model. For
--     more information, see
--     <https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html Use a custom model in Amazon Bedrock>
--     in the Amazon Bedrock User Guide.
--
-- -   To include a prompt that was defined in
--     <https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html Prompt management>,
--     specify the ARN of the prompt version to use.
--
-- The Converse API doesn\'t support
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html imported models>.
converse_modelId :: Lens.Lens' Converse Prelude.Text
converse_modelId = Lens.lens (\Converse' {modelId} -> modelId) (\s@Converse' {} a -> s {modelId = a} :: Converse)

instance Core.AWSRequest Converse where
  type AWSResponse Converse = ConverseResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ConverseResponse'
            Prelude.<$> (x Data..?> "additionalModelResponseFields")
            Prelude.<*> (x Data..?> "performanceConfig")
            Prelude.<*> (x Data..?> "serviceTier")
            Prelude.<*> (x Data..?> "trace")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Data..:> "output")
            Prelude.<*> (x Data..:> "stopReason")
            Prelude.<*> (x Data..:> "usage")
            Prelude.<*> (x Data..:> "metrics")
      )

instance Prelude.Hashable Converse where
  hashWithSalt _salt Converse' {..} =
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

instance Prelude.NFData Converse where
  rnf Converse' {..} =
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

instance Data.ToHeaders Converse where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToJSON Converse where
  toJSON Converse' {..} =
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

instance Data.ToPath Converse where
  toPath Converse' {..} =
    Prelude.mconcat
      ["/model/", Data.toBS modelId, "/converse"]

instance Data.ToQuery Converse where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newConverseResponse' smart constructor.
data ConverseResponse = ConverseResponse'
  { -- | Additional fields in the response that are unique to the model.
    additionalModelResponseFields :: Prelude.Maybe Document,
    -- | Model performance settings for the request.
    performanceConfig :: Prelude.Maybe PerformanceConfiguration,
    -- | Specifies the processing tier configuration used for serving the
    -- request.
    serviceTier :: Prelude.Maybe ServiceTier,
    -- | A trace object that contains information about the Guardrail behavior.
    trace :: Prelude.Maybe ConverseTrace,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The result from the call to @Converse@.
    output :: ConverseOutput,
    -- | The reason why the model stopped generating output.
    stopReason :: StopReason,
    -- | The total number of tokens used in the call to @Converse@. The total
    -- includes the tokens input to the model and the tokens generated by the
    -- model.
    usage :: TokenUsage,
    -- | Metrics for the call to @Converse@.
    metrics :: ConverseMetrics
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConverseResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'additionalModelResponseFields', 'converseResponse_additionalModelResponseFields' - Additional fields in the response that are unique to the model.
--
-- 'performanceConfig', 'converseResponse_performanceConfig' - Model performance settings for the request.
--
-- 'serviceTier', 'converseResponse_serviceTier' - Specifies the processing tier configuration used for serving the
-- request.
--
-- 'trace', 'converseResponse_trace' - A trace object that contains information about the Guardrail behavior.
--
-- 'httpStatus', 'converseResponse_httpStatus' - The response's http status code.
--
-- 'output', 'converseResponse_output' - The result from the call to @Converse@.
--
-- 'stopReason', 'converseResponse_stopReason' - The reason why the model stopped generating output.
--
-- 'usage', 'converseResponse_usage' - The total number of tokens used in the call to @Converse@. The total
-- includes the tokens input to the model and the tokens generated by the
-- model.
--
-- 'metrics', 'converseResponse_metrics' - Metrics for the call to @Converse@.
newConverseResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'output'
  ConverseOutput ->
  -- | 'stopReason'
  StopReason ->
  -- | 'usage'
  TokenUsage ->
  -- | 'metrics'
  ConverseMetrics ->
  ConverseResponse
newConverseResponse
  pHttpStatus_
  pOutput_
  pStopReason_
  pUsage_
  pMetrics_ =
    ConverseResponse'
      { additionalModelResponseFields =
          Prelude.Nothing,
        performanceConfig = Prelude.Nothing,
        serviceTier = Prelude.Nothing,
        trace = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        output = pOutput_,
        stopReason = pStopReason_,
        usage = pUsage_,
        metrics = pMetrics_
      }

-- | Additional fields in the response that are unique to the model.
converseResponse_additionalModelResponseFields :: Lens.Lens' ConverseResponse (Prelude.Maybe Document)
converseResponse_additionalModelResponseFields = Lens.lens (\ConverseResponse' {additionalModelResponseFields} -> additionalModelResponseFields) (\s@ConverseResponse' {} a -> s {additionalModelResponseFields = a} :: ConverseResponse)

-- | Model performance settings for the request.
converseResponse_performanceConfig :: Lens.Lens' ConverseResponse (Prelude.Maybe PerformanceConfiguration)
converseResponse_performanceConfig = Lens.lens (\ConverseResponse' {performanceConfig} -> performanceConfig) (\s@ConverseResponse' {} a -> s {performanceConfig = a} :: ConverseResponse)

-- | Specifies the processing tier configuration used for serving the
-- request.
converseResponse_serviceTier :: Lens.Lens' ConverseResponse (Prelude.Maybe ServiceTier)
converseResponse_serviceTier = Lens.lens (\ConverseResponse' {serviceTier} -> serviceTier) (\s@ConverseResponse' {} a -> s {serviceTier = a} :: ConverseResponse)

-- | A trace object that contains information about the Guardrail behavior.
converseResponse_trace :: Lens.Lens' ConverseResponse (Prelude.Maybe ConverseTrace)
converseResponse_trace = Lens.lens (\ConverseResponse' {trace} -> trace) (\s@ConverseResponse' {} a -> s {trace = a} :: ConverseResponse)

-- | The response's http status code.
converseResponse_httpStatus :: Lens.Lens' ConverseResponse Prelude.Int
converseResponse_httpStatus = Lens.lens (\ConverseResponse' {httpStatus} -> httpStatus) (\s@ConverseResponse' {} a -> s {httpStatus = a} :: ConverseResponse)

-- | The result from the call to @Converse@.
converseResponse_output :: Lens.Lens' ConverseResponse ConverseOutput
converseResponse_output = Lens.lens (\ConverseResponse' {output} -> output) (\s@ConverseResponse' {} a -> s {output = a} :: ConverseResponse)

-- | The reason why the model stopped generating output.
converseResponse_stopReason :: Lens.Lens' ConverseResponse StopReason
converseResponse_stopReason = Lens.lens (\ConverseResponse' {stopReason} -> stopReason) (\s@ConverseResponse' {} a -> s {stopReason = a} :: ConverseResponse)

-- | The total number of tokens used in the call to @Converse@. The total
-- includes the tokens input to the model and the tokens generated by the
-- model.
converseResponse_usage :: Lens.Lens' ConverseResponse TokenUsage
converseResponse_usage = Lens.lens (\ConverseResponse' {usage} -> usage) (\s@ConverseResponse' {} a -> s {usage = a} :: ConverseResponse)

-- | Metrics for the call to @Converse@.
converseResponse_metrics :: Lens.Lens' ConverseResponse ConverseMetrics
converseResponse_metrics = Lens.lens (\ConverseResponse' {metrics} -> metrics) (\s@ConverseResponse' {} a -> s {metrics = a} :: ConverseResponse)

instance Prelude.NFData ConverseResponse where
  rnf ConverseResponse' {..} =
    Prelude.rnf additionalModelResponseFields `Prelude.seq`
      Prelude.rnf performanceConfig `Prelude.seq`
        Prelude.rnf serviceTier `Prelude.seq`
          Prelude.rnf trace `Prelude.seq`
            Prelude.rnf httpStatus `Prelude.seq`
              Prelude.rnf output `Prelude.seq`
                Prelude.rnf stopReason `Prelude.seq`
                  Prelude.rnf usage `Prelude.seq`
                    Prelude.rnf metrics
