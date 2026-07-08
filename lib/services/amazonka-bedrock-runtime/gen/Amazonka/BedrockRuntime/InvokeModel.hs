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
-- Module      : Amazonka.BedrockRuntime.InvokeModel
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Invokes the specified Amazon Bedrock model to run inference using the
-- prompt and inference parameters provided in the request body. You use
-- model inference to generate text, images, and embeddings.
--
-- For example code, see /Invoke model code examples/ in the /Amazon
-- Bedrock User Guide/.
--
-- This operation requires permission for the @bedrock:InvokeModel@ action.
--
-- To deny all inference access to resources that you specify in the
-- modelId field, you need to deny access to the @bedrock:InvokeModel@ and
-- @bedrock:InvokeModelWithResponseStream@ actions. Doing this also denies
-- access to the resource through the Converse API actions
-- (<https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html Converse>
-- and
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html ConverseStream>).
-- For more information see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-deny-inference Deny access for inference on specific models>.
--
-- For troubleshooting some of the common errors you might encounter when
-- using the @InvokeModel@ API, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html Troubleshooting Amazon Bedrock API Error Codes>
-- in the Amazon Bedrock User Guide
module Amazonka.BedrockRuntime.InvokeModel
  ( -- * Creating a Request
    InvokeModel (..),
    newInvokeModel,

    -- * Request Lenses
    invokeModel_accept,
    invokeModel_body,
    invokeModel_contentType,
    invokeModel_guardrailIdentifier,
    invokeModel_guardrailVersion,
    invokeModel_performanceConfigLatency,
    invokeModel_requestMetadata,
    invokeModel_serviceTier,
    invokeModel_trace,
    invokeModel_modelId,

    -- * Destructuring the Response
    InvokeModelResponse (..),
    newInvokeModelResponse,

    -- * Response Lenses
    invokeModelResponse_performanceConfigLatency,
    invokeModelResponse_serviceTier,
    invokeModelResponse_httpStatus,
    invokeModelResponse_body,
    invokeModelResponse_contentType,
  )
where

