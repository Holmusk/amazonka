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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslationOption
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslationOption where

import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslation
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Represents one possible logical interpretation of ambiguous input
-- content.
--
-- /See:/ 'newGuardrailAutomatedReasoningTranslationOption' smart constructor.
data GuardrailAutomatedReasoningTranslationOption = GuardrailAutomatedReasoningTranslationOption'
  { -- | Example translations that provide this possible interpretation of the
    -- input.
    translations :: Prelude.Maybe [GuardrailAutomatedReasoningTranslation]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAutomatedReasoningTranslationOption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'translations', 'guardrailAutomatedReasoningTranslationOption_translations' - Example translations that provide this possible interpretation of the
-- input.
newGuardrailAutomatedReasoningTranslationOption ::
  GuardrailAutomatedReasoningTranslationOption
newGuardrailAutomatedReasoningTranslationOption =
  GuardrailAutomatedReasoningTranslationOption'
    { translations =
        Prelude.Nothing
    }

-- | Example translations that provide this possible interpretation of the
-- input.
guardrailAutomatedReasoningTranslationOption_translations :: Lens.Lens' GuardrailAutomatedReasoningTranslationOption (Prelude.Maybe [GuardrailAutomatedReasoningTranslation])
guardrailAutomatedReasoningTranslationOption_translations = Lens.lens (\GuardrailAutomatedReasoningTranslationOption' {translations} -> translations) (\s@GuardrailAutomatedReasoningTranslationOption' {} a -> s {translations = a} :: GuardrailAutomatedReasoningTranslationOption) Prelude.. Lens.mapping Lens.coerced

instance
  Data.FromJSON
    GuardrailAutomatedReasoningTranslationOption
  where
  parseJSON =
    Data.withObject
      "GuardrailAutomatedReasoningTranslationOption"
      ( \x ->
          GuardrailAutomatedReasoningTranslationOption'
            Prelude.<$> (x Data..:? "translations" Data..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    GuardrailAutomatedReasoningTranslationOption
  where
  hashWithSalt
    _salt
    GuardrailAutomatedReasoningTranslationOption' {..} =
      _salt `Prelude.hashWithSalt` translations

instance
  Prelude.NFData
    GuardrailAutomatedReasoningTranslationOption
  where
  rnf GuardrailAutomatedReasoningTranslationOption' {..} =
    Prelude.rnf translations
