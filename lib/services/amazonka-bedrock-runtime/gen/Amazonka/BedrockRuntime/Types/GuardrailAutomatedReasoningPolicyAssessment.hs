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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningPolicyAssessment
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningPolicyAssessment where

import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningFinding
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Contains the results of automated reasoning policy evaluation, including
-- logical findings about the validity of claims made in the input content.
--
-- /See:/ 'newGuardrailAutomatedReasoningPolicyAssessment' smart constructor.
data GuardrailAutomatedReasoningPolicyAssessment = GuardrailAutomatedReasoningPolicyAssessment'
  { -- | List of logical validation results produced by evaluating the input
    -- content against automated reasoning policies.
    findings :: Prelude.Maybe [GuardrailAutomatedReasoningFinding]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAutomatedReasoningPolicyAssessment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'findings', 'guardrailAutomatedReasoningPolicyAssessment_findings' - List of logical validation results produced by evaluating the input
-- content against automated reasoning policies.
newGuardrailAutomatedReasoningPolicyAssessment ::
  GuardrailAutomatedReasoningPolicyAssessment
newGuardrailAutomatedReasoningPolicyAssessment =
  GuardrailAutomatedReasoningPolicyAssessment'
    { findings =
        Prelude.Nothing
    }

-- | List of logical validation results produced by evaluating the input
-- content against automated reasoning policies.
guardrailAutomatedReasoningPolicyAssessment_findings :: Lens.Lens' GuardrailAutomatedReasoningPolicyAssessment (Prelude.Maybe [GuardrailAutomatedReasoningFinding])
guardrailAutomatedReasoningPolicyAssessment_findings = Lens.lens (\GuardrailAutomatedReasoningPolicyAssessment' {findings} -> findings) (\s@GuardrailAutomatedReasoningPolicyAssessment' {} a -> s {findings = a} :: GuardrailAutomatedReasoningPolicyAssessment) Prelude.. Lens.mapping Lens.coerced

instance
  Data.FromJSON
    GuardrailAutomatedReasoningPolicyAssessment
  where
  parseJSON =
    Data.withObject
      "GuardrailAutomatedReasoningPolicyAssessment"
      ( \x ->
          GuardrailAutomatedReasoningPolicyAssessment'
            Prelude.<$> (x Data..:? "findings" Data..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    GuardrailAutomatedReasoningPolicyAssessment
  where
  hashWithSalt
    _salt
    GuardrailAutomatedReasoningPolicyAssessment' {..} =
      _salt `Prelude.hashWithSalt` findings

instance
  Prelude.NFData
    GuardrailAutomatedReasoningPolicyAssessment
  where
  rnf GuardrailAutomatedReasoningPolicyAssessment' {..} =
    Prelude.rnf findings
