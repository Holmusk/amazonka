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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailTextBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailTextBlock where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailContentQualifier
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The text block to be evaluated by the guardrail.
--
-- /See:/ 'newGuardrailTextBlock' smart constructor.
data GuardrailTextBlock = GuardrailTextBlock'
  { -- | The qualifiers describing the text block.
    qualifiers :: Prelude.Maybe [GuardrailContentQualifier],
    -- | The input text details to be evaluated by the guardrail.
    text :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailTextBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'qualifiers', 'guardrailTextBlock_qualifiers' - The qualifiers describing the text block.
--
-- 'text', 'guardrailTextBlock_text' - The input text details to be evaluated by the guardrail.
newGuardrailTextBlock ::
  -- | 'text'
  Prelude.Text ->
  GuardrailTextBlock
newGuardrailTextBlock pText_ =
  GuardrailTextBlock'
    { qualifiers = Prelude.Nothing,
      text = pText_
    }

-- | The qualifiers describing the text block.
guardrailTextBlock_qualifiers :: Lens.Lens' GuardrailTextBlock (Prelude.Maybe [GuardrailContentQualifier])
guardrailTextBlock_qualifiers = Lens.lens (\GuardrailTextBlock' {qualifiers} -> qualifiers) (\s@GuardrailTextBlock' {} a -> s {qualifiers = a} :: GuardrailTextBlock) Prelude.. Lens.mapping Lens.coerced

-- | The input text details to be evaluated by the guardrail.
guardrailTextBlock_text :: Lens.Lens' GuardrailTextBlock Prelude.Text
guardrailTextBlock_text = Lens.lens (\GuardrailTextBlock' {text} -> text) (\s@GuardrailTextBlock' {} a -> s {text = a} :: GuardrailTextBlock)

instance Prelude.Hashable GuardrailTextBlock where
  hashWithSalt _salt GuardrailTextBlock' {..} =
    _salt
      `Prelude.hashWithSalt` qualifiers
      `Prelude.hashWithSalt` text

instance Prelude.NFData GuardrailTextBlock where
  rnf GuardrailTextBlock' {..} =
    Prelude.rnf qualifiers `Prelude.seq`
      Prelude.rnf text

instance Data.ToJSON GuardrailTextBlock where
  toJSON GuardrailTextBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("qualifiers" Data..=) Prelude.<$> qualifiers,
            Prelude.Just ("text" Data..= text)
          ]
      )
