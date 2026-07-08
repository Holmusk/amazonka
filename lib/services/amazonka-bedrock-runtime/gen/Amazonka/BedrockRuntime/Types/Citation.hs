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
-- Module      : Amazonka.BedrockRuntime.Types.Citation
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.Citation where

import Amazonka.BedrockRuntime.Types.CitationLocation
import Amazonka.BedrockRuntime.Types.CitationSourceContent
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Contains information about a citation that references a specific source
-- document. Citations provide traceability between the model\'s generated
-- response and the source documents that informed that response.
--
-- /See:/ 'newCitation' smart constructor.
data Citation = Citation'
  { -- | The precise location within the source document where the cited content
    -- can be found, including character positions, page numbers, or chunk
    -- identifiers.
    location :: Prelude.Maybe CitationLocation,
    -- | The source from the original search result that provided the cited
    -- content.
    source :: Prelude.Maybe Prelude.Text,
    -- | The specific content from the source document that was referenced or
    -- cited in the generated response.
    sourceContent :: Prelude.Maybe [CitationSourceContent],
    -- | The title or identifier of the source document being cited.
    title :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Citation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'location', 'citation_location' - The precise location within the source document where the cited content
-- can be found, including character positions, page numbers, or chunk
-- identifiers.
--
-- 'source', 'citation_source' - The source from the original search result that provided the cited
-- content.
--
-- 'sourceContent', 'citation_sourceContent' - The specific content from the source document that was referenced or
-- cited in the generated response.
--
-- 'title', 'citation_title' - The title or identifier of the source document being cited.
newCitation ::
  Citation
newCitation =
  Citation'
    { location = Prelude.Nothing,
      source = Prelude.Nothing,
      sourceContent = Prelude.Nothing,
      title = Prelude.Nothing
    }

-- | The precise location within the source document where the cited content
-- can be found, including character positions, page numbers, or chunk
-- identifiers.
citation_location :: Lens.Lens' Citation (Prelude.Maybe CitationLocation)
citation_location = Lens.lens (\Citation' {location} -> location) (\s@Citation' {} a -> s {location = a} :: Citation)

-- | The source from the original search result that provided the cited
-- content.
citation_source :: Lens.Lens' Citation (Prelude.Maybe Prelude.Text)
citation_source = Lens.lens (\Citation' {source} -> source) (\s@Citation' {} a -> s {source = a} :: Citation)

-- | The specific content from the source document that was referenced or
-- cited in the generated response.
citation_sourceContent :: Lens.Lens' Citation (Prelude.Maybe [CitationSourceContent])
citation_sourceContent = Lens.lens (\Citation' {sourceContent} -> sourceContent) (\s@Citation' {} a -> s {sourceContent = a} :: Citation) Prelude.. Lens.mapping Lens.coerced

-- | The title or identifier of the source document being cited.
citation_title :: Lens.Lens' Citation (Prelude.Maybe Prelude.Text)
citation_title = Lens.lens (\Citation' {title} -> title) (\s@Citation' {} a -> s {title = a} :: Citation)

instance Data.FromJSON Citation where
  parseJSON =
    Data.withObject
      "Citation"
      ( \x ->
          Citation'
            Prelude.<$> (x Data..:? "location")
            Prelude.<*> (x Data..:? "source")
            Prelude.<*> (x Data..:? "sourceContent" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "title")
      )

instance Prelude.Hashable Citation where
  hashWithSalt _salt Citation' {..} =
    _salt
      `Prelude.hashWithSalt` location
      `Prelude.hashWithSalt` source
      `Prelude.hashWithSalt` sourceContent
      `Prelude.hashWithSalt` title

instance Prelude.NFData Citation where
  rnf Citation' {..} =
    Prelude.rnf location `Prelude.seq`
      Prelude.rnf source `Prelude.seq`
        Prelude.rnf sourceContent `Prelude.seq`
          Prelude.rnf title

instance Data.ToJSON Citation where
  toJSON Citation' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("location" Data..=) Prelude.<$> location,
            ("source" Data..=) Prelude.<$> source,
            ("sourceContent" Data..=) Prelude.<$> sourceContent,
            ("title" Data..=) Prelude.<$> title
          ]
      )
