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
-- Module      : Amazonka.BedrockRuntime.Types.SearchResultBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.SearchResultBlock where

import Amazonka.BedrockRuntime.Types.CitationsConfig
import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.SearchResultContentBlock
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A search result block that enables natural citations with proper source
-- attribution for retrieved content.
--
-- This field is only supported by Anthropic Claude Opus 4.1, Opus 4,
-- Sonnet 4.5, Sonnet 4, Sonnet 3.7, and 3.5 Haiku models.
--
-- /See:/ 'newSearchResultBlock' smart constructor.
data SearchResultBlock = SearchResultBlock'
  { -- | Configuration setting for citations
    citations :: Prelude.Maybe CitationsConfig,
    -- | The source URL or identifier for the content.
    source :: Prelude.Text,
    -- | A descriptive title for the search result.
    title :: Prelude.Text,
    -- | An array of search result content block.
    content :: [SearchResultContentBlock]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchResultBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'citations', 'searchResultBlock_citations' - Configuration setting for citations
--
-- 'source', 'searchResultBlock_source' - The source URL or identifier for the content.
--
-- 'title', 'searchResultBlock_title' - A descriptive title for the search result.
--
-- 'content', 'searchResultBlock_content' - An array of search result content block.
newSearchResultBlock ::
  -- | 'source'
  Prelude.Text ->
  -- | 'title'
  Prelude.Text ->
  SearchResultBlock
newSearchResultBlock pSource_ pTitle_ =
  SearchResultBlock'
    { citations = Prelude.Nothing,
      source = pSource_,
      title = pTitle_,
      content = Prelude.mempty
    }

-- | Configuration setting for citations
searchResultBlock_citations :: Lens.Lens' SearchResultBlock (Prelude.Maybe CitationsConfig)
searchResultBlock_citations = Lens.lens (\SearchResultBlock' {citations} -> citations) (\s@SearchResultBlock' {} a -> s {citations = a} :: SearchResultBlock)

-- | The source URL or identifier for the content.
searchResultBlock_source :: Lens.Lens' SearchResultBlock Prelude.Text
searchResultBlock_source = Lens.lens (\SearchResultBlock' {source} -> source) (\s@SearchResultBlock' {} a -> s {source = a} :: SearchResultBlock)

-- | A descriptive title for the search result.
searchResultBlock_title :: Lens.Lens' SearchResultBlock Prelude.Text
searchResultBlock_title = Lens.lens (\SearchResultBlock' {title} -> title) (\s@SearchResultBlock' {} a -> s {title = a} :: SearchResultBlock)

-- | An array of search result content block.
searchResultBlock_content :: Lens.Lens' SearchResultBlock [SearchResultContentBlock]
searchResultBlock_content = Lens.lens (\SearchResultBlock' {content} -> content) (\s@SearchResultBlock' {} a -> s {content = a} :: SearchResultBlock) Prelude.. Lens.coerced

instance Data.FromJSON SearchResultBlock where
  parseJSON =
    Data.withObject
      "SearchResultBlock"
      ( \x ->
          SearchResultBlock'
            Prelude.<$> (x Data..:? "citations")
            Prelude.<*> (x Data..: "source")
            Prelude.<*> (x Data..: "title")
            Prelude.<*> (x Data..:? "content" Data..!= Prelude.mempty)
      )

instance Prelude.Hashable SearchResultBlock where
  hashWithSalt _salt SearchResultBlock' {..} =
    _salt
      `Prelude.hashWithSalt` citations
      `Prelude.hashWithSalt` source
      `Prelude.hashWithSalt` title
      `Prelude.hashWithSalt` content

instance Prelude.NFData SearchResultBlock where
  rnf SearchResultBlock' {..} =
    Prelude.rnf citations `Prelude.seq`
      Prelude.rnf source `Prelude.seq`
        Prelude.rnf title `Prelude.seq`
          Prelude.rnf content

instance Data.ToJSON SearchResultBlock where
  toJSON SearchResultBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("citations" Data..=) Prelude.<$> citations,
            Prelude.Just ("source" Data..= source),
            Prelude.Just ("title" Data..= title),
            Prelude.Just ("content" Data..= content)
          ]
      )
