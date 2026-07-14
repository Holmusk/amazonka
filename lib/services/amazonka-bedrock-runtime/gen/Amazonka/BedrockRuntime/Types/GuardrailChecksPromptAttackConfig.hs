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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackConfig
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackConfig where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackCategoryConfig
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The configuration for the prompt attack check, specifying which
-- categories to evaluate.
--
-- /See:/ 'newGuardrailChecksPromptAttackConfig' smart constructor.
data GuardrailChecksPromptAttackConfig = GuardrailChecksPromptAttackConfig'
  { -- | The prompt attack categories to evaluate.
    categories :: Prelude.NonEmpty GuardrailChecksPromptAttackCategoryConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksPromptAttackConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'categories', 'guardrailChecksPromptAttackConfig_categories' - The prompt attack categories to evaluate.
newGuardrailChecksPromptAttackConfig ::
  -- | 'categories'
  Prelude.NonEmpty GuardrailChecksPromptAttackCategoryConfig ->
  GuardrailChecksPromptAttackConfig
newGuardrailChecksPromptAttackConfig pCategories_ =
  GuardrailChecksPromptAttackConfig'
    { categories =
        Lens.coerced Lens.# pCategories_
    }

-- | The prompt attack categories to evaluate.
guardrailChecksPromptAttackConfig_categories :: Lens.Lens' GuardrailChecksPromptAttackConfig (Prelude.NonEmpty GuardrailChecksPromptAttackCategoryConfig)
guardrailChecksPromptAttackConfig_categories = Lens.lens (\GuardrailChecksPromptAttackConfig' {categories} -> categories) (\s@GuardrailChecksPromptAttackConfig' {} a -> s {categories = a} :: GuardrailChecksPromptAttackConfig) Prelude.. Lens.coerced

instance
  Prelude.Hashable
    GuardrailChecksPromptAttackConfig
  where
  hashWithSalt
    _salt
    GuardrailChecksPromptAttackConfig' {..} =
      _salt `Prelude.hashWithSalt` categories

instance
  Prelude.NFData
    GuardrailChecksPromptAttackConfig
  where
  rnf GuardrailChecksPromptAttackConfig' {..} =
    Prelude.rnf categories

instance
  Data.ToJSON
    GuardrailChecksPromptAttackConfig
  where
  toJSON GuardrailChecksPromptAttackConfig' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("categories" Data..= categories)]
      )
