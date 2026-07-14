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
-- Module      : Amazonka.BedrockRuntime.Types.VideoBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.VideoBlock where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.VideoFormat
import Amazonka.BedrockRuntime.Types.VideoSource
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A video block.
--
-- /See:/ 'newVideoBlock' smart constructor.
data VideoBlock = VideoBlock'
  { -- | The block\'s format.
    format :: VideoFormat,
    -- | The block\'s source.
    source :: VideoSource
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VideoBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'format', 'videoBlock_format' - The block\'s format.
--
-- 'source', 'videoBlock_source' - The block\'s source.
newVideoBlock ::
  -- | 'format'
  VideoFormat ->
  -- | 'source'
  VideoSource ->
  VideoBlock
newVideoBlock pFormat_ pSource_ =
  VideoBlock' {format = pFormat_, source = pSource_}

-- | The block\'s format.
videoBlock_format :: Lens.Lens' VideoBlock VideoFormat
videoBlock_format = Lens.lens (\VideoBlock' {format} -> format) (\s@VideoBlock' {} a -> s {format = a} :: VideoBlock)

-- | The block\'s source.
videoBlock_source :: Lens.Lens' VideoBlock VideoSource
videoBlock_source = Lens.lens (\VideoBlock' {source} -> source) (\s@VideoBlock' {} a -> s {source = a} :: VideoBlock)

instance Data.FromJSON VideoBlock where
  parseJSON =
    Data.withObject
      "VideoBlock"
      ( \x ->
          VideoBlock'
            Prelude.<$> (x Data..: "format")
            Prelude.<*> (x Data..: "source")
      )

instance Prelude.Hashable VideoBlock where
  hashWithSalt _salt VideoBlock' {..} =
    _salt
      `Prelude.hashWithSalt` format
      `Prelude.hashWithSalt` source

instance Prelude.NFData VideoBlock where
  rnf VideoBlock' {..} =
    Prelude.rnf format `Prelude.seq` Prelude.rnf source

instance Data.ToJSON VideoBlock where
  toJSON VideoBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just ("format" Data..= format),
            Prelude.Just ("source" Data..= source)
          ]
      )
