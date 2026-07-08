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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailTrace
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailTrace
  ( GuardrailTrace
      ( ..,
        GuardrailTrace_Disabled,
        GuardrailTrace_Enabled,
        GuardrailTrace_Enabled_full
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype GuardrailTrace = GuardrailTrace'
  { fromGuardrailTrace ::
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

pattern GuardrailTrace_Disabled :: GuardrailTrace
pattern GuardrailTrace_Disabled = GuardrailTrace' "disabled"

pattern GuardrailTrace_Enabled :: GuardrailTrace
pattern GuardrailTrace_Enabled = GuardrailTrace' "enabled"

pattern GuardrailTrace_Enabled_full :: GuardrailTrace
pattern GuardrailTrace_Enabled_full = GuardrailTrace' "enabled_full"

{-# COMPLETE
  GuardrailTrace_Disabled,
  GuardrailTrace_Enabled,
  GuardrailTrace_Enabled_full,
  GuardrailTrace'
  #-}
