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
-- Module      : Amazonka.BedrockRuntime.Types.VideoFormat
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.VideoFormat
  ( VideoFormat
      ( ..,
        VideoFormat_Flv,
        VideoFormat_Mkv,
        VideoFormat_Mov,
        VideoFormat_Mp4,
        VideoFormat_Mpeg,
        VideoFormat_Mpg,
        VideoFormat_Three_gp,
        VideoFormat_Webm,
        VideoFormat_Wmv
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype VideoFormat = VideoFormat'
  { fromVideoFormat ::
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

pattern VideoFormat_Flv :: VideoFormat
pattern VideoFormat_Flv = VideoFormat' "flv"

pattern VideoFormat_Mkv :: VideoFormat
pattern VideoFormat_Mkv = VideoFormat' "mkv"

pattern VideoFormat_Mov :: VideoFormat
pattern VideoFormat_Mov = VideoFormat' "mov"

pattern VideoFormat_Mp4 :: VideoFormat
pattern VideoFormat_Mp4 = VideoFormat' "mp4"

pattern VideoFormat_Mpeg :: VideoFormat
pattern VideoFormat_Mpeg = VideoFormat' "mpeg"

pattern VideoFormat_Mpg :: VideoFormat
pattern VideoFormat_Mpg = VideoFormat' "mpg"

pattern VideoFormat_Three_gp :: VideoFormat
pattern VideoFormat_Three_gp = VideoFormat' "three_gp"

pattern VideoFormat_Webm :: VideoFormat
pattern VideoFormat_Webm = VideoFormat' "webm"

pattern VideoFormat_Wmv :: VideoFormat
pattern VideoFormat_Wmv = VideoFormat' "wmv"

{-# COMPLETE
  VideoFormat_Flv,
  VideoFormat_Mkv,
  VideoFormat_Mov,
  VideoFormat_Mp4,
  VideoFormat_Mpeg,
  VideoFormat_Mpg,
  VideoFormat_Three_gp,
  VideoFormat_Webm,
  VideoFormat_Wmv,
  VideoFormat'
  #-}
