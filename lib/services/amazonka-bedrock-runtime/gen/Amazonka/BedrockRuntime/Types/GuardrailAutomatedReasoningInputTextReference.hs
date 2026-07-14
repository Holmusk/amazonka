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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningInputTextReference
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningInputTextReference where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | References a portion of the original input text that corresponds to
-- logical elements.
--
-- /See:/ 'newGuardrailAutomatedReasoningInputTextReference' smart constructor.
data GuardrailAutomatedReasoningInputTextReference = GuardrailAutomatedReasoningInputTextReference'
  { -- | The specific text from the original input that this reference points to.
    text :: Prelude.Maybe (Data.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailAutomatedReasoningInputTextReference' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'text', 'guardrailAutomatedReasoningInputTextReference_text' - The specific text from the original input that this reference points to.
newGuardrailAutomatedReasoningInputTextReference ::
  GuardrailAutomatedReasoningInputTextReference
newGuardrailAutomatedReasoningInputTextReference =
  GuardrailAutomatedReasoningInputTextReference'
    { text =
        Prelude.Nothing
    }

-- | The specific text from the original input that this reference points to.
guardrailAutomatedReasoningInputTextReference_text :: Lens.Lens' GuardrailAutomatedReasoningInputTextReference (Prelude.Maybe Prelude.Text)
guardrailAutomatedReasoningInputTextReference_text = Lens.lens (\GuardrailAutomatedReasoningInputTextReference' {text} -> text) (\s@GuardrailAutomatedReasoningInputTextReference' {} a -> s {text = a} :: GuardrailAutomatedReasoningInputTextReference) Prelude.. Lens.mapping Data._Sensitive

instance
  Data.FromJSON
    GuardrailAutomatedReasoningInputTextReference
  where
  parseJSON =
    Data.withObject
      "GuardrailAutomatedReasoningInputTextReference"
      ( \x ->
          GuardrailAutomatedReasoningInputTextReference'
            Prelude.<$> (x Data..:? "text")
      )

instance
  Prelude.Hashable
    GuardrailAutomatedReasoningInputTextReference
  where
  hashWithSalt
    _salt
    GuardrailAutomatedReasoningInputTextReference' {..} =
      _salt `Prelude.hashWithSalt` text

instance
  Prelude.NFData
    GuardrailAutomatedReasoningInputTextReference
  where
  rnf
    GuardrailAutomatedReasoningInputTextReference' {..} =
      Prelude.rnf text
