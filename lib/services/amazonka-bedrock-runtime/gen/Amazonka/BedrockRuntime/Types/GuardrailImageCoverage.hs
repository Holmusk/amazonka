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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailImageCoverage
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailImageCoverage where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The details of the guardrail image coverage.
--
-- /See:/ 'newGuardrailImageCoverage' smart constructor.
data GuardrailImageCoverage = GuardrailImageCoverage'
  { -- | The count (integer) of images guardrails guarded.
    guarded :: Prelude.Maybe Prelude.Int,
    -- | Represents the total number of images (integer) that were in the request
    -- (guarded and unguarded).
    total :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailImageCoverage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'guarded', 'guardrailImageCoverage_guarded' - The count (integer) of images guardrails guarded.
--
-- 'total', 'guardrailImageCoverage_total' - Represents the total number of images (integer) that were in the request
-- (guarded and unguarded).
newGuardrailImageCoverage ::
  GuardrailImageCoverage
newGuardrailImageCoverage =
  GuardrailImageCoverage'
    { guarded = Prelude.Nothing,
      total = Prelude.Nothing
    }

-- | The count (integer) of images guardrails guarded.
guardrailImageCoverage_guarded :: Lens.Lens' GuardrailImageCoverage (Prelude.Maybe Prelude.Int)
guardrailImageCoverage_guarded = Lens.lens (\GuardrailImageCoverage' {guarded} -> guarded) (\s@GuardrailImageCoverage' {} a -> s {guarded = a} :: GuardrailImageCoverage)

-- | Represents the total number of images (integer) that were in the request
-- (guarded and unguarded).
guardrailImageCoverage_total :: Lens.Lens' GuardrailImageCoverage (Prelude.Maybe Prelude.Int)
guardrailImageCoverage_total = Lens.lens (\GuardrailImageCoverage' {total} -> total) (\s@GuardrailImageCoverage' {} a -> s {total = a} :: GuardrailImageCoverage)

instance Data.FromJSON GuardrailImageCoverage where
  parseJSON =
    Data.withObject
      "GuardrailImageCoverage"
      ( \x ->
          GuardrailImageCoverage'
            Prelude.<$> (x Data..:? "guarded")
            Prelude.<*> (x Data..:? "total")
      )

instance Prelude.Hashable GuardrailImageCoverage where
  hashWithSalt _salt GuardrailImageCoverage' {..} =
    _salt
      `Prelude.hashWithSalt` guarded
      `Prelude.hashWithSalt` total

instance Prelude.NFData GuardrailImageCoverage where
  rnf GuardrailImageCoverage' {..} =
    Prelude.rnf guarded `Prelude.seq` Prelude.rnf total
