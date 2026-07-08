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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterCategory
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterCategory
  ( GuardrailChecksContentFilterCategory
      ( ..,
        GuardrailChecksContentFilterCategory_HATE,
        GuardrailChecksContentFilterCategory_INSULTS,
        GuardrailChecksContentFilterCategory_MISCONDUCT,
        GuardrailChecksContentFilterCategory_SEXUAL,
        GuardrailChecksContentFilterCategory_VIOLENCE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The category for content filter evaluation.
newtype GuardrailChecksContentFilterCategory = GuardrailChecksContentFilterCategory'
  { fromGuardrailChecksContentFilterCategory ::
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

pattern GuardrailChecksContentFilterCategory_HATE :: GuardrailChecksContentFilterCategory
pattern GuardrailChecksContentFilterCategory_HATE = GuardrailChecksContentFilterCategory' "HATE"

pattern GuardrailChecksContentFilterCategory_INSULTS :: GuardrailChecksContentFilterCategory
pattern GuardrailChecksContentFilterCategory_INSULTS = GuardrailChecksContentFilterCategory' "INSULTS"

pattern GuardrailChecksContentFilterCategory_MISCONDUCT :: GuardrailChecksContentFilterCategory
pattern GuardrailChecksContentFilterCategory_MISCONDUCT = GuardrailChecksContentFilterCategory' "MISCONDUCT"

pattern GuardrailChecksContentFilterCategory_SEXUAL :: GuardrailChecksContentFilterCategory
pattern GuardrailChecksContentFilterCategory_SEXUAL = GuardrailChecksContentFilterCategory' "SEXUAL"

pattern GuardrailChecksContentFilterCategory_VIOLENCE :: GuardrailChecksContentFilterCategory
pattern GuardrailChecksContentFilterCategory_VIOLENCE = GuardrailChecksContentFilterCategory' "VIOLENCE"

{-# COMPLETE
  GuardrailChecksContentFilterCategory_HATE,
  GuardrailChecksContentFilterCategory_INSULTS,
  GuardrailChecksContentFilterCategory_MISCONDUCT,
  GuardrailChecksContentFilterCategory_SEXUAL,
  GuardrailChecksContentFilterCategory_VIOLENCE,
  GuardrailChecksContentFilterCategory'
  #-}
