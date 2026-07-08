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
-- Module      : Amazonka.BedrockRuntime.Types.DocumentFormat
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.DocumentFormat
  ( DocumentFormat
      ( ..,
        DocumentFormat_Csv,
        DocumentFormat_Doc,
        DocumentFormat_Docx,
        DocumentFormat_Html,
        DocumentFormat_Md,
        DocumentFormat_Pdf,
        DocumentFormat_Txt,
        DocumentFormat_Xls,
        DocumentFormat_Xlsx
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype DocumentFormat = DocumentFormat'
  { fromDocumentFormat ::
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

pattern DocumentFormat_Csv :: DocumentFormat
pattern DocumentFormat_Csv = DocumentFormat' "csv"

pattern DocumentFormat_Doc :: DocumentFormat
pattern DocumentFormat_Doc = DocumentFormat' "doc"

pattern DocumentFormat_Docx :: DocumentFormat
pattern DocumentFormat_Docx = DocumentFormat' "docx"

pattern DocumentFormat_Html :: DocumentFormat
pattern DocumentFormat_Html = DocumentFormat' "html"

pattern DocumentFormat_Md :: DocumentFormat
pattern DocumentFormat_Md = DocumentFormat' "md"

pattern DocumentFormat_Pdf :: DocumentFormat
pattern DocumentFormat_Pdf = DocumentFormat' "pdf"

pattern DocumentFormat_Txt :: DocumentFormat
pattern DocumentFormat_Txt = DocumentFormat' "txt"

pattern DocumentFormat_Xls :: DocumentFormat
pattern DocumentFormat_Xls = DocumentFormat' "xls"

pattern DocumentFormat_Xlsx :: DocumentFormat
pattern DocumentFormat_Xlsx = DocumentFormat' "xlsx"

{-# COMPLETE
  DocumentFormat_Csv,
  DocumentFormat_Doc,
  DocumentFormat_Docx,
  DocumentFormat_Html,
  DocumentFormat_Md,
  DocumentFormat_Pdf,
  DocumentFormat_Txt,
  DocumentFormat_Xls,
  DocumentFormat_Xlsx,
  DocumentFormat'
  #-}
