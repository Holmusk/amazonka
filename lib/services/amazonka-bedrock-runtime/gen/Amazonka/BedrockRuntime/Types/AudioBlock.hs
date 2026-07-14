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
-- Module      : Amazonka.BedrockRuntime.Types.AudioBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.AudioBlock where

import Amazonka.BedrockRuntime.Types.AudioFormat
import Amazonka.BedrockRuntime.Types.AudioSource
import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.ErrorBlock
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | An audio content block that contains audio data in various supported
-- formats.
--
-- /See:/ 'newAudioBlock' smart constructor.
data AudioBlock = AudioBlock'
  { -- | Error information if the audio block could not be processed or contains
    -- invalid data.
    error :: Prelude.Maybe (Data.Sensitive ErrorBlock),
    -- | The format of the audio data, such as MP3, WAV, FLAC, or other supported
    -- audio formats.
    format :: AudioFormat,
    -- | The source of the audio data, which can be provided as raw bytes or an
    -- S3 location.
    source :: Data.Sensitive AudioSource
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AudioBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'error', 'audioBlock_error' - Error information if the audio block could not be processed or contains
-- invalid data.
--
-- 'format', 'audioBlock_format' - The format of the audio data, such as MP3, WAV, FLAC, or other supported
-- audio formats.
--
-- 'source', 'audioBlock_source' - The source of the audio data, which can be provided as raw bytes or an
-- S3 location.
newAudioBlock ::
  -- | 'format'
  AudioFormat ->
  -- | 'source'
  AudioSource ->
  AudioBlock
newAudioBlock pFormat_ pSource_ =
  AudioBlock'
    { error = Prelude.Nothing,
      format = pFormat_,
      source = Data._Sensitive Lens.# pSource_
    }

-- | Error information if the audio block could not be processed or contains
-- invalid data.
audioBlock_error :: Lens.Lens' AudioBlock (Prelude.Maybe ErrorBlock)
audioBlock_error = Lens.lens (\AudioBlock' {error} -> error) (\s@AudioBlock' {} a -> s {error = a} :: AudioBlock) Prelude.. Lens.mapping Data._Sensitive

-- | The format of the audio data, such as MP3, WAV, FLAC, or other supported
-- audio formats.
audioBlock_format :: Lens.Lens' AudioBlock AudioFormat
audioBlock_format = Lens.lens (\AudioBlock' {format} -> format) (\s@AudioBlock' {} a -> s {format = a} :: AudioBlock)

-- | The source of the audio data, which can be provided as raw bytes or an
-- S3 location.
audioBlock_source :: Lens.Lens' AudioBlock AudioSource
audioBlock_source = Lens.lens (\AudioBlock' {source} -> source) (\s@AudioBlock' {} a -> s {source = a} :: AudioBlock) Prelude.. Data._Sensitive

instance Data.FromJSON AudioBlock where
  parseJSON =
    Data.withObject
      "AudioBlock"
      ( \x ->
          AudioBlock'
            Prelude.<$> (x Data..:? "error")
            Prelude.<*> (x Data..: "format")
            Prelude.<*> (x Data..: "source")
      )

instance Prelude.Hashable AudioBlock where
  hashWithSalt _salt AudioBlock' {..} =
    _salt
      `Prelude.hashWithSalt` error
      `Prelude.hashWithSalt` format
      `Prelude.hashWithSalt` source

instance Prelude.NFData AudioBlock where
  rnf AudioBlock' {..} =
    Prelude.rnf error `Prelude.seq`
      Prelude.rnf format `Prelude.seq`
        Prelude.rnf source

instance Data.ToJSON AudioBlock where
  toJSON AudioBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("error" Data..=) Prelude.<$> error,
            Prelude.Just ("format" Data..= format),
            Prelude.Just ("source" Data..= source)
          ]
      )
