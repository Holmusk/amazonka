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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterUsage
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterUsage where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The text unit usage for the content filter check.
--
-- /See:/ 'newGuardrailChecksContentFilterUsage' smart constructor.
data GuardrailChecksContentFilterUsage = GuardrailChecksContentFilterUsage'
  { -- | The number of text units consumed by the content filter check.
    textUnits :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksContentFilterUsage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'textUnits', 'guardrailChecksContentFilterUsage_textUnits' - The number of text units consumed by the content filter check.
newGuardrailChecksContentFilterUsage ::
  -- | 'textUnits'
  Prelude.Int ->
  GuardrailChecksContentFilterUsage
newGuardrailChecksContentFilterUsage pTextUnits_ =
  GuardrailChecksContentFilterUsage'
    { textUnits =
        pTextUnits_
    }

-- | The number of text units consumed by the content filter check.
guardrailChecksContentFilterUsage_textUnits :: Lens.Lens' GuardrailChecksContentFilterUsage Prelude.Int
guardrailChecksContentFilterUsage_textUnits = Lens.lens (\GuardrailChecksContentFilterUsage' {textUnits} -> textUnits) (\s@GuardrailChecksContentFilterUsage' {} a -> s {textUnits = a} :: GuardrailChecksContentFilterUsage)

instance
  Data.FromJSON
    GuardrailChecksContentFilterUsage
  where
  parseJSON =
    Data.withObject
      "GuardrailChecksContentFilterUsage"
      ( \x ->
          GuardrailChecksContentFilterUsage'
            Prelude.<$> (x Data..: "textUnits")
      )

instance
  Prelude.Hashable
    GuardrailChecksContentFilterUsage
  where
  hashWithSalt
    _salt
    GuardrailChecksContentFilterUsage' {..} =
      _salt `Prelude.hashWithSalt` textUnits

instance
  Prelude.NFData
    GuardrailChecksContentFilterUsage
  where
  rnf GuardrailChecksContentFilterUsage' {..} =
    Prelude.rnf textUnits
