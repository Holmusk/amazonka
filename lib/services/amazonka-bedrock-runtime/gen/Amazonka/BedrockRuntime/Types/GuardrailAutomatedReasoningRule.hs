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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningRule
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningRule where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | References a specific automated reasoning policy rule that was applied
-- during evaluation.
--
-- /See:/ 'newGuardrailAutomatedReasoningRule' smart constructor.
data GuardrailAutomatedReasoningRule = GuardrailAutomatedReasoningRule'
  { -- | The unique identifier of the automated reasoning rule.
    identifier :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the automated reasoning policy version that contains this
    -- rule.
    policyVersionArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAutomatedReasoningRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'identifier', 'guardrailAutomatedReasoningRule_identifier' - The unique identifier of the automated reasoning rule.
--
-- 'policyVersionArn', 'guardrailAutomatedReasoningRule_policyVersionArn' - The ARN of the automated reasoning policy version that contains this
-- rule.
newGuardrailAutomatedReasoningRule ::
  GuardrailAutomatedReasoningRule
newGuardrailAutomatedReasoningRule =
  GuardrailAutomatedReasoningRule'
    { identifier =
        Prelude.Nothing,
      policyVersionArn = Prelude.Nothing
    }

-- | The unique identifier of the automated reasoning rule.
guardrailAutomatedReasoningRule_identifier :: Lens.Lens' GuardrailAutomatedReasoningRule (Prelude.Maybe Prelude.Text)
guardrailAutomatedReasoningRule_identifier = Lens.lens (\GuardrailAutomatedReasoningRule' {identifier} -> identifier) (\s@GuardrailAutomatedReasoningRule' {} a -> s {identifier = a} :: GuardrailAutomatedReasoningRule)

-- | The ARN of the automated reasoning policy version that contains this
-- rule.
guardrailAutomatedReasoningRule_policyVersionArn :: Lens.Lens' GuardrailAutomatedReasoningRule (Prelude.Maybe Prelude.Text)
guardrailAutomatedReasoningRule_policyVersionArn = Lens.lens (\GuardrailAutomatedReasoningRule' {policyVersionArn} -> policyVersionArn) (\s@GuardrailAutomatedReasoningRule' {} a -> s {policyVersionArn = a} :: GuardrailAutomatedReasoningRule)

instance
  Data.FromJSON
    GuardrailAutomatedReasoningRule
  where
  parseJSON =
    Data.withObject
      "GuardrailAutomatedReasoningRule"
      ( \x ->
          GuardrailAutomatedReasoningRule'
            Prelude.<$> (x Data..:? "identifier")
            Prelude.<*> (x Data..:? "policyVersionArn")
      )

instance
  Prelude.Hashable
    GuardrailAutomatedReasoningRule
  where
  hashWithSalt
    _salt
    GuardrailAutomatedReasoningRule' {..} =
      _salt
        `Prelude.hashWithSalt` identifier
        `Prelude.hashWithSalt` policyVersionArn

instance
  Prelude.NFData
    GuardrailAutomatedReasoningRule
  where
  rnf GuardrailAutomatedReasoningRule' {..} =
    Prelude.rnf identifier `Prelude.seq`
      Prelude.rnf policyVersionArn
