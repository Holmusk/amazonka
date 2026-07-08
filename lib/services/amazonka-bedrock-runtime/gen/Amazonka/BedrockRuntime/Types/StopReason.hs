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
-- Module      : Amazonka.BedrockRuntime.Types.StopReason
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.StopReason
  ( StopReason
      ( ..,
        StopReason_Content_filtered,
        StopReason_End_turn,
        StopReason_Guardrail_intervened,
        StopReason_Malformed_model_output,
        StopReason_Malformed_tool_use,
        StopReason_Max_tokens,
        StopReason_Model_context_window_exceeded,
        StopReason_Stop_sequence,
        StopReason_Tool_use
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype StopReason = StopReason'
  { fromStopReason ::
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

pattern StopReason_Content_filtered :: StopReason
pattern StopReason_Content_filtered = StopReason' "content_filtered"

pattern StopReason_End_turn :: StopReason
pattern StopReason_End_turn = StopReason' "end_turn"

pattern StopReason_Guardrail_intervened :: StopReason
pattern StopReason_Guardrail_intervened = StopReason' "guardrail_intervened"

pattern StopReason_Malformed_model_output :: StopReason
pattern StopReason_Malformed_model_output = StopReason' "malformed_model_output"

pattern StopReason_Malformed_tool_use :: StopReason
pattern StopReason_Malformed_tool_use = StopReason' "malformed_tool_use"

pattern StopReason_Max_tokens :: StopReason
pattern StopReason_Max_tokens = StopReason' "max_tokens"

pattern StopReason_Model_context_window_exceeded :: StopReason
pattern StopReason_Model_context_window_exceeded = StopReason' "model_context_window_exceeded"

pattern StopReason_Stop_sequence :: StopReason
pattern StopReason_Stop_sequence = StopReason' "stop_sequence"

pattern StopReason_Tool_use :: StopReason
pattern StopReason_Tool_use = StopReason' "tool_use"

{-# COMPLETE
  StopReason_Content_filtered,
  StopReason_End_turn,
  StopReason_Guardrail_intervened,
  StopReason_Malformed_model_output,
  StopReason_Malformed_tool_use,
  StopReason_Max_tokens,
  StopReason_Model_context_window_exceeded,
  StopReason_Stop_sequence,
  StopReason_Tool_use,
  StopReason'
  #-}
