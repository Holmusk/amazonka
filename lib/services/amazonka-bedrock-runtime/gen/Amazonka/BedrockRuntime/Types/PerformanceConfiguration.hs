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
-- Module      : Amazonka.BedrockRuntime.Types.PerformanceConfiguration
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.PerformanceConfiguration where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.PerformanceConfigLatency
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Performance settings for a model.
--
-- /See:/ 'newPerformanceConfiguration' smart constructor.
data PerformanceConfiguration = PerformanceConfiguration'
  { -- | To use a latency-optimized version of the model, set to @optimized@.
    latency :: Prelude.Maybe PerformanceConfigLatency
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PerformanceConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'latency', 'performanceConfiguration_latency' - To use a latency-optimized version of the model, set to @optimized@.
newPerformanceConfiguration ::
  PerformanceConfiguration
newPerformanceConfiguration =
  PerformanceConfiguration'
    { latency =
        Prelude.Nothing
    }

-- | To use a latency-optimized version of the model, set to @optimized@.
performanceConfiguration_latency :: Lens.Lens' PerformanceConfiguration (Prelude.Maybe PerformanceConfigLatency)
performanceConfiguration_latency = Lens.lens (\PerformanceConfiguration' {latency} -> latency) (\s@PerformanceConfiguration' {} a -> s {latency = a} :: PerformanceConfiguration)

instance Data.FromJSON PerformanceConfiguration where
  parseJSON =
    Data.withObject
      "PerformanceConfiguration"
      ( \x ->
          PerformanceConfiguration'
            Prelude.<$> (x Data..:? "latency")
      )

instance Prelude.Hashable PerformanceConfiguration where
  hashWithSalt _salt PerformanceConfiguration' {..} =
    _salt `Prelude.hashWithSalt` latency

instance Prelude.NFData PerformanceConfiguration where
  rnf PerformanceConfiguration' {..} =
    Prelude.rnf latency

instance Data.ToJSON PerformanceConfiguration where
  toJSON PerformanceConfiguration' {..} =
    Data.object
      ( Prelude.catMaybes
          [("latency" Data..=) Prelude.<$> latency]
      )
