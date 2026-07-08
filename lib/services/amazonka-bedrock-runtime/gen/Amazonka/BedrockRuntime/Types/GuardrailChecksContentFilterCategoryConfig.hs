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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterCategoryConfig
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterCategoryConfig where

import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterCategory
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The configuration for a single content filter category to evaluate.
--
-- /See:/ 'newGuardrailChecksContentFilterCategoryConfig' smart constructor.
data GuardrailChecksContentFilterCategoryConfig = GuardrailChecksContentFilterCategoryConfig'
  { -- | The content filter category to evaluate.
    category :: GuardrailChecksContentFilterCategory
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksContentFilterCategoryConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'category', 'guardrailChecksContentFilterCategoryConfig_category' - The content filter category to evaluate.
newGuardrailChecksContentFilterCategoryConfig ::
  -- | 'category'
  GuardrailChecksContentFilterCategory ->
  GuardrailChecksContentFilterCategoryConfig
newGuardrailChecksContentFilterCategoryConfig
  pCategory_ =
    GuardrailChecksContentFilterCategoryConfig'
      { category =
          pCategory_
      }

-- | The content filter category to evaluate.
guardrailChecksContentFilterCategoryConfig_category :: Lens.Lens' GuardrailChecksContentFilterCategoryConfig GuardrailChecksContentFilterCategory
guardrailChecksContentFilterCategoryConfig_category = Lens.lens (\GuardrailChecksContentFilterCategoryConfig' {category} -> category) (\s@GuardrailChecksContentFilterCategoryConfig' {} a -> s {category = a} :: GuardrailChecksContentFilterCategoryConfig)

instance
  Prelude.Hashable
    GuardrailChecksContentFilterCategoryConfig
  where
  hashWithSalt
    _salt
    GuardrailChecksContentFilterCategoryConfig' {..} =
      _salt `Prelude.hashWithSalt` category

instance
  Prelude.NFData
    GuardrailChecksContentFilterCategoryConfig
  where
  rnf GuardrailChecksContentFilterCategoryConfig' {..} =
    Prelude.rnf category

instance
  Data.ToJSON
    GuardrailChecksContentFilterCategoryConfig
  where
  toJSON
    GuardrailChecksContentFilterCategoryConfig' {..} =
      Data.object
        ( Prelude.catMaybes
            [Prelude.Just ("category" Data..= category)]
        )
