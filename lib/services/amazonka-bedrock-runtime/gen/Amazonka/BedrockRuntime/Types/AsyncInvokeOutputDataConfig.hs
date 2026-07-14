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
-- Module      : Amazonka.BedrockRuntime.Types.AsyncInvokeOutputDataConfig
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.AsyncInvokeOutputDataConfig where

import Amazonka.BedrockRuntime.Types.AsyncInvokeS3OutputDataConfig
import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Asynchronous invocation output data settings.
--
-- /See:/ 'newAsyncInvokeOutputDataConfig' smart constructor.
data AsyncInvokeOutputDataConfig = AsyncInvokeOutputDataConfig'
  { -- | A storage location for the output data in an S3 bucket
    s3OutputDataConfig :: Prelude.Maybe AsyncInvokeS3OutputDataConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AsyncInvokeOutputDataConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3OutputDataConfig', 'asyncInvokeOutputDataConfig_s3OutputDataConfig' - A storage location for the output data in an S3 bucket
newAsyncInvokeOutputDataConfig ::
  AsyncInvokeOutputDataConfig
newAsyncInvokeOutputDataConfig =
  AsyncInvokeOutputDataConfig'
    { s3OutputDataConfig =
        Prelude.Nothing
    }

-- | A storage location for the output data in an S3 bucket
asyncInvokeOutputDataConfig_s3OutputDataConfig :: Lens.Lens' AsyncInvokeOutputDataConfig (Prelude.Maybe AsyncInvokeS3OutputDataConfig)
asyncInvokeOutputDataConfig_s3OutputDataConfig = Lens.lens (\AsyncInvokeOutputDataConfig' {s3OutputDataConfig} -> s3OutputDataConfig) (\s@AsyncInvokeOutputDataConfig' {} a -> s {s3OutputDataConfig = a} :: AsyncInvokeOutputDataConfig)

instance Data.FromJSON AsyncInvokeOutputDataConfig where
  parseJSON =
    Data.withObject
      "AsyncInvokeOutputDataConfig"
      ( \x ->
          AsyncInvokeOutputDataConfig'
            Prelude.<$> (x Data..:? "s3OutputDataConfig")
      )

instance Prelude.Hashable AsyncInvokeOutputDataConfig where
  hashWithSalt _salt AsyncInvokeOutputDataConfig' {..} =
    _salt `Prelude.hashWithSalt` s3OutputDataConfig

instance Prelude.NFData AsyncInvokeOutputDataConfig where
  rnf AsyncInvokeOutputDataConfig' {..} =
    Prelude.rnf s3OutputDataConfig

instance Data.ToJSON AsyncInvokeOutputDataConfig where
  toJSON AsyncInvokeOutputDataConfig' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("s3OutputDataConfig" Data..=)
              Prelude.<$> s3OutputDataConfig
          ]
      )
