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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningFinding
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningFinding where

import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningImpossibleFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningInvalidFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningNoTranslationsFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningSatisfiableFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTooComplexFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslationAmbiguousFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningValidFinding
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Represents a logical validation result from automated reasoning policy
-- evaluation. The finding indicates whether claims in the input are
-- logically valid, invalid, satisfiable, impossible, or have other logical
-- issues.
--
-- /See:/ 'newGuardrailAutomatedReasoningFinding' smart constructor.
data GuardrailAutomatedReasoningFinding = GuardrailAutomatedReasoningFinding'
  { -- | Contains the result when the automated reasoning evaluation determines
    -- that no valid logical conclusions can be drawn due to contradictions in
    -- the premises or policy rules themselves.
    impossible :: Prelude.Maybe GuardrailAutomatedReasoningImpossibleFinding,
    -- | Contains the result when the automated reasoning evaluation determines
    -- that the claims in the input are logically invalid and contradict the
    -- established premises or policy rules.
    invalid :: Prelude.Maybe GuardrailAutomatedReasoningInvalidFinding,
    -- | Contains the result when the automated reasoning evaluation cannot
    -- extract any relevant logical information from the input that can be
    -- validated against the policy rules.
    noTranslations :: Prelude.Maybe GuardrailAutomatedReasoningNoTranslationsFinding,
    -- | Contains the result when the automated reasoning evaluation determines
    -- that the claims in the input could be either true or false depending on
    -- additional assumptions not provided in the input context.
    satisfiable :: Prelude.Maybe GuardrailAutomatedReasoningSatisfiableFinding,
    -- | Contains the result when the automated reasoning evaluation cannot
    -- process the input due to its complexity or volume exceeding the
    -- system\'s processing capacity for logical analysis.
    tooComplex :: Prelude.Maybe GuardrailAutomatedReasoningTooComplexFinding,
    -- | Contains the result when the automated reasoning evaluation detects that
    -- the input has multiple valid logical interpretations, requiring
    -- additional context or clarification to proceed with validation.
    translationAmbiguous :: Prelude.Maybe GuardrailAutomatedReasoningTranslationAmbiguousFinding,
    -- | Contains the result when the automated reasoning evaluation determines
    -- that the claims in the input are logically valid and definitively true
    -- based on the provided premises and policy rules.
    valid :: Prelude.Maybe GuardrailAutomatedReasoningValidFinding
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAutomatedReasoningFinding' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'impossible', 'guardrailAutomatedReasoningFinding_impossible' - Contains the result when the automated reasoning evaluation determines
-- that no valid logical conclusions can be drawn due to contradictions in
-- the premises or policy rules themselves.
--
-- 'invalid', 'guardrailAutomatedReasoningFinding_invalid' - Contains the result when the automated reasoning evaluation determines
-- that the claims in the input are logically invalid and contradict the
-- established premises or policy rules.
--
-- 'noTranslations', 'guardrailAutomatedReasoningFinding_noTranslations' - Contains the result when the automated reasoning evaluation cannot
-- extract any relevant logical information from the input that can be
-- validated against the policy rules.
--
-- 'satisfiable', 'guardrailAutomatedReasoningFinding_satisfiable' - Contains the result when the automated reasoning evaluation determines
-- that the claims in the input could be either true or false depending on
-- additional assumptions not provided in the input context.
--
-- 'tooComplex', 'guardrailAutomatedReasoningFinding_tooComplex' - Contains the result when the automated reasoning evaluation cannot
-- process the input due to its complexity or volume exceeding the
-- system\'s processing capacity for logical analysis.
--
-- 'translationAmbiguous', 'guardrailAutomatedReasoningFinding_translationAmbiguous' - Contains the result when the automated reasoning evaluation detects that
-- the input has multiple valid logical interpretations, requiring
-- additional context or clarification to proceed with validation.
--
-- 'valid', 'guardrailAutomatedReasoningFinding_valid' - Contains the result when the automated reasoning evaluation determines
-- that the claims in the input are logically valid and definitively true
-- based on the provided premises and policy rules.
newGuardrailAutomatedReasoningFinding ::
  GuardrailAutomatedReasoningFinding
newGuardrailAutomatedReasoningFinding =
  GuardrailAutomatedReasoningFinding'
    { impossible =
        Prelude.Nothing,
      invalid = Prelude.Nothing,
      noTranslations = Prelude.Nothing,
      satisfiable = Prelude.Nothing,
      tooComplex = Prelude.Nothing,
      translationAmbiguous = Prelude.Nothing,
      valid = Prelude.Nothing
    }

-- | Contains the result when the automated reasoning evaluation determines
-- that no valid logical conclusions can be drawn due to contradictions in
-- the premises or policy rules themselves.
guardrailAutomatedReasoningFinding_impossible :: Lens.Lens' GuardrailAutomatedReasoningFinding (Prelude.Maybe GuardrailAutomatedReasoningImpossibleFinding)
guardrailAutomatedReasoningFinding_impossible = Lens.lens (\GuardrailAutomatedReasoningFinding' {impossible} -> impossible) (\s@GuardrailAutomatedReasoningFinding' {} a -> s {impossible = a} :: GuardrailAutomatedReasoningFinding)

-- | Contains the result when the automated reasoning evaluation determines
-- that the claims in the input are logically invalid and contradict the
-- established premises or policy rules.
guardrailAutomatedReasoningFinding_invalid :: Lens.Lens' GuardrailAutomatedReasoningFinding (Prelude.Maybe GuardrailAutomatedReasoningInvalidFinding)
guardrailAutomatedReasoningFinding_invalid = Lens.lens (\GuardrailAutomatedReasoningFinding' {invalid} -> invalid) (\s@GuardrailAutomatedReasoningFinding' {} a -> s {invalid = a} :: GuardrailAutomatedReasoningFinding)

-- | Contains the result when the automated reasoning evaluation cannot
-- extract any relevant logical information from the input that can be
-- validated against the policy rules.
guardrailAutomatedReasoningFinding_noTranslations :: Lens.Lens' GuardrailAutomatedReasoningFinding (Prelude.Maybe GuardrailAutomatedReasoningNoTranslationsFinding)
guardrailAutomatedReasoningFinding_noTranslations = Lens.lens (\GuardrailAutomatedReasoningFinding' {noTranslations} -> noTranslations) (\s@GuardrailAutomatedReasoningFinding' {} a -> s {noTranslations = a} :: GuardrailAutomatedReasoningFinding)

-- | Contains the result when the automated reasoning evaluation determines
-- that the claims in the input could be either true or false depending on
-- additional assumptions not provided in the input context.
guardrailAutomatedReasoningFinding_satisfiable :: Lens.Lens' GuardrailAutomatedReasoningFinding (Prelude.Maybe GuardrailAutomatedReasoningSatisfiableFinding)
guardrailAutomatedReasoningFinding_satisfiable = Lens.lens (\GuardrailAutomatedReasoningFinding' {satisfiable} -> satisfiable) (\s@GuardrailAutomatedReasoningFinding' {} a -> s {satisfiable = a} :: GuardrailAutomatedReasoningFinding)

-- | Contains the result when the automated reasoning evaluation cannot
-- process the input due to its complexity or volume exceeding the
-- system\'s processing capacity for logical analysis.
guardrailAutomatedReasoningFinding_tooComplex :: Lens.Lens' GuardrailAutomatedReasoningFinding (Prelude.Maybe GuardrailAutomatedReasoningTooComplexFinding)
guardrailAutomatedReasoningFinding_tooComplex = Lens.lens (\GuardrailAutomatedReasoningFinding' {tooComplex} -> tooComplex) (\s@GuardrailAutomatedReasoningFinding' {} a -> s {tooComplex = a} :: GuardrailAutomatedReasoningFinding)

-- | Contains the result when the automated reasoning evaluation detects that
-- the input has multiple valid logical interpretations, requiring
-- additional context or clarification to proceed with validation.
guardrailAutomatedReasoningFinding_translationAmbiguous :: Lens.Lens' GuardrailAutomatedReasoningFinding (Prelude.Maybe GuardrailAutomatedReasoningTranslationAmbiguousFinding)
guardrailAutomatedReasoningFinding_translationAmbiguous = Lens.lens (\GuardrailAutomatedReasoningFinding' {translationAmbiguous} -> translationAmbiguous) (\s@GuardrailAutomatedReasoningFinding' {} a -> s {translationAmbiguous = a} :: GuardrailAutomatedReasoningFinding)

-- | Contains the result when the automated reasoning evaluation determines
-- that the claims in the input are logically valid and definitively true
-- based on the provided premises and policy rules.
guardrailAutomatedReasoningFinding_valid :: Lens.Lens' GuardrailAutomatedReasoningFinding (Prelude.Maybe GuardrailAutomatedReasoningValidFinding)
guardrailAutomatedReasoningFinding_valid = Lens.lens (\GuardrailAutomatedReasoningFinding' {valid} -> valid) (\s@GuardrailAutomatedReasoningFinding' {} a -> s {valid = a} :: GuardrailAutomatedReasoningFinding)

instance
  Data.FromJSON
    GuardrailAutomatedReasoningFinding
  where
  parseJSON =
    Data.withObject
      "GuardrailAutomatedReasoningFinding"
      ( \x ->
          GuardrailAutomatedReasoningFinding'
            Prelude.<$> (x Data..:? "impossible")
            Prelude.<*> (x Data..:? "invalid")
            Prelude.<*> (x Data..:? "noTranslations")
            Prelude.<*> (x Data..:? "satisfiable")
            Prelude.<*> (x Data..:? "tooComplex")
            Prelude.<*> (x Data..:? "translationAmbiguous")
            Prelude.<*> (x Data..:? "valid")
      )

instance
  Prelude.Hashable
    GuardrailAutomatedReasoningFinding
  where
  hashWithSalt
    _salt
    GuardrailAutomatedReasoningFinding' {..} =
      _salt
        `Prelude.hashWithSalt` impossible
        `Prelude.hashWithSalt` invalid
        `Prelude.hashWithSalt` noTranslations
        `Prelude.hashWithSalt` satisfiable
        `Prelude.hashWithSalt` tooComplex
        `Prelude.hashWithSalt` translationAmbiguous
        `Prelude.hashWithSalt` valid

instance
  Prelude.NFData
    GuardrailAutomatedReasoningFinding
  where
  rnf GuardrailAutomatedReasoningFinding' {..} =
    Prelude.rnf impossible `Prelude.seq`
      Prelude.rnf invalid `Prelude.seq`
        Prelude.rnf noTranslations `Prelude.seq`
          Prelude.rnf satisfiable `Prelude.seq`
            Prelude.rnf tooComplex `Prelude.seq`
              Prelude.rnf translationAmbiguous `Prelude.seq`
                Prelude.rnf valid
