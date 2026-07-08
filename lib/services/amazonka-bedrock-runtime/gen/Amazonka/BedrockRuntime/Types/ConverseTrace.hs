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
-- Module      : Amazonka.BedrockRuntime.Types.ConverseTrace
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ConverseTrace where

import Amazonka.BedrockRuntime.Types.GuardrailTraceAssessment
import Amazonka.BedrockRuntime.Types.PromptRouterTrace
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The trace object in a response from
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html Converse>.
--
-- /See:/ 'newConverseTrace' smart constructor.
data ConverseTrace = ConverseTrace'
  { -- | The guardrail trace object.
    guardrail :: Prelude.Maybe GuardrailTraceAssessment,
    -- | The request\'s prompt router.
    promptRouter :: Prelude.Maybe PromptRouterTrace
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConverseTrace' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'guardrail', 'converseTrace_guardrail' - The guardrail trace object.
--
-- 'promptRouter', 'converseTrace_promptRouter' - The request\'s prompt router.
newConverseTrace ::
  ConverseTrace
newConverseTrace =
  ConverseTrace'
    { guardrail = Prelude.Nothing,
      promptRouter = Prelude.Nothing
    }

-- | The guardrail trace object.
converseTrace_guardrail :: Lens.Lens' ConverseTrace (Prelude.Maybe GuardrailTraceAssessment)
converseTrace_guardrail = Lens.lens (\ConverseTrace' {guardrail} -> guardrail) (\s@ConverseTrace' {} a -> s {guardrail = a} :: ConverseTrace)

-- | The request\'s prompt router.
converseTrace_promptRouter :: Lens.Lens' ConverseTrace (Prelude.Maybe PromptRouterTrace)
converseTrace_promptRouter = Lens.lens (\ConverseTrace' {promptRouter} -> promptRouter) (\s@ConverseTrace' {} a -> s {promptRouter = a} :: ConverseTrace)

instance Data.FromJSON ConverseTrace where
  parseJSON =
    Data.withObject
      "ConverseTrace"
      ( \x ->
          ConverseTrace'
            Prelude.<$> (x Data..:? "guardrail")
            Prelude.<*> (x Data..:? "promptRouter")
      )

instance Prelude.Hashable ConverseTrace where
  hashWithSalt _salt ConverseTrace' {..} =
    _salt
      `Prelude.hashWithSalt` guardrail
      `Prelude.hashWithSalt` promptRouter

instance Prelude.NFData ConverseTrace where
  rnf ConverseTrace' {..} =
    Prelude.rnf guardrail `Prelude.seq`
      Prelude.rnf promptRouter
