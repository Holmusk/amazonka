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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailStreamConfiguration
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the @ConverseStream@ shapes are
-- maintained by hand. See @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.GuardrailStreamConfiguration where

import Amazonka.BedrockRuntime.Types.GuardrailStreamProcessingMode
import Amazonka.BedrockRuntime.Types.GuardrailTrace
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Configuration information for a guardrail that you use with the
-- @ConverseStream@ action.
--
-- /See:/ 'newGuardrailStreamConfiguration' smart constructor.
data GuardrailStreamConfiguration = GuardrailStreamConfiguration'
  { -- | The identifier for the guardrail.
    guardrailIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The version of the guardrail.
    guardrailVersion :: Prelude.Maybe Prelude.Text,
    -- | The processing mode. For more information, see /Configure streaming
    -- response behavior/ in the /Amazon Bedrock User Guide/.
    streamProcessingMode :: Prelude.Maybe GuardrailStreamProcessingMode,
    -- | The trace behavior for the guardrail.
    trace :: Prelude.Maybe GuardrailTrace
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailStreamConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'guardrailIdentifier', 'guardrailStreamConfiguration_guardrailIdentifier' - The identifier for the guardrail.
--
-- 'guardrailVersion', 'guardrailStreamConfiguration_guardrailVersion' - The version of the guardrail.
--
-- 'streamProcessingMode', 'guardrailStreamConfiguration_streamProcessingMode' - The processing mode.
--
-- 'trace', 'guardrailStreamConfiguration_trace' - The trace behavior for the guardrail.
newGuardrailStreamConfiguration ::
  GuardrailStreamConfiguration
newGuardrailStreamConfiguration =
  GuardrailStreamConfiguration'
    { guardrailIdentifier =
        Prelude.Nothing,
      guardrailVersion = Prelude.Nothing,
      streamProcessingMode = Prelude.Nothing,
      trace = Prelude.Nothing
    }

-- | The identifier for the guardrail.
guardrailStreamConfiguration_guardrailIdentifier :: Lens.Lens' GuardrailStreamConfiguration (Prelude.Maybe Prelude.Text)
guardrailStreamConfiguration_guardrailIdentifier = Lens.lens (\GuardrailStreamConfiguration' {guardrailIdentifier} -> guardrailIdentifier) (\s@GuardrailStreamConfiguration' {} a -> s {guardrailIdentifier = a} :: GuardrailStreamConfiguration)

-- | The version of the guardrail.
guardrailStreamConfiguration_guardrailVersion :: Lens.Lens' GuardrailStreamConfiguration (Prelude.Maybe Prelude.Text)
guardrailStreamConfiguration_guardrailVersion = Lens.lens (\GuardrailStreamConfiguration' {guardrailVersion} -> guardrailVersion) (\s@GuardrailStreamConfiguration' {} a -> s {guardrailVersion = a} :: GuardrailStreamConfiguration)

-- | The processing mode.
guardrailStreamConfiguration_streamProcessingMode :: Lens.Lens' GuardrailStreamConfiguration (Prelude.Maybe GuardrailStreamProcessingMode)
guardrailStreamConfiguration_streamProcessingMode = Lens.lens (\GuardrailStreamConfiguration' {streamProcessingMode} -> streamProcessingMode) (\s@GuardrailStreamConfiguration' {} a -> s {streamProcessingMode = a} :: GuardrailStreamConfiguration)

-- | The trace behavior for the guardrail.
guardrailStreamConfiguration_trace :: Lens.Lens' GuardrailStreamConfiguration (Prelude.Maybe GuardrailTrace)
guardrailStreamConfiguration_trace = Lens.lens (\GuardrailStreamConfiguration' {trace} -> trace) (\s@GuardrailStreamConfiguration' {} a -> s {trace = a} :: GuardrailStreamConfiguration)

instance Prelude.Hashable GuardrailStreamConfiguration where
  hashWithSalt _salt GuardrailStreamConfiguration' {..} =
    _salt
      `Prelude.hashWithSalt` guardrailIdentifier
      `Prelude.hashWithSalt` guardrailVersion
      `Prelude.hashWithSalt` streamProcessingMode
      `Prelude.hashWithSalt` trace

instance Prelude.NFData GuardrailStreamConfiguration where
  rnf GuardrailStreamConfiguration' {..} =
    Prelude.rnf guardrailIdentifier `Prelude.seq`
      Prelude.rnf guardrailVersion `Prelude.seq`
        Prelude.rnf streamProcessingMode `Prelude.seq`
          Prelude.rnf trace

instance Data.ToJSON GuardrailStreamConfiguration where
  toJSON GuardrailStreamConfiguration' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("guardrailIdentifier" Data..=)
              Prelude.<$> guardrailIdentifier,
            ("guardrailVersion" Data..=)
              Prelude.<$> guardrailVersion,
            ("streamProcessingMode" Data..=)
              Prelude.<$> streamProcessingMode,
            ("trace" Data..=) Prelude.<$> trace
          ]
      )
