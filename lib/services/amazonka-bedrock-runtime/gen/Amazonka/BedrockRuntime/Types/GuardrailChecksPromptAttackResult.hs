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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackResult
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackResult where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackResultEntry
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The prompt attack check results.
--
-- /See:/ 'newGuardrailChecksPromptAttackResult' smart constructor.
data GuardrailChecksPromptAttackResult = GuardrailChecksPromptAttackResult'
  { -- | The per-category prompt attack results.
    results :: [GuardrailChecksPromptAttackResultEntry]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksPromptAttackResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'results', 'guardrailChecksPromptAttackResult_results' - The per-category prompt attack results.
newGuardrailChecksPromptAttackResult ::
  GuardrailChecksPromptAttackResult
newGuardrailChecksPromptAttackResult =
  GuardrailChecksPromptAttackResult'
    { results =
        Prelude.mempty
    }

-- | The per-category prompt attack results.
guardrailChecksPromptAttackResult_results :: Lens.Lens' GuardrailChecksPromptAttackResult [GuardrailChecksPromptAttackResultEntry]
guardrailChecksPromptAttackResult_results = Lens.lens (\GuardrailChecksPromptAttackResult' {results} -> results) (\s@GuardrailChecksPromptAttackResult' {} a -> s {results = a} :: GuardrailChecksPromptAttackResult) Prelude.. Lens.coerced

instance
  Data.FromJSON
    GuardrailChecksPromptAttackResult
  where
  parseJSON =
    Data.withObject
      "GuardrailChecksPromptAttackResult"
      ( \x ->
          GuardrailChecksPromptAttackResult'
            Prelude.<$> (x Data..:? "results" Data..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    GuardrailChecksPromptAttackResult
  where
  hashWithSalt
    _salt
    GuardrailChecksPromptAttackResult' {..} =
      _salt `Prelude.hashWithSalt` results

instance
  Prelude.NFData
    GuardrailChecksPromptAttackResult
  where
  rnf GuardrailChecksPromptAttackResult' {..} =
    Prelude.rnf results
