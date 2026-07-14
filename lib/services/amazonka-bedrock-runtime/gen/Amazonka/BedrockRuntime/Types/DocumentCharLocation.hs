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
-- Module      : Amazonka.BedrockRuntime.Types.DocumentCharLocation
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.DocumentCharLocation where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Specifies a character-level location within a document, providing
-- precise positioning information for cited content using start and end
-- character indices.
--
-- /See:/ 'newDocumentCharLocation' smart constructor.
data DocumentCharLocation = DocumentCharLocation'
  { -- | The index of the document within the array of documents provided in the
    -- request.
    documentIndex :: Prelude.Maybe Prelude.Natural,
    -- | The ending character position of the cited content within the document.
    end :: Prelude.Maybe Prelude.Natural,
    -- | The starting character position of the cited content within the
    -- document.
    start :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DocumentCharLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'documentIndex', 'documentCharLocation_documentIndex' - The index of the document within the array of documents provided in the
-- request.
--
-- 'end', 'documentCharLocation_end' - The ending character position of the cited content within the document.
--
-- 'start', 'documentCharLocation_start' - The starting character position of the cited content within the
-- document.
newDocumentCharLocation ::
  DocumentCharLocation
newDocumentCharLocation =
  DocumentCharLocation'
    { documentIndex =
        Prelude.Nothing,
      end = Prelude.Nothing,
      start = Prelude.Nothing
    }

-- | The index of the document within the array of documents provided in the
-- request.
documentCharLocation_documentIndex :: Lens.Lens' DocumentCharLocation (Prelude.Maybe Prelude.Natural)
documentCharLocation_documentIndex = Lens.lens (\DocumentCharLocation' {documentIndex} -> documentIndex) (\s@DocumentCharLocation' {} a -> s {documentIndex = a} :: DocumentCharLocation)

-- | The ending character position of the cited content within the document.
documentCharLocation_end :: Lens.Lens' DocumentCharLocation (Prelude.Maybe Prelude.Natural)
documentCharLocation_end = Lens.lens (\DocumentCharLocation' {end} -> end) (\s@DocumentCharLocation' {} a -> s {end = a} :: DocumentCharLocation)

-- | The starting character position of the cited content within the
-- document.
documentCharLocation_start :: Lens.Lens' DocumentCharLocation (Prelude.Maybe Prelude.Natural)
documentCharLocation_start = Lens.lens (\DocumentCharLocation' {start} -> start) (\s@DocumentCharLocation' {} a -> s {start = a} :: DocumentCharLocation)

instance Data.FromJSON DocumentCharLocation where
  parseJSON =
    Data.withObject
      "DocumentCharLocation"
      ( \x ->
          DocumentCharLocation'
            Prelude.<$> (x Data..:? "documentIndex")
            Prelude.<*> (x Data..:? "end")
            Prelude.<*> (x Data..:? "start")
      )

instance Prelude.Hashable DocumentCharLocation where
  hashWithSalt _salt DocumentCharLocation' {..} =
    _salt
      `Prelude.hashWithSalt` documentIndex
      `Prelude.hashWithSalt` end
      `Prelude.hashWithSalt` start

instance Prelude.NFData DocumentCharLocation where
  rnf DocumentCharLocation' {..} =
    Prelude.rnf documentIndex `Prelude.seq`
      Prelude.rnf end `Prelude.seq`
        Prelude.rnf start

instance Data.ToJSON DocumentCharLocation where
  toJSON DocumentCharLocation' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("documentIndex" Data..=) Prelude.<$> documentIndex,
            ("end" Data..=) Prelude.<$> end,
            ("start" Data..=) Prelude.<$> start
          ]
      )
