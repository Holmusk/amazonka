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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailContentQualifier
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailContentQualifier
  ( GuardrailContentQualifier
      ( ..,
        GuardrailContentQualifier_Grounding_source,
        GuardrailContentQualifier_Guard_content,
        GuardrailContentQualifier_Query
      ),
  )
where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype GuardrailContentQualifier = GuardrailContentQualifier'
  { fromGuardrailContentQualifier ::
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

pattern GuardrailContentQualifier_Grounding_source :: GuardrailContentQualifier
pattern GuardrailContentQualifier_Grounding_source = GuardrailContentQualifier' "grounding_source"

pattern GuardrailContentQualifier_Guard_content :: GuardrailContentQualifier
pattern GuardrailContentQualifier_Guard_content = GuardrailContentQualifier' "guard_content"

pattern GuardrailContentQualifier_Query :: GuardrailContentQualifier
pattern GuardrailContentQualifier_Query = GuardrailContentQualifier' "query"

{-# COMPLETE
  GuardrailContentQualifier_Grounding_source,
  GuardrailContentQualifier_Guard_content,
  GuardrailContentQualifier_Query,
  GuardrailContentQualifier'
  #-}
