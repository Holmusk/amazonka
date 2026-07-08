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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailContentPolicyAssessment
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailContentPolicyAssessment where

import Amazonka.BedrockRuntime.Types.GuardrailContentFilter
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | An assessment of a content policy for a guardrail.
--
-- /See:/ 'newGuardrailContentPolicyAssessment' smart constructor.
data GuardrailContentPolicyAssessment = GuardrailContentPolicyAssessment'
  { -- | The content policy filters.
    filters :: [GuardrailContentFilter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailContentPolicyAssessment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'guardrailContentPolicyAssessment_filters' - The content policy filters.
newGuardrailContentPolicyAssessment ::
  GuardrailContentPolicyAssessment
newGuardrailContentPolicyAssessment =
  GuardrailContentPolicyAssessment'
    { filters =
        Prelude.mempty
    }

-- | The content policy filters.
guardrailContentPolicyAssessment_filters :: Lens.Lens' GuardrailContentPolicyAssessment [GuardrailContentFilter]
guardrailContentPolicyAssessment_filters = Lens.lens (\GuardrailContentPolicyAssessment' {filters} -> filters) (\s@GuardrailContentPolicyAssessment' {} a -> s {filters = a} :: GuardrailContentPolicyAssessment) Prelude.. Lens.coerced

instance
  Data.FromJSON
    GuardrailContentPolicyAssessment
  where
  parseJSON =
    Data.withObject
      "GuardrailContentPolicyAssessment"
      ( \x ->
          GuardrailContentPolicyAssessment'
            Prelude.<$> (x Data..:? "filters" Data..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    GuardrailContentPolicyAssessment
  where
  hashWithSalt
    _salt
    GuardrailContentPolicyAssessment' {..} =
      _salt `Prelude.hashWithSalt` filters

instance
  Prelude.NFData
    GuardrailContentPolicyAssessment
  where
  rnf GuardrailContentPolicyAssessment' {..} =
    Prelude.rnf filters
