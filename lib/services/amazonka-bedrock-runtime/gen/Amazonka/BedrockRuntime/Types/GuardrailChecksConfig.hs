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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksConfig
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksConfig where

import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterConfig
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackConfig
import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationConfig
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The configuration for inline guardrail checks. Specify one or more check
-- types to run against the messages.
--
-- /See:/ 'newGuardrailChecksConfig' smart constructor.
data GuardrailChecksConfig = GuardrailChecksConfig'
  { -- | The content filter check configuration.
    contentFilter :: Prelude.Maybe GuardrailChecksContentFilterConfig,
    -- | The prompt attack check configuration.
    promptAttack :: Prelude.Maybe GuardrailChecksPromptAttackConfig,
    -- | The sensitive information check configuration.
    sensitiveInformation :: Prelude.Maybe GuardrailChecksSensitiveInformationConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contentFilter', 'guardrailChecksConfig_contentFilter' - The content filter check configuration.
--
-- 'promptAttack', 'guardrailChecksConfig_promptAttack' - The prompt attack check configuration.
--
-- 'sensitiveInformation', 'guardrailChecksConfig_sensitiveInformation' - The sensitive information check configuration.
newGuardrailChecksConfig ::
  GuardrailChecksConfig
newGuardrailChecksConfig =
  GuardrailChecksConfig'
    { contentFilter =
        Prelude.Nothing,
      promptAttack = Prelude.Nothing,
      sensitiveInformation = Prelude.Nothing
    }

-- | The content filter check configuration.
guardrailChecksConfig_contentFilter :: Lens.Lens' GuardrailChecksConfig (Prelude.Maybe GuardrailChecksContentFilterConfig)
guardrailChecksConfig_contentFilter = Lens.lens (\GuardrailChecksConfig' {contentFilter} -> contentFilter) (\s@GuardrailChecksConfig' {} a -> s {contentFilter = a} :: GuardrailChecksConfig)

-- | The prompt attack check configuration.
guardrailChecksConfig_promptAttack :: Lens.Lens' GuardrailChecksConfig (Prelude.Maybe GuardrailChecksPromptAttackConfig)
guardrailChecksConfig_promptAttack = Lens.lens (\GuardrailChecksConfig' {promptAttack} -> promptAttack) (\s@GuardrailChecksConfig' {} a -> s {promptAttack = a} :: GuardrailChecksConfig)

-- | The sensitive information check configuration.
guardrailChecksConfig_sensitiveInformation :: Lens.Lens' GuardrailChecksConfig (Prelude.Maybe GuardrailChecksSensitiveInformationConfig)
guardrailChecksConfig_sensitiveInformation = Lens.lens (\GuardrailChecksConfig' {sensitiveInformation} -> sensitiveInformation) (\s@GuardrailChecksConfig' {} a -> s {sensitiveInformation = a} :: GuardrailChecksConfig)

instance Prelude.Hashable GuardrailChecksConfig where
  hashWithSalt _salt GuardrailChecksConfig' {..} =
    _salt
      `Prelude.hashWithSalt` contentFilter
      `Prelude.hashWithSalt` promptAttack
      `Prelude.hashWithSalt` sensitiveInformation

instance Prelude.NFData GuardrailChecksConfig where
  rnf GuardrailChecksConfig' {..} =
    Prelude.rnf contentFilter `Prelude.seq`
      Prelude.rnf promptAttack `Prelude.seq`
        Prelude.rnf sensitiveInformation

instance Data.ToJSON GuardrailChecksConfig where
  toJSON GuardrailChecksConfig' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("contentFilter" Data..=) Prelude.<$> contentFilter,
            ("promptAttack" Data..=) Prelude.<$> promptAttack,
            ("sensitiveInformation" Data..=)
              Prelude.<$> sensitiveInformation
          ]
      )
