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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningScenario
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningScenario where

import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningStatement
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Represents a logical scenario where claims can be evaluated as true or
-- false, containing specific logical assignments.
--
-- /See:/ 'newGuardrailAutomatedReasoningScenario' smart constructor.
data GuardrailAutomatedReasoningScenario = GuardrailAutomatedReasoningScenario'
  { -- | List of logical assignments and statements that define this scenario.
    statements :: Prelude.Maybe [GuardrailAutomatedReasoningStatement]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAutomatedReasoningScenario' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'statements', 'guardrailAutomatedReasoningScenario_statements' - List of logical assignments and statements that define this scenario.
newGuardrailAutomatedReasoningScenario ::
  GuardrailAutomatedReasoningScenario
newGuardrailAutomatedReasoningScenario =
  GuardrailAutomatedReasoningScenario'
    { statements =
        Prelude.Nothing
    }

-- | List of logical assignments and statements that define this scenario.
guardrailAutomatedReasoningScenario_statements :: Lens.Lens' GuardrailAutomatedReasoningScenario (Prelude.Maybe [GuardrailAutomatedReasoningStatement])
guardrailAutomatedReasoningScenario_statements = Lens.lens (\GuardrailAutomatedReasoningScenario' {statements} -> statements) (\s@GuardrailAutomatedReasoningScenario' {} a -> s {statements = a} :: GuardrailAutomatedReasoningScenario) Prelude.. Lens.mapping Lens.coerced

instance
  Data.FromJSON
    GuardrailAutomatedReasoningScenario
  where
  parseJSON =
    Data.withObject
      "GuardrailAutomatedReasoningScenario"
      ( \x ->
          GuardrailAutomatedReasoningScenario'
            Prelude.<$> (x Data..:? "statements" Data..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    GuardrailAutomatedReasoningScenario
  where
  hashWithSalt
    _salt
    GuardrailAutomatedReasoningScenario' {..} =
      _salt `Prelude.hashWithSalt` statements

instance
  Prelude.NFData
    GuardrailAutomatedReasoningScenario
  where
  rnf GuardrailAutomatedReasoningScenario' {..} =
    Prelude.rnf statements
