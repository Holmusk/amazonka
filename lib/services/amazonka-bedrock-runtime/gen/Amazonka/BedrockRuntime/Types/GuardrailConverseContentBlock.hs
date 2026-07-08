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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailConverseContentBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailConverseContentBlock where

import Amazonka.BedrockRuntime.Types.GuardrailConverseImageBlock
import Amazonka.BedrockRuntime.Types.GuardrailConverseTextBlock
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A content block for selective guarding with the
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html Converse>
-- or
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html ConverseStream>
-- API operations.
--
-- /See:/ 'newGuardrailConverseContentBlock' smart constructor.
data GuardrailConverseContentBlock = GuardrailConverseContentBlock'
  { -- | Image within converse content block to be evaluated by the guardrail.
    image :: Prelude.Maybe (Data.Sensitive GuardrailConverseImageBlock),
    -- | The text to guard.
    text :: Prelude.Maybe GuardrailConverseTextBlock
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailConverseContentBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'image', 'guardrailConverseContentBlock_image' - Image within converse content block to be evaluated by the guardrail.
--
-- 'text', 'guardrailConverseContentBlock_text' - The text to guard.
newGuardrailConverseContentBlock ::
  GuardrailConverseContentBlock
newGuardrailConverseContentBlock =
  GuardrailConverseContentBlock'
    { image =
        Prelude.Nothing,
      text = Prelude.Nothing
    }

-- | Image within converse content block to be evaluated by the guardrail.
guardrailConverseContentBlock_image :: Lens.Lens' GuardrailConverseContentBlock (Prelude.Maybe GuardrailConverseImageBlock)
guardrailConverseContentBlock_image = Lens.lens (\GuardrailConverseContentBlock' {image} -> image) (\s@GuardrailConverseContentBlock' {} a -> s {image = a} :: GuardrailConverseContentBlock) Prelude.. Lens.mapping Data._Sensitive

-- | The text to guard.
guardrailConverseContentBlock_text :: Lens.Lens' GuardrailConverseContentBlock (Prelude.Maybe GuardrailConverseTextBlock)
guardrailConverseContentBlock_text = Lens.lens (\GuardrailConverseContentBlock' {text} -> text) (\s@GuardrailConverseContentBlock' {} a -> s {text = a} :: GuardrailConverseContentBlock)

instance Data.FromJSON GuardrailConverseContentBlock where
  parseJSON =
    Data.withObject
      "GuardrailConverseContentBlock"
      ( \x ->
          GuardrailConverseContentBlock'
            Prelude.<$> (x Data..:? "image")
            Prelude.<*> (x Data..:? "text")
      )

instance
  Prelude.Hashable
    GuardrailConverseContentBlock
  where
  hashWithSalt _salt GuardrailConverseContentBlock' {..} =
    _salt
      `Prelude.hashWithSalt` image
      `Prelude.hashWithSalt` text

instance Prelude.NFData GuardrailConverseContentBlock where
  rnf GuardrailConverseContentBlock' {..} =
    Prelude.rnf image `Prelude.seq` Prelude.rnf text

instance Data.ToJSON GuardrailConverseContentBlock where
  toJSON GuardrailConverseContentBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("image" Data..=) Prelude.<$> image,
            ("text" Data..=) Prelude.<$> text
          ]
      )
