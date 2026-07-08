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
-- Module      : Amazonka.BedrockRuntime.Types.CitationLocation
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.CitationLocation where

import Amazonka.BedrockRuntime.Types.DocumentCharLocation
import Amazonka.BedrockRuntime.Types.DocumentChunkLocation
import Amazonka.BedrockRuntime.Types.DocumentPageLocation
import Amazonka.BedrockRuntime.Types.SearchResultLocation
import Amazonka.BedrockRuntime.Types.WebLocation
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Specifies the precise location within a source document where cited
-- content can be found. This can include character-level positions, page
-- numbers, or document chunks depending on the document type and indexing
-- method.
--
-- /See:/ 'newCitationLocation' smart constructor.
data CitationLocation = CitationLocation'
  { -- | The character-level location within the document where the cited content
    -- is found.
    documentChar :: Prelude.Maybe DocumentCharLocation,
    -- | The chunk-level location within the document where the cited content is
    -- found, typically used for documents that have been segmented into
    -- logical chunks.
    documentChunk :: Prelude.Maybe DocumentChunkLocation,
    -- | The page-level location within the document where the cited content is
    -- found.
    documentPage :: Prelude.Maybe DocumentPageLocation,
    -- | The search result location where the cited content is found, including
    -- the search result index and block positions within the content array.
    searchResultLocation :: Prelude.Maybe SearchResultLocation,
    -- | The web URL that was cited for this reference.
    web :: Prelude.Maybe WebLocation
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CitationLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'documentChar', 'citationLocation_documentChar' - The character-level location within the document where the cited content
-- is found.
--
-- 'documentChunk', 'citationLocation_documentChunk' - The chunk-level location within the document where the cited content is
-- found, typically used for documents that have been segmented into
-- logical chunks.
--
-- 'documentPage', 'citationLocation_documentPage' - The page-level location within the document where the cited content is
-- found.
--
-- 'searchResultLocation', 'citationLocation_searchResultLocation' - The search result location where the cited content is found, including
-- the search result index and block positions within the content array.
--
-- 'web', 'citationLocation_web' - The web URL that was cited for this reference.
newCitationLocation ::
  CitationLocation
newCitationLocation =
  CitationLocation'
    { documentChar = Prelude.Nothing,
      documentChunk = Prelude.Nothing,
      documentPage = Prelude.Nothing,
      searchResultLocation = Prelude.Nothing,
      web = Prelude.Nothing
    }

-- | The character-level location within the document where the cited content
-- is found.
citationLocation_documentChar :: Lens.Lens' CitationLocation (Prelude.Maybe DocumentCharLocation)
citationLocation_documentChar = Lens.lens (\CitationLocation' {documentChar} -> documentChar) (\s@CitationLocation' {} a -> s {documentChar = a} :: CitationLocation)

-- | The chunk-level location within the document where the cited content is
-- found, typically used for documents that have been segmented into
-- logical chunks.
citationLocation_documentChunk :: Lens.Lens' CitationLocation (Prelude.Maybe DocumentChunkLocation)
citationLocation_documentChunk = Lens.lens (\CitationLocation' {documentChunk} -> documentChunk) (\s@CitationLocation' {} a -> s {documentChunk = a} :: CitationLocation)

-- | The page-level location within the document where the cited content is
-- found.
citationLocation_documentPage :: Lens.Lens' CitationLocation (Prelude.Maybe DocumentPageLocation)
citationLocation_documentPage = Lens.lens (\CitationLocation' {documentPage} -> documentPage) (\s@CitationLocation' {} a -> s {documentPage = a} :: CitationLocation)

-- | The search result location where the cited content is found, including
-- the search result index and block positions within the content array.
citationLocation_searchResultLocation :: Lens.Lens' CitationLocation (Prelude.Maybe SearchResultLocation)
citationLocation_searchResultLocation = Lens.lens (\CitationLocation' {searchResultLocation} -> searchResultLocation) (\s@CitationLocation' {} a -> s {searchResultLocation = a} :: CitationLocation)

-- | The web URL that was cited for this reference.
citationLocation_web :: Lens.Lens' CitationLocation (Prelude.Maybe WebLocation)
citationLocation_web = Lens.lens (\CitationLocation' {web} -> web) (\s@CitationLocation' {} a -> s {web = a} :: CitationLocation)

instance Data.FromJSON CitationLocation where
  parseJSON =
    Data.withObject
      "CitationLocation"
      ( \x ->
          CitationLocation'
            Prelude.<$> (x Data..:? "documentChar")
            Prelude.<*> (x Data..:? "documentChunk")
            Prelude.<*> (x Data..:? "documentPage")
            Prelude.<*> (x Data..:? "searchResultLocation")
            Prelude.<*> (x Data..:? "web")
      )

instance Prelude.Hashable CitationLocation where
  hashWithSalt _salt CitationLocation' {..} =
    _salt
      `Prelude.hashWithSalt` documentChar
      `Prelude.hashWithSalt` documentChunk
      `Prelude.hashWithSalt` documentPage
      `Prelude.hashWithSalt` searchResultLocation
      `Prelude.hashWithSalt` web

instance Prelude.NFData CitationLocation where
  rnf CitationLocation' {..} =
    Prelude.rnf documentChar `Prelude.seq`
      Prelude.rnf documentChunk `Prelude.seq`
        Prelude.rnf documentPage `Prelude.seq`
          Prelude.rnf searchResultLocation `Prelude.seq`
            Prelude.rnf web

instance Data.ToJSON CitationLocation where
  toJSON CitationLocation' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("documentChar" Data..=) Prelude.<$> documentChar,
            ("documentChunk" Data..=) Prelude.<$> documentChunk,
            ("documentPage" Data..=) Prelude.<$> documentPage,
            ("searchResultLocation" Data..=)
              Prelude.<$> searchResultLocation,
            ("web" Data..=) Prelude.<$> web
          ]
      )
