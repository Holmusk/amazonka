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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailUsage
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailUsage where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The details on the use of the guardrail.
--
-- /See:/ 'newGuardrailUsage' smart constructor.
data GuardrailUsage = GuardrailUsage'
  { -- | The number of automated reasoning policies that were processed during
    -- the guardrail evaluation.
    automatedReasoningPolicies :: Prelude.Maybe Prelude.Int,
    -- | The number of text units processed by the automated reasoning policy.
    automatedReasoningPolicyUnits :: Prelude.Maybe Prelude.Int,
    -- | The content policy image units processed by the guardrail.
    contentPolicyImageUnits :: Prelude.Maybe Prelude.Int,
    -- | The topic policy units processed by the guardrail.
    topicPolicyUnits :: Prelude.Int,
    -- | The content policy units processed by the guardrail.
    contentPolicyUnits :: Prelude.Int,
    -- | The word policy units processed by the guardrail.
    wordPolicyUnits :: Prelude.Int,
    -- | The sensitive information policy units processed by the guardrail.
    sensitiveInformationPolicyUnits :: Prelude.Int,
    -- | The sensitive information policy free units processed by the guardrail.
    sensitiveInformationPolicyFreeUnits :: Prelude.Int,
    -- | The contextual grounding policy units processed by the guardrail.
    contextualGroundingPolicyUnits :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailUsage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'automatedReasoningPolicies', 'guardrailUsage_automatedReasoningPolicies' - The number of automated reasoning policies that were processed during
-- the guardrail evaluation.
--
-- 'automatedReasoningPolicyUnits', 'guardrailUsage_automatedReasoningPolicyUnits' - The number of text units processed by the automated reasoning policy.
--
-- 'contentPolicyImageUnits', 'guardrailUsage_contentPolicyImageUnits' - The content policy image units processed by the guardrail.
--
-- 'topicPolicyUnits', 'guardrailUsage_topicPolicyUnits' - The topic policy units processed by the guardrail.
--
-- 'contentPolicyUnits', 'guardrailUsage_contentPolicyUnits' - The content policy units processed by the guardrail.
--
-- 'wordPolicyUnits', 'guardrailUsage_wordPolicyUnits' - The word policy units processed by the guardrail.
--
-- 'sensitiveInformationPolicyUnits', 'guardrailUsage_sensitiveInformationPolicyUnits' - The sensitive information policy units processed by the guardrail.
--
-- 'sensitiveInformationPolicyFreeUnits', 'guardrailUsage_sensitiveInformationPolicyFreeUnits' - The sensitive information policy free units processed by the guardrail.
--
-- 'contextualGroundingPolicyUnits', 'guardrailUsage_contextualGroundingPolicyUnits' - The contextual grounding policy units processed by the guardrail.
newGuardrailUsage ::
  -- | 'topicPolicyUnits'
  Prelude.Int ->
  -- | 'contentPolicyUnits'
  Prelude.Int ->
  -- | 'wordPolicyUnits'
  Prelude.Int ->
  -- | 'sensitiveInformationPolicyUnits'
  Prelude.Int ->
  -- | 'sensitiveInformationPolicyFreeUnits'
  Prelude.Int ->
  -- | 'contextualGroundingPolicyUnits'
  Prelude.Int ->
  GuardrailUsage
newGuardrailUsage
  pTopicPolicyUnits_
  pContentPolicyUnits_
  pWordPolicyUnits_
  pSensitiveInformationPolicyUnits_
  pSensitiveInformationPolicyFreeUnits_
  pContextualGroundingPolicyUnits_ =
    GuardrailUsage'
      { automatedReasoningPolicies =
          Prelude.Nothing,
        automatedReasoningPolicyUnits = Prelude.Nothing,
        contentPolicyImageUnits = Prelude.Nothing,
        topicPolicyUnits = pTopicPolicyUnits_,
        contentPolicyUnits = pContentPolicyUnits_,
        wordPolicyUnits = pWordPolicyUnits_,
        sensitiveInformationPolicyUnits =
          pSensitiveInformationPolicyUnits_,
        sensitiveInformationPolicyFreeUnits =
          pSensitiveInformationPolicyFreeUnits_,
        contextualGroundingPolicyUnits =
          pContextualGroundingPolicyUnits_
      }

-- | The number of automated reasoning policies that were processed during
-- the guardrail evaluation.
guardrailUsage_automatedReasoningPolicies :: Lens.Lens' GuardrailUsage (Prelude.Maybe Prelude.Int)
guardrailUsage_automatedReasoningPolicies = Lens.lens (\GuardrailUsage' {automatedReasoningPolicies} -> automatedReasoningPolicies) (\s@GuardrailUsage' {} a -> s {automatedReasoningPolicies = a} :: GuardrailUsage)

-- | The number of text units processed by the automated reasoning policy.
guardrailUsage_automatedReasoningPolicyUnits :: Lens.Lens' GuardrailUsage (Prelude.Maybe Prelude.Int)
guardrailUsage_automatedReasoningPolicyUnits = Lens.lens (\GuardrailUsage' {automatedReasoningPolicyUnits} -> automatedReasoningPolicyUnits) (\s@GuardrailUsage' {} a -> s {automatedReasoningPolicyUnits = a} :: GuardrailUsage)

-- | The content policy image units processed by the guardrail.
guardrailUsage_contentPolicyImageUnits :: Lens.Lens' GuardrailUsage (Prelude.Maybe Prelude.Int)
guardrailUsage_contentPolicyImageUnits = Lens.lens (\GuardrailUsage' {contentPolicyImageUnits} -> contentPolicyImageUnits) (\s@GuardrailUsage' {} a -> s {contentPolicyImageUnits = a} :: GuardrailUsage)

-- | The topic policy units processed by the guardrail.
guardrailUsage_topicPolicyUnits :: Lens.Lens' GuardrailUsage Prelude.Int
guardrailUsage_topicPolicyUnits = Lens.lens (\GuardrailUsage' {topicPolicyUnits} -> topicPolicyUnits) (\s@GuardrailUsage' {} a -> s {topicPolicyUnits = a} :: GuardrailUsage)

-- | The content policy units processed by the guardrail.
guardrailUsage_contentPolicyUnits :: Lens.Lens' GuardrailUsage Prelude.Int
guardrailUsage_contentPolicyUnits = Lens.lens (\GuardrailUsage' {contentPolicyUnits} -> contentPolicyUnits) (\s@GuardrailUsage' {} a -> s {contentPolicyUnits = a} :: GuardrailUsage)

-- | The word policy units processed by the guardrail.
guardrailUsage_wordPolicyUnits :: Lens.Lens' GuardrailUsage Prelude.Int
guardrailUsage_wordPolicyUnits = Lens.lens (\GuardrailUsage' {wordPolicyUnits} -> wordPolicyUnits) (\s@GuardrailUsage' {} a -> s {wordPolicyUnits = a} :: GuardrailUsage)

-- | The sensitive information policy units processed by the guardrail.
guardrailUsage_sensitiveInformationPolicyUnits :: Lens.Lens' GuardrailUsage Prelude.Int
guardrailUsage_sensitiveInformationPolicyUnits = Lens.lens (\GuardrailUsage' {sensitiveInformationPolicyUnits} -> sensitiveInformationPolicyUnits) (\s@GuardrailUsage' {} a -> s {sensitiveInformationPolicyUnits = a} :: GuardrailUsage)

-- | The sensitive information policy free units processed by the guardrail.
guardrailUsage_sensitiveInformationPolicyFreeUnits :: Lens.Lens' GuardrailUsage Prelude.Int
guardrailUsage_sensitiveInformationPolicyFreeUnits = Lens.lens (\GuardrailUsage' {sensitiveInformationPolicyFreeUnits} -> sensitiveInformationPolicyFreeUnits) (\s@GuardrailUsage' {} a -> s {sensitiveInformationPolicyFreeUnits = a} :: GuardrailUsage)

-- | The contextual grounding policy units processed by the guardrail.
guardrailUsage_contextualGroundingPolicyUnits :: Lens.Lens' GuardrailUsage Prelude.Int
guardrailUsage_contextualGroundingPolicyUnits = Lens.lens (\GuardrailUsage' {contextualGroundingPolicyUnits} -> contextualGroundingPolicyUnits) (\s@GuardrailUsage' {} a -> s {contextualGroundingPolicyUnits = a} :: GuardrailUsage)

instance Data.FromJSON GuardrailUsage where
  parseJSON =
    Data.withObject
      "GuardrailUsage"
      ( \x ->
          GuardrailUsage'
            Prelude.<$> (x Data..:? "automatedReasoningPolicies")
            Prelude.<*> (x Data..:? "automatedReasoningPolicyUnits")
            Prelude.<*> (x Data..:? "contentPolicyImageUnits")
            Prelude.<*> (x Data..: "topicPolicyUnits")
            Prelude.<*> (x Data..: "contentPolicyUnits")
            Prelude.<*> (x Data..: "wordPolicyUnits")
            Prelude.<*> (x Data..: "sensitiveInformationPolicyUnits")
            Prelude.<*> (x Data..: "sensitiveInformationPolicyFreeUnits")
            Prelude.<*> (x Data..: "contextualGroundingPolicyUnits")
      )

instance Prelude.Hashable GuardrailUsage where
  hashWithSalt _salt GuardrailUsage' {..} =
    _salt
      `Prelude.hashWithSalt` automatedReasoningPolicies
      `Prelude.hashWithSalt` automatedReasoningPolicyUnits
      `Prelude.hashWithSalt` contentPolicyImageUnits
      `Prelude.hashWithSalt` topicPolicyUnits
      `Prelude.hashWithSalt` contentPolicyUnits
      `Prelude.hashWithSalt` wordPolicyUnits
      `Prelude.hashWithSalt` sensitiveInformationPolicyUnits
      `Prelude.hashWithSalt` sensitiveInformationPolicyFreeUnits
      `Prelude.hashWithSalt` contextualGroundingPolicyUnits

instance Prelude.NFData GuardrailUsage where
  rnf GuardrailUsage' {..} =
    Prelude.rnf automatedReasoningPolicies `Prelude.seq`
      Prelude.rnf automatedReasoningPolicyUnits `Prelude.seq`
        Prelude.rnf contentPolicyImageUnits `Prelude.seq`
          Prelude.rnf topicPolicyUnits `Prelude.seq`
            Prelude.rnf contentPolicyUnits `Prelude.seq`
              Prelude.rnf wordPolicyUnits `Prelude.seq`
                Prelude.rnf sensitiveInformationPolicyUnits `Prelude.seq`
                  Prelude.rnf sensitiveInformationPolicyFreeUnits `Prelude.seq`
                    Prelude.rnf contextualGroundingPolicyUnits
