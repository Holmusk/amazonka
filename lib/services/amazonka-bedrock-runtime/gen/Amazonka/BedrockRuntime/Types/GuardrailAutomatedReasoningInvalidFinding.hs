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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningInvalidFinding
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningInvalidFinding where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningLogicWarning
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningRule
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslation
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Indicates that the claims are logically false and contradictory to the
-- established rules or premises.
--
-- /See:/ 'newGuardrailAutomatedReasoningInvalidFinding' smart constructor.
data GuardrailAutomatedReasoningInvalidFinding = GuardrailAutomatedReasoningInvalidFinding'
  { -- | The automated reasoning policy rules that contradict the claims in the
    -- input.
    contradictingRules :: Prelude.Maybe [GuardrailAutomatedReasoningRule],
    -- | Indication of a logic issue with the translation without needing to
    -- consider the automated reasoning policy rules.
    logicWarning :: Prelude.Maybe GuardrailAutomatedReasoningLogicWarning,
    -- | The logical translation of the input that this finding invalidates.
    translation :: Prelude.Maybe GuardrailAutomatedReasoningTranslation
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAutomatedReasoningInvalidFinding' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contradictingRules', 'guardrailAutomatedReasoningInvalidFinding_contradictingRules' - The automated reasoning policy rules that contradict the claims in the
-- input.
--
-- 'logicWarning', 'guardrailAutomatedReasoningInvalidFinding_logicWarning' - Indication of a logic issue with the translation without needing to
-- consider the automated reasoning policy rules.
--
-- 'translation', 'guardrailAutomatedReasoningInvalidFinding_translation' - The logical translation of the input that this finding invalidates.
newGuardrailAutomatedReasoningInvalidFinding ::
  GuardrailAutomatedReasoningInvalidFinding
newGuardrailAutomatedReasoningInvalidFinding =
  GuardrailAutomatedReasoningInvalidFinding'
    { contradictingRules =
        Prelude.Nothing,
      logicWarning = Prelude.Nothing,
      translation = Prelude.Nothing
    }

-- | The automated reasoning policy rules that contradict the claims in the
-- input.
guardrailAutomatedReasoningInvalidFinding_contradictingRules :: Lens.Lens' GuardrailAutomatedReasoningInvalidFinding (Prelude.Maybe [GuardrailAutomatedReasoningRule])
guardrailAutomatedReasoningInvalidFinding_contradictingRules = Lens.lens (\GuardrailAutomatedReasoningInvalidFinding' {contradictingRules} -> contradictingRules) (\s@GuardrailAutomatedReasoningInvalidFinding' {} a -> s {contradictingRules = a} :: GuardrailAutomatedReasoningInvalidFinding) Prelude.. Lens.mapping Lens.coerced

-- | Indication of a logic issue with the translation without needing to
-- consider the automated reasoning policy rules.
guardrailAutomatedReasoningInvalidFinding_logicWarning :: Lens.Lens' GuardrailAutomatedReasoningInvalidFinding (Prelude.Maybe GuardrailAutomatedReasoningLogicWarning)
guardrailAutomatedReasoningInvalidFinding_logicWarning = Lens.lens (\GuardrailAutomatedReasoningInvalidFinding' {logicWarning} -> logicWarning) (\s@GuardrailAutomatedReasoningInvalidFinding' {} a -> s {logicWarning = a} :: GuardrailAutomatedReasoningInvalidFinding)

-- | The logical translation of the input that this finding invalidates.
guardrailAutomatedReasoningInvalidFinding_translation :: Lens.Lens' GuardrailAutomatedReasoningInvalidFinding (Prelude.Maybe GuardrailAutomatedReasoningTranslation)
guardrailAutomatedReasoningInvalidFinding_translation = Lens.lens (\GuardrailAutomatedReasoningInvalidFinding' {translation} -> translation) (\s@GuardrailAutomatedReasoningInvalidFinding' {} a -> s {translation = a} :: GuardrailAutomatedReasoningInvalidFinding)

instance
  Data.FromJSON
    GuardrailAutomatedReasoningInvalidFinding
  where
  parseJSON =
    Data.withObject
      "GuardrailAutomatedReasoningInvalidFinding"
      ( \x ->
          GuardrailAutomatedReasoningInvalidFinding'
            Prelude.<$> ( x
                            Data..:? "contradictingRules"
                            Data..!= Prelude.mempty
                        )
            Prelude.<*> (x Data..:? "logicWarning")
            Prelude.<*> (x Data..:? "translation")
      )

instance
  Prelude.Hashable
    GuardrailAutomatedReasoningInvalidFinding
  where
  hashWithSalt
    _salt
    GuardrailAutomatedReasoningInvalidFinding' {..} =
      _salt
        `Prelude.hashWithSalt` contradictingRules
        `Prelude.hashWithSalt` logicWarning
        `Prelude.hashWithSalt` translation

instance
  Prelude.NFData
    GuardrailAutomatedReasoningInvalidFinding
  where
  rnf GuardrailAutomatedReasoningInvalidFinding' {..} =
    Prelude.rnf contradictingRules `Prelude.seq`
      Prelude.rnf logicWarning `Prelude.seq`
        Prelude.rnf translation
