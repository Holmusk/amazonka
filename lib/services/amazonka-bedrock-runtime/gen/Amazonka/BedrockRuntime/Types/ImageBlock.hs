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
-- Module      : Amazonka.BedrockRuntime.Types.ImageBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ImageBlock where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.ErrorBlock
import Amazonka.BedrockRuntime.Types.ImageFormat
import Amazonka.BedrockRuntime.Types.ImageSource
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Image content for a message.
--
-- /See:/ 'newImageBlock' smart constructor.
data ImageBlock = ImageBlock'
  { -- | Error information if the image block could not be processed or contains
    -- invalid data.
    error :: Prelude.Maybe (Data.Sensitive ErrorBlock),
    -- | The format of the image.
    format :: ImageFormat,
    -- | The source for the image.
    source :: Data.Sensitive ImageSource
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImageBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'error', 'imageBlock_error' - Error information if the image block could not be processed or contains
-- invalid data.
--
-- 'format', 'imageBlock_format' - The format of the image.
--
-- 'source', 'imageBlock_source' - The source for the image.
newImageBlock ::
  -- | 'format'
  ImageFormat ->
  -- | 'source'
  ImageSource ->
  ImageBlock
newImageBlock pFormat_ pSource_ =
  ImageBlock'
    { error = Prelude.Nothing,
      format = pFormat_,
      source = Data._Sensitive Lens.# pSource_
    }

-- | Error information if the image block could not be processed or contains
-- invalid data.
imageBlock_error :: Lens.Lens' ImageBlock (Prelude.Maybe ErrorBlock)
imageBlock_error = Lens.lens (\ImageBlock' {error} -> error) (\s@ImageBlock' {} a -> s {error = a} :: ImageBlock) Prelude.. Lens.mapping Data._Sensitive

-- | The format of the image.
imageBlock_format :: Lens.Lens' ImageBlock ImageFormat
imageBlock_format = Lens.lens (\ImageBlock' {format} -> format) (\s@ImageBlock' {} a -> s {format = a} :: ImageBlock)

-- | The source for the image.
imageBlock_source :: Lens.Lens' ImageBlock ImageSource
imageBlock_source = Lens.lens (\ImageBlock' {source} -> source) (\s@ImageBlock' {} a -> s {source = a} :: ImageBlock) Prelude.. Data._Sensitive

instance Data.FromJSON ImageBlock where
  parseJSON =
    Data.withObject
      "ImageBlock"
      ( \x ->
          ImageBlock'
            Prelude.<$> (x Data..:? "error")
            Prelude.<*> (x Data..: "format")
            Prelude.<*> (x Data..: "source")
      )

instance Prelude.Hashable ImageBlock where
  hashWithSalt _salt ImageBlock' {..} =
    _salt
      `Prelude.hashWithSalt` error
      `Prelude.hashWithSalt` format
      `Prelude.hashWithSalt` source

instance Prelude.NFData ImageBlock where
  rnf ImageBlock' {..} =
    Prelude.rnf error `Prelude.seq`
      Prelude.rnf format `Prelude.seq`
        Prelude.rnf source

instance Data.ToJSON ImageBlock where
  toJSON ImageBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("error" Data..=) Prelude.<$> error,
            Prelude.Just ("format" Data..= format),
            Prelude.Just ("source" Data..= source)
          ]
      )
