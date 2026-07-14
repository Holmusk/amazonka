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
-- Module      : Amazonka.BedrockRuntime.Types.CitationSourceContent
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.CitationSourceContent where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Contains the actual text content from a source document that is being
-- cited or referenced in the model\'s response.
--
-- /See:/ 'newCitationSourceContent' smart constructor.
data CitationSourceContent = CitationSourceContent'
  { -- | The text content from the source document that is being cited.
    text :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CitationSourceContent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'text', 'citationSourceContent_text' - The text content from the source document that is being cited.
newCitationSourceContent ::
  CitationSourceContent
newCitationSourceContent =
  CitationSourceContent' {text = Prelude.Nothing}

-- | The text content from the source document that is being cited.
citationSourceContent_text :: Lens.Lens' CitationSourceContent (Prelude.Maybe Prelude.Text)
citationSourceContent_text = Lens.lens (\CitationSourceContent' {text} -> text) (\s@CitationSourceContent' {} a -> s {text = a} :: CitationSourceContent)

instance Data.FromJSON CitationSourceContent where
  parseJSON =
    Data.withObject
      "CitationSourceContent"
      ( \x ->
          CitationSourceContent'
            Prelude.<$> (x Data..:? "text")
      )

instance Prelude.Hashable CitationSourceContent where
  hashWithSalt _salt CitationSourceContent' {..} =
    _salt `Prelude.hashWithSalt` text

instance Prelude.NFData CitationSourceContent where
  rnf CitationSourceContent' {..} = Prelude.rnf text

instance Data.ToJSON CitationSourceContent where
  toJSON CitationSourceContent' {..} =
    Data.object
      ( Prelude.catMaybes
          [("text" Data..=) Prelude.<$> text]
      )
