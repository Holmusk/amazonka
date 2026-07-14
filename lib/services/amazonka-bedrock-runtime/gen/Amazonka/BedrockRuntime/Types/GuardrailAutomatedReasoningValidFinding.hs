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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningValidFinding
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningValidFinding where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningLogicWarning
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningRule
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningScenario
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslation
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Indicates that the claims are definitively true and logically implied by
-- the premises, with no possible alternative interpretations.
--
-- /See:/ 'newGuardrailAutomatedReasoningValidFinding' smart constructor.
data GuardrailAutomatedReasoningValidFinding = GuardrailAutomatedReasoningValidFinding'
  { -- | An example scenario demonstrating how the claims are logically true.
    claimsTrueScenario :: Prelude.Maybe GuardrailAutomatedReasoningScenario,
    -- | Indication of a logic issue with the translation without needing to
    -- consider the automated reasoning policy rules.
    logicWarning :: Prelude.Maybe GuardrailAutomatedReasoningLogicWarning,
    -- | The automated reasoning policy rules that support why this result is
    -- considered valid.
    supportingRules :: Prelude.Maybe [GuardrailAutomatedReasoningRule],
    -- | The logical translation of the input that this finding validates.
    translation :: Prelude.Maybe GuardrailAutomatedReasoningTranslation
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAutomatedReasoningValidFinding' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'claimsTrueScenario', 'guardrailAutomatedReasoningValidFinding_claimsTrueScenario' - An example scenario demonstrating how the claims are logically true.
--
-- 'logicWarning', 'guardrailAutomatedReasoningValidFinding_logicWarning' - Indication of a logic issue with the translation without needing to
-- consider the automated reasoning policy rules.
--
-- 'supportingRules', 'guardrailAutomatedReasoningValidFinding_supportingRules' - The automated reasoning policy rules that support why this result is
-- considered valid.
--
-- 'translation', 'guardrailAutomatedReasoningValidFinding_translation' - The logical translation of the input that this finding validates.
newGuardrailAutomatedReasoningValidFinding ::
  GuardrailAutomatedReasoningValidFinding
newGuardrailAutomatedReasoningValidFinding =
  GuardrailAutomatedReasoningValidFinding'
    { claimsTrueScenario =
        Prelude.Nothing,
      logicWarning = Prelude.Nothing,
      supportingRules = Prelude.Nothing,
      translation = Prelude.Nothing
    }

-- | An example scenario demonstrating how the claims are logically true.
guardrailAutomatedReasoningValidFinding_claimsTrueScenario :: Lens.Lens' GuardrailAutomatedReasoningValidFinding (Prelude.Maybe GuardrailAutomatedReasoningScenario)
guardrailAutomatedReasoningValidFinding_claimsTrueScenario = Lens.lens (\GuardrailAutomatedReasoningValidFinding' {claimsTrueScenario} -> claimsTrueScenario) (\s@GuardrailAutomatedReasoningValidFinding' {} a -> s {claimsTrueScenario = a} :: GuardrailAutomatedReasoningValidFinding)

-- | Indication of a logic issue with the translation without needing to
-- consider the automated reasoning policy rules.
guardrailAutomatedReasoningValidFinding_logicWarning :: Lens.Lens' GuardrailAutomatedReasoningValidFinding (Prelude.Maybe GuardrailAutomatedReasoningLogicWarning)
guardrailAutomatedReasoningValidFinding_logicWarning = Lens.lens (\GuardrailAutomatedReasoningValidFinding' {logicWarning} -> logicWarning) (\s@GuardrailAutomatedReasoningValidFinding' {} a -> s {logicWarning = a} :: GuardrailAutomatedReasoningValidFinding)

-- | The automated reasoning policy rules that support why this result is
-- considered valid.
guardrailAutomatedReasoningValidFinding_supportingRules :: Lens.Lens' GuardrailAutomatedReasoningValidFinding (Prelude.Maybe [GuardrailAutomatedReasoningRule])
guardrailAutomatedReasoningValidFinding_supportingRules = Lens.lens (\GuardrailAutomatedReasoningValidFinding' {supportingRules} -> supportingRules) (\s@GuardrailAutomatedReasoningValidFinding' {} a -> s {supportingRules = a} :: GuardrailAutomatedReasoningValidFinding) Prelude.. Lens.mapping Lens.coerced

-- | The logical translation of the input that this finding validates.
guardrailAutomatedReasoningValidFinding_translation :: Lens.Lens' GuardrailAutomatedReasoningValidFinding (Prelude.Maybe GuardrailAutomatedReasoningTranslation)
guardrailAutomatedReasoningValidFinding_translation = Lens.lens (\GuardrailAutomatedReasoningValidFinding' {translation} -> translation) (\s@GuardrailAutomatedReasoningValidFinding' {} a -> s {translation = a} :: GuardrailAutomatedReasoningValidFinding)

instance
  Data.FromJSON
    GuardrailAutomatedReasoningValidFinding
  where
  parseJSON =
    Data.withObject
      "GuardrailAutomatedReasoningValidFinding"
      ( \x ->
          GuardrailAutomatedReasoningValidFinding'
            Prelude.<$> (x Data..:? "claimsTrueScenario")
            Prelude.<*> (x Data..:? "logicWarning")
            Prelude.<*> ( x
                            Data..:? "supportingRules"
                            Data..!= Prelude.mempty
                        )
            Prelude.<*> (x Data..:? "translation")
      )

instance
  Prelude.Hashable
    GuardrailAutomatedReasoningValidFinding
  where
  hashWithSalt
    _salt
    GuardrailAutomatedReasoningValidFinding' {..} =
      _salt
        `Prelude.hashWithSalt` claimsTrueScenario
        `Prelude.hashWithSalt` logicWarning
        `Prelude.hashWithSalt` supportingRules
        `Prelude.hashWithSalt` translation

instance
  Prelude.NFData
    GuardrailAutomatedReasoningValidFinding
  where
  rnf GuardrailAutomatedReasoningValidFinding' {..} =
    Prelude.rnf claimsTrueScenario `Prelude.seq`
      Prelude.rnf logicWarning `Prelude.seq`
        Prelude.rnf supportingRules `Prelude.seq`
          Prelude.rnf translation
