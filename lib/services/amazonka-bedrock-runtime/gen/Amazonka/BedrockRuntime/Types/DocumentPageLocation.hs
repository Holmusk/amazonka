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
-- Module      : Amazonka.BedrockRuntime.Types.DocumentPageLocation
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.DocumentPageLocation where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Specifies a page-level location within a document, providing positioning
-- information for cited content using page numbers.
--
-- /See:/ 'newDocumentPageLocation' smart constructor.
data DocumentPageLocation = DocumentPageLocation'
  { -- | The index of the document within the array of documents provided in the
    -- request.
    documentIndex :: Prelude.Maybe Prelude.Natural,
    -- | The ending page number of the cited content within the document.
    end :: Prelude.Maybe Prelude.Natural,
    -- | The starting page number of the cited content within the document.
    start :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DocumentPageLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'documentIndex', 'documentPageLocation_documentIndex' - The index of the document within the array of documents provided in the
-- request.
--
-- 'end', 'documentPageLocation_end' - The ending page number of the cited content within the document.
--
-- 'start', 'documentPageLocation_start' - The starting page number of the cited content within the document.
newDocumentPageLocation ::
  DocumentPageLocation
newDocumentPageLocation =
  DocumentPageLocation'
    { documentIndex =
        Prelude.Nothing,
      end = Prelude.Nothing,
      start = Prelude.Nothing
    }

-- | The index of the document within the array of documents provided in the
-- request.
documentPageLocation_documentIndex :: Lens.Lens' DocumentPageLocation (Prelude.Maybe Prelude.Natural)
documentPageLocation_documentIndex = Lens.lens (\DocumentPageLocation' {documentIndex} -> documentIndex) (\s@DocumentPageLocation' {} a -> s {documentIndex = a} :: DocumentPageLocation)

-- | The ending page number of the cited content within the document.
documentPageLocation_end :: Lens.Lens' DocumentPageLocation (Prelude.Maybe Prelude.Natural)
documentPageLocation_end = Lens.lens (\DocumentPageLocation' {end} -> end) (\s@DocumentPageLocation' {} a -> s {end = a} :: DocumentPageLocation)

-- | The starting page number of the cited content within the document.
documentPageLocation_start :: Lens.Lens' DocumentPageLocation (Prelude.Maybe Prelude.Natural)
documentPageLocation_start = Lens.lens (\DocumentPageLocation' {start} -> start) (\s@DocumentPageLocation' {} a -> s {start = a} :: DocumentPageLocation)

instance Data.FromJSON DocumentPageLocation where
  parseJSON =
    Data.withObject
      "DocumentPageLocation"
      ( \x ->
          DocumentPageLocation'
            Prelude.<$> (x Data..:? "documentIndex")
            Prelude.<*> (x Data..:? "end")
            Prelude.<*> (x Data..:? "start")
      )

instance Prelude.Hashable DocumentPageLocation where
  hashWithSalt _salt DocumentPageLocation' {..} =
    _salt
      `Prelude.hashWithSalt` documentIndex
      `Prelude.hashWithSalt` end
      `Prelude.hashWithSalt` start

instance Prelude.NFData DocumentPageLocation where
  rnf DocumentPageLocation' {..} =
    Prelude.rnf documentIndex `Prelude.seq`
      Prelude.rnf end `Prelude.seq`
        Prelude.rnf start

instance Data.ToJSON DocumentPageLocation where
  toJSON DocumentPageLocation' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("documentIndex" Data..=) Prelude.<$> documentIndex,
            ("end" Data..=) Prelude.<$> end,
            ("start" Data..=) Prelude.<$> start
          ]
      )
