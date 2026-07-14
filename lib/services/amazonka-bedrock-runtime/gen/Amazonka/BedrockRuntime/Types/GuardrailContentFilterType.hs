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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailContentFilterType
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailContentFilterType
  ( GuardrailContentFilterType
      ( ..,
        GuardrailContentFilterType_HATE,
        GuardrailContentFilterType_INSULTS,
        GuardrailContentFilterType_MISCONDUCT,
        GuardrailContentFilterType_PROMPT_ATTACK,
        GuardrailContentFilterType_SEXUAL,
        GuardrailContentFilterType_VIOLENCE
      ),
  )
where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype GuardrailContentFilterType = GuardrailContentFilterType'
  { fromGuardrailContentFilterType ::
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

pattern GuardrailContentFilterType_HATE :: GuardrailContentFilterType
pattern GuardrailContentFilterType_HATE = GuardrailContentFilterType' "HATE"

pattern GuardrailContentFilterType_INSULTS :: GuardrailContentFilterType
pattern GuardrailContentFilterType_INSULTS = GuardrailContentFilterType' "INSULTS"

pattern GuardrailContentFilterType_MISCONDUCT :: GuardrailContentFilterType
pattern GuardrailContentFilterType_MISCONDUCT = GuardrailContentFilterType' "MISCONDUCT"

pattern GuardrailContentFilterType_PROMPT_ATTACK :: GuardrailContentFilterType
pattern GuardrailContentFilterType_PROMPT_ATTACK = GuardrailContentFilterType' "PROMPT_ATTACK"

pattern GuardrailContentFilterType_SEXUAL :: GuardrailContentFilterType
pattern GuardrailContentFilterType_SEXUAL = GuardrailContentFilterType' "SEXUAL"

pattern GuardrailContentFilterType_VIOLENCE :: GuardrailContentFilterType
pattern GuardrailContentFilterType_VIOLENCE = GuardrailContentFilterType' "VIOLENCE"

{-# COMPLETE
  GuardrailContentFilterType_HATE,
  GuardrailContentFilterType_INSULTS,
  GuardrailContentFilterType_MISCONDUCT,
  GuardrailContentFilterType_PROMPT_ATTACK,
  GuardrailContentFilterType_SEXUAL,
  GuardrailContentFilterType_VIOLENCE,
  GuardrailContentFilterType'
  #-}
