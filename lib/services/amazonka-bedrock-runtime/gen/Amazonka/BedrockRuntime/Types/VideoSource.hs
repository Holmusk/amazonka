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
-- Module      : Amazonka.BedrockRuntime.Types.VideoSource
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.VideoSource where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.S3Location
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A video source. You can upload a smaller video as a base64-encoded
-- string as long as the encoded file is less than 25MB. You can also
-- transfer videos up to 1GB in size from an S3 bucket.
--
-- /See:/ 'newVideoSource' smart constructor.
data VideoSource = VideoSource'
  { -- | Video content encoded in base64.
    bytes :: Prelude.Maybe Data.Base64,
    -- | The location of a video object in an Amazon S3 bucket. To see which
    -- models support S3 uploads, see
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html Supported models and features for Converse>.
    s3Location :: Prelude.Maybe S3Location
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VideoSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bytes', 'videoSource_bytes' - Video content encoded in base64.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 's3Location', 'videoSource_s3Location' - The location of a video object in an Amazon S3 bucket. To see which
-- models support S3 uploads, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html Supported models and features for Converse>.
newVideoSource ::
  VideoSource
newVideoSource =
  VideoSource'
    { bytes = Prelude.Nothing,
      s3Location = Prelude.Nothing
    }

-- | Video content encoded in base64.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
videoSource_bytes :: Lens.Lens' VideoSource (Prelude.Maybe Prelude.ByteString)
videoSource_bytes = Lens.lens (\VideoSource' {bytes} -> bytes) (\s@VideoSource' {} a -> s {bytes = a} :: VideoSource) Prelude.. Lens.mapping Data._Base64

-- | The location of a video object in an Amazon S3 bucket. To see which
-- models support S3 uploads, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html Supported models and features for Converse>.
videoSource_s3Location :: Lens.Lens' VideoSource (Prelude.Maybe S3Location)
videoSource_s3Location = Lens.lens (\VideoSource' {s3Location} -> s3Location) (\s@VideoSource' {} a -> s {s3Location = a} :: VideoSource)

instance Data.FromJSON VideoSource where
  parseJSON =
    Data.withObject
      "VideoSource"
      ( \x ->
          VideoSource'
            Prelude.<$> (x Data..:? "bytes")
            Prelude.<*> (x Data..:? "s3Location")
      )

instance Prelude.Hashable VideoSource where
  hashWithSalt _salt VideoSource' {..} =
    _salt
      `Prelude.hashWithSalt` bytes
      `Prelude.hashWithSalt` s3Location

instance Prelude.NFData VideoSource where
  rnf VideoSource' {..} =
    Prelude.rnf bytes `Prelude.seq`
      Prelude.rnf s3Location

instance Data.ToJSON VideoSource where
  toJSON VideoSource' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("bytes" Data..=) Prelude.<$> bytes,
            ("s3Location" Data..=) Prelude.<$> s3Location
          ]
      )
