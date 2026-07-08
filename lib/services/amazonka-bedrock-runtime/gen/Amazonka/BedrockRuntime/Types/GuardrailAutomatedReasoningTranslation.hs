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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslation
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslation where

import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningInputTextReference
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningStatement
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Contains the logical translation of natural language input into formal
-- logical statements, including premises, claims, and confidence scores.
--
-- /See:/ 'newGuardrailAutomatedReasoningTranslation' smart constructor.
data GuardrailAutomatedReasoningTranslation = GuardrailAutomatedReasoningTranslation'
  { -- | The logical statements that are being validated against the premises and
    -- policy rules.
    claims :: Prelude.Maybe [GuardrailAutomatedReasoningStatement],
    -- | A confidence score between 0 and 1 indicating how certain the system is
    -- about the logical translation.
    confidence :: Prelude.Maybe Prelude.Double,
    -- | The logical statements that serve as the foundation or assumptions for
    -- the claims.
    premises :: Prelude.Maybe [GuardrailAutomatedReasoningStatement],
    -- | References to portions of the original input text that correspond to the
    -- claims but could not be fully translated.
    untranslatedClaims :: Prelude.Maybe [GuardrailAutomatedReasoningInputTextReference],
    -- | References to portions of the original input text that correspond to the
    -- premises but could not be fully translated.
    untranslatedPremises :: Prelude.Maybe [GuardrailAutomatedReasoningInputTextReference]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAutomatedReasoningTranslation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'claims', 'guardrailAutomatedReasoningTranslation_claims' - The logical statements that are being validated against the premises and
-- policy rules.
--
-- 'confidence', 'guardrailAutomatedReasoningTranslation_confidence' - A confidence score between 0 and 1 indicating how certain the system is
-- about the logical translation.
--
-- 'premises', 'guardrailAutomatedReasoningTranslation_premises' - The logical statements that serve as the foundation or assumptions for
-- the claims.
--
-- 'untranslatedClaims', 'guardrailAutomatedReasoningTranslation_untranslatedClaims' - References to portions of the original input text that correspond to the
-- claims but could not be fully translated.
--
-- 'untranslatedPremises', 'guardrailAutomatedReasoningTranslation_untranslatedPremises' - References to portions of the original input text that correspond to the
-- premises but could not be fully translated.
newGuardrailAutomatedReasoningTranslation ::
  GuardrailAutomatedReasoningTranslation
newGuardrailAutomatedReasoningTranslation =
  GuardrailAutomatedReasoningTranslation'
    { claims =
        Prelude.Nothing,
      confidence = Prelude.Nothing,
      premises = Prelude.Nothing,
      untranslatedClaims =
        Prelude.Nothing,
      untranslatedPremises =
        Prelude.Nothing
    }

-- | The logical statements that are being validated against the premises and
-- policy rules.
guardrailAutomatedReasoningTranslation_claims :: Lens.Lens' GuardrailAutomatedReasoningTranslation (Prelude.Maybe [GuardrailAutomatedReasoningStatement])
guardrailAutomatedReasoningTranslation_claims = Lens.lens (\GuardrailAutomatedReasoningTranslation' {claims} -> claims) (\s@GuardrailAutomatedReasoningTranslation' {} a -> s {claims = a} :: GuardrailAutomatedReasoningTranslation) Prelude.. Lens.mapping Lens.coerced

-- | A confidence score between 0 and 1 indicating how certain the system is
-- about the logical translation.
guardrailAutomatedReasoningTranslation_confidence :: Lens.Lens' GuardrailAutomatedReasoningTranslation (Prelude.Maybe Prelude.Double)
guardrailAutomatedReasoningTranslation_confidence = Lens.lens (\GuardrailAutomatedReasoningTranslation' {confidence} -> confidence) (\s@GuardrailAutomatedReasoningTranslation' {} a -> s {confidence = a} :: GuardrailAutomatedReasoningTranslation)

-- | The logical statements that serve as the foundation or assumptions for
-- the claims.
guardrailAutomatedReasoningTranslation_premises :: Lens.Lens' GuardrailAutomatedReasoningTranslation (Prelude.Maybe [GuardrailAutomatedReasoningStatement])
guardrailAutomatedReasoningTranslation_premises = Lens.lens (\GuardrailAutomatedReasoningTranslation' {premises} -> premises) (\s@GuardrailAutomatedReasoningTranslation' {} a -> s {premises = a} :: GuardrailAutomatedReasoningTranslation) Prelude.. Lens.mapping Lens.coerced

-- | References to portions of the original input text that correspond to the
-- claims but could not be fully translated.
guardrailAutomatedReasoningTranslation_untranslatedClaims :: Lens.Lens' GuardrailAutomatedReasoningTranslation (Prelude.Maybe [GuardrailAutomatedReasoningInputTextReference])
guardrailAutomatedReasoningTranslation_untranslatedClaims = Lens.lens (\GuardrailAutomatedReasoningTranslation' {untranslatedClaims} -> untranslatedClaims) (\s@GuardrailAutomatedReasoningTranslation' {} a -> s {untranslatedClaims = a} :: GuardrailAutomatedReasoningTranslation) Prelude.. Lens.mapping Lens.coerced

-- | References to portions of the original input text that correspond to the
-- premises but could not be fully translated.
guardrailAutomatedReasoningTranslation_untranslatedPremises :: Lens.Lens' GuardrailAutomatedReasoningTranslation (Prelude.Maybe [GuardrailAutomatedReasoningInputTextReference])
guardrailAutomatedReasoningTranslation_untranslatedPremises = Lens.lens (\GuardrailAutomatedReasoningTranslation' {untranslatedPremises} -> untranslatedPremises) (\s@GuardrailAutomatedReasoningTranslation' {} a -> s {untranslatedPremises = a} :: GuardrailAutomatedReasoningTranslation) Prelude.. Lens.mapping Lens.coerced

instance
  Data.FromJSON
    GuardrailAutomatedReasoningTranslation
  where
  parseJSON =
    Data.withObject
      "GuardrailAutomatedReasoningTranslation"
      ( \x ->
          GuardrailAutomatedReasoningTranslation'
            Prelude.<$> (x Data..:? "claims" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "confidence")
            Prelude.<*> (x Data..:? "premises" Data..!= Prelude.mempty)
            Prelude.<*> ( x
                            Data..:? "untranslatedClaims"
                            Data..!= Prelude.mempty
                        )
            Prelude.<*> ( x
                            Data..:? "untranslatedPremises"
                            Data..!= Prelude.mempty
                        )
      )

instance
  Prelude.Hashable
    GuardrailAutomatedReasoningTranslation
  where
  hashWithSalt
    _salt
    GuardrailAutomatedReasoningTranslation' {..} =
      _salt
        `Prelude.hashWithSalt` claims
        `Prelude.hashWithSalt` confidence
        `Prelude.hashWithSalt` premises
        `Prelude.hashWithSalt` untranslatedClaims
        `Prelude.hashWithSalt` untranslatedPremises

instance
  Prelude.NFData
    GuardrailAutomatedReasoningTranslation
  where
  rnf GuardrailAutomatedReasoningTranslation' {..} =
    Prelude.rnf claims `Prelude.seq`
      Prelude.rnf confidence `Prelude.seq`
        Prelude.rnf premises `Prelude.seq`
          Prelude.rnf untranslatedClaims `Prelude.seq`
            Prelude.rnf untranslatedPremises
