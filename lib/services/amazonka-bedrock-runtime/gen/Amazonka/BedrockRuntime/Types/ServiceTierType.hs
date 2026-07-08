{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.BedrockRuntime.Types.ServiceTierType
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ServiceTierType
  ( ServiceTierType
      ( ..,
        ServiceTierType_Default,
        ServiceTierType_Flex,
        ServiceTierType_Priority,
        ServiceTierType_Reserved
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype ServiceTierType = ServiceTierType'
  { fromServiceTierType ::
      Data.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern ServiceTierType_Default :: ServiceTierType
pattern ServiceTierType_Default = ServiceTierType' "default"

pattern ServiceTierType_Flex :: ServiceTierType
pattern ServiceTierType_Flex = ServiceTierType' "flex"

pattern ServiceTierType_Priority :: ServiceTierType
pattern ServiceTierType_Priority = ServiceTierType' "priority"

pattern ServiceTierType_Reserved :: ServiceTierType
pattern ServiceTierType_Reserved = ServiceTierType' "reserved"

{-# COMPLETE
  ServiceTierType_Default,
  ServiceTierType_Flex,
  ServiceTierType_Priority,
  ServiceTierType_Reserved,
  ServiceTierType'
  #-}
