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
-- Module      : Amazonka.BedrockRuntime.StartAsyncInvoke
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an asynchronous invocation.
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
module Amazonka.BedrockRuntime.StartAsyncInvoke
  ( -- * Creating a Request
    StartAsyncInvoke (..),
    newStartAsyncInvoke,

    -- * Request Lenses
    startAsyncInvoke_clientRequestToken,
    startAsyncInvoke_tags,
    startAsyncInvoke_modelId,
    startAsyncInvoke_modelInput,
    startAsyncInvoke_outputDataConfig,

    -- * Destructuring the Response
    StartAsyncInvokeResponse (..),
    newStartAsyncInvokeResponse,

    -- * Response Lenses
    startAsyncInvokeResponse_httpStatus,
    startAsyncInvokeResponse_invocationArn,
  )
where

import Amazonka.BedrockRuntime.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newStartAsyncInvoke' smart constructor.
data StartAsyncInvoke = StartAsyncInvoke'
  { -- | Specify idempotency token to ensure that requests are not duplicated.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | Tags to apply to the invocation.
    tags :: Prelude.Maybe [Tag],
    -- | The model to invoke.
    modelId :: Prelude.Text,
    -- | Input to send to the model.
    modelInput :: Data.Sensitive ModelInputPayload,
    -- | Where to store the output.
    outputDataConfig :: AsyncInvokeOutputDataConfig
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartAsyncInvoke' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientRequestToken', 'startAsyncInvoke_clientRequestToken' - Specify idempotency token to ensure that requests are not duplicated.
--
-- 'tags', 'startAsyncInvoke_tags' - Tags to apply to the invocation.
--
-- 'modelId', 'startAsyncInvoke_modelId' - The model to invoke.
--
-- 'modelInput', 'startAsyncInvoke_modelInput' - Input to send to the model.
--
-- 'outputDataConfig', 'startAsyncInvoke_outputDataConfig' - Where to store the output.
newStartAsyncInvoke ::
  -- | 'modelId'
  Prelude.Text ->
  -- | 'modelInput'
  ModelInputPayload ->
  -- | 'outputDataConfig'
  AsyncInvokeOutputDataConfig ->
  StartAsyncInvoke
newStartAsyncInvoke
  pModelId_
  pModelInput_
  pOutputDataConfig_ =
    StartAsyncInvoke'
      { clientRequestToken =
          Prelude.Nothing,
        tags = Prelude.Nothing,
        modelId = pModelId_,
        modelInput = Data._Sensitive Lens.# pModelInput_,
        outputDataConfig = pOutputDataConfig_
      }

-- | Specify idempotency token to ensure that requests are not duplicated.
startAsyncInvoke_clientRequestToken :: Lens.Lens' StartAsyncInvoke (Prelude.Maybe Prelude.Text)
startAsyncInvoke_clientRequestToken = Lens.lens (\StartAsyncInvoke' {clientRequestToken} -> clientRequestToken) (\s@StartAsyncInvoke' {} a -> s {clientRequestToken = a} :: StartAsyncInvoke)

-- | Tags to apply to the invocation.
startAsyncInvoke_tags :: Lens.Lens' StartAsyncInvoke (Prelude.Maybe [Tag])
startAsyncInvoke_tags = Lens.lens (\StartAsyncInvoke' {tags} -> tags) (\s@StartAsyncInvoke' {} a -> s {tags = a} :: StartAsyncInvoke) Prelude.. Lens.mapping Lens.coerced

-- | The model to invoke.
startAsyncInvoke_modelId :: Lens.Lens' StartAsyncInvoke Prelude.Text
startAsyncInvoke_modelId = Lens.lens (\StartAsyncInvoke' {modelId} -> modelId) (\s@StartAsyncInvoke' {} a -> s {modelId = a} :: StartAsyncInvoke)

-- | Input to send to the model.
startAsyncInvoke_modelInput :: Lens.Lens' StartAsyncInvoke ModelInputPayload
startAsyncInvoke_modelInput = Lens.lens (\StartAsyncInvoke' {modelInput} -> modelInput) (\s@StartAsyncInvoke' {} a -> s {modelInput = a} :: StartAsyncInvoke) Prelude.. Data._Sensitive

-- | Where to store the output.
startAsyncInvoke_outputDataConfig :: Lens.Lens' StartAsyncInvoke AsyncInvokeOutputDataConfig
startAsyncInvoke_outputDataConfig = Lens.lens (\StartAsyncInvoke' {outputDataConfig} -> outputDataConfig) (\s@StartAsyncInvoke' {} a -> s {outputDataConfig = a} :: StartAsyncInvoke)

instance Core.AWSRequest StartAsyncInvoke where
  type
    AWSResponse StartAsyncInvoke =
      StartAsyncInvokeResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          StartAsyncInvokeResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Data..:> "invocationArn")
      )

