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
-- Module      : Amazonka.BedrockRuntime.Types.ConverseMetrics
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ConverseMetrics where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Metrics for a call to
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html Converse>.
--
-- /See:/ 'newConverseMetrics' smart constructor.
data ConverseMetrics = ConverseMetrics'
  { -- | The latency of the call to @Converse@, in milliseconds.
    latencyMs :: Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConverseMetrics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'latencyMs', 'converseMetrics_latencyMs' - The latency of the call to @Converse@, in milliseconds.
newConverseMetrics ::
  -- | 'latencyMs'
  Prelude.Integer ->
  ConverseMetrics
newConverseMetrics pLatencyMs_ =
  ConverseMetrics' {latencyMs = pLatencyMs_}

-- | The latency of the call to @Converse@, in milliseconds.
converseMetrics_latencyMs :: Lens.Lens' ConverseMetrics Prelude.Integer
converseMetrics_latencyMs = Lens.lens (\ConverseMetrics' {latencyMs} -> latencyMs) (\s@ConverseMetrics' {} a -> s {latencyMs = a} :: ConverseMetrics)

instance Data.FromJSON ConverseMetrics where
  parseJSON =
    Data.withObject
      "ConverseMetrics"
      ( \x ->
          ConverseMetrics' Prelude.<$> (x Data..: "latencyMs")
      )

instance Prelude.Hashable ConverseMetrics where
  hashWithSalt _salt ConverseMetrics' {..} =
    _salt `Prelude.hashWithSalt` latencyMs

instance Prelude.NFData ConverseMetrics where
  rnf ConverseMetrics' {..} = Prelude.rnf latencyMs
