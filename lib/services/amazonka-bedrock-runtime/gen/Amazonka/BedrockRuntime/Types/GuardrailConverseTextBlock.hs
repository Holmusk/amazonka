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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailConverseTextBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailConverseTextBlock where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailConverseContentQualifier
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A text block that contains text that you want to assess with a
-- guardrail. For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_GuardrailConverseContentBlock.html GuardrailConverseContentBlock>.
--
-- /See:/ 'newGuardrailConverseTextBlock' smart constructor.
data GuardrailConverseTextBlock = GuardrailConverseTextBlock'
  { -- | The qualifier details for the guardrails contextual grounding filter.
    qualifiers :: Prelude.Maybe [GuardrailConverseContentQualifier],
    -- | The text that you want to guard.
    text :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailConverseTextBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'qualifiers', 'guardrailConverseTextBlock_qualifiers' - The qualifier details for the guardrails contextual grounding filter.
--
-- 'text', 'guardrailConverseTextBlock_text' - The text that you want to guard.
newGuardrailConverseTextBlock ::
  -- | 'text'
  Prelude.Text ->
  GuardrailConverseTextBlock
newGuardrailConverseTextBlock pText_ =
  GuardrailConverseTextBlock'
    { qualifiers =
        Prelude.Nothing,
      text = pText_
    }

-- | The qualifier details for the guardrails contextual grounding filter.
guardrailConverseTextBlock_qualifiers :: Lens.Lens' GuardrailConverseTextBlock (Prelude.Maybe [GuardrailConverseContentQualifier])
guardrailConverseTextBlock_qualifiers = Lens.lens (\GuardrailConverseTextBlock' {qualifiers} -> qualifiers) (\s@GuardrailConverseTextBlock' {} a -> s {qualifiers = a} :: GuardrailConverseTextBlock) Prelude.. Lens.mapping Lens.coerced

-- | The text that you want to guard.
guardrailConverseTextBlock_text :: Lens.Lens' GuardrailConverseTextBlock Prelude.Text
guardrailConverseTextBlock_text = Lens.lens (\GuardrailConverseTextBlock' {text} -> text) (\s@GuardrailConverseTextBlock' {} a -> s {text = a} :: GuardrailConverseTextBlock)

instance Data.FromJSON GuardrailConverseTextBlock where
  parseJSON =
    Data.withObject
      "GuardrailConverseTextBlock"
      ( \x ->
          GuardrailConverseTextBlock'
            Prelude.<$> (x Data..:? "qualifiers" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..: "text")
      )

instance Prelude.Hashable GuardrailConverseTextBlock where
  hashWithSalt _salt GuardrailConverseTextBlock' {..} =
    _salt
      `Prelude.hashWithSalt` qualifiers
      `Prelude.hashWithSalt` text

instance Prelude.NFData GuardrailConverseTextBlock where
  rnf GuardrailConverseTextBlock' {..} =
    Prelude.rnf qualifiers `Prelude.seq`
      Prelude.rnf text

instance Data.ToJSON GuardrailConverseTextBlock where
  toJSON GuardrailConverseTextBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("qualifiers" Data..=) Prelude.<$> qualifiers,
            Prelude.Just ("text" Data..= text)
          ]
      )
