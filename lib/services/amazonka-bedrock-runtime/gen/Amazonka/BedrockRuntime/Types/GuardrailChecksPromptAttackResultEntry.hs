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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackResultEntry
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackResultEntry where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackCategory
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The evaluation result for a single prompt attack category.
--
-- /See:/ 'newGuardrailChecksPromptAttackResultEntry' smart constructor.
data GuardrailChecksPromptAttackResultEntry = GuardrailChecksPromptAttackResultEntry'
  { -- | The prompt attack category that was evaluated.
    category :: GuardrailChecksPromptAttackCategory,
    -- | The severity score for the category, ranging from 0.0 to 1.0. Higher
    -- values indicate greater severity.
    severityScore :: Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksPromptAttackResultEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'category', 'guardrailChecksPromptAttackResultEntry_category' - The prompt attack category that was evaluated.
--
-- 'severityScore', 'guardrailChecksPromptAttackResultEntry_severityScore' - The severity score for the category, ranging from 0.0 to 1.0. Higher
-- values indicate greater severity.
newGuardrailChecksPromptAttackResultEntry ::
  -- | 'category'
  GuardrailChecksPromptAttackCategory ->
  -- | 'severityScore'
  Prelude.Double ->
  GuardrailChecksPromptAttackResultEntry
newGuardrailChecksPromptAttackResultEntry
  pCategory_
  pSeverityScore_ =
    GuardrailChecksPromptAttackResultEntry'
      { category =
          pCategory_,
        severityScore = pSeverityScore_
      }

-- | The prompt attack category that was evaluated.
guardrailChecksPromptAttackResultEntry_category :: Lens.Lens' GuardrailChecksPromptAttackResultEntry GuardrailChecksPromptAttackCategory
guardrailChecksPromptAttackResultEntry_category = Lens.lens (\GuardrailChecksPromptAttackResultEntry' {category} -> category) (\s@GuardrailChecksPromptAttackResultEntry' {} a -> s {category = a} :: GuardrailChecksPromptAttackResultEntry)

-- | The severity score for the category, ranging from 0.0 to 1.0. Higher
-- values indicate greater severity.
guardrailChecksPromptAttackResultEntry_severityScore :: Lens.Lens' GuardrailChecksPromptAttackResultEntry Prelude.Double
guardrailChecksPromptAttackResultEntry_severityScore = Lens.lens (\GuardrailChecksPromptAttackResultEntry' {severityScore} -> severityScore) (\s@GuardrailChecksPromptAttackResultEntry' {} a -> s {severityScore = a} :: GuardrailChecksPromptAttackResultEntry)

instance
  Data.FromJSON
    GuardrailChecksPromptAttackResultEntry
  where
  parseJSON =
    Data.withObject
      "GuardrailChecksPromptAttackResultEntry"
      ( \x ->
          GuardrailChecksPromptAttackResultEntry'
            Prelude.<$> (x Data..: "category")
            Prelude.<*> (x Data..: "severityScore")
      )

instance
  Prelude.Hashable
    GuardrailChecksPromptAttackResultEntry
  where
  hashWithSalt
    _salt
    GuardrailChecksPromptAttackResultEntry' {..} =
      _salt
        `Prelude.hashWithSalt` category
        `Prelude.hashWithSalt` severityScore

instance
  Prelude.NFData
    GuardrailChecksPromptAttackResultEntry
  where
  rnf GuardrailChecksPromptAttackResultEntry' {..} =
    Prelude.rnf category `Prelude.seq`
      Prelude.rnf severityScore
