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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksResults
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksResults where

import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterResult
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackResult
import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationResult
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The results from the guardrail checks evaluation, organized by check
-- type.
--
-- /See:/ 'newGuardrailChecksResults' smart constructor.
data GuardrailChecksResults = GuardrailChecksResults'
  { -- | The content filter check results.
    contentFilter :: Prelude.Maybe GuardrailChecksContentFilterResult,
    -- | The prompt attack check results.
    promptAttack :: Prelude.Maybe GuardrailChecksPromptAttackResult,
    -- | The sensitive information check results.
    sensitiveInformation :: Prelude.Maybe GuardrailChecksSensitiveInformationResult
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksResults' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contentFilter', 'guardrailChecksResults_contentFilter' - The content filter check results.
--
-- 'promptAttack', 'guardrailChecksResults_promptAttack' - The prompt attack check results.
--
-- 'sensitiveInformation', 'guardrailChecksResults_sensitiveInformation' - The sensitive information check results.
newGuardrailChecksResults ::
  GuardrailChecksResults
newGuardrailChecksResults =
  GuardrailChecksResults'
    { contentFilter =
        Prelude.Nothing,
      promptAttack = Prelude.Nothing,
      sensitiveInformation = Prelude.Nothing
    }

-- | The content filter check results.
guardrailChecksResults_contentFilter :: Lens.Lens' GuardrailChecksResults (Prelude.Maybe GuardrailChecksContentFilterResult)
guardrailChecksResults_contentFilter = Lens.lens (\GuardrailChecksResults' {contentFilter} -> contentFilter) (\s@GuardrailChecksResults' {} a -> s {contentFilter = a} :: GuardrailChecksResults)

-- | The prompt attack check results.
guardrailChecksResults_promptAttack :: Lens.Lens' GuardrailChecksResults (Prelude.Maybe GuardrailChecksPromptAttackResult)
guardrailChecksResults_promptAttack = Lens.lens (\GuardrailChecksResults' {promptAttack} -> promptAttack) (\s@GuardrailChecksResults' {} a -> s {promptAttack = a} :: GuardrailChecksResults)

-- | The sensitive information check results.
guardrailChecksResults_sensitiveInformation :: Lens.Lens' GuardrailChecksResults (Prelude.Maybe GuardrailChecksSensitiveInformationResult)
guardrailChecksResults_sensitiveInformation = Lens.lens (\GuardrailChecksResults' {sensitiveInformation} -> sensitiveInformation) (\s@GuardrailChecksResults' {} a -> s {sensitiveInformation = a} :: GuardrailChecksResults)

instance Data.FromJSON GuardrailChecksResults where
  parseJSON =
    Data.withObject
      "GuardrailChecksResults"
      ( \x ->
          GuardrailChecksResults'
            Prelude.<$> (x Data..:? "contentFilter")
            Prelude.<*> (x Data..:? "promptAttack")
            Prelude.<*> (x Data..:? "sensitiveInformation")
      )

instance Prelude.Hashable GuardrailChecksResults where
  hashWithSalt _salt GuardrailChecksResults' {..} =
    _salt
      `Prelude.hashWithSalt` contentFilter
      `Prelude.hashWithSalt` promptAttack
      `Prelude.hashWithSalt` sensitiveInformation

instance Prelude.NFData GuardrailChecksResults where
  rnf GuardrailChecksResults' {..} =
    Prelude.rnf contentFilter `Prelude.seq`
      Prelude.rnf promptAttack `Prelude.seq`
        Prelude.rnf sensitiveInformation
