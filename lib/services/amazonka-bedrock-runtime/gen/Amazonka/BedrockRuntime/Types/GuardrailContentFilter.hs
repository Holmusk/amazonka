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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailContentFilter
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailContentFilter where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailContentFilterConfidence
import Amazonka.BedrockRuntime.Types.GuardrailContentFilterStrength
import Amazonka.BedrockRuntime.Types.GuardrailContentFilterType
import Amazonka.BedrockRuntime.Types.GuardrailContentPolicyAction
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The content filter for a guardrail.
--
-- /See:/ 'newGuardrailContentFilter' smart constructor.
data GuardrailContentFilter = GuardrailContentFilter'
  { -- | Indicates whether content that breaches the guardrail configuration is
    -- detected.
    detected :: Prelude.Maybe Prelude.Bool,
    -- | The filter strength setting for the guardrail content filter.
    filterStrength :: Prelude.Maybe GuardrailContentFilterStrength,
    -- | The guardrail type.
    type' :: GuardrailContentFilterType,
    -- | The guardrail confidence.
    confidence :: GuardrailContentFilterConfidence,
    -- | The guardrail action.
    action :: GuardrailContentPolicyAction
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailContentFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detected', 'guardrailContentFilter_detected' - Indicates whether content that breaches the guardrail configuration is
-- detected.
--
-- 'filterStrength', 'guardrailContentFilter_filterStrength' - The filter strength setting for the guardrail content filter.
--
-- 'type'', 'guardrailContentFilter_type' - The guardrail type.
--
-- 'confidence', 'guardrailContentFilter_confidence' - The guardrail confidence.
--
-- 'action', 'guardrailContentFilter_action' - The guardrail action.
newGuardrailContentFilter ::
  -- | 'type''
  GuardrailContentFilterType ->
  -- | 'confidence'
  GuardrailContentFilterConfidence ->
  -- | 'action'
  GuardrailContentPolicyAction ->
  GuardrailContentFilter
newGuardrailContentFilter
  pType_
  pConfidence_
  pAction_ =
    GuardrailContentFilter'
      { detected = Prelude.Nothing,
        filterStrength = Prelude.Nothing,
        type' = pType_,
        confidence = pConfidence_,
        action = pAction_
      }

-- | Indicates whether content that breaches the guardrail configuration is
-- detected.
guardrailContentFilter_detected :: Lens.Lens' GuardrailContentFilter (Prelude.Maybe Prelude.Bool)
guardrailContentFilter_detected = Lens.lens (\GuardrailContentFilter' {detected} -> detected) (\s@GuardrailContentFilter' {} a -> s {detected = a} :: GuardrailContentFilter)

-- | The filter strength setting for the guardrail content filter.
guardrailContentFilter_filterStrength :: Lens.Lens' GuardrailContentFilter (Prelude.Maybe GuardrailContentFilterStrength)
guardrailContentFilter_filterStrength = Lens.lens (\GuardrailContentFilter' {filterStrength} -> filterStrength) (\s@GuardrailContentFilter' {} a -> s {filterStrength = a} :: GuardrailContentFilter)

-- | The guardrail type.
guardrailContentFilter_type :: Lens.Lens' GuardrailContentFilter GuardrailContentFilterType
guardrailContentFilter_type = Lens.lens (\GuardrailContentFilter' {type'} -> type') (\s@GuardrailContentFilter' {} a -> s {type' = a} :: GuardrailContentFilter)

-- | The guardrail confidence.
guardrailContentFilter_confidence :: Lens.Lens' GuardrailContentFilter GuardrailContentFilterConfidence
guardrailContentFilter_confidence = Lens.lens (\GuardrailContentFilter' {confidence} -> confidence) (\s@GuardrailContentFilter' {} a -> s {confidence = a} :: GuardrailContentFilter)

-- | The guardrail action.
guardrailContentFilter_action :: Lens.Lens' GuardrailContentFilter GuardrailContentPolicyAction
guardrailContentFilter_action = Lens.lens (\GuardrailContentFilter' {action} -> action) (\s@GuardrailContentFilter' {} a -> s {action = a} :: GuardrailContentFilter)

instance Data.FromJSON GuardrailContentFilter where
  parseJSON =
    Data.withObject
      "GuardrailContentFilter"
      ( \x ->
          GuardrailContentFilter'
            Prelude.<$> (x Data..:? "detected")
            Prelude.<*> (x Data..:? "filterStrength")
            Prelude.<*> (x Data..: "type")
            Prelude.<*> (x Data..: "confidence")
            Prelude.<*> (x Data..: "action")
      )

instance Prelude.Hashable GuardrailContentFilter where
  hashWithSalt _salt GuardrailContentFilter' {..} =
    _salt
      `Prelude.hashWithSalt` detected
      `Prelude.hashWithSalt` filterStrength
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` confidence
      `Prelude.hashWithSalt` action

instance Prelude.NFData GuardrailContentFilter where
  rnf GuardrailContentFilter' {..} =
    Prelude.rnf detected `Prelude.seq`
      Prelude.rnf filterStrength `Prelude.seq`
        Prelude.rnf type' `Prelude.seq`
          Prelude.rnf confidence `Prelude.seq`
            Prelude.rnf action
