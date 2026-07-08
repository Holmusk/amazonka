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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningNoTranslationsFinding
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningNoTranslationsFinding where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Indicates that no relevant logical information could be extracted from
-- the input for validation.
--
-- /See:/ 'newGuardrailAutomatedReasoningNoTranslationsFinding' smart constructor.
data GuardrailAutomatedReasoningNoTranslationsFinding = GuardrailAutomatedReasoningNoTranslationsFinding'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAutomatedReasoningNoTranslationsFinding' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGuardrailAutomatedReasoningNoTranslationsFinding ::
  GuardrailAutomatedReasoningNoTranslationsFinding
newGuardrailAutomatedReasoningNoTranslationsFinding =
  GuardrailAutomatedReasoningNoTranslationsFinding'

instance
  Data.FromJSON
    GuardrailAutomatedReasoningNoTranslationsFinding
  where
  parseJSON =
    Data.withObject
      "GuardrailAutomatedReasoningNoTranslationsFinding"
      ( \x ->
          Prelude.pure
            GuardrailAutomatedReasoningNoTranslationsFinding'
      )

instance
  Prelude.Hashable
    GuardrailAutomatedReasoningNoTranslationsFinding
  where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance
  Prelude.NFData
    GuardrailAutomatedReasoningNoTranslationsFinding
  where
  rnf _ = ()
