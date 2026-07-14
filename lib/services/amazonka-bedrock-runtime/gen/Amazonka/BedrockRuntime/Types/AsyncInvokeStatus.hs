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
-- Module      : Amazonka.BedrockRuntime.Types.AsyncInvokeStatus
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.AsyncInvokeStatus
  ( AsyncInvokeStatus
      ( ..,
        AsyncInvokeStatus_Completed,
        AsyncInvokeStatus_Failed,
        AsyncInvokeStatus_InProgress
      ),
  )
where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype AsyncInvokeStatus = AsyncInvokeStatus'
  { fromAsyncInvokeStatus ::
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

pattern AsyncInvokeStatus_Completed :: AsyncInvokeStatus
pattern AsyncInvokeStatus_Completed = AsyncInvokeStatus' "Completed"

pattern AsyncInvokeStatus_Failed :: AsyncInvokeStatus
pattern AsyncInvokeStatus_Failed = AsyncInvokeStatus' "Failed"

pattern AsyncInvokeStatus_InProgress :: AsyncInvokeStatus
pattern AsyncInvokeStatus_InProgress = AsyncInvokeStatus' "InProgress"

{-# COMPLETE
  AsyncInvokeStatus_Completed,
  AsyncInvokeStatus_Failed,
  AsyncInvokeStatus_InProgress,
  AsyncInvokeStatus'
  #-}
