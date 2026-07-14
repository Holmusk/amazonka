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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailSensitiveInformationPolicyAssessment
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailSensitiveInformationPolicyAssessment where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailPiiEntityFilter
import Amazonka.BedrockRuntime.Types.GuardrailRegexFilter
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The assessment for a Personally Identifiable Information (PII) policy.
--
-- /See:/ 'newGuardrailSensitiveInformationPolicyAssessment' smart constructor.
data GuardrailSensitiveInformationPolicyAssessment = GuardrailSensitiveInformationPolicyAssessment'
  { -- | The PII entities in the assessment.
    piiEntities :: [GuardrailPiiEntityFilter],
    -- | The regex queries in the assessment.
    regexes :: [GuardrailRegexFilter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailSensitiveInformationPolicyAssessment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'piiEntities', 'guardrailSensitiveInformationPolicyAssessment_piiEntities' - The PII entities in the assessment.
--
-- 'regexes', 'guardrailSensitiveInformationPolicyAssessment_regexes' - The regex queries in the assessment.
newGuardrailSensitiveInformationPolicyAssessment ::
  GuardrailSensitiveInformationPolicyAssessment
newGuardrailSensitiveInformationPolicyAssessment =
  GuardrailSensitiveInformationPolicyAssessment'
    { piiEntities =
        Prelude.mempty,
      regexes = Prelude.mempty
    }

-- | The PII entities in the assessment.
guardrailSensitiveInformationPolicyAssessment_piiEntities :: Lens.Lens' GuardrailSensitiveInformationPolicyAssessment [GuardrailPiiEntityFilter]
guardrailSensitiveInformationPolicyAssessment_piiEntities = Lens.lens (\GuardrailSensitiveInformationPolicyAssessment' {piiEntities} -> piiEntities) (\s@GuardrailSensitiveInformationPolicyAssessment' {} a -> s {piiEntities = a} :: GuardrailSensitiveInformationPolicyAssessment) Prelude.. Lens.coerced

-- | The regex queries in the assessment.
guardrailSensitiveInformationPolicyAssessment_regexes :: Lens.Lens' GuardrailSensitiveInformationPolicyAssessment [GuardrailRegexFilter]
guardrailSensitiveInformationPolicyAssessment_regexes = Lens.lens (\GuardrailSensitiveInformationPolicyAssessment' {regexes} -> regexes) (\s@GuardrailSensitiveInformationPolicyAssessment' {} a -> s {regexes = a} :: GuardrailSensitiveInformationPolicyAssessment) Prelude.. Lens.coerced

instance
  Data.FromJSON
    GuardrailSensitiveInformationPolicyAssessment
  where
  parseJSON =
    Data.withObject
      "GuardrailSensitiveInformationPolicyAssessment"
      ( \x ->
          GuardrailSensitiveInformationPolicyAssessment'
            Prelude.<$> (x Data..:? "piiEntities" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "regexes" Data..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    GuardrailSensitiveInformationPolicyAssessment
  where
  hashWithSalt
    _salt
    GuardrailSensitiveInformationPolicyAssessment' {..} =
      _salt
        `Prelude.hashWithSalt` piiEntities
        `Prelude.hashWithSalt` regexes

instance
  Prelude.NFData
    GuardrailSensitiveInformationPolicyAssessment
  where
  rnf
    GuardrailSensitiveInformationPolicyAssessment' {..} =
      Prelude.rnf piiEntities `Prelude.seq`
        Prelude.rnf regexes
