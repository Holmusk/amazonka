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
-- Module      : Amazonka.BedrockRuntime.Types.AudioSource
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.AudioSource where

import Amazonka.BedrockRuntime.Types.S3Location
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The source of audio data, which can be provided either as raw bytes or a
-- reference to an S3 location.
--
-- /See:/ 'newAudioSource' smart constructor.
data AudioSource = AudioSource'
  { -- | Audio data encoded in base64.
    bytes :: Prelude.Maybe Data.Base64,
    -- | A reference to audio data stored in an Amazon S3 bucket. To see which
    -- models support S3 uploads, see
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html Supported models and features for Converse>.
    s3Location :: Prelude.Maybe S3Location
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AudioSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bytes', 'audioSource_bytes' - Audio data encoded in base64.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 's3Location', 'audioSource_s3Location' - A reference to audio data stored in an Amazon S3 bucket. To see which
-- models support S3 uploads, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html Supported models and features for Converse>.
newAudioSource ::
  AudioSource
newAudioSource =
  AudioSource'
    { bytes = Prelude.Nothing,
      s3Location = Prelude.Nothing
    }

-- | Audio data encoded in base64.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
audioSource_bytes :: Lens.Lens' AudioSource (Prelude.Maybe Prelude.ByteString)
audioSource_bytes = Lens.lens (\AudioSource' {bytes} -> bytes) (\s@AudioSource' {} a -> s {bytes = a} :: AudioSource) Prelude.. Lens.mapping Data._Base64

-- | A reference to audio data stored in an Amazon S3 bucket. To see which
-- models support S3 uploads, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html Supported models and features for Converse>.
audioSource_s3Location :: Lens.Lens' AudioSource (Prelude.Maybe S3Location)
audioSource_s3Location = Lens.lens (\AudioSource' {s3Location} -> s3Location) (\s@AudioSource' {} a -> s {s3Location = a} :: AudioSource)

instance Data.FromJSON AudioSource where
  parseJSON =
    Data.withObject
      "AudioSource"
      ( \x ->
          AudioSource'
            Prelude.<$> (x Data..:? "bytes")
            Prelude.<*> (x Data..:? "s3Location")
      )

instance Prelude.Hashable AudioSource where
  hashWithSalt _salt AudioSource' {..} =
    _salt
      `Prelude.hashWithSalt` bytes
      `Prelude.hashWithSalt` s3Location

instance Prelude.NFData AudioSource where
  rnf AudioSource' {..} =
    Prelude.rnf bytes `Prelude.seq`
      Prelude.rnf s3Location

instance Data.ToJSON AudioSource where
  toJSON AudioSource' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("bytes" Data..=) Prelude.<$> bytes,
            ("s3Location" Data..=) Prelude.<$> s3Location
          ]
      )
