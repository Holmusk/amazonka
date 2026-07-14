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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterConfig
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterConfig where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterCategoryConfig
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The configuration for the content filter check, specifying which
-- categories to evaluate.
--
-- /See:/ 'newGuardrailChecksContentFilterConfig' smart constructor.
data GuardrailChecksContentFilterConfig = GuardrailChecksContentFilterConfig'
  { -- | The content filter categories to evaluate.
    categories :: Prelude.NonEmpty GuardrailChecksContentFilterCategoryConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksContentFilterConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'categories', 'guardrailChecksContentFilterConfig_categories' - The content filter categories to evaluate.
newGuardrailChecksContentFilterConfig ::
  -- | 'categories'
  Prelude.NonEmpty GuardrailChecksContentFilterCategoryConfig ->
  GuardrailChecksContentFilterConfig
newGuardrailChecksContentFilterConfig pCategories_ =
  GuardrailChecksContentFilterConfig'
    { categories =
        Lens.coerced Lens.# pCategories_
    }

-- | The content filter categories to evaluate.
guardrailChecksContentFilterConfig_categories :: Lens.Lens' GuardrailChecksContentFilterConfig (Prelude.NonEmpty GuardrailChecksContentFilterCategoryConfig)
guardrailChecksContentFilterConfig_categories = Lens.lens (\GuardrailChecksContentFilterConfig' {categories} -> categories) (\s@GuardrailChecksContentFilterConfig' {} a -> s {categories = a} :: GuardrailChecksContentFilterConfig) Prelude.. Lens.coerced

instance
  Prelude.Hashable
    GuardrailChecksContentFilterConfig
  where
  hashWithSalt
    _salt
    GuardrailChecksContentFilterConfig' {..} =
      _salt `Prelude.hashWithSalt` categories

instance
  Prelude.NFData
    GuardrailChecksContentFilterConfig
  where
  rnf GuardrailChecksContentFilterConfig' {..} =
    Prelude.rnf categories

instance
  Data.ToJSON
    GuardrailChecksContentFilterConfig
  where
  toJSON GuardrailChecksContentFilterConfig' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("categories" Data..= categories)]
      )
