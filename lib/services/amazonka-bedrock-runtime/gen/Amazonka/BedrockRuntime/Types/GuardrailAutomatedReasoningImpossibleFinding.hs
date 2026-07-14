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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningImpossibleFinding
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningImpossibleFinding where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningLogicWarning
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningRule
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslation
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Indicates that no valid claims can be made due to logical contradictions
-- in the premises or rules.
--
-- /See:/ 'newGuardrailAutomatedReasoningImpossibleFinding' smart constructor.
data GuardrailAutomatedReasoningImpossibleFinding = GuardrailAutomatedReasoningImpossibleFinding'
  { -- | The automated reasoning policy rules that contradict the claims and\/or
    -- premises in the input.
    contradictingRules :: Prelude.Maybe [GuardrailAutomatedReasoningRule],
    -- | Indication of a logic issue with the translation without needing to
    -- consider the automated reasoning policy rules.
    logicWarning :: Prelude.Maybe GuardrailAutomatedReasoningLogicWarning,
    -- | The logical translation of the input that this finding evaluates.
    translation :: Prelude.Maybe GuardrailAutomatedReasoningTranslation
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAutomatedReasoningImpossibleFinding' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contradictingRules', 'guardrailAutomatedReasoningImpossibleFinding_contradictingRules' - The automated reasoning policy rules that contradict the claims and\/or
-- premises in the input.
--
-- 'logicWarning', 'guardrailAutomatedReasoningImpossibleFinding_logicWarning' - Indication of a logic issue with the translation without needing to
-- consider the automated reasoning policy rules.
--
-- 'translation', 'guardrailAutomatedReasoningImpossibleFinding_translation' - The logical translation of the input that this finding evaluates.
newGuardrailAutomatedReasoningImpossibleFinding ::
  GuardrailAutomatedReasoningImpossibleFinding
newGuardrailAutomatedReasoningImpossibleFinding =
  GuardrailAutomatedReasoningImpossibleFinding'
    { contradictingRules =
        Prelude.Nothing,
      logicWarning =
        Prelude.Nothing,
      translation = Prelude.Nothing
    }

-- | The automated reasoning policy rules that contradict the claims and\/or
-- premises in the input.
guardrailAutomatedReasoningImpossibleFinding_contradictingRules :: Lens.Lens' GuardrailAutomatedReasoningImpossibleFinding (Prelude.Maybe [GuardrailAutomatedReasoningRule])
guardrailAutomatedReasoningImpossibleFinding_contradictingRules = Lens.lens (\GuardrailAutomatedReasoningImpossibleFinding' {contradictingRules} -> contradictingRules) (\s@GuardrailAutomatedReasoningImpossibleFinding' {} a -> s {contradictingRules = a} :: GuardrailAutomatedReasoningImpossibleFinding) Prelude.. Lens.mapping Lens.coerced

-- | Indication of a logic issue with the translation without needing to
-- consider the automated reasoning policy rules.
guardrailAutomatedReasoningImpossibleFinding_logicWarning :: Lens.Lens' GuardrailAutomatedReasoningImpossibleFinding (Prelude.Maybe GuardrailAutomatedReasoningLogicWarning)
guardrailAutomatedReasoningImpossibleFinding_logicWarning = Lens.lens (\GuardrailAutomatedReasoningImpossibleFinding' {logicWarning} -> logicWarning) (\s@GuardrailAutomatedReasoningImpossibleFinding' {} a -> s {logicWarning = a} :: GuardrailAutomatedReasoningImpossibleFinding)

-- | The logical translation of the input that this finding evaluates.
guardrailAutomatedReasoningImpossibleFinding_translation :: Lens.Lens' GuardrailAutomatedReasoningImpossibleFinding (Prelude.Maybe GuardrailAutomatedReasoningTranslation)
guardrailAutomatedReasoningImpossibleFinding_translation = Lens.lens (\GuardrailAutomatedReasoningImpossibleFinding' {translation} -> translation) (\s@GuardrailAutomatedReasoningImpossibleFinding' {} a -> s {translation = a} :: GuardrailAutomatedReasoningImpossibleFinding)

instance
  Data.FromJSON
    GuardrailAutomatedReasoningImpossibleFinding
  where
  parseJSON =
    Data.withObject
      "GuardrailAutomatedReasoningImpossibleFinding"
      ( \x ->
          GuardrailAutomatedReasoningImpossibleFinding'
            Prelude.<$> ( x
                            Data..:? "contradictingRules"
                            Data..!= Prelude.mempty
                        )
            Prelude.<*> (x Data..:? "logicWarning")
            Prelude.<*> (x Data..:? "translation")
      )

instance
  Prelude.Hashable
    GuardrailAutomatedReasoningImpossibleFinding
  where
  hashWithSalt
    _salt
    GuardrailAutomatedReasoningImpossibleFinding' {..} =
      _salt
        `Prelude.hashWithSalt` contradictingRules
        `Prelude.hashWithSalt` logicWarning
        `Prelude.hashWithSalt` translation

instance
  Prelude.NFData
    GuardrailAutomatedReasoningImpossibleFinding
  where
  rnf GuardrailAutomatedReasoningImpossibleFinding' {..} =
    Prelude.rnf contradictingRules `Prelude.seq`
      Prelude.rnf logicWarning `Prelude.seq`
        Prelude.rnf translation
