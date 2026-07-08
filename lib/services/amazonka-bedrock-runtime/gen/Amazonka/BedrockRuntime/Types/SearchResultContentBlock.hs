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
-- Module      : Amazonka.BedrockRuntime.Types.SearchResultContentBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.SearchResultContentBlock where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A block within a search result that contains the content.
--
-- /See:/ 'newSearchResultContentBlock' smart constructor.
data SearchResultContentBlock = SearchResultContentBlock'
  { -- | The actual text content
    text :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchResultContentBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'text', 'searchResultContentBlock_text' - The actual text content
newSearchResultContentBlock ::
  -- | 'text'
  Prelude.Text ->
  SearchResultContentBlock
newSearchResultContentBlock pText_ =
  SearchResultContentBlock' {text = pText_}

-- | The actual text content
searchResultContentBlock_text :: Lens.Lens' SearchResultContentBlock Prelude.Text
searchResultContentBlock_text = Lens.lens (\SearchResultContentBlock' {text} -> text) (\s@SearchResultContentBlock' {} a -> s {text = a} :: SearchResultContentBlock)

instance Data.FromJSON SearchResultContentBlock where
  parseJSON =
    Data.withObject
      "SearchResultContentBlock"
      ( \x ->
          SearchResultContentBlock'
            Prelude.<$> (x Data..: "text")
      )

instance Prelude.Hashable SearchResultContentBlock where
  hashWithSalt _salt SearchResultContentBlock' {..} =
    _salt `Prelude.hashWithSalt` text

instance Prelude.NFData SearchResultContentBlock where
  rnf SearchResultContentBlock' {..} = Prelude.rnf text

instance Data.ToJSON SearchResultContentBlock where
  toJSON SearchResultContentBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("text" Data..= text)]
      )
