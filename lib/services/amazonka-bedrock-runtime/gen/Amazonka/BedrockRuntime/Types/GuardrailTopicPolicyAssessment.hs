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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailTopicPolicyAssessment
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailTopicPolicyAssessment where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailTopic
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A behavior assessment of a topic policy.
--
-- /See:/ 'newGuardrailTopicPolicyAssessment' smart constructor.
data GuardrailTopicPolicyAssessment = GuardrailTopicPolicyAssessment'
  { -- | The topics in the assessment.
    topics :: [GuardrailTopic]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailTopicPolicyAssessment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'topics', 'guardrailTopicPolicyAssessment_topics' - The topics in the assessment.
newGuardrailTopicPolicyAssessment ::
  GuardrailTopicPolicyAssessment
newGuardrailTopicPolicyAssessment =
  GuardrailTopicPolicyAssessment'
    { topics =
        Prelude.mempty
    }

-- | The topics in the assessment.
guardrailTopicPolicyAssessment_topics :: Lens.Lens' GuardrailTopicPolicyAssessment [GuardrailTopic]
guardrailTopicPolicyAssessment_topics = Lens.lens (\GuardrailTopicPolicyAssessment' {topics} -> topics) (\s@GuardrailTopicPolicyAssessment' {} a -> s {topics = a} :: GuardrailTopicPolicyAssessment) Prelude.. Lens.coerced

instance Data.FromJSON GuardrailTopicPolicyAssessment where
  parseJSON =
    Data.withObject
      "GuardrailTopicPolicyAssessment"
      ( \x ->
          GuardrailTopicPolicyAssessment'
            Prelude.<$> (x Data..:? "topics" Data..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    GuardrailTopicPolicyAssessment
  where
  hashWithSalt
    _salt
    GuardrailTopicPolicyAssessment' {..} =
      _salt `Prelude.hashWithSalt` topics

instance
  Prelude.NFData
    GuardrailTopicPolicyAssessment
  where
  rnf GuardrailTopicPolicyAssessment' {..} =
    Prelude.rnf topics
