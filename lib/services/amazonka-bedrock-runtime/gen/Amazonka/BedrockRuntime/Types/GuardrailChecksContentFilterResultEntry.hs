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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterResultEntry
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterResultEntry where

import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterCategory
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The evaluation result for a single content filter category.
--
-- /See:/ 'newGuardrailChecksContentFilterResultEntry' smart constructor.
data GuardrailChecksContentFilterResultEntry = GuardrailChecksContentFilterResultEntry'
  { -- | The content filter category that was evaluated.
    category :: GuardrailChecksContentFilterCategory,
    -- | The severity score for the category, ranging from 0.0 to 1.0. Higher
    -- values indicate greater severity.
    severityScore :: Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksContentFilterResultEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'category', 'guardrailChecksContentFilterResultEntry_category' - The content filter category that was evaluated.
--
-- 'severityScore', 'guardrailChecksContentFilterResultEntry_severityScore' - The severity score for the category, ranging from 0.0 to 1.0. Higher
-- values indicate greater severity.
newGuardrailChecksContentFilterResultEntry ::
  -- | 'category'
  GuardrailChecksContentFilterCategory ->
  -- | 'severityScore'
  Prelude.Double ->
  GuardrailChecksContentFilterResultEntry
newGuardrailChecksContentFilterResultEntry
  pCategory_
  pSeverityScore_ =
    GuardrailChecksContentFilterResultEntry'
      { category =
          pCategory_,
        severityScore = pSeverityScore_
      }

-- | The content filter category that was evaluated.
guardrailChecksContentFilterResultEntry_category :: Lens.Lens' GuardrailChecksContentFilterResultEntry GuardrailChecksContentFilterCategory
guardrailChecksContentFilterResultEntry_category = Lens.lens (\GuardrailChecksContentFilterResultEntry' {category} -> category) (\s@GuardrailChecksContentFilterResultEntry' {} a -> s {category = a} :: GuardrailChecksContentFilterResultEntry)

-- | The severity score for the category, ranging from 0.0 to 1.0. Higher
-- values indicate greater severity.
guardrailChecksContentFilterResultEntry_severityScore :: Lens.Lens' GuardrailChecksContentFilterResultEntry Prelude.Double
guardrailChecksContentFilterResultEntry_severityScore = Lens.lens (\GuardrailChecksContentFilterResultEntry' {severityScore} -> severityScore) (\s@GuardrailChecksContentFilterResultEntry' {} a -> s {severityScore = a} :: GuardrailChecksContentFilterResultEntry)

instance
  Data.FromJSON
    GuardrailChecksContentFilterResultEntry
  where
  parseJSON =
    Data.withObject
      "GuardrailChecksContentFilterResultEntry"
      ( \x ->
          GuardrailChecksContentFilterResultEntry'
            Prelude.<$> (x Data..: "category")
            Prelude.<*> (x Data..: "severityScore")
      )

instance
  Prelude.Hashable
    GuardrailChecksContentFilterResultEntry
  where
  hashWithSalt
    _salt
    GuardrailChecksContentFilterResultEntry' {..} =
      _salt
        `Prelude.hashWithSalt` category
        `Prelude.hashWithSalt` severityScore

instance
  Prelude.NFData
    GuardrailChecksContentFilterResultEntry
  where
  rnf GuardrailChecksContentFilterResultEntry' {..} =
    Prelude.rnf category `Prelude.seq`
      Prelude.rnf severityScore
