{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.BedrockRuntime.Types.InferenceConfiguration
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.InferenceConfiguration where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Base inference parameters to pass to a model in a call to
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html Converse>
-- or
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html ConverseStream>.
-- For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters for foundation models>.
--
-- If you need to pass additional parameters that the model supports, use
-- the @additionalModelRequestFields@ request field in the call to
-- @Converse@ or @ConverseStream@. For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Model parameters>.
--
-- /See:/ 'newInferenceConfiguration' smart constructor.
data InferenceConfiguration = InferenceConfiguration'
  { -- | The maximum number of tokens to allow in the generated response. The
    -- default value is the maximum allowed value for the model that you are
    -- using. For more information, see
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters for foundation models>.
    maxTokens :: Prelude.Maybe Prelude.Natural,
    -- | A list of stop sequences. A stop sequence is a sequence of characters
    -- that causes the model to stop generating the response.
    stopSequences :: Prelude.Maybe [Prelude.Text],
    -- | The likelihood of the model selecting higher-probability options while
    -- generating a response. A lower value makes the model more likely to
    -- choose higher-probability options, while a higher value makes the model
    -- more likely to choose lower-probability options.
    --
    -- The default value is the default value for the model that you are using.
    -- For more information, see
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters for foundation models>.
    temperature :: Prelude.Maybe Prelude.Double,
    -- | The percentage of most-likely candidates that the model considers for
    -- the next token. For example, if you choose a value of 0.8 for @topP@,
    -- the model selects from the top 80% of the probability distribution of
    -- tokens that could be next in the sequence.
    --
    -- The default value is the default value for the model that you are using.
    -- For more information, see
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters for foundation models>.
    topP :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InferenceConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxTokens', 'inferenceConfiguration_maxTokens' - The maximum number of tokens to allow in the generated response. The
-- default value is the maximum allowed value for the model that you are
-- using. For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters for foundation models>.
--
-- 'stopSequences', 'inferenceConfiguration_stopSequences' - A list of stop sequences. A stop sequence is a sequence of characters
-- that causes the model to stop generating the response.
--
-- 'temperature', 'inferenceConfiguration_temperature' - The likelihood of the model selecting higher-probability options while
-- generating a response. A lower value makes the model more likely to
-- choose higher-probability options, while a higher value makes the model
-- more likely to choose lower-probability options.
--
-- The default value is the default value for the model that you are using.
-- For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters for foundation models>.
--
-- 'topP', 'inferenceConfiguration_topP' - The percentage of most-likely candidates that the model considers for
-- the next token. For example, if you choose a value of 0.8 for @topP@,
-- the model selects from the top 80% of the probability distribution of
-- tokens that could be next in the sequence.
--
-- The default value is the default value for the model that you are using.
-- For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters for foundation models>.
newInferenceConfiguration ::
  InferenceConfiguration
newInferenceConfiguration =
  InferenceConfiguration'
    { maxTokens =
        Prelude.Nothing,
      stopSequences = Prelude.Nothing,
      temperature = Prelude.Nothing,
      topP = Prelude.Nothing
    }

-- | The maximum number of tokens to allow in the generated response. The
-- default value is the maximum allowed value for the model that you are
-- using. For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters for foundation models>.
inferenceConfiguration_maxTokens :: Lens.Lens' InferenceConfiguration (Prelude.Maybe Prelude.Natural)
inferenceConfiguration_maxTokens = Lens.lens (\InferenceConfiguration' {maxTokens} -> maxTokens) (\s@InferenceConfiguration' {} a -> s {maxTokens = a} :: InferenceConfiguration)

-- | A list of stop sequences. A stop sequence is a sequence of characters
-- that causes the model to stop generating the response.
inferenceConfiguration_stopSequences :: Lens.Lens' InferenceConfiguration (Prelude.Maybe [Prelude.Text])
inferenceConfiguration_stopSequences = Lens.lens (\InferenceConfiguration' {stopSequences} -> stopSequences) (\s@InferenceConfiguration' {} a -> s {stopSequences = a} :: InferenceConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The likelihood of the model selecting higher-probability options while
-- generating a response. A lower value makes the model more likely to
-- choose higher-probability options, while a higher value makes the model
-- more likely to choose lower-probability options.
--
-- The default value is the default value for the model that you are using.
-- For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters for foundation models>.
inferenceConfiguration_temperature :: Lens.Lens' InferenceConfiguration (Prelude.Maybe Prelude.Double)
inferenceConfiguration_temperature = Lens.lens (\InferenceConfiguration' {temperature} -> temperature) (\s@InferenceConfiguration' {} a -> s {temperature = a} :: InferenceConfiguration)

-- | The percentage of most-likely candidates that the model considers for
-- the next token. For example, if you choose a value of 0.8 for @topP@,
-- the model selects from the top 80% of the probability distribution of
-- tokens that could be next in the sequence.
--
-- The default value is the default value for the model that you are using.
-- For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Inference parameters for foundation models>.
inferenceConfiguration_topP :: Lens.Lens' InferenceConfiguration (Prelude.Maybe Prelude.Double)
inferenceConfiguration_topP = Lens.lens (\InferenceConfiguration' {topP} -> topP) (\s@InferenceConfiguration' {} a -> s {topP = a} :: InferenceConfiguration)

instance Prelude.Hashable InferenceConfiguration where
  hashWithSalt _salt InferenceConfiguration' {..} =
    _salt
      `Prelude.hashWithSalt` maxTokens
      `Prelude.hashWithSalt` stopSequences
      `Prelude.hashWithSalt` temperature
      `Prelude.hashWithSalt` topP

instance Prelude.NFData InferenceConfiguration where
  rnf InferenceConfiguration' {..} =
    Prelude.rnf maxTokens `Prelude.seq`
      Prelude.rnf stopSequences `Prelude.seq`
        Prelude.rnf temperature `Prelude.seq`
          Prelude.rnf topP

instance Data.ToJSON InferenceConfiguration where
  toJSON InferenceConfiguration' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("maxTokens" Data..=) Prelude.<$> maxTokens,
            ("stopSequences" Data..=) Prelude.<$> stopSequences,
            ("temperature" Data..=) Prelude.<$> temperature,
            ("topP" Data..=) Prelude.<$> topP
          ]
      )
