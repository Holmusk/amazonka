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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksRole
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksRole
  ( GuardrailChecksRole
      ( ..,
        GuardrailChecksRole_Assistant,
        GuardrailChecksRole_System,
        GuardrailChecksRole_User
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The role of the message sender in the conversation.
newtype GuardrailChecksRole = GuardrailChecksRole'
  { fromGuardrailChecksRole ::
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

pattern GuardrailChecksRole_Assistant :: GuardrailChecksRole
pattern GuardrailChecksRole_Assistant = GuardrailChecksRole' "assistant"

pattern GuardrailChecksRole_System :: GuardrailChecksRole
pattern GuardrailChecksRole_System = GuardrailChecksRole' "system"

pattern GuardrailChecksRole_User :: GuardrailChecksRole
pattern GuardrailChecksRole_User = GuardrailChecksRole' "user"

{-# COMPLETE
  GuardrailChecksRole_Assistant,
  GuardrailChecksRole_System,
  GuardrailChecksRole_User,
  GuardrailChecksRole'
  #-}
