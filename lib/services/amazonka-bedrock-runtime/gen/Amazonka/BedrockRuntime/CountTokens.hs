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
-- Module      : Amazonka.BedrockRuntime.CountTokens
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the token count for a given inference request. This operation
-- helps you estimate token usage before sending requests to foundation
-- models by returning the token count that would be used if the same input
-- were sent to the model in an inference request.
--
-- Token counting is model-specific because different models use different
-- tokenization strategies. The token count returned by this operation will
-- match the token count that would be charged if the same input were sent
-- to the model in an @InvokeModel@ or @Converse@ request.
--
-- You can use this operation to:
--
-- -   Estimate costs before sending inference requests.
--
-- -   Optimize prompts to fit within token limits.
--
-- -   Plan for token usage in your applications.
--
-- This operation accepts the same input formats as @InvokeModel@ and
-- @Converse@, allowing you to count tokens for both raw text inputs and
-- structured conversation formats.
--
-- The following operations are related to @CountTokens@:
--
-- -   <https://docs.aws.amazon.com/bedrock/latest/API/API_runtime_InvokeModel.html InvokeModel>
--     - Sends inference requests to foundation models
--
-- -   <https://docs.aws.amazon.com/bedrock/latest/API/API_runtime_Converse.html Converse>
--     - Sends conversation-based inference requests to foundation models
module Amazonka.BedrockRuntime.CountTokens
  ( -- * Creating a Request
    CountTokens (..),
    newCountTokens,

    -- * Request Lenses
    countTokens_modelId,
    countTokens_input,

    -- * Destructuring the Response
    CountTokensResponse (..),
    newCountTokensResponse,

    -- * Response Lenses
    countTokensResponse_httpStatus,
    countTokensResponse_inputTokens,
  )
where

import Amazonka.BedrockRuntime.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCountTokens' smart constructor.
data CountTokens = CountTokens'
  { -- | The unique identifier or ARN of the foundation model to use for token
    -- counting. Each model processes tokens differently, so the token count is
    -- specific to the model you specify.
    modelId :: Prelude.Text,
    -- | The input for which to count tokens. The structure of this parameter
    -- depends on whether you\'re counting tokens for an @InvokeModel@ or
    -- @Converse@ request:
    --
    -- -   For @InvokeModel@ requests, provide the request body in the
    --     @invokeModel@ field
    --
    -- -   For @Converse@ requests, provide the messages and system content in
    --     the @converse@ field
    --
    -- The input format must be compatible with the model specified in the
    -- @modelId@ parameter.
    input :: CountTokensInput
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CountTokens' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelId', 'countTokens_modelId' - The unique identifier or ARN of the foundation model to use for token
-- counting. Each model processes tokens differently, so the token count is
-- specific to the model you specify.
--
-- 'input', 'countTokens_input' - The input for which to count tokens. The structure of this parameter
-- depends on whether you\'re counting tokens for an @InvokeModel@ or
-- @Converse@ request:
--
-- -   For @InvokeModel@ requests, provide the request body in the
--     @invokeModel@ field
--
-- -   For @Converse@ requests, provide the messages and system content in
--     the @converse@ field
--
-- The input format must be compatible with the model specified in the
-- @modelId@ parameter.
newCountTokens ::
  -- | 'modelId'
  Prelude.Text ->
  -- | 'input'
  CountTokensInput ->
  CountTokens
newCountTokens pModelId_ pInput_ =
  CountTokens' {modelId = pModelId_, input = pInput_}

-- | The unique identifier or ARN of the foundation model to use for token
-- counting. Each model processes tokens differently, so the token count is
-- specific to the model you specify.
countTokens_modelId :: Lens.Lens' CountTokens Prelude.Text
countTokens_modelId = Lens.lens (\CountTokens' {modelId} -> modelId) (\s@CountTokens' {} a -> s {modelId = a} :: CountTokens)

-- | The input for which to count tokens. The structure of this parameter
-- depends on whether you\'re counting tokens for an @InvokeModel@ or
-- @Converse@ request:
--
-- -   For @InvokeModel@ requests, provide the request body in the
--     @invokeModel@ field
--
-- -   For @Converse@ requests, provide the messages and system content in
--     the @converse@ field
--
-- The input format must be compatible with the model specified in the
-- @modelId@ parameter.
countTokens_input :: Lens.Lens' CountTokens CountTokensInput
countTokens_input = Lens.lens (\CountTokens' {input} -> input) (\s@CountTokens' {} a -> s {input = a} :: CountTokens)

instance Core.AWSRequest CountTokens where
  type AWSResponse CountTokens = CountTokensResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          CountTokensResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Data..:> "inputTokens")
      )

instance Prelude.Hashable CountTokens where
  hashWithSalt _salt CountTokens' {..} =
    _salt
      `Prelude.hashWithSalt` modelId
      `Prelude.hashWithSalt` input

instance Prelude.NFData CountTokens where
  rnf CountTokens' {..} =
    Prelude.rnf modelId `Prelude.seq` Prelude.rnf input

instance Data.ToHeaders CountTokens where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToJSON CountTokens where
  toJSON CountTokens' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("input" Data..= input)]
      )

instance Data.ToPath CountTokens where
  toPath CountTokens' {..} =
    Prelude.mconcat
      ["/model/", Data.toBS modelId, "/count-tokens"]

instance Data.ToQuery CountTokens where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCountTokensResponse' smart constructor.
data CountTokensResponse = CountTokensResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The number of tokens in the provided input according to the specified
    -- model\'s tokenization rules. This count represents the number of input
    -- tokens that would be processed if the same input were sent to the model
    -- in an inference request. Use this value to estimate costs and ensure
    -- your inputs stay within model token limits.
    inputTokens :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CountTokensResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'countTokensResponse_httpStatus' - The response's http status code.
--
-- 'inputTokens', 'countTokensResponse_inputTokens' - The number of tokens in the provided input according to the specified
-- model\'s tokenization rules. This count represents the number of input
-- tokens that would be processed if the same input were sent to the model
-- in an inference request. Use this value to estimate costs and ensure
-- your inputs stay within model token limits.
newCountTokensResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'inputTokens'
  Prelude.Int ->
  CountTokensResponse
newCountTokensResponse pHttpStatus_ pInputTokens_ =
  CountTokensResponse'
    { httpStatus = pHttpStatus_,
      inputTokens = pInputTokens_
    }

-- | The response's http status code.
countTokensResponse_httpStatus :: Lens.Lens' CountTokensResponse Prelude.Int
countTokensResponse_httpStatus = Lens.lens (\CountTokensResponse' {httpStatus} -> httpStatus) (\s@CountTokensResponse' {} a -> s {httpStatus = a} :: CountTokensResponse)

-- | The number of tokens in the provided input according to the specified
-- model\'s tokenization rules. This count represents the number of input
-- tokens that would be processed if the same input were sent to the model
-- in an inference request. Use this value to estimate costs and ensure
-- your inputs stay within model token limits.
countTokensResponse_inputTokens :: Lens.Lens' CountTokensResponse Prelude.Int
countTokensResponse_inputTokens = Lens.lens (\CountTokensResponse' {inputTokens} -> inputTokens) (\s@CountTokensResponse' {} a -> s {inputTokens = a} :: CountTokensResponse)

instance Prelude.NFData CountTokensResponse where
  rnf CountTokensResponse' {..} =
    Prelude.rnf httpStatus `Prelude.seq`
      Prelude.rnf inputTokens
