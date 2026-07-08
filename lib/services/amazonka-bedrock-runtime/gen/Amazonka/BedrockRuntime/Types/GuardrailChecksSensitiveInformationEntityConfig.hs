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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationEntityConfig
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationEntityConfig where

import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationEntityType
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The configuration for a single sensitive information entity type to
-- detect.
--
-- /See:/ 'newGuardrailChecksSensitiveInformationEntityConfig' smart constructor.
data GuardrailChecksSensitiveInformationEntityConfig = GuardrailChecksSensitiveInformationEntityConfig'
  { -- | The PII entity type to detect.
    type' :: GuardrailChecksSensitiveInformationEntityType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksSensitiveInformationEntityConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'guardrailChecksSensitiveInformationEntityConfig_type' - The PII entity type to detect.
newGuardrailChecksSensitiveInformationEntityConfig ::
  -- | 'type''
  GuardrailChecksSensitiveInformationEntityType ->
  GuardrailChecksSensitiveInformationEntityConfig
newGuardrailChecksSensitiveInformationEntityConfig
  pType_ =
    GuardrailChecksSensitiveInformationEntityConfig'
      { type' =
          pType_
      }

-- | The PII entity type to detect.
guardrailChecksSensitiveInformationEntityConfig_type :: Lens.Lens' GuardrailChecksSensitiveInformationEntityConfig GuardrailChecksSensitiveInformationEntityType
guardrailChecksSensitiveInformationEntityConfig_type = Lens.lens (\GuardrailChecksSensitiveInformationEntityConfig' {type'} -> type') (\s@GuardrailChecksSensitiveInformationEntityConfig' {} a -> s {type' = a} :: GuardrailChecksSensitiveInformationEntityConfig)

instance
  Prelude.Hashable
    GuardrailChecksSensitiveInformationEntityConfig
  where
  hashWithSalt
    _salt
    GuardrailChecksSensitiveInformationEntityConfig' {..} =
      _salt `Prelude.hashWithSalt` type'

instance
  Prelude.NFData
    GuardrailChecksSensitiveInformationEntityConfig
  where
  rnf
    GuardrailChecksSensitiveInformationEntityConfig' {..} =
      Prelude.rnf type'

instance
  Data.ToJSON
    GuardrailChecksSensitiveInformationEntityConfig
  where
  toJSON
    GuardrailChecksSensitiveInformationEntityConfig' {..} =
      Data.object
        ( Prelude.catMaybes
            [Prelude.Just ("type" Data..= type')]
        )
