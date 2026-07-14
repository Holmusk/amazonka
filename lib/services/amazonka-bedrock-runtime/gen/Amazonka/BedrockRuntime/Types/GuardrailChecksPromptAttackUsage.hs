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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackUsage
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackUsage where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The text unit usage for the prompt attack check.
--
-- /See:/ 'newGuardrailChecksPromptAttackUsage' smart constructor.
data GuardrailChecksPromptAttackUsage = GuardrailChecksPromptAttackUsage'
  { -- | The number of text units consumed by the prompt attack check.
    textUnits :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksPromptAttackUsage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'textUnits', 'guardrailChecksPromptAttackUsage_textUnits' - The number of text units consumed by the prompt attack check.
newGuardrailChecksPromptAttackUsage ::
  -- | 'textUnits'
  Prelude.Int ->
  GuardrailChecksPromptAttackUsage
newGuardrailChecksPromptAttackUsage pTextUnits_ =
  GuardrailChecksPromptAttackUsage'
    { textUnits =
        pTextUnits_
    }

-- | The number of text units consumed by the prompt attack check.
guardrailChecksPromptAttackUsage_textUnits :: Lens.Lens' GuardrailChecksPromptAttackUsage Prelude.Int
guardrailChecksPromptAttackUsage_textUnits = Lens.lens (\GuardrailChecksPromptAttackUsage' {textUnits} -> textUnits) (\s@GuardrailChecksPromptAttackUsage' {} a -> s {textUnits = a} :: GuardrailChecksPromptAttackUsage)

instance
  Data.FromJSON
    GuardrailChecksPromptAttackUsage
  where
  parseJSON =
    Data.withObject
      "GuardrailChecksPromptAttackUsage"
      ( \x ->
          GuardrailChecksPromptAttackUsage'
            Prelude.<$> (x Data..: "textUnits")
      )

instance
  Prelude.Hashable
    GuardrailChecksPromptAttackUsage
  where
  hashWithSalt
    _salt
    GuardrailChecksPromptAttackUsage' {..} =
      _salt `Prelude.hashWithSalt` textUnits

instance
  Prelude.NFData
    GuardrailChecksPromptAttackUsage
  where
  rnf GuardrailChecksPromptAttackUsage' {..} =
    Prelude.rnf textUnits
