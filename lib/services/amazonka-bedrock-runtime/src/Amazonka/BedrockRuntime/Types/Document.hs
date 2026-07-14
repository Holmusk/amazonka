{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE NoImplicitPrelude #-}

-- |
-- Module      : Amazonka.BedrockRuntime.Types.Document
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Hand-written replacement for the @Document@ shape (arbitrary JSON
-- content: tool input schemas, @toolUse.input@,
-- @additionalModelRequestFields@, ...). The generator renders @document@
-- shapes as empty records, silently dropping JSON content, so this type
-- is substituted via the @replacedBy@ override in
-- @configs\/services\/bedrock-runtime.json@ instead (same mechanism as
-- @AttributeValue@ in amazonka-dynamodb).
module Amazonka.BedrockRuntime.Types.Document
  ( Document (..),
    newDocument,
  )
where

import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Data.Aeson as Aeson

-- | Arbitrary JSON content.
--
-- /See:/ 'newDocument' smart constructor.
newtype Document = Document'
  { value :: Aeson.Value
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Document' from arbitrary JSON.
newDocument ::
  Aeson.Value ->
  Document
newDocument = Document'

instance Data.FromJSON Document where
  parseJSON = Prelude.pure Prelude.. Document'

instance Prelude.Hashable Document where
  hashWithSalt _salt (Document' v) =
    _salt `Prelude.hashWithSalt` v

instance Prelude.NFData Document where
  rnf (Document' v) = Prelude.rnf v

instance Data.ToJSON Document where
  toJSON (Document' v) = v
