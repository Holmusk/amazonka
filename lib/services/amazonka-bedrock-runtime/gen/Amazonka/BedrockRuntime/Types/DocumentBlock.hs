{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.BedrockRuntime.Types.DocumentBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.DocumentBlock where

import Amazonka.BedrockRuntime.Types.CitationsConfig
import Amazonka.BedrockRuntime.Types.DocumentFormat
import Amazonka.BedrockRuntime.Types.DocumentSource
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A document to include in a message.
--
-- /See:/ 'newDocumentBlock' smart constructor.
data DocumentBlock = DocumentBlock'
  { -- | Configuration settings that control how citations should be generated
    -- for this specific document.
    citations :: Prelude.Maybe CitationsConfig,
    -- | Contextual information about how the document should be processed or
    -- interpreted by the model when generating citations.
    context :: Prelude.Maybe Prelude.Text,
    -- | The format of a document, or its extension.
    format :: Prelude.Maybe DocumentFormat,
    -- | A name for the document. The name can only contain the following
    -- characters:
    --
    -- -   Alphanumeric characters
    --
    -- -   Whitespace characters (no more than one in a row)
    --
    -- -   Hyphens
    --
    -- -   Parentheses
    --
    -- -   Square brackets
    --
    -- This field is vulnerable to prompt injections, because the model might
    -- inadvertently interpret it as instructions. Therefore, we recommend that
    -- you specify a neutral name.
    name :: Prelude.Text,
    -- | Contains the content of the document.
    source :: DocumentSource
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DocumentBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'citations', 'documentBlock_citations' - Configuration settings that control how citations should be generated
-- for this specific document.
--
-- 'context', 'documentBlock_context' - Contextual information about how the document should be processed or
-- interpreted by the model when generating citations.
--
-- 'format', 'documentBlock_format' - The format of a document, or its extension.
--
-- 'name', 'documentBlock_name' - A name for the document. The name can only contain the following
-- characters:
--
-- -   Alphanumeric characters
--
-- -   Whitespace characters (no more than one in a row)
--
-- -   Hyphens
--
-- -   Parentheses
--
-- -   Square brackets
--
-- This field is vulnerable to prompt injections, because the model might
-- inadvertently interpret it as instructions. Therefore, we recommend that
-- you specify a neutral name.
--
-- 'source', 'documentBlock_source' - Contains the content of the document.
newDocumentBlock ::
  -- | 'name'
  Prelude.Text ->
  -- | 'source'
  DocumentSource ->
  DocumentBlock
newDocumentBlock pName_ pSource_ =
  DocumentBlock'
    { citations = Prelude.Nothing,
      context = Prelude.Nothing,
      format = Prelude.Nothing,
      name = pName_,
      source = pSource_
    }

-- | Configuration settings that control how citations should be generated
-- for this specific document.
documentBlock_citations :: Lens.Lens' DocumentBlock (Prelude.Maybe CitationsConfig)
documentBlock_citations = Lens.lens (\DocumentBlock' {citations} -> citations) (\s@DocumentBlock' {} a -> s {citations = a} :: DocumentBlock)

-- | Contextual information about how the document should be processed or
-- interpreted by the model when generating citations.
documentBlock_context :: Lens.Lens' DocumentBlock (Prelude.Maybe Prelude.Text)
documentBlock_context = Lens.lens (\DocumentBlock' {context} -> context) (\s@DocumentBlock' {} a -> s {context = a} :: DocumentBlock)

-- | The format of a document, or its extension.
documentBlock_format :: Lens.Lens' DocumentBlock (Prelude.Maybe DocumentFormat)
documentBlock_format = Lens.lens (\DocumentBlock' {format} -> format) (\s@DocumentBlock' {} a -> s {format = a} :: DocumentBlock)

-- | A name for the document. The name can only contain the following
-- characters:
--
-- -   Alphanumeric characters
--
-- -   Whitespace characters (no more than one in a row)
--
-- -   Hyphens
--
-- -   Parentheses
--
-- -   Square brackets
--
-- This field is vulnerable to prompt injections, because the model might
-- inadvertently interpret it as instructions. Therefore, we recommend that
-- you specify a neutral name.
documentBlock_name :: Lens.Lens' DocumentBlock Prelude.Text
documentBlock_name = Lens.lens (\DocumentBlock' {name} -> name) (\s@DocumentBlock' {} a -> s {name = a} :: DocumentBlock)

-- | Contains the content of the document.
documentBlock_source :: Lens.Lens' DocumentBlock DocumentSource
documentBlock_source = Lens.lens (\DocumentBlock' {source} -> source) (\s@DocumentBlock' {} a -> s {source = a} :: DocumentBlock)

instance Data.FromJSON DocumentBlock where
  parseJSON =
    Data.withObject
      "DocumentBlock"
      ( \x ->
          DocumentBlock'
            Prelude.<$> (x Data..:? "citations")
            Prelude.<*> (x Data..:? "context")
            Prelude.<*> (x Data..:? "format")
            Prelude.<*> (x Data..: "name")
            Prelude.<*> (x Data..: "source")
      )

instance Prelude.Hashable DocumentBlock where
  hashWithSalt _salt DocumentBlock' {..} =
    _salt
      `Prelude.hashWithSalt` citations
      `Prelude.hashWithSalt` context
      `Prelude.hashWithSalt` format
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` source

instance Prelude.NFData DocumentBlock where
  rnf DocumentBlock' {..} =
    Prelude.rnf citations `Prelude.seq`
      Prelude.rnf context `Prelude.seq`
        Prelude.rnf format `Prelude.seq`
          Prelude.rnf name `Prelude.seq`
            Prelude.rnf source

instance Data.ToJSON DocumentBlock where
  toJSON DocumentBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("citations" Data..=) Prelude.<$> citations,
            ("context" Data..=) Prelude.<$> context,
            ("format" Data..=) Prelude.<$> format,
            Prelude.Just ("name" Data..= name),
            Prelude.Just ("source" Data..= source)
          ]
      )
