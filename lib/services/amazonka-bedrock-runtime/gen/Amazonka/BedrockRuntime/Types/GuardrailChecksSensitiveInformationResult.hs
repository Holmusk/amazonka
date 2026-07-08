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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationResult
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationResult where

import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationResultEntry
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The sensitive information check results.
--
-- /See:/ 'newGuardrailChecksSensitiveInformationResult' smart constructor.
data GuardrailChecksSensitiveInformationResult = GuardrailChecksSensitiveInformationResult'
  { -- | Specifies whether the results were truncated because the number of
    -- detected entities exceeded the maximum limit.
    truncated :: Prelude.Maybe Prelude.Bool,
    -- | The detected sensitive information entities.
    results :: [GuardrailChecksSensitiveInformationResultEntry]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksSensitiveInformationResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'truncated', 'guardrailChecksSensitiveInformationResult_truncated' - Specifies whether the results were truncated because the number of
-- detected entities exceeded the maximum limit.
--
-- 'results', 'guardrailChecksSensitiveInformationResult_results' - The detected sensitive information entities.
newGuardrailChecksSensitiveInformationResult ::
  GuardrailChecksSensitiveInformationResult
newGuardrailChecksSensitiveInformationResult =
  GuardrailChecksSensitiveInformationResult'
    { truncated =
        Prelude.Nothing,
      results = Prelude.mempty
    }

-- | Specifies whether the results were truncated because the number of
-- detected entities exceeded the maximum limit.
guardrailChecksSensitiveInformationResult_truncated :: Lens.Lens' GuardrailChecksSensitiveInformationResult (Prelude.Maybe Prelude.Bool)
guardrailChecksSensitiveInformationResult_truncated = Lens.lens (\GuardrailChecksSensitiveInformationResult' {truncated} -> truncated) (\s@GuardrailChecksSensitiveInformationResult' {} a -> s {truncated = a} :: GuardrailChecksSensitiveInformationResult)

-- | The detected sensitive information entities.
guardrailChecksSensitiveInformationResult_results :: Lens.Lens' GuardrailChecksSensitiveInformationResult [GuardrailChecksSensitiveInformationResultEntry]
guardrailChecksSensitiveInformationResult_results = Lens.lens (\GuardrailChecksSensitiveInformationResult' {results} -> results) (\s@GuardrailChecksSensitiveInformationResult' {} a -> s {results = a} :: GuardrailChecksSensitiveInformationResult) Prelude.. Lens.coerced

instance
  Data.FromJSON
    GuardrailChecksSensitiveInformationResult
  where
  parseJSON =
    Data.withObject
      "GuardrailChecksSensitiveInformationResult"
      ( \x ->
          GuardrailChecksSensitiveInformationResult'
            Prelude.<$> (x Data..:? "truncated")
            Prelude.<*> (x Data..:? "results" Data..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    GuardrailChecksSensitiveInformationResult
  where
  hashWithSalt
    _salt
    GuardrailChecksSensitiveInformationResult' {..} =
      _salt
        `Prelude.hashWithSalt` truncated
        `Prelude.hashWithSalt` results

instance
  Prelude.NFData
    GuardrailChecksSensitiveInformationResult
  where
  rnf GuardrailChecksSensitiveInformationResult' {..} =
    Prelude.rnf truncated `Prelude.seq`
      Prelude.rnf results
