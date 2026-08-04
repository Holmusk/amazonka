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
-- Module      : Amazonka.BedrockRuntime.Types.ConverseStreamMetadataEvent
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the @ConverseStream@ shapes are
-- maintained by hand. See @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.ConverseStreamMetadataEvent where

import Amazonka.BedrockRuntime.Types.ConverseStreamMetrics
import Amazonka.BedrockRuntime.Types.ConverseStreamTrace
import Amazonka.BedrockRuntime.Types.PerformanceConfiguration
import Amazonka.BedrockRuntime.Types.ServiceTier
import Amazonka.BedrockRuntime.Types.TokenUsage
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A conversation stream metadata event.
--
-- /See:/ 'newConverseStreamMetadataEvent' smart constructor.
data ConverseStreamMetadataEvent = ConverseStreamMetadataEvent'
  { -- | Model performance configuration metadata for the conversation stream
    -- event.
    performanceConfig :: Prelude.Maybe PerformanceConfiguration,
    -- | Specifies the processing tier configuration used for serving the
    -- request.
    serviceTier :: Prelude.Maybe ServiceTier,
    -- | The trace object in the response from @ConverseStream@ that contains
    -- information about the guardrail behavior.
    trace :: Prelude.Maybe ConverseStreamTrace,
    -- | Usage information for the conversation stream event.
    usage :: TokenUsage,
    -- | The metrics for the conversation stream metadata event.
    metrics :: ConverseStreamMetrics
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConverseStreamMetadataEvent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'performanceConfig', 'converseStreamMetadataEvent_performanceConfig' - Model performance configuration metadata for the conversation stream
-- event.
--
-- 'serviceTier', 'converseStreamMetadataEvent_serviceTier' - Specifies the processing tier configuration used for serving the
-- request.
--
-- 'trace', 'converseStreamMetadataEvent_trace' - The trace object in the response from @ConverseStream@ that contains
-- information about the guardrail behavior.
--
-- 'usage', 'converseStreamMetadataEvent_usage' - Usage information for the conversation stream event.
--
-- 'metrics', 'converseStreamMetadataEvent_metrics' - The metrics for the conversation stream metadata event.
newConverseStreamMetadataEvent ::
  -- | 'usage'
  TokenUsage ->
  -- | 'metrics'
  ConverseStreamMetrics ->
  ConverseStreamMetadataEvent
newConverseStreamMetadataEvent pUsage_ pMetrics_ =
  ConverseStreamMetadataEvent'
    { performanceConfig =
        Prelude.Nothing,
      serviceTier = Prelude.Nothing,
      trace = Prelude.Nothing,
      usage = pUsage_,
      metrics = pMetrics_
    }

-- | Model performance configuration metadata for the conversation stream
-- event.
converseStreamMetadataEvent_performanceConfig :: Lens.Lens' ConverseStreamMetadataEvent (Prelude.Maybe PerformanceConfiguration)
converseStreamMetadataEvent_performanceConfig = Lens.lens (\ConverseStreamMetadataEvent' {performanceConfig} -> performanceConfig) (\s@ConverseStreamMetadataEvent' {} a -> s {performanceConfig = a} :: ConverseStreamMetadataEvent)

-- | Specifies the processing tier configuration used for serving the
-- request.
converseStreamMetadataEvent_serviceTier :: Lens.Lens' ConverseStreamMetadataEvent (Prelude.Maybe ServiceTier)
converseStreamMetadataEvent_serviceTier = Lens.lens (\ConverseStreamMetadataEvent' {serviceTier} -> serviceTier) (\s@ConverseStreamMetadataEvent' {} a -> s {serviceTier = a} :: ConverseStreamMetadataEvent)

-- | The trace object in the response from @ConverseStream@ that contains
-- information about the guardrail behavior.
converseStreamMetadataEvent_trace :: Lens.Lens' ConverseStreamMetadataEvent (Prelude.Maybe ConverseStreamTrace)
converseStreamMetadataEvent_trace = Lens.lens (\ConverseStreamMetadataEvent' {trace} -> trace) (\s@ConverseStreamMetadataEvent' {} a -> s {trace = a} :: ConverseStreamMetadataEvent)

-- | Usage information for the conversation stream event.
converseStreamMetadataEvent_usage :: Lens.Lens' ConverseStreamMetadataEvent TokenUsage
converseStreamMetadataEvent_usage = Lens.lens (\ConverseStreamMetadataEvent' {usage} -> usage) (\s@ConverseStreamMetadataEvent' {} a -> s {usage = a} :: ConverseStreamMetadataEvent)

-- | The metrics for the conversation stream metadata event.
converseStreamMetadataEvent_metrics :: Lens.Lens' ConverseStreamMetadataEvent ConverseStreamMetrics
converseStreamMetadataEvent_metrics = Lens.lens (\ConverseStreamMetadataEvent' {metrics} -> metrics) (\s@ConverseStreamMetadataEvent' {} a -> s {metrics = a} :: ConverseStreamMetadataEvent)

instance Data.FromJSON ConverseStreamMetadataEvent where
  parseJSON =
    Data.withObject
      "ConverseStreamMetadataEvent"
      ( \x ->
          ConverseStreamMetadataEvent'
            Prelude.<$> (x Data..:? "performanceConfig")
            Prelude.<*> (x Data..:? "serviceTier")
            Prelude.<*> (x Data..:? "trace")
            Prelude.<*> (x Data..: "usage")
            Prelude.<*> (x Data..: "metrics")
      )

instance Prelude.Hashable ConverseStreamMetadataEvent where
  hashWithSalt _salt ConverseStreamMetadataEvent' {..} =
    _salt
      `Prelude.hashWithSalt` performanceConfig
      `Prelude.hashWithSalt` serviceTier
      `Prelude.hashWithSalt` trace
      `Prelude.hashWithSalt` usage
      `Prelude.hashWithSalt` metrics

instance Prelude.NFData ConverseStreamMetadataEvent where
  rnf ConverseStreamMetadataEvent' {..} =
    Prelude.rnf performanceConfig `Prelude.seq`
      Prelude.rnf serviceTier `Prelude.seq`
        Prelude.rnf trace `Prelude.seq`
          Prelude.rnf usage `Prelude.seq`
            Prelude.rnf metrics
