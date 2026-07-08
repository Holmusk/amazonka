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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailContextualGroundingPolicyAssessment
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailContextualGroundingPolicyAssessment where

import Amazonka.BedrockRuntime.Types.GuardrailContextualGroundingFilter
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The policy assessment details for the guardrails contextual grounding
-- filter.
--
-- /See:/ 'newGuardrailContextualGroundingPolicyAssessment' smart constructor.
data GuardrailContextualGroundingPolicyAssessment = GuardrailContextualGroundingPolicyAssessment'
  { -- | The filter details for the guardrails contextual grounding filter.
    filters :: Prelude.Maybe [GuardrailContextualGroundingFilter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailContextualGroundingPolicyAssessment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'guardrailContextualGroundingPolicyAssessment_filters' - The filter details for the guardrails contextual grounding filter.
newGuardrailContextualGroundingPolicyAssessment ::
  GuardrailContextualGroundingPolicyAssessment
newGuardrailContextualGroundingPolicyAssessment =
  GuardrailContextualGroundingPolicyAssessment'
    { filters =
        Prelude.Nothing
    }

-- | The filter details for the guardrails contextual grounding filter.
guardrailContextualGroundingPolicyAssessment_filters :: Lens.Lens' GuardrailContextualGroundingPolicyAssessment (Prelude.Maybe [GuardrailContextualGroundingFilter])
guardrailContextualGroundingPolicyAssessment_filters = Lens.lens (\GuardrailContextualGroundingPolicyAssessment' {filters} -> filters) (\s@GuardrailContextualGroundingPolicyAssessment' {} a -> s {filters = a} :: GuardrailContextualGroundingPolicyAssessment) Prelude.. Lens.mapping Lens.coerced

instance
  Data.FromJSON
    GuardrailContextualGroundingPolicyAssessment
  where
  parseJSON =
    Data.withObject
      "GuardrailContextualGroundingPolicyAssessment"
      ( \x ->
          GuardrailContextualGroundingPolicyAssessment'
            Prelude.<$> (x Data..:? "filters" Data..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    GuardrailContextualGroundingPolicyAssessment
  where
  hashWithSalt
    _salt
    GuardrailContextualGroundingPolicyAssessment' {..} =
      _salt `Prelude.hashWithSalt` filters

instance
  Prelude.NFData
    GuardrailContextualGroundingPolicyAssessment
  where
  rnf GuardrailContextualGroundingPolicyAssessment' {..} =
    Prelude.rnf filters
