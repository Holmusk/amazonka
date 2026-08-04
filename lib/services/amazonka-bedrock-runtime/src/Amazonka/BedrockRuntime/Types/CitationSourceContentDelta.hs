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
-- Module      : Amazonka.BedrockRuntime.Types.CitationSourceContentDelta
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the @ConverseStream@ shapes are
-- maintained by hand. See @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.CitationSourceContentDelta where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Contains incremental updates to the source content text during
-- streaming responses, allowing clients to build up the cited content
-- progressively.
--
-- /See:/ 'newCitationSourceContentDelta' smart constructor.
data CitationSourceContentDelta = CitationSourceContentDelta'
  { -- | An incremental update to the text content from the source document that
    -- is being cited.
    text :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CitationSourceContentDelta' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'text', 'citationSourceContentDelta_text' - An incremental update to the text content from the source document that
-- is being cited.
newCitationSourceContentDelta ::
  CitationSourceContentDelta
newCitationSourceContentDelta =
  CitationSourceContentDelta' {text = Prelude.Nothing}

-- | An incremental update to the text content from the source document that
-- is being cited.
citationSourceContentDelta_text :: Lens.Lens' CitationSourceContentDelta (Prelude.Maybe Prelude.Text)
citationSourceContentDelta_text = Lens.lens (\CitationSourceContentDelta' {text} -> text) (\s@CitationSourceContentDelta' {} a -> s {text = a} :: CitationSourceContentDelta)

instance Data.FromJSON CitationSourceContentDelta where
  parseJSON =
    Data.withObject
      "CitationSourceContentDelta"
      ( \x ->
          CitationSourceContentDelta'
            Prelude.<$> (x Data..:? "text")
      )

instance Prelude.Hashable CitationSourceContentDelta where
  hashWithSalt _salt CitationSourceContentDelta' {..} =
    _salt `Prelude.hashWithSalt` text

instance Prelude.NFData CitationSourceContentDelta where
  rnf CitationSourceContentDelta' {..} = Prelude.rnf text
