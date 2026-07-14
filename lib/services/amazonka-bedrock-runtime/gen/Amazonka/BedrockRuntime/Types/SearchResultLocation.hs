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
-- Module      : Amazonka.BedrockRuntime.Types.SearchResultLocation
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.SearchResultLocation where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Specifies a search result location within the content array, providing
-- positioning information for cited content using search result index and
-- block positions.
--
-- /See:/ 'newSearchResultLocation' smart constructor.
data SearchResultLocation = SearchResultLocation'
  { -- | The ending position in the content array where the cited content ends.
    end :: Prelude.Maybe Prelude.Natural,
    -- | The index of the search result content block where the cited content is
    -- found.
    searchResultIndex :: Prelude.Maybe Prelude.Natural,
    -- | The starting position in the content array where the cited content
    -- begins.
    start :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchResultLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'end', 'searchResultLocation_end' - The ending position in the content array where the cited content ends.
--
-- 'searchResultIndex', 'searchResultLocation_searchResultIndex' - The index of the search result content block where the cited content is
-- found.
--
-- 'start', 'searchResultLocation_start' - The starting position in the content array where the cited content
-- begins.
newSearchResultLocation ::
  SearchResultLocation
newSearchResultLocation =
  SearchResultLocation'
    { end = Prelude.Nothing,
      searchResultIndex = Prelude.Nothing,
      start = Prelude.Nothing
    }

-- | The ending position in the content array where the cited content ends.
searchResultLocation_end :: Lens.Lens' SearchResultLocation (Prelude.Maybe Prelude.Natural)
searchResultLocation_end = Lens.lens (\SearchResultLocation' {end} -> end) (\s@SearchResultLocation' {} a -> s {end = a} :: SearchResultLocation)

-- | The index of the search result content block where the cited content is
-- found.
searchResultLocation_searchResultIndex :: Lens.Lens' SearchResultLocation (Prelude.Maybe Prelude.Natural)
searchResultLocation_searchResultIndex = Lens.lens (\SearchResultLocation' {searchResultIndex} -> searchResultIndex) (\s@SearchResultLocation' {} a -> s {searchResultIndex = a} :: SearchResultLocation)

-- | The starting position in the content array where the cited content
-- begins.
searchResultLocation_start :: Lens.Lens' SearchResultLocation (Prelude.Maybe Prelude.Natural)
searchResultLocation_start = Lens.lens (\SearchResultLocation' {start} -> start) (\s@SearchResultLocation' {} a -> s {start = a} :: SearchResultLocation)

instance Data.FromJSON SearchResultLocation where
  parseJSON =
    Data.withObject
      "SearchResultLocation"
      ( \x ->
          SearchResultLocation'
            Prelude.<$> (x Data..:? "end")
            Prelude.<*> (x Data..:? "searchResultIndex")
            Prelude.<*> (x Data..:? "start")
      )

instance Prelude.Hashable SearchResultLocation where
  hashWithSalt _salt SearchResultLocation' {..} =
    _salt
      `Prelude.hashWithSalt` end
      `Prelude.hashWithSalt` searchResultIndex
      `Prelude.hashWithSalt` start

instance Prelude.NFData SearchResultLocation where
  rnf SearchResultLocation' {..} =
    Prelude.rnf end `Prelude.seq`
      Prelude.rnf searchResultIndex `Prelude.seq`
        Prelude.rnf start

instance Data.ToJSON SearchResultLocation where
  toJSON SearchResultLocation' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("end" Data..=) Prelude.<$> end,
            ("searchResultIndex" Data..=)
              Prelude.<$> searchResultIndex,
            ("start" Data..=) Prelude.<$> start
          ]
      )
