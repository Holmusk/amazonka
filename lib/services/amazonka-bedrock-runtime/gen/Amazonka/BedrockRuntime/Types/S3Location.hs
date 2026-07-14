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
-- Module      : Amazonka.BedrockRuntime.Types.S3Location
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.S3Location where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A storage location in an Amazon S3 bucket.
--
-- /See:/ 'newS3Location' smart constructor.
data S3Location = S3Location'
  { -- | If the bucket belongs to another AWS account, specify that account\'s
    -- ID.
    bucketOwner :: Prelude.Maybe Prelude.Text,
    -- | An object URI starting with @s3:\/\/@.
    uri :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3Location' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucketOwner', 's3Location_bucketOwner' - If the bucket belongs to another AWS account, specify that account\'s
-- ID.
--
-- 'uri', 's3Location_uri' - An object URI starting with @s3:\/\/@.
newS3Location ::
  -- | 'uri'
  Prelude.Text ->
  S3Location
newS3Location pUri_ =
  S3Location'
    { bucketOwner = Prelude.Nothing,
      uri = pUri_
    }

-- | If the bucket belongs to another AWS account, specify that account\'s
-- ID.
s3Location_bucketOwner :: Lens.Lens' S3Location (Prelude.Maybe Prelude.Text)
s3Location_bucketOwner = Lens.lens (\S3Location' {bucketOwner} -> bucketOwner) (\s@S3Location' {} a -> s {bucketOwner = a} :: S3Location)

-- | An object URI starting with @s3:\/\/@.
s3Location_uri :: Lens.Lens' S3Location Prelude.Text
s3Location_uri = Lens.lens (\S3Location' {uri} -> uri) (\s@S3Location' {} a -> s {uri = a} :: S3Location)

instance Data.FromJSON S3Location where
  parseJSON =
    Data.withObject
      "S3Location"
      ( \x ->
          S3Location'
            Prelude.<$> (x Data..:? "bucketOwner")
            Prelude.<*> (x Data..: "uri")
      )

instance Prelude.Hashable S3Location where
  hashWithSalt _salt S3Location' {..} =
    _salt
      `Prelude.hashWithSalt` bucketOwner
      `Prelude.hashWithSalt` uri

instance Prelude.NFData S3Location where
  rnf S3Location' {..} =
    Prelude.rnf bucketOwner `Prelude.seq`
      Prelude.rnf uri

instance Data.ToJSON S3Location where
  toJSON S3Location' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("bucketOwner" Data..=) Prelude.<$> bucketOwner,
            Prelude.Just ("uri" Data..= uri)
          ]
      )
