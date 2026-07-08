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
-- Module      : Amazonka.BedrockRuntime.Types.CacheDetail
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.CacheDetail where

import Amazonka.BedrockRuntime.Types.CacheTTL
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Cache creation metrics for a specific TTL duration
--
-- /See:/ 'newCacheDetail' smart constructor.
data CacheDetail = CacheDetail'
  { -- | TTL duration for these cached tokens
    ttl :: CacheTTL,
    -- | Number of tokens written to cache with this TTL (cache creation tokens)
    inputTokens :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CacheDetail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ttl', 'cacheDetail_ttl' - TTL duration for these cached tokens
--
-- 'inputTokens', 'cacheDetail_inputTokens' - Number of tokens written to cache with this TTL (cache creation tokens)
newCacheDetail ::
  -- | 'ttl'
  CacheTTL ->
  -- | 'inputTokens'
  Prelude.Natural ->
  CacheDetail
newCacheDetail pTtl_ pInputTokens_ =
  CacheDetail'
    { ttl = pTtl_,
      inputTokens = pInputTokens_
    }

-- | TTL duration for these cached tokens
cacheDetail_ttl :: Lens.Lens' CacheDetail CacheTTL
cacheDetail_ttl = Lens.lens (\CacheDetail' {ttl} -> ttl) (\s@CacheDetail' {} a -> s {ttl = a} :: CacheDetail)

-- | Number of tokens written to cache with this TTL (cache creation tokens)
cacheDetail_inputTokens :: Lens.Lens' CacheDetail Prelude.Natural
cacheDetail_inputTokens = Lens.lens (\CacheDetail' {inputTokens} -> inputTokens) (\s@CacheDetail' {} a -> s {inputTokens = a} :: CacheDetail)

instance Data.FromJSON CacheDetail where
  parseJSON =
    Data.withObject
      "CacheDetail"
      ( \x ->
          CacheDetail'
            Prelude.<$> (x Data..: "ttl")
            Prelude.<*> (x Data..: "inputTokens")
      )

instance Prelude.Hashable CacheDetail where
  hashWithSalt _salt CacheDetail' {..} =
    _salt
      `Prelude.hashWithSalt` ttl
      `Prelude.hashWithSalt` inputTokens

instance Prelude.NFData CacheDetail where
  rnf CacheDetail' {..} =
    Prelude.rnf ttl `Prelude.seq`
      Prelude.rnf inputTokens
