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
-- Module      : Amazonka.BedrockRuntime.Types.ConverseStreamTrace
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the @ConverseStream@ shapes are
-- maintained by hand. See @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.ConverseStreamTrace where

import Amazonka.BedrockRuntime.Types.GuardrailTraceAssessment
import Amazonka.BedrockRuntime.Types.PromptRouterTrace
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The trace object in a response from @ConverseStream@. Currently, you
-- can only trace guardrails.
--
-- /See:/ 'newConverseStreamTrace' smart constructor.
data ConverseStreamTrace = ConverseStreamTrace'
  { -- | The guardrail trace object.
    guardrail :: Prelude.Maybe GuardrailTraceAssessment,
    -- | The request\'s prompt router.
    promptRouter :: Prelude.Maybe PromptRouterTrace
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConverseStreamTrace' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'guardrail', 'converseStreamTrace_guardrail' - The guardrail trace object.
--
-- 'promptRouter', 'converseStreamTrace_promptRouter' - The request\'s prompt router.
newConverseStreamTrace ::
  ConverseStreamTrace
newConverseStreamTrace =
  ConverseStreamTrace'
    { guardrail = Prelude.Nothing,
      promptRouter = Prelude.Nothing
    }

-- | The guardrail trace object.
converseStreamTrace_guardrail :: Lens.Lens' ConverseStreamTrace (Prelude.Maybe GuardrailTraceAssessment)
converseStreamTrace_guardrail = Lens.lens (\ConverseStreamTrace' {guardrail} -> guardrail) (\s@ConverseStreamTrace' {} a -> s {guardrail = a} :: ConverseStreamTrace)

-- | The request\'s prompt router.
converseStreamTrace_promptRouter :: Lens.Lens' ConverseStreamTrace (Prelude.Maybe PromptRouterTrace)
converseStreamTrace_promptRouter = Lens.lens (\ConverseStreamTrace' {promptRouter} -> promptRouter) (\s@ConverseStreamTrace' {} a -> s {promptRouter = a} :: ConverseStreamTrace)

instance Data.FromJSON ConverseStreamTrace where
  parseJSON =
    Data.withObject
      "ConverseStreamTrace"
      ( \x ->
          ConverseStreamTrace'
            Prelude.<$> (x Data..:? "guardrail")
            Prelude.<*> (x Data..:? "promptRouter")
      )

instance Prelude.Hashable ConverseStreamTrace where
  hashWithSalt _salt ConverseStreamTrace' {..} =
    _salt
      `Prelude.hashWithSalt` guardrail
      `Prelude.hashWithSalt` promptRouter

instance Prelude.NFData ConverseStreamTrace where
  rnf ConverseStreamTrace' {..} =
    Prelude.rnf guardrail `Prelude.seq`
      Prelude.rnf promptRouter