instance Prelude.Hashable StartAsyncInvoke where
  hashWithSalt _salt StartAsyncInvoke' {..} =
    _salt
      `Prelude.hashWithSalt` clientRequestToken
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` modelId
      `Prelude.hashWithSalt` modelInput
      `Prelude.hashWithSalt` outputDataConfig

instance Prelude.NFData StartAsyncInvoke where
  rnf StartAsyncInvoke' {..} =
    Prelude.rnf clientRequestToken `Prelude.seq`
      Prelude.rnf tags `Prelude.seq`
        Prelude.rnf modelId `Prelude.seq`
          Prelude.rnf modelInput `Prelude.seq`
            Prelude.rnf outputDataConfig

instance Data.ToHeaders StartAsyncInvoke where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToJSON StartAsyncInvoke where
  toJSON StartAsyncInvoke' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("clientRequestToken" Data..=)
              Prelude.<$> clientRequestToken,
            ("tags" Data..=) Prelude.<$> tags,
            Prelude.Just ("modelId" Data..= modelId),
            Prelude.Just ("modelInput" Data..= modelInput),
            Prelude.Just
              ("outputDataConfig" Data..= outputDataConfig)
          ]
      )

instance Data.ToPath StartAsyncInvoke where
  toPath = Prelude.const "/async-invoke"

instance Data.ToQuery StartAsyncInvoke where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartAsyncInvokeResponse' smart constructor.
data StartAsyncInvokeResponse = StartAsyncInvokeResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ARN of the invocation.
    invocationArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartAsyncInvokeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'startAsyncInvokeResponse_httpStatus' - The response's http status code.
--
-- 'invocationArn', 'startAsyncInvokeResponse_invocationArn' - The ARN of the invocation.
newStartAsyncInvokeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'invocationArn'
  Prelude.Text ->
  StartAsyncInvokeResponse
newStartAsyncInvokeResponse
  pHttpStatus_
  pInvocationArn_ =
    StartAsyncInvokeResponse'
      { httpStatus =
          pHttpStatus_,
        invocationArn = pInvocationArn_
      }

-- | The response's http status code.
startAsyncInvokeResponse_httpStatus :: Lens.Lens' StartAsyncInvokeResponse Prelude.Int
startAsyncInvokeResponse_httpStatus = Lens.lens (\StartAsyncInvokeResponse' {httpStatus} -> httpStatus) (\s@StartAsyncInvokeResponse' {} a -> s {httpStatus = a} :: StartAsyncInvokeResponse)

-- | The ARN of the invocation.
startAsyncInvokeResponse_invocationArn :: Lens.Lens' StartAsyncInvokeResponse Prelude.Text
startAsyncInvokeResponse_invocationArn = Lens.lens (\StartAsyncInvokeResponse' {invocationArn} -> invocationArn) (\s@StartAsyncInvokeResponse' {} a -> s {invocationArn = a} :: StartAsyncInvokeResponse)

instance Prelude.NFData StartAsyncInvokeResponse where
  rnf StartAsyncInvokeResponse' {..} =
    Prelude.rnf httpStatus `Prelude.seq`
      Prelude.rnf invocationArn
