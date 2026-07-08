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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailManagedWord
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailManagedWord where

import Amazonka.BedrockRuntime.Types.GuardrailManagedWordType
import Amazonka.BedrockRuntime.Types.GuardrailWordPolicyAction
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A managed word configured in a guardrail.
--
-- /See:/ 'newGuardrailManagedWord' smart constructor.
data GuardrailManagedWord = GuardrailManagedWord'
  { -- | Indicates whether managed word content that breaches the guardrail
    -- configuration is detected.
    detected :: Prelude.Maybe Prelude.Bool,
    -- | The match for the managed word.
    match :: Prelude.Text,
    -- | The type for the managed word.
    type' :: GuardrailManagedWordType,
    -- | The action for the managed word.
    action :: GuardrailWordPolicyAction
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailManagedWord' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detected', 'guardrailManagedWord_detected' - Indicates whether managed word content that breaches the guardrail
-- configuration is detected.
--
-- 'match', 'guardrailManagedWord_match' - The match for the managed word.
--
-- 'type'', 'guardrailManagedWord_type' - The type for the managed word.
--
-- 'action', 'guardrailManagedWord_action' - The action for the managed word.
newGuardrailManagedWord ::
  -- | 'match'
  Prelude.Text ->
  -- | 'type''
  GuardrailManagedWordType ->
  -- | 'action'
  GuardrailWordPolicyAction ->
  GuardrailManagedWord
newGuardrailManagedWord pMatch_ pType_ pAction_ =
  GuardrailManagedWord'
    { detected = Prelude.Nothing,
      match = pMatch_,
      type' = pType_,
      action = pAction_
    }

-- | Indicates whether managed word content that breaches the guardrail
-- configuration is detected.
guardrailManagedWord_detected :: Lens.Lens' GuardrailManagedWord (Prelude.Maybe Prelude.Bool)
guardrailManagedWord_detected = Lens.lens (\GuardrailManagedWord' {detected} -> detected) (\s@GuardrailManagedWord' {} a -> s {detected = a} :: GuardrailManagedWord)

-- | The match for the managed word.
guardrailManagedWord_match :: Lens.Lens' GuardrailManagedWord Prelude.Text
guardrailManagedWord_match = Lens.lens (\GuardrailManagedWord' {match} -> match) (\s@GuardrailManagedWord' {} a -> s {match = a} :: GuardrailManagedWord)

-- | The type for the managed word.
guardrailManagedWord_type :: Lens.Lens' GuardrailManagedWord GuardrailManagedWordType
guardrailManagedWord_type = Lens.lens (\GuardrailManagedWord' {type'} -> type') (\s@GuardrailManagedWord' {} a -> s {type' = a} :: GuardrailManagedWord)

-- | The action for the managed word.
guardrailManagedWord_action :: Lens.Lens' GuardrailManagedWord GuardrailWordPolicyAction
guardrailManagedWord_action = Lens.lens (\GuardrailManagedWord' {action} -> action) (\s@GuardrailManagedWord' {} a -> s {action = a} :: GuardrailManagedWord)

instance Data.FromJSON GuardrailManagedWord where
  parseJSON =
    Data.withObject
      "GuardrailManagedWord"
      ( \x ->
          GuardrailManagedWord'
            Prelude.<$> (x Data..:? "detected")
            Prelude.<*> (x Data..: "match")
            Prelude.<*> (x Data..: "type")
            Prelude.<*> (x Data..: "action")
      )

instance Prelude.Hashable GuardrailManagedWord where
  hashWithSalt _salt GuardrailManagedWord' {..} =
    _salt
      `Prelude.hashWithSalt` detected
      `Prelude.hashWithSalt` match
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` action

instance Prelude.NFData GuardrailManagedWord where
  rnf GuardrailManagedWord' {..} =
    Prelude.rnf detected `Prelude.seq`
      Prelude.rnf match `Prelude.seq`
        Prelude.rnf type' `Prelude.seq`
          Prelude.rnf action
