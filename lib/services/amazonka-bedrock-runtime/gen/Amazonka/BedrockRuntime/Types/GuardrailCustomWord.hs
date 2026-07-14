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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailCustomWord
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailCustomWord where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailWordPolicyAction
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A custom word configured in a guardrail.
--
-- /See:/ 'newGuardrailCustomWord' smart constructor.
data GuardrailCustomWord = GuardrailCustomWord'
  { -- | Indicates whether custom word content that breaches the guardrail
    -- configuration is detected.
    detected :: Prelude.Maybe Prelude.Bool,
    -- | The match for the custom word.
    match :: Prelude.Text,
    -- | The action for the custom word.
    action :: GuardrailWordPolicyAction
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailCustomWord' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detected', 'guardrailCustomWord_detected' - Indicates whether custom word content that breaches the guardrail
-- configuration is detected.
--
-- 'match', 'guardrailCustomWord_match' - The match for the custom word.
--
-- 'action', 'guardrailCustomWord_action' - The action for the custom word.
newGuardrailCustomWord ::
  -- | 'match'
  Prelude.Text ->
  -- | 'action'
  GuardrailWordPolicyAction ->
  GuardrailCustomWord
newGuardrailCustomWord pMatch_ pAction_ =
  GuardrailCustomWord'
    { detected = Prelude.Nothing,
      match = pMatch_,
      action = pAction_
    }

-- | Indicates whether custom word content that breaches the guardrail
-- configuration is detected.
guardrailCustomWord_detected :: Lens.Lens' GuardrailCustomWord (Prelude.Maybe Prelude.Bool)
guardrailCustomWord_detected = Lens.lens (\GuardrailCustomWord' {detected} -> detected) (\s@GuardrailCustomWord' {} a -> s {detected = a} :: GuardrailCustomWord)

-- | The match for the custom word.
guardrailCustomWord_match :: Lens.Lens' GuardrailCustomWord Prelude.Text
guardrailCustomWord_match = Lens.lens (\GuardrailCustomWord' {match} -> match) (\s@GuardrailCustomWord' {} a -> s {match = a} :: GuardrailCustomWord)

-- | The action for the custom word.
guardrailCustomWord_action :: Lens.Lens' GuardrailCustomWord GuardrailWordPolicyAction
guardrailCustomWord_action = Lens.lens (\GuardrailCustomWord' {action} -> action) (\s@GuardrailCustomWord' {} a -> s {action = a} :: GuardrailCustomWord)

instance Data.FromJSON GuardrailCustomWord where
  parseJSON =
    Data.withObject
      "GuardrailCustomWord"
      ( \x ->
          GuardrailCustomWord'
            Prelude.<$> (x Data..:? "detected")
            Prelude.<*> (x Data..: "match")
            Prelude.<*> (x Data..: "action")
      )

instance Prelude.Hashable GuardrailCustomWord where
  hashWithSalt _salt GuardrailCustomWord' {..} =
    _salt
      `Prelude.hashWithSalt` detected
      `Prelude.hashWithSalt` match
      `Prelude.hashWithSalt` action

instance Prelude.NFData GuardrailCustomWord where
  rnf GuardrailCustomWord' {..} =
    Prelude.rnf detected `Prelude.seq`
      Prelude.rnf match `Prelude.seq`
        Prelude.rnf action
