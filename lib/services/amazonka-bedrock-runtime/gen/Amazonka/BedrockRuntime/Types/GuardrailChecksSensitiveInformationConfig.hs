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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationConfig
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationConfig where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationEntityConfig
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The configuration for the sensitive information check, specifying which
-- entity types to detect.
--
-- /See:/ 'newGuardrailChecksSensitiveInformationConfig' smart constructor.
data GuardrailChecksSensitiveInformationConfig = GuardrailChecksSensitiveInformationConfig'
  { -- | The sensitive information entity types to detect.
    entities :: Prelude.NonEmpty GuardrailChecksSensitiveInformationEntityConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksSensitiveInformationConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'entities', 'guardrailChecksSensitiveInformationConfig_entities' - The sensitive information entity types to detect.
newGuardrailChecksSensitiveInformationConfig ::
  -- | 'entities'
  Prelude.NonEmpty GuardrailChecksSensitiveInformationEntityConfig ->
  GuardrailChecksSensitiveInformationConfig
newGuardrailChecksSensitiveInformationConfig
  pEntities_ =
    GuardrailChecksSensitiveInformationConfig'
      { entities =
          Lens.coerced Lens.# pEntities_
      }

-- | The sensitive information entity types to detect.
guardrailChecksSensitiveInformationConfig_entities :: Lens.Lens' GuardrailChecksSensitiveInformationConfig (Prelude.NonEmpty GuardrailChecksSensitiveInformationEntityConfig)
guardrailChecksSensitiveInformationConfig_entities = Lens.lens (\GuardrailChecksSensitiveInformationConfig' {entities} -> entities) (\s@GuardrailChecksSensitiveInformationConfig' {} a -> s {entities = a} :: GuardrailChecksSensitiveInformationConfig) Prelude.. Lens.coerced

instance
  Prelude.Hashable
    GuardrailChecksSensitiveInformationConfig
  where
  hashWithSalt
    _salt
    GuardrailChecksSensitiveInformationConfig' {..} =
      _salt `Prelude.hashWithSalt` entities

instance
  Prelude.NFData
    GuardrailChecksSensitiveInformationConfig
  where
  rnf GuardrailChecksSensitiveInformationConfig' {..} =
    Prelude.rnf entities

instance
  Data.ToJSON
    GuardrailChecksSensitiveInformationConfig
  where
  toJSON GuardrailChecksSensitiveInformationConfig' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("entities" Data..= entities)]
      )
