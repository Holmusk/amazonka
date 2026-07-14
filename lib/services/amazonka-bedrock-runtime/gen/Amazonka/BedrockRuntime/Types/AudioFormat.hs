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
-- Module      : Amazonka.BedrockRuntime.Types.AudioFormat
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.AudioFormat
  ( AudioFormat
      ( ..,
        AudioFormat_Aac,
        AudioFormat_Flac,
        AudioFormat_M4a,
        AudioFormat_Mka,
        AudioFormat_Mkv,
        AudioFormat_Mp3,
        AudioFormat_Mp4,
        AudioFormat_Mpeg,
        AudioFormat_Mpga,
        AudioFormat_Ogg,
        AudioFormat_Opus,
        AudioFormat_Pcm,
        AudioFormat_Wav,
        AudioFormat_Webm,
        AudioFormat_X_aac
      ),
  )
where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype AudioFormat = AudioFormat'
  { fromAudioFormat ::
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

pattern AudioFormat_Aac :: AudioFormat
pattern AudioFormat_Aac = AudioFormat' "aac"

pattern AudioFormat_Flac :: AudioFormat
pattern AudioFormat_Flac = AudioFormat' "flac"

pattern AudioFormat_M4a :: AudioFormat
pattern AudioFormat_M4a = AudioFormat' "m4a"

pattern AudioFormat_Mka :: AudioFormat
pattern AudioFormat_Mka = AudioFormat' "mka"

pattern AudioFormat_Mkv :: AudioFormat
pattern AudioFormat_Mkv = AudioFormat' "mkv"

pattern AudioFormat_Mp3 :: AudioFormat
pattern AudioFormat_Mp3 = AudioFormat' "mp3"

pattern AudioFormat_Mp4 :: AudioFormat
pattern AudioFormat_Mp4 = AudioFormat' "mp4"

pattern AudioFormat_Mpeg :: AudioFormat
pattern AudioFormat_Mpeg = AudioFormat' "mpeg"

pattern AudioFormat_Mpga :: AudioFormat
pattern AudioFormat_Mpga = AudioFormat' "mpga"

pattern AudioFormat_Ogg :: AudioFormat
pattern AudioFormat_Ogg = AudioFormat' "ogg"

pattern AudioFormat_Opus :: AudioFormat
pattern AudioFormat_Opus = AudioFormat' "opus"

pattern AudioFormat_Pcm :: AudioFormat
pattern AudioFormat_Pcm = AudioFormat' "pcm"

pattern AudioFormat_Wav :: AudioFormat
pattern AudioFormat_Wav = AudioFormat' "wav"

pattern AudioFormat_Webm :: AudioFormat
pattern AudioFormat_Webm = AudioFormat' "webm"

pattern AudioFormat_X_aac :: AudioFormat
pattern AudioFormat_X_aac = AudioFormat' "x-aac"

{-# COMPLETE
  AudioFormat_Aac,
  AudioFormat_Flac,
  AudioFormat_M4a,
  AudioFormat_Mka,
  AudioFormat_Mkv,
  AudioFormat_Mp3,
  AudioFormat_Mp4,
  AudioFormat_Mpeg,
  AudioFormat_Mpga,
  AudioFormat_Ogg,
  AudioFormat_Opus,
  AudioFormat_Pcm,
  AudioFormat_Wav,
  AudioFormat_Webm,
  AudioFormat_X_aac,
  AudioFormat'
  #-}
