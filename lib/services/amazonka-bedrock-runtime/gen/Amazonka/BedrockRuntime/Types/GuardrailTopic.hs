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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailTopic
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailTopic where

import Amazonka.BedrockRuntime.Types.GuardrailTopicPolicyAction
import Amazonka.BedrockRuntime.Types.GuardrailTopicType
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Information about a topic guardrail.
--
-- /See:/ 'newGuardrailTopic' smart constructor.
data GuardrailTopic = GuardrailTopic'
  { -- | Indicates whether topic content that breaches the guardrail
    -- configuration is detected.
    detected :: Prelude.Maybe Prelude.Bool,
    -- | The name for the guardrail.
    name :: Prelude.Text,
    -- | The type behavior that the guardrail should perform when the model
    -- detects the topic.
    type' :: GuardrailTopicType,
    -- | The action the guardrail should take when it intervenes on a topic.
    action :: GuardrailTopicPolicyAction
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailTopic' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detected', 'guardrailTopic_detected' - Indicates whether topic content that breaches the guardrail
-- configuration is detected.
--
-- 'name', 'guardrailTopic_name' - The name for the guardrail.
--
-- 'type'', 'guardrailTopic_type' - The type behavior that the guardrail should perform when the model
-- detects the topic.
--
-- 'action', 'guardrailTopic_action' - The action the guardrail should take when it intervenes on a topic.
newGuardrailTopic ::
  -- | 'name'
  Prelude.Text ->
  -- | 'type''
  GuardrailTopicType ->
  -- | 'action'
  GuardrailTopicPolicyAction ->
  GuardrailTopic
newGuardrailTopic pName_ pType_ pAction_ =
  GuardrailTopic'
    { detected = Prelude.Nothing,
      name = pName_,
      type' = pType_,
      action = pAction_
    }

-- | Indicates whether topic content that breaches the guardrail
-- configuration is detected.
guardrailTopic_detected :: Lens.Lens' GuardrailTopic (Prelude.Maybe Prelude.Bool)
guardrailTopic_detected = Lens.lens (\GuardrailTopic' {detected} -> detected) (\s@GuardrailTopic' {} a -> s {detected = a} :: GuardrailTopic)

-- | The name for the guardrail.
guardrailTopic_name :: Lens.Lens' GuardrailTopic Prelude.Text
guardrailTopic_name = Lens.lens (\GuardrailTopic' {name} -> name) (\s@GuardrailTopic' {} a -> s {name = a} :: GuardrailTopic)

-- | The type behavior that the guardrail should perform when the model
-- detects the topic.
guardrailTopic_type :: Lens.Lens' GuardrailTopic GuardrailTopicType
guardrailTopic_type = Lens.lens (\GuardrailTopic' {type'} -> type') (\s@GuardrailTopic' {} a -> s {type' = a} :: GuardrailTopic)

-- | The action the guardrail should take when it intervenes on a topic.
guardrailTopic_action :: Lens.Lens' GuardrailTopic GuardrailTopicPolicyAction
guardrailTopic_action = Lens.lens (\GuardrailTopic' {action} -> action) (\s@GuardrailTopic' {} a -> s {action = a} :: GuardrailTopic)

instance Data.FromJSON GuardrailTopic where
  parseJSON =
    Data.withObject
      "GuardrailTopic"
      ( \x ->
          GuardrailTopic'
            Prelude.<$> (x Data..:? "detected")
            Prelude.<*> (x Data..: "name")
            Prelude.<*> (x Data..: "type")
            Prelude.<*> (x Data..: "action")
      )

instance Prelude.Hashable GuardrailTopic where
  hashWithSalt _salt GuardrailTopic' {..} =
    _salt
      `Prelude.hashWithSalt` detected
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` action

instance Prelude.NFData GuardrailTopic where
  rnf GuardrailTopic' {..} =
    Prelude.rnf detected `Prelude.seq`
      Prelude.rnf name `Prelude.seq`
        Prelude.rnf type' `Prelude.seq`
          Prelude.rnf action
