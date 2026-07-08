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
-- Module      : Amazonka.BedrockRuntime.Types.AsyncInvokeS3OutputDataConfig
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.AsyncInvokeS3OutputDataConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Asynchronous invocation output data settings.
--
-- /See:/ 'newAsyncInvokeS3OutputDataConfig' smart constructor.
data AsyncInvokeS3OutputDataConfig = AsyncInvokeS3OutputDataConfig'
  { -- | If the bucket belongs to another AWS account, specify that account\'s
    -- ID.
    bucketOwner :: Prelude.Maybe Prelude.Text,
    -- | A KMS encryption key ID.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | An object URI starting with @s3:\/\/@.
    s3Uri :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AsyncInvokeS3OutputDataConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucketOwner', 'asyncInvokeS3OutputDataConfig_bucketOwner' - If the bucket belongs to another AWS account, specify that account\'s
-- ID.
--
-- 'kmsKeyId', 'asyncInvokeS3OutputDataConfig_kmsKeyId' - A KMS encryption key ID.
--
-- 's3Uri', 'asyncInvokeS3OutputDataConfig_s3Uri' - An object URI starting with @s3:\/\/@.
newAsyncInvokeS3OutputDataConfig ::
  -- | 's3Uri'
  Prelude.Text ->
  AsyncInvokeS3OutputDataConfig
newAsyncInvokeS3OutputDataConfig pS3Uri_ =
  AsyncInvokeS3OutputDataConfig'
    { bucketOwner =
        Prelude.Nothing,
      kmsKeyId = Prelude.Nothing,
      s3Uri = pS3Uri_
    }

-- | If the bucket belongs to another AWS account, specify that account\'s
-- ID.
asyncInvokeS3OutputDataConfig_bucketOwner :: Lens.Lens' AsyncInvokeS3OutputDataConfig (Prelude.Maybe Prelude.Text)
asyncInvokeS3OutputDataConfig_bucketOwner = Lens.lens (\AsyncInvokeS3OutputDataConfig' {bucketOwner} -> bucketOwner) (\s@AsyncInvokeS3OutputDataConfig' {} a -> s {bucketOwner = a} :: AsyncInvokeS3OutputDataConfig)

-- | A KMS encryption key ID.
asyncInvokeS3OutputDataConfig_kmsKeyId :: Lens.Lens' AsyncInvokeS3OutputDataConfig (Prelude.Maybe Prelude.Text)
asyncInvokeS3OutputDataConfig_kmsKeyId = Lens.lens (\AsyncInvokeS3OutputDataConfig' {kmsKeyId} -> kmsKeyId) (\s@AsyncInvokeS3OutputDataConfig' {} a -> s {kmsKeyId = a} :: AsyncInvokeS3OutputDataConfig)

-- | An object URI starting with @s3:\/\/@.
asyncInvokeS3OutputDataConfig_s3Uri :: Lens.Lens' AsyncInvokeS3OutputDataConfig Prelude.Text
asyncInvokeS3OutputDataConfig_s3Uri = Lens.lens (\AsyncInvokeS3OutputDataConfig' {s3Uri} -> s3Uri) (\s@AsyncInvokeS3OutputDataConfig' {} a -> s {s3Uri = a} :: AsyncInvokeS3OutputDataConfig)

instance Data.FromJSON AsyncInvokeS3OutputDataConfig where
  parseJSON =
    Data.withObject
      "AsyncInvokeS3OutputDataConfig"
      ( \x ->
          AsyncInvokeS3OutputDataConfig'
            Prelude.<$> (x Data..:? "bucketOwner")
            Prelude.<*> (x Data..:? "kmsKeyId")
            Prelude.<*> (x Data..: "s3Uri")
      )

instance
  Prelude.Hashable
    AsyncInvokeS3OutputDataConfig
  where
  hashWithSalt _salt AsyncInvokeS3OutputDataConfig' {..} =
    _salt
      `Prelude.hashWithSalt` bucketOwner
      `Prelude.hashWithSalt` kmsKeyId
      `Prelude.hashWithSalt` s3Uri

instance Prelude.NFData AsyncInvokeS3OutputDataConfig where
  rnf AsyncInvokeS3OutputDataConfig' {..} =
    Prelude.rnf bucketOwner `Prelude.seq`
      Prelude.rnf kmsKeyId `Prelude.seq`
        Prelude.rnf s3Uri

instance Data.ToJSON AsyncInvokeS3OutputDataConfig where
  toJSON AsyncInvokeS3OutputDataConfig' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("bucketOwner" Data..=) Prelude.<$> bucketOwner,
            ("kmsKeyId" Data..=) Prelude.<$> kmsKeyId,
            Prelude.Just ("s3Uri" Data..= s3Uri)
          ]
      )
