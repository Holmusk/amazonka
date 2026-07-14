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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationUsage
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationUsage where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The text unit usage for the sensitive information check.
--
-- /See:/ 'newGuardrailChecksSensitiveInformationUsage' smart constructor.
data GuardrailChecksSensitiveInformationUsage = GuardrailChecksSensitiveInformationUsage'
  { -- | The number of text units consumed by the sensitive information check.
    textUnits :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksSensitiveInformationUsage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'textUnits', 'guardrailChecksSensitiveInformationUsage_textUnits' - The number of text units consumed by the sensitive information check.
newGuardrailChecksSensitiveInformationUsage ::
  -- | 'textUnits'
  Prelude.Int ->
  GuardrailChecksSensitiveInformationUsage
newGuardrailChecksSensitiveInformationUsage
  pTextUnits_ =
    GuardrailChecksSensitiveInformationUsage'
      { textUnits =
          pTextUnits_
      }

-- | The number of text units consumed by the sensitive information check.
guardrailChecksSensitiveInformationUsage_textUnits :: Lens.Lens' GuardrailChecksSensitiveInformationUsage Prelude.Int
guardrailChecksSensitiveInformationUsage_textUnits = Lens.lens (\GuardrailChecksSensitiveInformationUsage' {textUnits} -> textUnits) (\s@GuardrailChecksSensitiveInformationUsage' {} a -> s {textUnits = a} :: GuardrailChecksSensitiveInformationUsage)

instance
  Data.FromJSON
    GuardrailChecksSensitiveInformationUsage
  where
  parseJSON =
    Data.withObject
      "GuardrailChecksSensitiveInformationUsage"
      ( \x ->
          GuardrailChecksSensitiveInformationUsage'
            Prelude.<$> (x Data..: "textUnits")
      )

instance
  Prelude.Hashable
    GuardrailChecksSensitiveInformationUsage
  where
  hashWithSalt
    _salt
    GuardrailChecksSensitiveInformationUsage' {..} =
      _salt `Prelude.hashWithSalt` textUnits

instance
  Prelude.NFData
    GuardrailChecksSensitiveInformationUsage
  where
  rnf GuardrailChecksSensitiveInformationUsage' {..} =
    Prelude.rnf textUnits
