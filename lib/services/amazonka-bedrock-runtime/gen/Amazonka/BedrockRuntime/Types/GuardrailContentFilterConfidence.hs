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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailContentFilterConfidence
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailContentFilterConfidence
  ( GuardrailContentFilterConfidence
      ( ..,
        GuardrailContentFilterConfidence_HIGH,
        GuardrailContentFilterConfidence_LOW,
        GuardrailContentFilterConfidence_MEDIUM,
        GuardrailContentFilterConfidence_NONE
      ),
  )
where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype GuardrailContentFilterConfidence = GuardrailContentFilterConfidence'
  { fromGuardrailContentFilterConfidence ::
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

pattern GuardrailContentFilterConfidence_HIGH :: GuardrailContentFilterConfidence
pattern GuardrailContentFilterConfidence_HIGH = GuardrailContentFilterConfidence' "HIGH"

pattern GuardrailContentFilterConfidence_LOW :: GuardrailContentFilterConfidence
pattern GuardrailContentFilterConfidence_LOW = GuardrailContentFilterConfidence' "LOW"

pattern GuardrailContentFilterConfidence_MEDIUM :: GuardrailContentFilterConfidence
pattern GuardrailContentFilterConfidence_MEDIUM = GuardrailContentFilterConfidence' "MEDIUM"

pattern GuardrailContentFilterConfidence_NONE :: GuardrailContentFilterConfidence
pattern GuardrailContentFilterConfidence_NONE = GuardrailContentFilterConfidence' "NONE"

{-# COMPLETE
  GuardrailContentFilterConfidence_HIGH,
  GuardrailContentFilterConfidence_LOW,
  GuardrailContentFilterConfidence_MEDIUM,
  GuardrailContentFilterConfidence_NONE,
  GuardrailContentFilterConfidence'
  #-}
