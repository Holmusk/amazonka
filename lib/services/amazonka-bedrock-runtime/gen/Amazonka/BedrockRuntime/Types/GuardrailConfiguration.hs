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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailConfiguration
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailConfiguration where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailTrace
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Configuration information for a guardrail that you use with the
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html Converse>
-- operation.
--
-- /See:/ 'newGuardrailConfiguration' smart constructor.
data GuardrailConfiguration = GuardrailConfiguration'
  { -- | The identifier for the guardrail.
    guardrailIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The version of the guardrail.
    guardrailVersion :: Prelude.Maybe Prelude.Text,
    -- | The trace behavior for the guardrail.
    trace :: Prelude.Maybe GuardrailTrace
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'guardrailIdentifier', 'guardrailConfiguration_guardrailIdentifier' - The identifier for the guardrail.
--
-- 'guardrailVersion', 'guardrailConfiguration_guardrailVersion' - The version of the guardrail.
--
-- 'trace', 'guardrailConfiguration_trace' - The trace behavior for the guardrail.
newGuardrailConfiguration ::
  GuardrailConfiguration
newGuardrailConfiguration =
  GuardrailConfiguration'
    { guardrailIdentifier =
        Prelude.Nothing,
      guardrailVersion = Prelude.Nothing,
      trace = Prelude.Nothing
    }

-- | The identifier for the guardrail.
guardrailConfiguration_guardrailIdentifier :: Lens.Lens' GuardrailConfiguration (Prelude.Maybe Prelude.Text)
guardrailConfiguration_guardrailIdentifier = Lens.lens (\GuardrailConfiguration' {guardrailIdentifier} -> guardrailIdentifier) (\s@GuardrailConfiguration' {} a -> s {guardrailIdentifier = a} :: GuardrailConfiguration)

-- | The version of the guardrail.
guardrailConfiguration_guardrailVersion :: Lens.Lens' GuardrailConfiguration (Prelude.Maybe Prelude.Text)
guardrailConfiguration_guardrailVersion = Lens.lens (\GuardrailConfiguration' {guardrailVersion} -> guardrailVersion) (\s@GuardrailConfiguration' {} a -> s {guardrailVersion = a} :: GuardrailConfiguration)

-- | The trace behavior for the guardrail.
guardrailConfiguration_trace :: Lens.Lens' GuardrailConfiguration (Prelude.Maybe GuardrailTrace)
guardrailConfiguration_trace = Lens.lens (\GuardrailConfiguration' {trace} -> trace) (\s@GuardrailConfiguration' {} a -> s {trace = a} :: GuardrailConfiguration)

instance Prelude.Hashable GuardrailConfiguration where
  hashWithSalt _salt GuardrailConfiguration' {..} =
    _salt
      `Prelude.hashWithSalt` guardrailIdentifier
      `Prelude.hashWithSalt` guardrailVersion
      `Prelude.hashWithSalt` trace

instance Prelude.NFData GuardrailConfiguration where
  rnf GuardrailConfiguration' {..} =
    Prelude.rnf guardrailIdentifier `Prelude.seq`
      Prelude.rnf guardrailVersion `Prelude.seq`
        Prelude.rnf trace

instance Data.ToJSON GuardrailConfiguration where
  toJSON GuardrailConfiguration' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("guardrailIdentifier" Data..=)
              Prelude.<$> guardrailIdentifier,
            ("guardrailVersion" Data..=)
              Prelude.<$> guardrailVersion,
            ("trace" Data..=) Prelude.<$> trace
          ]
      )
