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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAssessment
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAssessment where

import Amazonka.BedrockRuntime.Types.AppliedGuardrailDetails
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningPolicyAssessment
import Amazonka.BedrockRuntime.Types.GuardrailContentPolicyAssessment
import Amazonka.BedrockRuntime.Types.GuardrailContextualGroundingPolicyAssessment
import Amazonka.BedrockRuntime.Types.GuardrailInvocationMetrics
import Amazonka.BedrockRuntime.Types.GuardrailSensitiveInformationPolicyAssessment
import Amazonka.BedrockRuntime.Types.GuardrailTopicPolicyAssessment
import Amazonka.BedrockRuntime.Types.GuardrailWordPolicyAssessment
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A behavior assessment of the guardrail policies used in a call to the
-- Converse API.
--
-- /See:/ 'newGuardrailAssessment' smart constructor.
data GuardrailAssessment = GuardrailAssessment'
  { appliedGuardrailDetails :: Prelude.Maybe AppliedGuardrailDetails,
    -- | The automated reasoning policy assessment results, including logical
    -- validation findings for the input content.
    automatedReasoningPolicy :: Prelude.Maybe GuardrailAutomatedReasoningPolicyAssessment,
    -- | The content policy.
    contentPolicy :: Prelude.Maybe GuardrailContentPolicyAssessment,
    -- | The contextual grounding policy used for the guardrail assessment.
    contextualGroundingPolicy :: Prelude.Maybe GuardrailContextualGroundingPolicyAssessment,
    -- | The invocation metrics for the guardrail assessment.
    invocationMetrics :: Prelude.Maybe GuardrailInvocationMetrics,
    -- | The sensitive information policy.
    sensitiveInformationPolicy :: Prelude.Maybe GuardrailSensitiveInformationPolicyAssessment,
    -- | The topic policy.
    topicPolicy :: Prelude.Maybe GuardrailTopicPolicyAssessment,
    -- | The word policy.
    wordPolicy :: Prelude.Maybe GuardrailWordPolicyAssessment
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAssessment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appliedGuardrailDetails', 'guardrailAssessment_appliedGuardrailDetails' - Undocumented member.
--
-- 'automatedReasoningPolicy', 'guardrailAssessment_automatedReasoningPolicy' - The automated reasoning policy assessment results, including logical
-- validation findings for the input content.
--
-- 'contentPolicy', 'guardrailAssessment_contentPolicy' - The content policy.
--
-- 'contextualGroundingPolicy', 'guardrailAssessment_contextualGroundingPolicy' - The contextual grounding policy used for the guardrail assessment.
--
-- 'invocationMetrics', 'guardrailAssessment_invocationMetrics' - The invocation metrics for the guardrail assessment.
--
-- 'sensitiveInformationPolicy', 'guardrailAssessment_sensitiveInformationPolicy' - The sensitive information policy.
--
-- 'topicPolicy', 'guardrailAssessment_topicPolicy' - The topic policy.
--
-- 'wordPolicy', 'guardrailAssessment_wordPolicy' - The word policy.
newGuardrailAssessment ::
  GuardrailAssessment
newGuardrailAssessment =
  GuardrailAssessment'
    { appliedGuardrailDetails =
        Prelude.Nothing,
      automatedReasoningPolicy = Prelude.Nothing,
      contentPolicy = Prelude.Nothing,
      contextualGroundingPolicy = Prelude.Nothing,
      invocationMetrics = Prelude.Nothing,
      sensitiveInformationPolicy = Prelude.Nothing,
      topicPolicy = Prelude.Nothing,
      wordPolicy = Prelude.Nothing
    }

-- | Undocumented member.
guardrailAssessment_appliedGuardrailDetails :: Lens.Lens' GuardrailAssessment (Prelude.Maybe AppliedGuardrailDetails)
guardrailAssessment_appliedGuardrailDetails = Lens.lens (\GuardrailAssessment' {appliedGuardrailDetails} -> appliedGuardrailDetails) (\s@GuardrailAssessment' {} a -> s {appliedGuardrailDetails = a} :: GuardrailAssessment)

-- | The automated reasoning policy assessment results, including logical
-- validation findings for the input content.
guardrailAssessment_automatedReasoningPolicy :: Lens.Lens' GuardrailAssessment (Prelude.Maybe GuardrailAutomatedReasoningPolicyAssessment)
guardrailAssessment_automatedReasoningPolicy = Lens.lens (\GuardrailAssessment' {automatedReasoningPolicy} -> automatedReasoningPolicy) (\s@GuardrailAssessment' {} a -> s {automatedReasoningPolicy = a} :: GuardrailAssessment)

-- | The content policy.
guardrailAssessment_contentPolicy :: Lens.Lens' GuardrailAssessment (Prelude.Maybe GuardrailContentPolicyAssessment)
guardrailAssessment_contentPolicy = Lens.lens (\GuardrailAssessment' {contentPolicy} -> contentPolicy) (\s@GuardrailAssessment' {} a -> s {contentPolicy = a} :: GuardrailAssessment)

-- | The contextual grounding policy used for the guardrail assessment.
guardrailAssessment_contextualGroundingPolicy :: Lens.Lens' GuardrailAssessment (Prelude.Maybe GuardrailContextualGroundingPolicyAssessment)
guardrailAssessment_contextualGroundingPolicy = Lens.lens (\GuardrailAssessment' {contextualGroundingPolicy} -> contextualGroundingPolicy) (\s@GuardrailAssessment' {} a -> s {contextualGroundingPolicy = a} :: GuardrailAssessment)

-- | The invocation metrics for the guardrail assessment.
guardrailAssessment_invocationMetrics :: Lens.Lens' GuardrailAssessment (Prelude.Maybe GuardrailInvocationMetrics)
guardrailAssessment_invocationMetrics = Lens.lens (\GuardrailAssessment' {invocationMetrics} -> invocationMetrics) (\s@GuardrailAssessment' {} a -> s {invocationMetrics = a} :: GuardrailAssessment)

-- | The sensitive information policy.
guardrailAssessment_sensitiveInformationPolicy :: Lens.Lens' GuardrailAssessment (Prelude.Maybe GuardrailSensitiveInformationPolicyAssessment)
guardrailAssessment_sensitiveInformationPolicy = Lens.lens (\GuardrailAssessment' {sensitiveInformationPolicy} -> sensitiveInformationPolicy) (\s@GuardrailAssessment' {} a -> s {sensitiveInformationPolicy = a} :: GuardrailAssessment)

-- | The topic policy.
guardrailAssessment_topicPolicy :: Lens.Lens' GuardrailAssessment (Prelude.Maybe GuardrailTopicPolicyAssessment)
guardrailAssessment_topicPolicy = Lens.lens (\GuardrailAssessment' {topicPolicy} -> topicPolicy) (\s@GuardrailAssessment' {} a -> s {topicPolicy = a} :: GuardrailAssessment)

-- | The word policy.
guardrailAssessment_wordPolicy :: Lens.Lens' GuardrailAssessment (Prelude.Maybe GuardrailWordPolicyAssessment)
guardrailAssessment_wordPolicy = Lens.lens (\GuardrailAssessment' {wordPolicy} -> wordPolicy) (\s@GuardrailAssessment' {} a -> s {wordPolicy = a} :: GuardrailAssessment)

instance Data.FromJSON GuardrailAssessment where
  parseJSON =
    Data.withObject
      "GuardrailAssessment"
      ( \x ->
          GuardrailAssessment'
            Prelude.<$> (x Data..:? "appliedGuardrailDetails")
            Prelude.<*> (x Data..:? "automatedReasoningPolicy")
            Prelude.<*> (x Data..:? "contentPolicy")
            Prelude.<*> (x Data..:? "contextualGroundingPolicy")
            Prelude.<*> (x Data..:? "invocationMetrics")
            Prelude.<*> (x Data..:? "sensitiveInformationPolicy")
            Prelude.<*> (x Data..:? "topicPolicy")
            Prelude.<*> (x Data..:? "wordPolicy")
      )

instance Prelude.Hashable GuardrailAssessment where
  hashWithSalt _salt GuardrailAssessment' {..} =
    _salt
      `Prelude.hashWithSalt` appliedGuardrailDetails
      `Prelude.hashWithSalt` automatedReasoningPolicy
      `Prelude.hashWithSalt` contentPolicy
      `Prelude.hashWithSalt` contextualGroundingPolicy
      `Prelude.hashWithSalt` invocationMetrics
      `Prelude.hashWithSalt` sensitiveInformationPolicy
      `Prelude.hashWithSalt` topicPolicy
      `Prelude.hashWithSalt` wordPolicy

instance Prelude.NFData GuardrailAssessment where
  rnf GuardrailAssessment' {..} =
    Prelude.rnf appliedGuardrailDetails `Prelude.seq`
      Prelude.rnf automatedReasoningPolicy `Prelude.seq`
        Prelude.rnf contentPolicy `Prelude.seq`
          Prelude.rnf contextualGroundingPolicy `Prelude.seq`
            Prelude.rnf invocationMetrics `Prelude.seq`
              Prelude.rnf sensitiveInformationPolicy `Prelude.seq`
                Prelude.rnf topicPolicy `Prelude.seq`
                  Prelude.rnf wordPolicy
