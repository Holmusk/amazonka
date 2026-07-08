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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailInvocationMetrics
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailInvocationMetrics where

import Amazonka.BedrockRuntime.Types.GuardrailCoverage
import Amazonka.BedrockRuntime.Types.GuardrailUsage
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The invocation metrics for the guardrail.
--
-- /See:/ 'newGuardrailInvocationMetrics' smart constructor.
data GuardrailInvocationMetrics = GuardrailInvocationMetrics'
  { -- | The coverage details for the guardrail invocation metrics.
    guardrailCoverage :: Prelude.Maybe GuardrailCoverage,
    -- | The processing latency details for the guardrail invocation metrics.
    guardrailProcessingLatency :: Prelude.Maybe Prelude.Integer,
    -- | The usage details for the guardrail invocation metrics.
    usage :: Prelude.Maybe GuardrailUsage
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailInvocationMetrics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'guardrailCoverage', 'guardrailInvocationMetrics_guardrailCoverage' - The coverage details for the guardrail invocation metrics.
--
-- 'guardrailProcessingLatency', 'guardrailInvocationMetrics_guardrailProcessingLatency' - The processing latency details for the guardrail invocation metrics.
--
-- 'usage', 'guardrailInvocationMetrics_usage' - The usage details for the guardrail invocation metrics.
newGuardrailInvocationMetrics ::
  GuardrailInvocationMetrics
newGuardrailInvocationMetrics =
  GuardrailInvocationMetrics'
    { guardrailCoverage =
        Prelude.Nothing,
      guardrailProcessingLatency = Prelude.Nothing,
      usage = Prelude.Nothing
    }

-- | The coverage details for the guardrail invocation metrics.
guardrailInvocationMetrics_guardrailCoverage :: Lens.Lens' GuardrailInvocationMetrics (Prelude.Maybe GuardrailCoverage)
guardrailInvocationMetrics_guardrailCoverage = Lens.lens (\GuardrailInvocationMetrics' {guardrailCoverage} -> guardrailCoverage) (\s@GuardrailInvocationMetrics' {} a -> s {guardrailCoverage = a} :: GuardrailInvocationMetrics)

-- | The processing latency details for the guardrail invocation metrics.
guardrailInvocationMetrics_guardrailProcessingLatency :: Lens.Lens' GuardrailInvocationMetrics (Prelude.Maybe Prelude.Integer)
guardrailInvocationMetrics_guardrailProcessingLatency = Lens.lens (\GuardrailInvocationMetrics' {guardrailProcessingLatency} -> guardrailProcessingLatency) (\s@GuardrailInvocationMetrics' {} a -> s {guardrailProcessingLatency = a} :: GuardrailInvocationMetrics)

-- | The usage details for the guardrail invocation metrics.
guardrailInvocationMetrics_usage :: Lens.Lens' GuardrailInvocationMetrics (Prelude.Maybe GuardrailUsage)
guardrailInvocationMetrics_usage = Lens.lens (\GuardrailInvocationMetrics' {usage} -> usage) (\s@GuardrailInvocationMetrics' {} a -> s {usage = a} :: GuardrailInvocationMetrics)

instance Data.FromJSON GuardrailInvocationMetrics where
  parseJSON =
    Data.withObject
      "GuardrailInvocationMetrics"
      ( \x ->
          GuardrailInvocationMetrics'
            Prelude.<$> (x Data..:? "guardrailCoverage")
            Prelude.<*> (x Data..:? "guardrailProcessingLatency")
            Prelude.<*> (x Data..:? "usage")
      )

instance Prelude.Hashable GuardrailInvocationMetrics where
  hashWithSalt _salt GuardrailInvocationMetrics' {..} =
    _salt
      `Prelude.hashWithSalt` guardrailCoverage
      `Prelude.hashWithSalt` guardrailProcessingLatency
      `Prelude.hashWithSalt` usage

instance Prelude.NFData GuardrailInvocationMetrics where
  rnf GuardrailInvocationMetrics' {..} =
    Prelude.rnf guardrailCoverage `Prelude.seq`
      Prelude.rnf guardrailProcessingLatency `Prelude.seq`
        Prelude.rnf usage
