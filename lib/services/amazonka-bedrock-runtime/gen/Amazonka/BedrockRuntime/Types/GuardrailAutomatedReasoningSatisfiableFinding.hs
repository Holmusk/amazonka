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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningSatisfiableFinding
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningSatisfiableFinding where

import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningLogicWarning
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningScenario
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslation
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Indicates that the claims could be either true or false depending on
-- additional assumptions not provided in the input.
--
-- /See:/ 'newGuardrailAutomatedReasoningSatisfiableFinding' smart constructor.
data GuardrailAutomatedReasoningSatisfiableFinding = GuardrailAutomatedReasoningSatisfiableFinding'
  { -- | An example scenario demonstrating how the claims could be logically
    -- false.
    claimsFalseScenario :: Prelude.Maybe GuardrailAutomatedReasoningScenario,
    -- | An example scenario demonstrating how the claims could be logically
    -- true.
    claimsTrueScenario :: Prelude.Maybe GuardrailAutomatedReasoningScenario,
    -- | Indication of a logic issue with the translation without needing to
    -- consider the automated reasoning policy rules.
    logicWarning :: Prelude.Maybe GuardrailAutomatedReasoningLogicWarning,
    -- | The logical translation of the input that this finding evaluates.
    translation :: Prelude.Maybe GuardrailAutomatedReasoningTranslation
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAutomatedReasoningSatisfiableFinding' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'claimsFalseScenario', 'guardrailAutomatedReasoningSatisfiableFinding_claimsFalseScenario' - An example scenario demonstrating how the claims could be logically
-- false.
--
-- 'claimsTrueScenario', 'guardrailAutomatedReasoningSatisfiableFinding_claimsTrueScenario' - An example scenario demonstrating how the claims could be logically
-- true.
--
-- 'logicWarning', 'guardrailAutomatedReasoningSatisfiableFinding_logicWarning' - Indication of a logic issue with the translation without needing to
-- consider the automated reasoning policy rules.
--
-- 'translation', 'guardrailAutomatedReasoningSatisfiableFinding_translation' - The logical translation of the input that this finding evaluates.
newGuardrailAutomatedReasoningSatisfiableFinding ::
  GuardrailAutomatedReasoningSatisfiableFinding
newGuardrailAutomatedReasoningSatisfiableFinding =
  GuardrailAutomatedReasoningSatisfiableFinding'
    { claimsFalseScenario =
        Prelude.Nothing,
      claimsTrueScenario =
        Prelude.Nothing,
      logicWarning =
        Prelude.Nothing,
      translation =
        Prelude.Nothing
    }

-- | An example scenario demonstrating how the claims could be logically
-- false.
guardrailAutomatedReasoningSatisfiableFinding_claimsFalseScenario :: Lens.Lens' GuardrailAutomatedReasoningSatisfiableFinding (Prelude.Maybe GuardrailAutomatedReasoningScenario)
guardrailAutomatedReasoningSatisfiableFinding_claimsFalseScenario = Lens.lens (\GuardrailAutomatedReasoningSatisfiableFinding' {claimsFalseScenario} -> claimsFalseScenario) (\s@GuardrailAutomatedReasoningSatisfiableFinding' {} a -> s {claimsFalseScenario = a} :: GuardrailAutomatedReasoningSatisfiableFinding)

-- | An example scenario demonstrating how the claims could be logically
-- true.
guardrailAutomatedReasoningSatisfiableFinding_claimsTrueScenario :: Lens.Lens' GuardrailAutomatedReasoningSatisfiableFinding (Prelude.Maybe GuardrailAutomatedReasoningScenario)
guardrailAutomatedReasoningSatisfiableFinding_claimsTrueScenario = Lens.lens (\GuardrailAutomatedReasoningSatisfiableFinding' {claimsTrueScenario} -> claimsTrueScenario) (\s@GuardrailAutomatedReasoningSatisfiableFinding' {} a -> s {claimsTrueScenario = a} :: GuardrailAutomatedReasoningSatisfiableFinding)

-- | Indication of a logic issue with the translation without needing to
-- consider the automated reasoning policy rules.
guardrailAutomatedReasoningSatisfiableFinding_logicWarning :: Lens.Lens' GuardrailAutomatedReasoningSatisfiableFinding (Prelude.Maybe GuardrailAutomatedReasoningLogicWarning)
guardrailAutomatedReasoningSatisfiableFinding_logicWarning = Lens.lens (\GuardrailAutomatedReasoningSatisfiableFinding' {logicWarning} -> logicWarning) (\s@GuardrailAutomatedReasoningSatisfiableFinding' {} a -> s {logicWarning = a} :: GuardrailAutomatedReasoningSatisfiableFinding)

-- | The logical translation of the input that this finding evaluates.
guardrailAutomatedReasoningSatisfiableFinding_translation :: Lens.Lens' GuardrailAutomatedReasoningSatisfiableFinding (Prelude.Maybe GuardrailAutomatedReasoningTranslation)
guardrailAutomatedReasoningSatisfiableFinding_translation = Lens.lens (\GuardrailAutomatedReasoningSatisfiableFinding' {translation} -> translation) (\s@GuardrailAutomatedReasoningSatisfiableFinding' {} a -> s {translation = a} :: GuardrailAutomatedReasoningSatisfiableFinding)

instance
  Data.FromJSON
    GuardrailAutomatedReasoningSatisfiableFinding
  where
  parseJSON =
    Data.withObject
      "GuardrailAutomatedReasoningSatisfiableFinding"
      ( \x ->
          GuardrailAutomatedReasoningSatisfiableFinding'
            Prelude.<$> (x Data..:? "claimsFalseScenario")
            Prelude.<*> (x Data..:? "claimsTrueScenario")
            Prelude.<*> (x Data..:? "logicWarning")
            Prelude.<*> (x Data..:? "translation")
      )

instance
  Prelude.Hashable
    GuardrailAutomatedReasoningSatisfiableFinding
  where
  hashWithSalt
    _salt
    GuardrailAutomatedReasoningSatisfiableFinding' {..} =
      _salt
        `Prelude.hashWithSalt` claimsFalseScenario
        `Prelude.hashWithSalt` claimsTrueScenario
        `Prelude.hashWithSalt` logicWarning
        `Prelude.hashWithSalt` translation

instance
  Prelude.NFData
    GuardrailAutomatedReasoningSatisfiableFinding
  where
  rnf
    GuardrailAutomatedReasoningSatisfiableFinding' {..} =
      Prelude.rnf claimsFalseScenario `Prelude.seq`
        Prelude.rnf claimsTrueScenario `Prelude.seq`
          Prelude.rnf logicWarning `Prelude.seq`
            Prelude.rnf translation
