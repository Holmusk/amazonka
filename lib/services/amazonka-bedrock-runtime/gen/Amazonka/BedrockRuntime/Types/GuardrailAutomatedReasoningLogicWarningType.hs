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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningLogicWarningType
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningLogicWarningType
  ( GuardrailAutomatedReasoningLogicWarningType
      ( ..,
        GuardrailAutomatedReasoningLogicWarningType_ALWAYS_FALSE,
        GuardrailAutomatedReasoningLogicWarningType_ALWAYS_TRUE
      ),
  )
where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype GuardrailAutomatedReasoningLogicWarningType = GuardrailAutomatedReasoningLogicWarningType'
  { fromGuardrailAutomatedReasoningLogicWarningType ::
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

pattern GuardrailAutomatedReasoningLogicWarningType_ALWAYS_FALSE :: GuardrailAutomatedReasoningLogicWarningType
pattern GuardrailAutomatedReasoningLogicWarningType_ALWAYS_FALSE = GuardrailAutomatedReasoningLogicWarningType' "ALWAYS_FALSE"

pattern GuardrailAutomatedReasoningLogicWarningType_ALWAYS_TRUE :: GuardrailAutomatedReasoningLogicWarningType
pattern GuardrailAutomatedReasoningLogicWarningType_ALWAYS_TRUE = GuardrailAutomatedReasoningLogicWarningType' "ALWAYS_TRUE"

{-# COMPLETE
  GuardrailAutomatedReasoningLogicWarningType_ALWAYS_FALSE,
  GuardrailAutomatedReasoningLogicWarningType_ALWAYS_TRUE,
  GuardrailAutomatedReasoningLogicWarningType'
  #-}
