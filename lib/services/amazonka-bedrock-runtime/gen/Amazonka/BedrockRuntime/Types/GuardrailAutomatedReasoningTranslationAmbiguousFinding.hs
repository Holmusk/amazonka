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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslationAmbiguousFinding
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslationAmbiguousFinding where

import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningScenario
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslationOption
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Indicates that the input has multiple valid logical interpretations,
-- requiring additional context or clarification.
--
-- /See:/ 'newGuardrailAutomatedReasoningTranslationAmbiguousFinding' smart constructor.
data GuardrailAutomatedReasoningTranslationAmbiguousFinding = GuardrailAutomatedReasoningTranslationAmbiguousFinding'
  { -- | Scenarios showing how the different translation options differ in
    -- meaning.
    differenceScenarios :: Prelude.Maybe [GuardrailAutomatedReasoningScenario],
    -- | Different logical interpretations that were detected during translation
    -- of the input.
    options :: Prelude.Maybe [GuardrailAutomatedReasoningTranslationOption]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAutomatedReasoningTranslationAmbiguousFinding' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'differenceScenarios', 'guardrailAutomatedReasoningTranslationAmbiguousFinding_differenceScenarios' - Scenarios showing how the different translation options differ in
-- meaning.
--
-- 'options', 'guardrailAutomatedReasoningTranslationAmbiguousFinding_options' - Different logical interpretations that were detected during translation
-- of the input.
newGuardrailAutomatedReasoningTranslationAmbiguousFinding ::
  GuardrailAutomatedReasoningTranslationAmbiguousFinding
newGuardrailAutomatedReasoningTranslationAmbiguousFinding =
  GuardrailAutomatedReasoningTranslationAmbiguousFinding'
    { differenceScenarios =
        Prelude.Nothing,
      options =
        Prelude.Nothing
    }

-- | Scenarios showing how the different translation options differ in
-- meaning.
guardrailAutomatedReasoningTranslationAmbiguousFinding_differenceScenarios :: Lens.Lens' GuardrailAutomatedReasoningTranslationAmbiguousFinding (Prelude.Maybe [GuardrailAutomatedReasoningScenario])
guardrailAutomatedReasoningTranslationAmbiguousFinding_differenceScenarios = Lens.lens (\GuardrailAutomatedReasoningTranslationAmbiguousFinding' {differenceScenarios} -> differenceScenarios) (\s@GuardrailAutomatedReasoningTranslationAmbiguousFinding' {} a -> s {differenceScenarios = a} :: GuardrailAutomatedReasoningTranslationAmbiguousFinding) Prelude.. Lens.mapping Lens.coerced

-- | Different logical interpretations that were detected during translation
-- of the input.
guardrailAutomatedReasoningTranslationAmbiguousFinding_options :: Lens.Lens' GuardrailAutomatedReasoningTranslationAmbiguousFinding (Prelude.Maybe [GuardrailAutomatedReasoningTranslationOption])
guardrailAutomatedReasoningTranslationAmbiguousFinding_options = Lens.lens (\GuardrailAutomatedReasoningTranslationAmbiguousFinding' {options} -> options) (\s@GuardrailAutomatedReasoningTranslationAmbiguousFinding' {} a -> s {options = a} :: GuardrailAutomatedReasoningTranslationAmbiguousFinding) Prelude.. Lens.mapping Lens.coerced

instance
  Data.FromJSON
    GuardrailAutomatedReasoningTranslationAmbiguousFinding
  where
  parseJSON =
    Data.withObject
      "GuardrailAutomatedReasoningTranslationAmbiguousFinding"
      ( \x ->
          GuardrailAutomatedReasoningTranslationAmbiguousFinding'
            Prelude.<$> ( x
                            Data..:? "differenceScenarios"
                            Data..!= Prelude.mempty
                        )
            Prelude.<*> (x Data..:? "options" Data..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    GuardrailAutomatedReasoningTranslationAmbiguousFinding
  where
  hashWithSalt
    _salt
    GuardrailAutomatedReasoningTranslationAmbiguousFinding' {..} =
      _salt
        `Prelude.hashWithSalt` differenceScenarios
        `Prelude.hashWithSalt` options

instance
  Prelude.NFData
    GuardrailAutomatedReasoningTranslationAmbiguousFinding
  where
  rnf
    GuardrailAutomatedReasoningTranslationAmbiguousFinding' {..} =
      Prelude.rnf differenceScenarios `Prelude.seq`
        Prelude.rnf options
