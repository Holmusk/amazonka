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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningLogicWarning
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningLogicWarning where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningLogicWarningType
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningStatement
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Identifies logical issues in the translated statements that exist
-- independent of any policy rules, such as statements that are always true
-- or always false.
--
-- /See:/ 'newGuardrailAutomatedReasoningLogicWarning' smart constructor.
data GuardrailAutomatedReasoningLogicWarning = GuardrailAutomatedReasoningLogicWarning'
  { -- | The logical statements that are validated while assuming the policy and
    -- premises.
    claims :: Prelude.Maybe [GuardrailAutomatedReasoningStatement],
    -- | The logical statements that serve as premises under which the claims are
    -- validated.
    premises :: Prelude.Maybe [GuardrailAutomatedReasoningStatement],
    -- | The category of the detected logical issue, such as statements that are
    -- always true or always false.
    type' :: Prelude.Maybe GuardrailAutomatedReasoningLogicWarningType
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAutomatedReasoningLogicWarning' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'claims', 'guardrailAutomatedReasoningLogicWarning_claims' - The logical statements that are validated while assuming the policy and
-- premises.
--
-- 'premises', 'guardrailAutomatedReasoningLogicWarning_premises' - The logical statements that serve as premises under which the claims are
-- validated.
--
-- 'type'', 'guardrailAutomatedReasoningLogicWarning_type' - The category of the detected logical issue, such as statements that are
-- always true or always false.
newGuardrailAutomatedReasoningLogicWarning ::
  GuardrailAutomatedReasoningLogicWarning
newGuardrailAutomatedReasoningLogicWarning =
  GuardrailAutomatedReasoningLogicWarning'
    { claims =
        Prelude.Nothing,
      premises = Prelude.Nothing,
      type' = Prelude.Nothing
    }

-- | The logical statements that are validated while assuming the policy and
-- premises.
guardrailAutomatedReasoningLogicWarning_claims :: Lens.Lens' GuardrailAutomatedReasoningLogicWarning (Prelude.Maybe [GuardrailAutomatedReasoningStatement])
guardrailAutomatedReasoningLogicWarning_claims = Lens.lens (\GuardrailAutomatedReasoningLogicWarning' {claims} -> claims) (\s@GuardrailAutomatedReasoningLogicWarning' {} a -> s {claims = a} :: GuardrailAutomatedReasoningLogicWarning) Prelude.. Lens.mapping Lens.coerced

-- | The logical statements that serve as premises under which the claims are
-- validated.
guardrailAutomatedReasoningLogicWarning_premises :: Lens.Lens' GuardrailAutomatedReasoningLogicWarning (Prelude.Maybe [GuardrailAutomatedReasoningStatement])
guardrailAutomatedReasoningLogicWarning_premises = Lens.lens (\GuardrailAutomatedReasoningLogicWarning' {premises} -> premises) (\s@GuardrailAutomatedReasoningLogicWarning' {} a -> s {premises = a} :: GuardrailAutomatedReasoningLogicWarning) Prelude.. Lens.mapping Lens.coerced

-- | The category of the detected logical issue, such as statements that are
-- always true or always false.
guardrailAutomatedReasoningLogicWarning_type :: Lens.Lens' GuardrailAutomatedReasoningLogicWarning (Prelude.Maybe GuardrailAutomatedReasoningLogicWarningType)
guardrailAutomatedReasoningLogicWarning_type = Lens.lens (\GuardrailAutomatedReasoningLogicWarning' {type'} -> type') (\s@GuardrailAutomatedReasoningLogicWarning' {} a -> s {type' = a} :: GuardrailAutomatedReasoningLogicWarning)

instance
  Data.FromJSON
    GuardrailAutomatedReasoningLogicWarning
  where
  parseJSON =
    Data.withObject
      "GuardrailAutomatedReasoningLogicWarning"
      ( \x ->
          GuardrailAutomatedReasoningLogicWarning'
            Prelude.<$> (x Data..:? "claims" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "premises" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "type")
      )

instance
  Prelude.Hashable
    GuardrailAutomatedReasoningLogicWarning
  where
  hashWithSalt
    _salt
    GuardrailAutomatedReasoningLogicWarning' {..} =
      _salt
        `Prelude.hashWithSalt` claims
        `Prelude.hashWithSalt` premises
        `Prelude.hashWithSalt` type'

instance
  Prelude.NFData
    GuardrailAutomatedReasoningLogicWarning
  where
  rnf GuardrailAutomatedReasoningLogicWarning' {..} =
    Prelude.rnf claims `Prelude.seq`
      Prelude.rnf premises `Prelude.seq`
        Prelude.rnf type'
