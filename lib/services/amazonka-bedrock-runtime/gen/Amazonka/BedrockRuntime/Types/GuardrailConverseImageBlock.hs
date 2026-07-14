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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailConverseImageBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailConverseImageBlock where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailConverseImageFormat
import Amazonka.BedrockRuntime.Types.GuardrailConverseImageSource
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | An image block that contains images that you want to assess with a
-- guardrail.
--
-- /See:/ 'newGuardrailConverseImageBlock' smart constructor.
data GuardrailConverseImageBlock = GuardrailConverseImageBlock'
  { -- | The format details for the image type of the guardrail converse image
    -- block.
    format :: GuardrailConverseImageFormat,
    -- | The image source (image bytes) of the guardrail converse image block.
    source :: Data.Sensitive GuardrailConverseImageSource
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailConverseImageBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'format', 'guardrailConverseImageBlock_format' - The format details for the image type of the guardrail converse image
-- block.
--
-- 'source', 'guardrailConverseImageBlock_source' - The image source (image bytes) of the guardrail converse image block.
newGuardrailConverseImageBlock ::
  -- | 'format'
  GuardrailConverseImageFormat ->
  -- | 'source'
  GuardrailConverseImageSource ->
  GuardrailConverseImageBlock
newGuardrailConverseImageBlock pFormat_ pSource_ =
  GuardrailConverseImageBlock'
    { format = pFormat_,
      source = Data._Sensitive Lens.# pSource_
    }

-- | The format details for the image type of the guardrail converse image
-- block.
guardrailConverseImageBlock_format :: Lens.Lens' GuardrailConverseImageBlock GuardrailConverseImageFormat
guardrailConverseImageBlock_format = Lens.lens (\GuardrailConverseImageBlock' {format} -> format) (\s@GuardrailConverseImageBlock' {} a -> s {format = a} :: GuardrailConverseImageBlock)

-- | The image source (image bytes) of the guardrail converse image block.
guardrailConverseImageBlock_source :: Lens.Lens' GuardrailConverseImageBlock GuardrailConverseImageSource
guardrailConverseImageBlock_source = Lens.lens (\GuardrailConverseImageBlock' {source} -> source) (\s@GuardrailConverseImageBlock' {} a -> s {source = a} :: GuardrailConverseImageBlock) Prelude.. Data._Sensitive

instance Data.FromJSON GuardrailConverseImageBlock where
  parseJSON =
    Data.withObject
      "GuardrailConverseImageBlock"
      ( \x ->
          GuardrailConverseImageBlock'
            Prelude.<$> (x Data..: "format")
            Prelude.<*> (x Data..: "source")
      )

instance Prelude.Hashable GuardrailConverseImageBlock where
  hashWithSalt _salt GuardrailConverseImageBlock' {..} =
    _salt
      `Prelude.hashWithSalt` format
      `Prelude.hashWithSalt` source

instance Prelude.NFData GuardrailConverseImageBlock where
  rnf GuardrailConverseImageBlock' {..} =
    Prelude.rnf format `Prelude.seq` Prelude.rnf source

instance Data.ToJSON GuardrailConverseImageBlock where
  toJSON GuardrailConverseImageBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just ("format" Data..= format),
            Prelude.Just ("source" Data..= source)
          ]
      )
