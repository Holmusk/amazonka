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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailTraceAssessment
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailTraceAssessment where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailAssessment
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A Top level guardrail trace object. For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseTrace.html ConverseTrace>.
--
-- /See:/ 'newGuardrailTraceAssessment' smart constructor.
data GuardrailTraceAssessment = GuardrailTraceAssessment'
  { -- | Provides the reason for the action taken when harmful content is
    -- detected.
    actionReason :: Prelude.Maybe Prelude.Text,
    -- | The input assessment.
    inputAssessment :: Prelude.Maybe (Prelude.HashMap Prelude.Text GuardrailAssessment),
    -- | The output from the model.
    modelOutput :: Prelude.Maybe [Prelude.Text],
    -- | the output assessments.
    outputAssessments :: Prelude.Maybe (Prelude.HashMap Prelude.Text [GuardrailAssessment])
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailTraceAssessment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'actionReason', 'guardrailTraceAssessment_actionReason' - Provides the reason for the action taken when harmful content is
-- detected.
--
-- 'inputAssessment', 'guardrailTraceAssessment_inputAssessment' - The input assessment.
--
-- 'modelOutput', 'guardrailTraceAssessment_modelOutput' - The output from the model.
--
-- 'outputAssessments', 'guardrailTraceAssessment_outputAssessments' - the output assessments.
newGuardrailTraceAssessment ::
  GuardrailTraceAssessment
newGuardrailTraceAssessment =
  GuardrailTraceAssessment'
    { actionReason =
        Prelude.Nothing,
      inputAssessment = Prelude.Nothing,
      modelOutput = Prelude.Nothing,
      outputAssessments = Prelude.Nothing
    }

-- | Provides the reason for the action taken when harmful content is
-- detected.
guardrailTraceAssessment_actionReason :: Lens.Lens' GuardrailTraceAssessment (Prelude.Maybe Prelude.Text)
guardrailTraceAssessment_actionReason = Lens.lens (\GuardrailTraceAssessment' {actionReason} -> actionReason) (\s@GuardrailTraceAssessment' {} a -> s {actionReason = a} :: GuardrailTraceAssessment)

-- | The input assessment.
guardrailTraceAssessment_inputAssessment :: Lens.Lens' GuardrailTraceAssessment (Prelude.Maybe (Prelude.HashMap Prelude.Text GuardrailAssessment))
guardrailTraceAssessment_inputAssessment = Lens.lens (\GuardrailTraceAssessment' {inputAssessment} -> inputAssessment) (\s@GuardrailTraceAssessment' {} a -> s {inputAssessment = a} :: GuardrailTraceAssessment) Prelude.. Lens.mapping Lens.coerced

-- | The output from the model.
guardrailTraceAssessment_modelOutput :: Lens.Lens' GuardrailTraceAssessment (Prelude.Maybe [Prelude.Text])
guardrailTraceAssessment_modelOutput = Lens.lens (\GuardrailTraceAssessment' {modelOutput} -> modelOutput) (\s@GuardrailTraceAssessment' {} a -> s {modelOutput = a} :: GuardrailTraceAssessment) Prelude.. Lens.mapping Lens.coerced

-- | the output assessments.
guardrailTraceAssessment_outputAssessments :: Lens.Lens' GuardrailTraceAssessment (Prelude.Maybe (Prelude.HashMap Prelude.Text [GuardrailAssessment]))
guardrailTraceAssessment_outputAssessments = Lens.lens (\GuardrailTraceAssessment' {outputAssessments} -> outputAssessments) (\s@GuardrailTraceAssessment' {} a -> s {outputAssessments = a} :: GuardrailTraceAssessment) Prelude.. Lens.mapping Lens.coerced

instance Data.FromJSON GuardrailTraceAssessment where
  parseJSON =
    Data.withObject
      "GuardrailTraceAssessment"
      ( \x ->
          GuardrailTraceAssessment'
            Prelude.<$> (x Data..:? "actionReason")
            Prelude.<*> ( x
                            Data..:? "inputAssessment"
                            Data..!= Prelude.mempty
                        )
            Prelude.<*> (x Data..:? "modelOutput" Data..!= Prelude.mempty)
            Prelude.<*> ( x
                            Data..:? "outputAssessments"
                            Data..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable GuardrailTraceAssessment where
  hashWithSalt _salt GuardrailTraceAssessment' {..} =
    _salt
      `Prelude.hashWithSalt` actionReason
      `Prelude.hashWithSalt` inputAssessment
      `Prelude.hashWithSalt` modelOutput
      `Prelude.hashWithSalt` outputAssessments

instance Prelude.NFData GuardrailTraceAssessment where
  rnf GuardrailTraceAssessment' {..} =
    Prelude.rnf actionReason `Prelude.seq`
      Prelude.rnf inputAssessment `Prelude.seq`
        Prelude.rnf modelOutput `Prelude.seq`
          Prelude.rnf outputAssessments
