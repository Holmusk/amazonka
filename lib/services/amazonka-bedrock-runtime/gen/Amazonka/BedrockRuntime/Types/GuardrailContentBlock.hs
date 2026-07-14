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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailContentBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailContentBlock where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailImageBlock
import Amazonka.BedrockRuntime.Types.GuardrailTextBlock
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The content block to be evaluated by the guardrail.
--
-- /See:/ 'newGuardrailContentBlock' smart constructor.
data GuardrailContentBlock = GuardrailContentBlock'
  { -- | Image within guardrail content block to be evaluated by the guardrail.
    image :: Prelude.Maybe (Data.Sensitive GuardrailImageBlock),
    -- | Text within content block to be evaluated by the guardrail.
    text :: Prelude.Maybe GuardrailTextBlock
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailContentBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'image', 'guardrailContentBlock_image' - Image within guardrail content block to be evaluated by the guardrail.
--
-- 'text', 'guardrailContentBlock_text' - Text within content block to be evaluated by the guardrail.
newGuardrailContentBlock ::
  GuardrailContentBlock
newGuardrailContentBlock =
  GuardrailContentBlock'
    { image = Prelude.Nothing,
      text = Prelude.Nothing
    }

-- | Image within guardrail content block to be evaluated by the guardrail.
guardrailContentBlock_image :: Lens.Lens' GuardrailContentBlock (Prelude.Maybe GuardrailImageBlock)
guardrailContentBlock_image = Lens.lens (\GuardrailContentBlock' {image} -> image) (\s@GuardrailContentBlock' {} a -> s {image = a} :: GuardrailContentBlock) Prelude.. Lens.mapping Data._Sensitive

-- | Text within content block to be evaluated by the guardrail.
guardrailContentBlock_text :: Lens.Lens' GuardrailContentBlock (Prelude.Maybe GuardrailTextBlock)
guardrailContentBlock_text = Lens.lens (\GuardrailContentBlock' {text} -> text) (\s@GuardrailContentBlock' {} a -> s {text = a} :: GuardrailContentBlock)

instance Prelude.Hashable GuardrailContentBlock where
  hashWithSalt _salt GuardrailContentBlock' {..} =
    _salt
      `Prelude.hashWithSalt` image
      `Prelude.hashWithSalt` text

instance Prelude.NFData GuardrailContentBlock where
  rnf GuardrailContentBlock' {..} =
    Prelude.rnf image `Prelude.seq` Prelude.rnf text

instance Data.ToJSON GuardrailContentBlock where
  toJSON GuardrailContentBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("image" Data..=) Prelude.<$> image,
            ("text" Data..=) Prelude.<$> text
          ]
      )
