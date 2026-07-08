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
-- Module      : Amazonka.BedrockRuntime.Types.ServiceTier
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ServiceTier where

import Amazonka.BedrockRuntime.Types.ServiceTierType
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Specifies the processing tier configuration used for serving the
-- request.
--
-- /See:/ 'newServiceTier' smart constructor.
data ServiceTier = ServiceTier'
  { -- | Specifies the processing tier type used for serving the request.
    type' :: ServiceTierType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ServiceTier' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'serviceTier_type' - Specifies the processing tier type used for serving the request.
newServiceTier ::
  -- | 'type''
  ServiceTierType ->
  ServiceTier
newServiceTier pType_ = ServiceTier' {type' = pType_}

-- | Specifies the processing tier type used for serving the request.
serviceTier_type :: Lens.Lens' ServiceTier ServiceTierType
serviceTier_type = Lens.lens (\ServiceTier' {type'} -> type') (\s@ServiceTier' {} a -> s {type' = a} :: ServiceTier)

instance Data.FromJSON ServiceTier where
  parseJSON =
    Data.withObject
      "ServiceTier"
      (\x -> ServiceTier' Prelude.<$> (x Data..: "type"))

instance Prelude.Hashable ServiceTier where
  hashWithSalt _salt ServiceTier' {..} =
    _salt `Prelude.hashWithSalt` type'

instance Prelude.NFData ServiceTier where
  rnf ServiceTier' {..} = Prelude.rnf type'

instance Data.ToJSON ServiceTier where
  toJSON ServiceTier' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("type" Data..= type')]
      )
