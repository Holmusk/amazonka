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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksUsageResults
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksUsageResults where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterUsage
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackUsage
import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationUsage
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The text unit usage for the guardrail checks evaluation, organized by
-- check type.
--
-- /See:/ 'newGuardrailChecksUsageResults' smart constructor.
data GuardrailChecksUsageResults = GuardrailChecksUsageResults'
  { -- | The text unit usage for the content filter check.
    contentFilter :: Prelude.Maybe GuardrailChecksContentFilterUsage,
    -- | The text unit usage for the prompt attack check.
    promptAttack :: Prelude.Maybe GuardrailChecksPromptAttackUsage,
    -- | The text unit usage for the sensitive information check.
    sensitiveInformation :: Prelude.Maybe GuardrailChecksSensitiveInformationUsage
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksUsageResults' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contentFilter', 'guardrailChecksUsageResults_contentFilter' - The text unit usage for the content filter check.
--
-- 'promptAttack', 'guardrailChecksUsageResults_promptAttack' - The text unit usage for the prompt attack check.
--
-- 'sensitiveInformation', 'guardrailChecksUsageResults_sensitiveInformation' - The text unit usage for the sensitive information check.
newGuardrailChecksUsageResults ::
  GuardrailChecksUsageResults
newGuardrailChecksUsageResults =
  GuardrailChecksUsageResults'
    { contentFilter =
        Prelude.Nothing,
      promptAttack = Prelude.Nothing,
      sensitiveInformation = Prelude.Nothing
    }

-- | The text unit usage for the content filter check.
guardrailChecksUsageResults_contentFilter :: Lens.Lens' GuardrailChecksUsageResults (Prelude.Maybe GuardrailChecksContentFilterUsage)
guardrailChecksUsageResults_contentFilter = Lens.lens (\GuardrailChecksUsageResults' {contentFilter} -> contentFilter) (\s@GuardrailChecksUsageResults' {} a -> s {contentFilter = a} :: GuardrailChecksUsageResults)

-- | The text unit usage for the prompt attack check.
guardrailChecksUsageResults_promptAttack :: Lens.Lens' GuardrailChecksUsageResults (Prelude.Maybe GuardrailChecksPromptAttackUsage)
guardrailChecksUsageResults_promptAttack = Lens.lens (\GuardrailChecksUsageResults' {promptAttack} -> promptAttack) (\s@GuardrailChecksUsageResults' {} a -> s {promptAttack = a} :: GuardrailChecksUsageResults)

-- | The text unit usage for the sensitive information check.
guardrailChecksUsageResults_sensitiveInformation :: Lens.Lens' GuardrailChecksUsageResults (Prelude.Maybe GuardrailChecksSensitiveInformationUsage)
guardrailChecksUsageResults_sensitiveInformation = Lens.lens (\GuardrailChecksUsageResults' {sensitiveInformation} -> sensitiveInformation) (\s@GuardrailChecksUsageResults' {} a -> s {sensitiveInformation = a} :: GuardrailChecksUsageResults)

instance Data.FromJSON GuardrailChecksUsageResults where
  parseJSON =
    Data.withObject
      "GuardrailChecksUsageResults"
      ( \x ->
          GuardrailChecksUsageResults'
            Prelude.<$> (x Data..:? "contentFilter")
            Prelude.<*> (x Data..:? "promptAttack")
            Prelude.<*> (x Data..:? "sensitiveInformation")
      )

instance Prelude.Hashable GuardrailChecksUsageResults where
  hashWithSalt _salt GuardrailChecksUsageResults' {..} =
    _salt
      `Prelude.hashWithSalt` contentFilter
      `Prelude.hashWithSalt` promptAttack
      `Prelude.hashWithSalt` sensitiveInformation

instance Prelude.NFData GuardrailChecksUsageResults where
  rnf GuardrailChecksUsageResults' {..} =
    Prelude.rnf contentFilter `Prelude.seq`
      Prelude.rnf promptAttack `Prelude.seq`
        Prelude.rnf sensitiveInformation
