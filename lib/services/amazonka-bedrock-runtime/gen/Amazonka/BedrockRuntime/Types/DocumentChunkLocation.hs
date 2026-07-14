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
-- Module      : Amazonka.BedrockRuntime.Types.DocumentChunkLocation
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.DocumentChunkLocation where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Specifies a chunk-level location within a document, providing
-- positioning information for cited content using logical document
-- segments or chunks.
--
-- /See:/ 'newDocumentChunkLocation' smart constructor.
data DocumentChunkLocation = DocumentChunkLocation'
  { -- | The index of the document within the array of documents provided in the
    -- request.
    documentIndex :: Prelude.Maybe Prelude.Natural,
    -- | The ending chunk identifier or index of the cited content within the
    -- document.
    end :: Prelude.Maybe Prelude.Natural,
    -- | The starting chunk identifier or index of the cited content within the
    -- document.
    start :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DocumentChunkLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'documentIndex', 'documentChunkLocation_documentIndex' - The index of the document within the array of documents provided in the
-- request.
--
-- 'end', 'documentChunkLocation_end' - The ending chunk identifier or index of the cited content within the
-- document.
--
-- 'start', 'documentChunkLocation_start' - The starting chunk identifier or index of the cited content within the
-- document.
newDocumentChunkLocation ::
  DocumentChunkLocation
newDocumentChunkLocation =
  DocumentChunkLocation'
    { documentIndex =
        Prelude.Nothing,
      end = Prelude.Nothing,
      start = Prelude.Nothing
    }

-- | The index of the document within the array of documents provided in the
-- request.
documentChunkLocation_documentIndex :: Lens.Lens' DocumentChunkLocation (Prelude.Maybe Prelude.Natural)
documentChunkLocation_documentIndex = Lens.lens (\DocumentChunkLocation' {documentIndex} -> documentIndex) (\s@DocumentChunkLocation' {} a -> s {documentIndex = a} :: DocumentChunkLocation)

-- | The ending chunk identifier or index of the cited content within the
-- document.
documentChunkLocation_end :: Lens.Lens' DocumentChunkLocation (Prelude.Maybe Prelude.Natural)
documentChunkLocation_end = Lens.lens (\DocumentChunkLocation' {end} -> end) (\s@DocumentChunkLocation' {} a -> s {end = a} :: DocumentChunkLocation)

-- | The starting chunk identifier or index of the cited content within the
-- document.
documentChunkLocation_start :: Lens.Lens' DocumentChunkLocation (Prelude.Maybe Prelude.Natural)
documentChunkLocation_start = Lens.lens (\DocumentChunkLocation' {start} -> start) (\s@DocumentChunkLocation' {} a -> s {start = a} :: DocumentChunkLocation)

instance Data.FromJSON DocumentChunkLocation where
  parseJSON =
    Data.withObject
      "DocumentChunkLocation"
      ( \x ->
          DocumentChunkLocation'
            Prelude.<$> (x Data..:? "documentIndex")
            Prelude.<*> (x Data..:? "end")
            Prelude.<*> (x Data..:? "start")
      )

instance Prelude.Hashable DocumentChunkLocation where
  hashWithSalt _salt DocumentChunkLocation' {..} =
    _salt
      `Prelude.hashWithSalt` documentIndex
      `Prelude.hashWithSalt` end
      `Prelude.hashWithSalt` start

instance Prelude.NFData DocumentChunkLocation where
  rnf DocumentChunkLocation' {..} =
    Prelude.rnf documentIndex `Prelude.seq`
      Prelude.rnf end `Prelude.seq`
        Prelude.rnf start

instance Data.ToJSON DocumentChunkLocation where
  toJSON DocumentChunkLocation' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("documentIndex" Data..=) Prelude.<$> documentIndex,
            ("end" Data..=) Prelude.<$> end,
            ("start" Data..=) Prelude.<$> start
          ]
      )
