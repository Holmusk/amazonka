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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailContentFilterStrength
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailContentFilterStrength
  ( GuardrailContentFilterStrength
      ( ..,
        GuardrailContentFilterStrength_HIGH,
        GuardrailContentFilterStrength_LOW,
        GuardrailContentFilterStrength_MEDIUM,
        GuardrailContentFilterStrength_NONE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype GuardrailContentFilterStrength = GuardrailContentFilterStrength'
  { fromGuardrailContentFilterStrength ::
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

pattern GuardrailContentFilterStrength_HIGH :: GuardrailContentFilterStrength
pattern GuardrailContentFilterStrength_HIGH = GuardrailContentFilterStrength' "HIGH"

pattern GuardrailContentFilterStrength_LOW :: GuardrailContentFilterStrength
pattern GuardrailContentFilterStrength_LOW = GuardrailContentFilterStrength' "LOW"

pattern GuardrailContentFilterStrength_MEDIUM :: GuardrailContentFilterStrength
pattern GuardrailContentFilterStrength_MEDIUM = GuardrailContentFilterStrength' "MEDIUM"

pattern GuardrailContentFilterStrength_NONE :: GuardrailContentFilterStrength
pattern GuardrailContentFilterStrength_NONE = GuardrailContentFilterStrength' "NONE"

{-# COMPLETE
  GuardrailContentFilterStrength_HIGH,
  GuardrailContentFilterStrength_LOW,
  GuardrailContentFilterStrength_MEDIUM,
  GuardrailContentFilterStrength_NONE,
  GuardrailContentFilterStrength'
  #-}
