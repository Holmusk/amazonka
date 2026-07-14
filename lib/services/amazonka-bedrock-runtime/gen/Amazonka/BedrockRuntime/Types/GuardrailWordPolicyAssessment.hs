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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailWordPolicyAssessment
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailWordPolicyAssessment where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailCustomWord
import Amazonka.BedrockRuntime.Types.GuardrailManagedWord
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The word policy assessment.
--
-- /See:/ 'newGuardrailWordPolicyAssessment' smart constructor.
data GuardrailWordPolicyAssessment = GuardrailWordPolicyAssessment'
  { -- | Custom words in the assessment.
    customWords :: [GuardrailCustomWord],
    -- | Managed word lists in the assessment.
    managedWordLists :: [GuardrailManagedWord]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailWordPolicyAssessment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'customWords', 'guardrailWordPolicyAssessment_customWords' - Custom words in the assessment.
--
-- 'managedWordLists', 'guardrailWordPolicyAssessment_managedWordLists' - Managed word lists in the assessment.
newGuardrailWordPolicyAssessment ::
  GuardrailWordPolicyAssessment
newGuardrailWordPolicyAssessment =
  GuardrailWordPolicyAssessment'
    { customWords =
        Prelude.mempty,
      managedWordLists = Prelude.mempty
    }

-- | Custom words in the assessment.
guardrailWordPolicyAssessment_customWords :: Lens.Lens' GuardrailWordPolicyAssessment [GuardrailCustomWord]
guardrailWordPolicyAssessment_customWords = Lens.lens (\GuardrailWordPolicyAssessment' {customWords} -> customWords) (\s@GuardrailWordPolicyAssessment' {} a -> s {customWords = a} :: GuardrailWordPolicyAssessment) Prelude.. Lens.coerced

-- | Managed word lists in the assessment.
guardrailWordPolicyAssessment_managedWordLists :: Lens.Lens' GuardrailWordPolicyAssessment [GuardrailManagedWord]
guardrailWordPolicyAssessment_managedWordLists = Lens.lens (\GuardrailWordPolicyAssessment' {managedWordLists} -> managedWordLists) (\s@GuardrailWordPolicyAssessment' {} a -> s {managedWordLists = a} :: GuardrailWordPolicyAssessment) Prelude.. Lens.coerced

instance Data.FromJSON GuardrailWordPolicyAssessment where
  parseJSON =
    Data.withObject
      "GuardrailWordPolicyAssessment"
      ( \x ->
          GuardrailWordPolicyAssessment'
            Prelude.<$> (x Data..:? "customWords" Data..!= Prelude.mempty)
            Prelude.<*> ( x
                            Data..:? "managedWordLists"
                            Data..!= Prelude.mempty
                        )
      )

instance
  Prelude.Hashable
    GuardrailWordPolicyAssessment
  where
  hashWithSalt _salt GuardrailWordPolicyAssessment' {..} =
    _salt
      `Prelude.hashWithSalt` customWords
      `Prelude.hashWithSalt` managedWordLists

instance Prelude.NFData GuardrailWordPolicyAssessment where
  rnf GuardrailWordPolicyAssessment' {..} =
    Prelude.rnf customWords `Prelude.seq`
      Prelude.rnf managedWordLists