import Amazonka.BedrockRuntime.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newInvokeModel' smart constructor.
data InvokeModel = InvokeModel'
  { -- | The desired MIME type of the inference body in the response. The default
    -- value is @application\/json@.
    accept :: Prelude.Maybe Prelude.Text,
    -- | The prompt and inference parameters in the format specified in the
    -- @contentType@ in the header. You must provide the body in JSON format.
    -- To see the format and content of the request and response bodies for
    -- different models, refer to
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters>.
    -- For more information, see
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html Run inference>
    -- in the Bedrock User Guide.
    body :: Prelude.Maybe Prelude.ByteString,
    -- | The MIME type of the input data in the request. You must specify
    -- @application\/json@.
    contentType :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the guardrail that you want to use. If you
    -- don\'t provide a value, no guardrail is applied to the invocation.
    --
    -- An error will be thrown in the following situations.
    --
    -- -   You don\'t provide a guardrail identifier but you specify the
    --     @amazon-bedrock-guardrailConfig@ field in the request body.
    --
    -- -   You enable the guardrail but the @contentType@ isn\'t
    --     @application\/json@.
    --
    -- -   You provide a guardrail identifier, but @guardrailVersion@ isn\'t
    --     specified.
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
    --
    -- The @modelId@ to provide depends on the type of model or throughput that
    -- you use:
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
    -- -   If you use a custom model, specify the ARN of the custom model
    --     deployment (for on-demand inference) or the ARN of your provisioned
    --     model (for Provisioned Throughput). For more information, see
    --     <https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html Use a custom model in Amazon Bedrock>
    --     in the Amazon Bedrock User Guide.
    --
    -- -   If you use an
    --     <https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html imported model>,
    --     specify the ARN of the imported model. You can get the model ARN
    --     from a successful call to
    --     <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html CreateModelImportJob>
    --     or from the Imported models page in the Amazon Bedrock console.
    modelId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InvokeModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accept', 'invokeModel_accept' - The desired MIME type of the inference body in the response. The default
-- value is @application\/json@.
--
-- 'body', 'invokeModel_body' - The prompt and inference parameters in the format specified in the
-- @contentType@ in the header. You must provide the body in JSON format.
-- To see the format and content of the request and response bodies for
-- different models, refer to
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters>.
-- For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html Run inference>
-- in the Bedrock User Guide.
--
-- 'contentType', 'invokeModel_contentType' - The MIME type of the input data in the request. You must specify
-- @application\/json@.
--
-- 'guardrailIdentifier', 'invokeModel_guardrailIdentifier' - The unique identifier of the guardrail that you want to use. If you
-- don\'t provide a value, no guardrail is applied to the invocation.
--
-- An error will be thrown in the following situations.
--
-- -   You don\'t provide a guardrail identifier but you specify the
--     @amazon-bedrock-guardrailConfig@ field in the request body.
--
-- -   You enable the guardrail but the @contentType@ isn\'t
--     @application\/json@.
--
-- -   You provide a guardrail identifier, but @guardrailVersion@ isn\'t
--     specified.
--
-- 'guardrailVersion', 'invokeModel_guardrailVersion' - The version number for the guardrail. The value can also be @DRAFT@.
--
-- 'performanceConfigLatency', 'invokeModel_performanceConfigLatency' - Model performance settings for the request.
--
-- 'requestMetadata', 'invokeModel_requestMetadata' - Key-value pairs that you can use to filter invocation logs.
--
-- 'serviceTier', 'invokeModel_serviceTier' - Specifies the processing tier type used for serving the request.
--
-- 'trace', 'invokeModel_trace' - Specifies whether to enable or disable the Bedrock trace. If enabled,
-- you can see the full Bedrock trace.
--
-- 'modelId', 'invokeModel_modelId' - The unique identifier of the model to invoke to run inference.
--
-- The @modelId@ to provide depends on the type of model or throughput that
-- you use:
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
-- -   If you use a custom model, specify the ARN of the custom model
--     deployment (for on-demand inference) or the ARN of your provisioned
--     model (for Provisioned Throughput). For more information, see
--     <https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html Use a custom model in Amazon Bedrock>
--     in the Amazon Bedrock User Guide.
--
-- -   If you use an
--     <https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html imported model>,
--     specify the ARN of the imported model. You can get the model ARN
--     from a successful call to
--     <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html CreateModelImportJob>
--     or from the Imported models page in the Amazon Bedrock console.
newInvokeModel ::
  -- | 'modelId'
  Prelude.Text ->
  InvokeModel
newInvokeModel pModelId_ =
  InvokeModel'
    { accept = Prelude.Nothing,
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

-- | The desired MIME type of the inference body in the response. The default
-- value is @application\/json@.
invokeModel_accept :: Lens.Lens' InvokeModel (Prelude.Maybe Prelude.Text)
invokeModel_accept = Lens.lens (\InvokeModel' {accept} -> accept) (\s@InvokeModel' {} a -> s {accept = a} :: InvokeModel)

-- | The prompt and inference parameters in the format specified in the
-- @contentType@ in the header. You must provide the body in JSON format.
-- To see the format and content of the request and response bodies for
-- different models, refer to
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters>.
-- For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html Run inference>
-- in the Bedrock User Guide.
invokeModel_body :: Lens.Lens' InvokeModel (Prelude.Maybe Prelude.ByteString)
invokeModel_body = Lens.lens (\InvokeModel' {body} -> body) (\s@InvokeModel' {} a -> s {body = a} :: InvokeModel)

-- | The MIME type of the input data in the request. You must specify
-- @application\/json@.
invokeModel_contentType :: Lens.Lens' InvokeModel (Prelude.Maybe Prelude.Text)
invokeModel_contentType = Lens.lens (\InvokeModel' {contentType} -> contentType) (\s@InvokeModel' {} a -> s {contentType = a} :: InvokeModel)

-- | The unique identifier of the guardrail that you want to use. If you
-- don\'t provide a value, no guardrail is applied to the invocation.
--
-- An error will be thrown in the following situations.
--
-- -   You don\'t provide a guardrail identifier but you specify the
--     @amazon-bedrock-guardrailConfig@ field in the request body.
--
-- -   You enable the guardrail but the @contentType@ isn\'t
--     @application\/json@.
--
-- -   You provide a guardrail identifier, but @guardrailVersion@ isn\'t
--     specified.
invokeModel_guardrailIdentifier :: Lens.Lens' InvokeModel (Prelude.Maybe Prelude.Text)
invokeModel_guardrailIdentifier = Lens.lens (\InvokeModel' {guardrailIdentifier} -> guardrailIdentifier) (\s@InvokeModel' {} a -> s {guardrailIdentifier = a} :: InvokeModel)

-- | The version number for the guardrail. The value can also be @DRAFT@.
invokeModel_guardrailVersion :: Lens.Lens' InvokeModel (Prelude.Maybe Prelude.Text)
invokeModel_guardrailVersion = Lens.lens (\InvokeModel' {guardrailVersion} -> guardrailVersion) (\s@InvokeModel' {} a -> s {guardrailVersion = a} :: InvokeModel)

-- | Model performance settings for the request.
invokeModel_performanceConfigLatency :: Lens.Lens' InvokeModel (Prelude.Maybe PerformanceConfigLatency)
invokeModel_performanceConfigLatency = Lens.lens (\InvokeModel' {performanceConfigLatency} -> performanceConfigLatency) (\s@InvokeModel' {} a -> s {performanceConfigLatency = a} :: InvokeModel)

-- | Key-value pairs that you can use to filter invocation logs.
invokeModel_requestMetadata :: Lens.Lens' InvokeModel (Prelude.Maybe Prelude.Text)
invokeModel_requestMetadata = Lens.lens (\InvokeModel' {requestMetadata} -> requestMetadata) (\s@InvokeModel' {} a -> s {requestMetadata = a} :: InvokeModel) Prelude.. Lens.mapping Data._Sensitive

-- | Specifies the processing tier type used for serving the request.
invokeModel_serviceTier :: Lens.Lens' InvokeModel (Prelude.Maybe ServiceTierType)
invokeModel_serviceTier = Lens.lens (\InvokeModel' {serviceTier} -> serviceTier) (\s@InvokeModel' {} a -> s {serviceTier = a} :: InvokeModel)

-- | Specifies whether to enable or disable the Bedrock trace. If enabled,
-- you can see the full Bedrock trace.
invokeModel_trace :: Lens.Lens' InvokeModel (Prelude.Maybe Trace)
invokeModel_trace = Lens.lens (\InvokeModel' {trace} -> trace) (\s@InvokeModel' {} a -> s {trace = a} :: InvokeModel)

-- | The unique identifier of the model to invoke to run inference.
--
-- The @modelId@ to provide depends on the type of model or throughput that
-- you use:
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
-- -   If you use a custom model, specify the ARN of the custom model
--     deployment (for on-demand inference) or the ARN of your provisioned
--     model (for Provisioned Throughput). For more information, see
--     <https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html Use a custom model in Amazon Bedrock>
--     in the Amazon Bedrock User Guide.
--
-- -   If you use an
--     <https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html imported model>,
--     specify the ARN of the imported model. You can get the model ARN
--     from a successful call to
--     <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_CreateModelImportJob.html CreateModelImportJob>
--     or from the Imported models page in the Amazon Bedrock console.
invokeModel_modelId :: Lens.Lens' InvokeModel Prelude.Text
invokeModel_modelId = Lens.lens (\InvokeModel' {modelId} -> modelId) (\s@InvokeModel' {} a -> s {modelId = a} :: InvokeModel)

instance Core.AWSRequest InvokeModel where
  type AWSResponse InvokeModel = InvokeModelResponse
  request overrides =
    Request.postBody (overrides defaultService)
  response =
    Response.receiveBytes
      ( \s h x ->
          InvokeModelResponse'
            Prelude.<$> ( h
                            Data..#? "X-Amzn-Bedrock-PerformanceConfig-Latency"
                        )
            Prelude.<*> (h Data..#? "X-Amzn-Bedrock-Service-Tier")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (Prelude.pure x)
            Prelude.<*> (h Data..# "Content-Type")
      )

instance Prelude.Hashable InvokeModel where
  hashWithSalt _salt InvokeModel' {..} =
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

instance Prelude.NFData InvokeModel where
  rnf InvokeModel' {..} =
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

instance Data.ToBody InvokeModel where
  toBody InvokeModel' {..} = Data.toBody body

instance Data.ToHeaders InvokeModel where
  toHeaders InvokeModel' {..} =
    Prelude.mconcat
      [ "Accept" Data.=# accept,
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

instance Data.ToPath InvokeModel where
  toPath InvokeModel' {..} =
    Prelude.mconcat
      ["/model/", Data.toBS modelId, "/invoke"]

instance Data.ToQuery InvokeModel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newInvokeModelResponse' smart constructor.
data InvokeModelResponse = InvokeModelResponse'
  { -- | Model performance settings for the request.
    performanceConfigLatency :: Prelude.Maybe PerformanceConfigLatency,
    -- | Specifies the processing tier type used for serving the request.
    serviceTier :: Prelude.Maybe ServiceTierType,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Inference response from the model in the format specified in the
    -- @contentType@ header. To see the format and content of the request and
    -- response bodies for different models, refer to
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters>.
    body :: Prelude.ByteString,
    -- | The MIME type of the inference result.
    contentType :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InvokeModelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'performanceConfigLatency', 'invokeModelResponse_performanceConfigLatency' - Model performance settings for the request.
--
-- 'serviceTier', 'invokeModelResponse_serviceTier' - Specifies the processing tier type used for serving the request.
--
-- 'httpStatus', 'invokeModelResponse_httpStatus' - The response's http status code.
--
-- 'body', 'invokeModelResponse_body' - Inference response from the model in the format specified in the
-- @contentType@ header. To see the format and content of the request and
-- response bodies for different models, refer to
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters>.
--
-- 'contentType', 'invokeModelResponse_contentType' - The MIME type of the inference result.
newInvokeModelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'body'
  Prelude.ByteString ->
  -- | 'contentType'
  Prelude.Text ->
  InvokeModelResponse
newInvokeModelResponse
  pHttpStatus_
  pBody_
  pContentType_ =
    InvokeModelResponse'
      { performanceConfigLatency =
          Prelude.Nothing,
        serviceTier = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        body = pBody_,
        contentType = pContentType_
      }

-- | Model performance settings for the request.
invokeModelResponse_performanceConfigLatency :: Lens.Lens' InvokeModelResponse (Prelude.Maybe PerformanceConfigLatency)
invokeModelResponse_performanceConfigLatency = Lens.lens (\InvokeModelResponse' {performanceConfigLatency} -> performanceConfigLatency) (\s@InvokeModelResponse' {} a -> s {performanceConfigLatency = a} :: InvokeModelResponse)

-- | Specifies the processing tier type used for serving the request.
invokeModelResponse_serviceTier :: Lens.Lens' InvokeModelResponse (Prelude.Maybe ServiceTierType)
invokeModelResponse_serviceTier = Lens.lens (\InvokeModelResponse' {serviceTier} -> serviceTier) (\s@InvokeModelResponse' {} a -> s {serviceTier = a} :: InvokeModelResponse)

-- | The response's http status code.
invokeModelResponse_httpStatus :: Lens.Lens' InvokeModelResponse Prelude.Int
invokeModelResponse_httpStatus = Lens.lens (\InvokeModelResponse' {httpStatus} -> httpStatus) (\s@InvokeModelResponse' {} a -> s {httpStatus = a} :: InvokeModelResponse)

-- | Inference response from the model in the format specified in the
-- @contentType@ header. To see the format and content of the request and
-- response bodies for different models, refer to
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters>.
invokeModelResponse_body :: Lens.Lens' InvokeModelResponse Prelude.ByteString
invokeModelResponse_body = Lens.lens (\InvokeModelResponse' {body} -> body) (\s@InvokeModelResponse' {} a -> s {body = a} :: InvokeModelResponse)

-- | The MIME type of the inference result.
invokeModelResponse_contentType :: Lens.Lens' InvokeModelResponse Prelude.Text
invokeModelResponse_contentType = Lens.lens (\InvokeModelResponse' {contentType} -> contentType) (\s@InvokeModelResponse' {} a -> s {contentType = a} :: InvokeModelResponse)

instance Prelude.NFData InvokeModelResponse where
  rnf InvokeModelResponse' {..} =
    Prelude.rnf performanceConfigLatency `Prelude.seq`
      Prelude.rnf serviceTier `Prelude.seq`
        Prelude.rnf httpStatus `Prelude.seq`
          Prelude.rnf body `Prelude.seq`
            Prelude.rnf contentType
