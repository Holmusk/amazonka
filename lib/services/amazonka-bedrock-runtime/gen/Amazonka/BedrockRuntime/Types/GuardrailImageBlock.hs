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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailImageBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailImageBlock where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailImageFormat
import Amazonka.BedrockRuntime.Types.GuardrailImageSource
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Contain an image which user wants guarded. This block is accepted by the
-- guardrails independent API.
--
-- /See:/ 'newGuardrailImageBlock' smart constructor.
data GuardrailImageBlock = GuardrailImageBlock'
  { -- | The format details for the file type of the image blocked by the
    -- guardrail.
    format :: GuardrailImageFormat,
    -- | The image source (image bytes) details of the image blocked by the
    -- guardrail.
    source :: Data.Sensitive GuardrailImageSource
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailImageBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'format', 'guardrailImageBlock_format' - The format details for the file type of the image blocked by the
-- guardrail.
--
-- 'source', 'guardrailImageBlock_source' - The image source (image bytes) details of the image blocked by the
-- guardrail.
newGuardrailImageBlock ::
  -- | 'format'
  GuardrailImageFormat ->
  -- | 'source'
  GuardrailImageSource ->
  GuardrailImageBlock
newGuardrailImageBlock pFormat_ pSource_ =
  GuardrailImageBlock'
    { format = pFormat_,
      source = Data._Sensitive Lens.# pSource_
    }

-- | The format details for the file type of the image blocked by the
-- guardrail.
guardrailImageBlock_format :: Lens.Lens' GuardrailImageBlock GuardrailImageFormat
guardrailImageBlock_format = Lens.lens (\GuardrailImageBlock' {format} -> format) (\s@GuardrailImageBlock' {} a -> s {format = a} :: GuardrailImageBlock)

-- | The image source (image bytes) details of the image blocked by the
-- guardrail.
guardrailImageBlock_source :: Lens.Lens' GuardrailImageBlock GuardrailImageSource
guardrailImageBlock_source = Lens.lens (\GuardrailImageBlock' {source} -> source) (\s@GuardrailImageBlock' {} a -> s {source = a} :: GuardrailImageBlock) Prelude.. Data._Sensitive

instance Prelude.Hashable GuardrailImageBlock where
  hashWithSalt _salt GuardrailImageBlock' {..} =
    _salt
      `Prelude.hashWithSalt` format
      `Prelude.hashWithSalt` source

instance Prelude.NFData GuardrailImageBlock where
  rnf GuardrailImageBlock' {..} =
    Prelude.rnf format `Prelude.seq` Prelude.rnf source

instance Data.ToJSON GuardrailImageBlock where
  toJSON GuardrailImageBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just ("format" Data..= format),
            Prelude.Just ("source" Data..= source)
          ]
      )
