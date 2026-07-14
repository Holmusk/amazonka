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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailPiiEntityFilter
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailPiiEntityFilter where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailPiiEntityType
import Amazonka.BedrockRuntime.Types.GuardrailSensitiveInformationPolicyAction
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A Personally Identifiable Information (PII) entity configured in a
-- guardrail.
--
-- /See:/ 'newGuardrailPiiEntityFilter' smart constructor.
data GuardrailPiiEntityFilter = GuardrailPiiEntityFilter'
  { -- | Indicates whether personally identifiable information (PII) that
    -- breaches the guardrail configuration is detected.
    detected :: Prelude.Maybe Prelude.Bool,
    -- | The PII entity filter match.
    match :: Prelude.Text,
    -- | The PII entity filter type.
    type' :: GuardrailPiiEntityType,
    -- | The PII entity filter action.
    action :: GuardrailSensitiveInformationPolicyAction
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailPiiEntityFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detected', 'guardrailPiiEntityFilter_detected' - Indicates whether personally identifiable information (PII) that
-- breaches the guardrail configuration is detected.
--
-- 'match', 'guardrailPiiEntityFilter_match' - The PII entity filter match.
--
-- 'type'', 'guardrailPiiEntityFilter_type' - The PII entity filter type.
--
-- 'action', 'guardrailPiiEntityFilter_action' - The PII entity filter action.
newGuardrailPiiEntityFilter ::
  -- | 'match'
  Prelude.Text ->
  -- | 'type''
  GuardrailPiiEntityType ->
  -- | 'action'
  GuardrailSensitiveInformationPolicyAction ->
  GuardrailPiiEntityFilter
newGuardrailPiiEntityFilter pMatch_ pType_ pAction_ =
  GuardrailPiiEntityFilter'
    { detected =
        Prelude.Nothing,
      match = pMatch_,
      type' = pType_,
      action = pAction_
    }

-- | Indicates whether personally identifiable information (PII) that
-- breaches the guardrail configuration is detected.
guardrailPiiEntityFilter_detected :: Lens.Lens' GuardrailPiiEntityFilter (Prelude.Maybe Prelude.Bool)
guardrailPiiEntityFilter_detected = Lens.lens (\GuardrailPiiEntityFilter' {detected} -> detected) (\s@GuardrailPiiEntityFilter' {} a -> s {detected = a} :: GuardrailPiiEntityFilter)

-- | The PII entity filter match.
guardrailPiiEntityFilter_match :: Lens.Lens' GuardrailPiiEntityFilter Prelude.Text
guardrailPiiEntityFilter_match = Lens.lens (\GuardrailPiiEntityFilter' {match} -> match) (\s@GuardrailPiiEntityFilter' {} a -> s {match = a} :: GuardrailPiiEntityFilter)

-- | The PII entity filter type.
guardrailPiiEntityFilter_type :: Lens.Lens' GuardrailPiiEntityFilter GuardrailPiiEntityType
guardrailPiiEntityFilter_type = Lens.lens (\GuardrailPiiEntityFilter' {type'} -> type') (\s@GuardrailPiiEntityFilter' {} a -> s {type' = a} :: GuardrailPiiEntityFilter)

-- | The PII entity filter action.
guardrailPiiEntityFilter_action :: Lens.Lens' GuardrailPiiEntityFilter GuardrailSensitiveInformationPolicyAction
guardrailPiiEntityFilter_action = Lens.lens (\GuardrailPiiEntityFilter' {action} -> action) (\s@GuardrailPiiEntityFilter' {} a -> s {action = a} :: GuardrailPiiEntityFilter)

instance Data.FromJSON GuardrailPiiEntityFilter where
  parseJSON =
    Data.withObject
      "GuardrailPiiEntityFilter"
      ( \x ->
          GuardrailPiiEntityFilter'
            Prelude.<$> (x Data..:? "detected")
            Prelude.<*> (x Data..: "match")
            Prelude.<*> (x Data..: "type")
            Prelude.<*> (x Data..: "action")
      )

instance Prelude.Hashable GuardrailPiiEntityFilter where
  hashWithSalt _salt GuardrailPiiEntityFilter' {..} =
    _salt
      `Prelude.hashWithSalt` detected
      `Prelude.hashWithSalt` match
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` action

instance Prelude.NFData GuardrailPiiEntityFilter where
  rnf GuardrailPiiEntityFilter' {..} =
    Prelude.rnf detected `Prelude.seq`
      Prelude.rnf match `Prelude.seq`
        Prelude.rnf type' `Prelude.seq`
          Prelude.rnf action
