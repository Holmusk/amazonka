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
-- Module      : Amazonka.BedrockRuntime.Types.ImageSource
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ImageSource where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.S3Location
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The source for an image.
--
-- /See:/ 'newImageSource' smart constructor.
data ImageSource = ImageSource'
  { -- | The raw image bytes for the image. If you use an AWS SDK, you don\'t
    -- need to encode the image bytes in base64.
    bytes :: Prelude.Maybe Data.Base64,
    -- | The location of an image object in an Amazon S3 bucket. To see which
    -- models support S3 uploads, see
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html Supported models and features for Converse>.
    s3Location :: Prelude.Maybe S3Location
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImageSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bytes', 'imageSource_bytes' - The raw image bytes for the image. If you use an AWS SDK, you don\'t
-- need to encode the image bytes in base64.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 's3Location', 'imageSource_s3Location' - The location of an image object in an Amazon S3 bucket. To see which
-- models support S3 uploads, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html Supported models and features for Converse>.
newImageSource ::
  ImageSource
newImageSource =
  ImageSource'
    { bytes = Prelude.Nothing,
      s3Location = Prelude.Nothing
    }

-- | The raw image bytes for the image. If you use an AWS SDK, you don\'t
-- need to encode the image bytes in base64.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
imageSource_bytes :: Lens.Lens' ImageSource (Prelude.Maybe Prelude.ByteString)
imageSource_bytes = Lens.lens (\ImageSource' {bytes} -> bytes) (\s@ImageSource' {} a -> s {bytes = a} :: ImageSource) Prelude.. Lens.mapping Data._Base64

-- | The location of an image object in an Amazon S3 bucket. To see which
-- models support S3 uploads, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html Supported models and features for Converse>.
imageSource_s3Location :: Lens.Lens' ImageSource (Prelude.Maybe S3Location)
imageSource_s3Location = Lens.lens (\ImageSource' {s3Location} -> s3Location) (\s@ImageSource' {} a -> s {s3Location = a} :: ImageSource)

instance Data.FromJSON ImageSource where
  parseJSON =
    Data.withObject
      "ImageSource"
      ( \x ->
          ImageSource'
            Prelude.<$> (x Data..:? "bytes")
            Prelude.<*> (x Data..:? "s3Location")
      )

instance Prelude.Hashable ImageSource where
  hashWithSalt _salt ImageSource' {..} =
    _salt
      `Prelude.hashWithSalt` bytes
      `Prelude.hashWithSalt` s3Location

instance Prelude.NFData ImageSource where
  rnf ImageSource' {..} =
    Prelude.rnf bytes `Prelude.seq`
      Prelude.rnf s3Location

instance Data.ToJSON ImageSource where
  toJSON ImageSource' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("bytes" Data..=) Prelude.<$> bytes,
            ("s3Location" Data..=) Prelude.<$> s3Location
          ]
      )
