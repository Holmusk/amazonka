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
-- Module      : Amazonka.BedrockRuntime.Types.CachePointBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.CachePointBlock where

import Amazonka.BedrockRuntime.Types.CachePointType
import Amazonka.BedrockRuntime.Types.CacheTTL
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Defines a section of content to be cached for reuse in subsequent API
-- calls.
--
-- /See:/ 'newCachePointBlock' smart constructor.
data CachePointBlock = CachePointBlock'
  { -- | Optional TTL duration for cache entries. When specified, enables
    -- extended TTL caching with the specified duration. When omitted, uses
    -- @type@ value for caching behavior.
    ttl :: Prelude.Maybe CacheTTL,
    -- | Specifies the type of cache point within the CachePointBlock.
    type' :: CachePointType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CachePointBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ttl', 'cachePointBlock_ttl' - Optional TTL duration for cache entries. When specified, enables
-- extended TTL caching with the specified duration. When omitted, uses
-- @type@ value for caching behavior.
--
-- 'type'', 'cachePointBlock_type' - Specifies the type of cache point within the CachePointBlock.
newCachePointBlock ::
  -- | 'type''
  CachePointType ->
  CachePointBlock
newCachePointBlock pType_ =
  CachePointBlock'
    { ttl = Prelude.Nothing,
      type' = pType_
    }

-- | Optional TTL duration for cache entries. When specified, enables
-- extended TTL caching with the specified duration. When omitted, uses
-- @type@ value for caching behavior.
cachePointBlock_ttl :: Lens.Lens' CachePointBlock (Prelude.Maybe CacheTTL)
cachePointBlock_ttl = Lens.lens (\CachePointBlock' {ttl} -> ttl) (\s@CachePointBlock' {} a -> s {ttl = a} :: CachePointBlock)

-- | Specifies the type of cache point within the CachePointBlock.
cachePointBlock_type :: Lens.Lens' CachePointBlock CachePointType
cachePointBlock_type = Lens.lens (\CachePointBlock' {type'} -> type') (\s@CachePointBlock' {} a -> s {type' = a} :: CachePointBlock)

instance Data.FromJSON CachePointBlock where
  parseJSON =
    Data.withObject
      "CachePointBlock"
      ( \x ->
          CachePointBlock'
            Prelude.<$> (x Data..:? "ttl")
            Prelude.<*> (x Data..: "type")
      )

instance Prelude.Hashable CachePointBlock where
  hashWithSalt _salt CachePointBlock' {..} =
    _salt
      `Prelude.hashWithSalt` ttl
      `Prelude.hashWithSalt` type'

instance Prelude.NFData CachePointBlock where
  rnf CachePointBlock' {..} =
    Prelude.rnf ttl `Prelude.seq` Prelude.rnf type'

instance Data.ToJSON CachePointBlock where
  toJSON CachePointBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("ttl" Data..=) Prelude.<$> ttl,
            Prelude.Just ("type" Data..= type')
          ]
      )
