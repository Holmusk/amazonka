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
-- Module      : Amazonka.BedrockRuntime.Types.ConverseStreamMetrics
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the @ConverseStream@ shapes are
-- maintained by hand. See @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.ConverseStreamMetrics where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Metrics for the stream.
--
-- /See:/ 'newConverseStreamMetrics' smart constructor.
data ConverseStreamMetrics = ConverseStreamMetrics'
  { -- | The latency for the streaming request, in milliseconds.
    latencyMs :: Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConverseStreamMetrics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'latencyMs', 'converseStreamMetrics_latencyMs' - The latency for the streaming request, in milliseconds.
newConverseStreamMetrics ::
  -- | 'latencyMs'
  Prelude.Integer ->
  ConverseStreamMetrics
newConverseStreamMetrics pLatencyMs_ =
  ConverseStreamMetrics' {latencyMs = pLatencyMs_}

-- | The latency for the streaming request, in milliseconds.
converseStreamMetrics_latencyMs :: Lens.Lens' ConverseStreamMetrics Prelude.Integer
converseStreamMetrics_latencyMs = Lens.lens (\ConverseStreamMetrics' {latencyMs} -> latencyMs) (\s@ConverseStreamMetrics' {} a -> s {latencyMs = a} :: ConverseStreamMetrics)

instance Data.FromJSON ConverseStreamMetrics where
  parseJSON =
    Data.withObject
      "ConverseStreamMetrics"
      ( \x ->
          ConverseStreamMetrics'
            Prelude.<$> (x Data..: "latencyMs")
      )

instance Prelude.Hashable ConverseStreamMetrics where
  hashWithSalt _salt ConverseStreamMetrics' {..} =
    _salt `Prelude.hashWithSalt` latencyMs

instance Prelude.NFData ConverseStreamMetrics where
  rnf ConverseStreamMetrics' {..} =
    Prelude.rnf latencyMs
