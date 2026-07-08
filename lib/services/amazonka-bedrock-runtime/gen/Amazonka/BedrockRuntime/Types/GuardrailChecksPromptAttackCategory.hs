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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackCategory
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackCategory
  ( GuardrailChecksPromptAttackCategory
      ( ..,
        GuardrailChecksPromptAttackCategory_JAILBREAK,
        GuardrailChecksPromptAttackCategory_PROMPT_INJECTION,
        GuardrailChecksPromptAttackCategory_PROMPT_LEAKAGE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The category for prompt attack evaluation.
newtype GuardrailChecksPromptAttackCategory = GuardrailChecksPromptAttackCategory'
  { fromGuardrailChecksPromptAttackCategory ::
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

pattern GuardrailChecksPromptAttackCategory_JAILBREAK :: GuardrailChecksPromptAttackCategory
pattern GuardrailChecksPromptAttackCategory_JAILBREAK = GuardrailChecksPromptAttackCategory' "JAILBREAK"

pattern GuardrailChecksPromptAttackCategory_PROMPT_INJECTION :: GuardrailChecksPromptAttackCategory
pattern GuardrailChecksPromptAttackCategory_PROMPT_INJECTION = GuardrailChecksPromptAttackCategory' "PROMPT_INJECTION"

pattern GuardrailChecksPromptAttackCategory_PROMPT_LEAKAGE :: GuardrailChecksPromptAttackCategory
pattern GuardrailChecksPromptAttackCategory_PROMPT_LEAKAGE = GuardrailChecksPromptAttackCategory' "PROMPT_LEAKAGE"

{-# COMPLETE
  GuardrailChecksPromptAttackCategory_JAILBREAK,
  GuardrailChecksPromptAttackCategory_PROMPT_INJECTION,
  GuardrailChecksPromptAttackCategory_PROMPT_LEAKAGE,
  GuardrailChecksPromptAttackCategory'
  #-}
