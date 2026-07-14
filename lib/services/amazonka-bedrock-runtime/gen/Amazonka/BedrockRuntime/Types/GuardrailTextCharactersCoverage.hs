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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailTextCharactersCoverage
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailTextCharactersCoverage where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The guardrail coverage for the text characters.
--
-- /See:/ 'newGuardrailTextCharactersCoverage' smart constructor.
data GuardrailTextCharactersCoverage = GuardrailTextCharactersCoverage'
  { -- | The text characters that were guarded by the guardrail coverage.
    guarded :: Prelude.Maybe Prelude.Int,
    -- | The total text characters by the guardrail coverage.
    total :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailTextCharactersCoverage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'guarded', 'guardrailTextCharactersCoverage_guarded' - The text characters that were guarded by the guardrail coverage.
--
-- 'total', 'guardrailTextCharactersCoverage_total' - The total text characters by the guardrail coverage.
newGuardrailTextCharactersCoverage ::
  GuardrailTextCharactersCoverage
newGuardrailTextCharactersCoverage =
  GuardrailTextCharactersCoverage'
    { guarded =
        Prelude.Nothing,
      total = Prelude.Nothing
    }

-- | The text characters that were guarded by the guardrail coverage.
guardrailTextCharactersCoverage_guarded :: Lens.Lens' GuardrailTextCharactersCoverage (Prelude.Maybe Prelude.Int)
guardrailTextCharactersCoverage_guarded = Lens.lens (\GuardrailTextCharactersCoverage' {guarded} -> guarded) (\s@GuardrailTextCharactersCoverage' {} a -> s {guarded = a} :: GuardrailTextCharactersCoverage)

-- | The total text characters by the guardrail coverage.
guardrailTextCharactersCoverage_total :: Lens.Lens' GuardrailTextCharactersCoverage (Prelude.Maybe Prelude.Int)
guardrailTextCharactersCoverage_total = Lens.lens (\GuardrailTextCharactersCoverage' {total} -> total) (\s@GuardrailTextCharactersCoverage' {} a -> s {total = a} :: GuardrailTextCharactersCoverage)

instance
  Data.FromJSON
    GuardrailTextCharactersCoverage
  where
  parseJSON =
    Data.withObject
      "GuardrailTextCharactersCoverage"
      ( \x ->
          GuardrailTextCharactersCoverage'
            Prelude.<$> (x Data..:? "guarded")
            Prelude.<*> (x Data..:? "total")
      )

instance
  Prelude.Hashable
    GuardrailTextCharactersCoverage
  where
  hashWithSalt
    _salt
    GuardrailTextCharactersCoverage' {..} =
      _salt
        `Prelude.hashWithSalt` guarded
        `Prelude.hashWithSalt` total

instance
  Prelude.NFData
    GuardrailTextCharactersCoverage
  where
  rnf GuardrailTextCharactersCoverage' {..} =
    Prelude.rnf guarded `Prelude.seq` Prelude.rnf total
