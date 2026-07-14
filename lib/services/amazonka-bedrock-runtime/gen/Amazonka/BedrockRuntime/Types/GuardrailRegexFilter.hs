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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailRegexFilter
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailRegexFilter where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailSensitiveInformationPolicyAction
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A Regex filter configured in a guardrail.
--
-- /See:/ 'newGuardrailRegexFilter' smart constructor.
data GuardrailRegexFilter = GuardrailRegexFilter'
  { -- | Indicates whether custom regex entities that breach the guardrail
    -- configuration are detected.
    detected :: Prelude.Maybe Prelude.Bool,
    -- | The regesx filter match.
    match :: Prelude.Maybe Prelude.Text,
    -- | The regex filter name.
    name :: Prelude.Maybe Prelude.Text,
    -- | The regex query.
    regex :: Prelude.Maybe Prelude.Text,
    -- | The region filter action.
    action :: GuardrailSensitiveInformationPolicyAction
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailRegexFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detected', 'guardrailRegexFilter_detected' - Indicates whether custom regex entities that breach the guardrail
-- configuration are detected.
--
-- 'match', 'guardrailRegexFilter_match' - The regesx filter match.
--
-- 'name', 'guardrailRegexFilter_name' - The regex filter name.
--
-- 'regex', 'guardrailRegexFilter_regex' - The regex query.
--
-- 'action', 'guardrailRegexFilter_action' - The region filter action.
newGuardrailRegexFilter ::
  -- | 'action'
  GuardrailSensitiveInformationPolicyAction ->
  GuardrailRegexFilter
newGuardrailRegexFilter pAction_ =
  GuardrailRegexFilter'
    { detected = Prelude.Nothing,
      match = Prelude.Nothing,
      name = Prelude.Nothing,
      regex = Prelude.Nothing,
      action = pAction_
    }

-- | Indicates whether custom regex entities that breach the guardrail
-- configuration are detected.
guardrailRegexFilter_detected :: Lens.Lens' GuardrailRegexFilter (Prelude.Maybe Prelude.Bool)
guardrailRegexFilter_detected = Lens.lens (\GuardrailRegexFilter' {detected} -> detected) (\s@GuardrailRegexFilter' {} a -> s {detected = a} :: GuardrailRegexFilter)

-- | The regesx filter match.
guardrailRegexFilter_match :: Lens.Lens' GuardrailRegexFilter (Prelude.Maybe Prelude.Text)
guardrailRegexFilter_match = Lens.lens (\GuardrailRegexFilter' {match} -> match) (\s@GuardrailRegexFilter' {} a -> s {match = a} :: GuardrailRegexFilter)

-- | The regex filter name.
guardrailRegexFilter_name :: Lens.Lens' GuardrailRegexFilter (Prelude.Maybe Prelude.Text)
guardrailRegexFilter_name = Lens.lens (\GuardrailRegexFilter' {name} -> name) (\s@GuardrailRegexFilter' {} a -> s {name = a} :: GuardrailRegexFilter)

-- | The regex query.
guardrailRegexFilter_regex :: Lens.Lens' GuardrailRegexFilter (Prelude.Maybe Prelude.Text)
guardrailRegexFilter_regex = Lens.lens (\GuardrailRegexFilter' {regex} -> regex) (\s@GuardrailRegexFilter' {} a -> s {regex = a} :: GuardrailRegexFilter)

-- | The region filter action.
guardrailRegexFilter_action :: Lens.Lens' GuardrailRegexFilter GuardrailSensitiveInformationPolicyAction
guardrailRegexFilter_action = Lens.lens (\GuardrailRegexFilter' {action} -> action) (\s@GuardrailRegexFilter' {} a -> s {action = a} :: GuardrailRegexFilter)

instance Data.FromJSON GuardrailRegexFilter where
  parseJSON =
    Data.withObject
      "GuardrailRegexFilter"
      ( \x ->
          GuardrailRegexFilter'
            Prelude.<$> (x Data..:? "detected")
            Prelude.<*> (x Data..:? "match")
            Prelude.<*> (x Data..:? "name")
            Prelude.<*> (x Data..:? "regex")
            Prelude.<*> (x Data..: "action")
      )

instance Prelude.Hashable GuardrailRegexFilter where
  hashWithSalt _salt GuardrailRegexFilter' {..} =
    _salt
      `Prelude.hashWithSalt` detected
      `Prelude.hashWithSalt` match
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` regex
      `Prelude.hashWithSalt` action

instance Prelude.NFData GuardrailRegexFilter where
  rnf GuardrailRegexFilter' {..} =
    Prelude.rnf detected `Prelude.seq`
      Prelude.rnf match `Prelude.seq`
        Prelude.rnf name `Prelude.seq`
          Prelude.rnf regex `Prelude.seq`
            Prelude.rnf action
