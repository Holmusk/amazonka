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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningStatement
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningStatement where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A logical statement that includes both formal logic representation and
-- natural language explanation.
--
-- /See:/ 'newGuardrailAutomatedReasoningStatement' smart constructor.
data GuardrailAutomatedReasoningStatement = GuardrailAutomatedReasoningStatement'
  { -- | The formal logical representation of the statement.
    logic :: Prelude.Maybe (Data.Sensitive Prelude.Text),
    -- | The natural language explanation of the logical statement.
    naturalLanguage :: Prelude.Maybe (Data.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAutomatedReasoningStatement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logic', 'guardrailAutomatedReasoningStatement_logic' - The formal logical representation of the statement.
--
-- 'naturalLanguage', 'guardrailAutomatedReasoningStatement_naturalLanguage' - The natural language explanation of the logical statement.
newGuardrailAutomatedReasoningStatement ::
  GuardrailAutomatedReasoningStatement
newGuardrailAutomatedReasoningStatement =
  GuardrailAutomatedReasoningStatement'
    { logic =
        Prelude.Nothing,
      naturalLanguage = Prelude.Nothing
    }

-- | The formal logical representation of the statement.
guardrailAutomatedReasoningStatement_logic :: Lens.Lens' GuardrailAutomatedReasoningStatement (Prelude.Maybe Prelude.Text)
guardrailAutomatedReasoningStatement_logic = Lens.lens (\GuardrailAutomatedReasoningStatement' {logic} -> logic) (\s@GuardrailAutomatedReasoningStatement' {} a -> s {logic = a} :: GuardrailAutomatedReasoningStatement) Prelude.. Lens.mapping Data._Sensitive

-- | The natural language explanation of the logical statement.
guardrailAutomatedReasoningStatement_naturalLanguage :: Lens.Lens' GuardrailAutomatedReasoningStatement (Prelude.Maybe Prelude.Text)
guardrailAutomatedReasoningStatement_naturalLanguage = Lens.lens (\GuardrailAutomatedReasoningStatement' {naturalLanguage} -> naturalLanguage) (\s@GuardrailAutomatedReasoningStatement' {} a -> s {naturalLanguage = a} :: GuardrailAutomatedReasoningStatement) Prelude.. Lens.mapping Data._Sensitive

instance
  Data.FromJSON
    GuardrailAutomatedReasoningStatement
  where
  parseJSON =
    Data.withObject
      "GuardrailAutomatedReasoningStatement"
      ( \x ->
          GuardrailAutomatedReasoningStatement'
            Prelude.<$> (x Data..:? "logic")
            Prelude.<*> (x Data..:? "naturalLanguage")
      )

instance
  Prelude.Hashable
    GuardrailAutomatedReasoningStatement
  where
  hashWithSalt
    _salt
    GuardrailAutomatedReasoningStatement' {..} =
      _salt
        `Prelude.hashWithSalt` logic
        `Prelude.hashWithSalt` naturalLanguage

instance
  Prelude.NFData
    GuardrailAutomatedReasoningStatement
  where
  rnf GuardrailAutomatedReasoningStatement' {..} =
    Prelude.rnf logic `Prelude.seq`
      Prelude.rnf naturalLanguage
