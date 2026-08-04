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
-- Module      : Amazonka.BedrockRuntime.Types.CitationsDelta
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the @ConverseStream@ shapes are
-- maintained by hand. See @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.CitationsDelta where

import Amazonka.BedrockRuntime.Types.CitationLocation
import Amazonka.BedrockRuntime.Types.CitationSourceContentDelta
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Contains incremental updates to citation information during streaming
-- responses. This allows clients to build up citation data progressively
-- as the response is generated.
--
-- /See:/ 'newCitationsDelta' smart constructor.
data CitationsDelta = CitationsDelta'
  { -- | Specifies the precise location within a source document where cited
    -- content can be found.
    location :: Prelude.Maybe CitationLocation,
    -- | The identifier or reference to the source document from which the
    -- citation content originates.
    source :: Prelude.Maybe Prelude.Text,
    -- | The specific content from the source document that was referenced or
    -- cited in the generated response.
    sourceContent :: Prelude.Maybe [CitationSourceContentDelta],
    -- | The title or identifier of the source document being cited.
    title :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CitationsDelta' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'location', 'citationsDelta_location' - Specifies the precise location within a source document where cited
-- content can be found.
--
-- 'source', 'citationsDelta_source' - The identifier or reference to the source document from which the
-- citation content originates.
--
-- 'sourceContent', 'citationsDelta_sourceContent' - The specific content from the source document that was referenced or
-- cited in the generated response.
--
-- 'title', 'citationsDelta_title' - The title or identifier of the source document being cited.
newCitationsDelta ::
  CitationsDelta
newCitationsDelta =
  CitationsDelta'
    { location = Prelude.Nothing,
      source = Prelude.Nothing,
      sourceContent = Prelude.Nothing,
      title = Prelude.Nothing
    }

-- | Specifies the precise location within a source document where cited
-- content can be found.
citationsDelta_location :: Lens.Lens' CitationsDelta (Prelude.Maybe CitationLocation)
citationsDelta_location = Lens.lens (\CitationsDelta' {location} -> location) (\s@CitationsDelta' {} a -> s {location = a} :: CitationsDelta)

-- | The identifier or reference to the source document from which the
-- citation content originates.
citationsDelta_source :: Lens.Lens' CitationsDelta (Prelude.Maybe Prelude.Text)
citationsDelta_source = Lens.lens (\CitationsDelta' {source} -> source) (\s@CitationsDelta' {} a -> s {source = a} :: CitationsDelta)

-- | The specific content from the source document that was referenced or
-- cited in the generated response.
citationsDelta_sourceContent :: Lens.Lens' CitationsDelta (Prelude.Maybe [CitationSourceContentDelta])
citationsDelta_sourceContent = Lens.lens (\CitationsDelta' {sourceContent} -> sourceContent) (\s@CitationsDelta' {} a -> s {sourceContent = a} :: CitationsDelta) Prelude.. Lens.mapping Lens.coerced

-- | The title or identifier of the source document being cited.
citationsDelta_title :: Lens.Lens' CitationsDelta (Prelude.Maybe Prelude.Text)
citationsDelta_title = Lens.lens (\CitationsDelta' {title} -> title) (\s@CitationsDelta' {} a -> s {title = a} :: CitationsDelta)

instance Data.FromJSON CitationsDelta where
  parseJSON =
    Data.withObject
      "CitationsDelta"
      ( \x ->
          CitationsDelta'
            Prelude.<$> (x Data..:? "location")
            Prelude.<*> (x Data..:? "source")
            Prelude.<*> (x Data..:? "sourceContent")
            Prelude.<*> (x Data..:? "title")
      )

instance Prelude.Hashable CitationsDelta where
  hashWithSalt _salt CitationsDelta' {..} =
    _salt
      `Prelude.hashWithSalt` location
      `Prelude.hashWithSalt` source
      `Prelude.hashWithSalt` sourceContent
      `Prelude.hashWithSalt` title

instance Prelude.NFData CitationsDelta where
  rnf CitationsDelta' {..} =
    Prelude.rnf location `Prelude.seq`
      Prelude.rnf source `Prelude.seq`
        Prelude.rnf sourceContent `Prelude.seq`
          Prelude.rnf title
