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
-- Module      : Amazonka.BedrockRuntime.Types.DocumentContentBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.DocumentContentBlock where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Contains the actual content of a document that can be processed by the
-- model and potentially cited in the response.
--
-- /See:/ 'newDocumentContentBlock' smart constructor.
data DocumentContentBlock = DocumentContentBlock'
  { -- | The text content of the document.
    text :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DocumentContentBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'text', 'documentContentBlock_text' - The text content of the document.
newDocumentContentBlock ::
  DocumentContentBlock
newDocumentContentBlock =
  DocumentContentBlock' {text = Prelude.Nothing}

-- | The text content of the document.
documentContentBlock_text :: Lens.Lens' DocumentContentBlock (Prelude.Maybe Prelude.Text)
documentContentBlock_text = Lens.lens (\DocumentContentBlock' {text} -> text) (\s@DocumentContentBlock' {} a -> s {text = a} :: DocumentContentBlock)

instance Data.FromJSON DocumentContentBlock where
  parseJSON =
    Data.withObject
      "DocumentContentBlock"
      ( \x ->
          DocumentContentBlock'
            Prelude.<$> (x Data..:? "text")
      )

instance Prelude.Hashable DocumentContentBlock where
  hashWithSalt _salt DocumentContentBlock' {..} =
    _salt `Prelude.hashWithSalt` text

instance Prelude.NFData DocumentContentBlock where
  rnf DocumentContentBlock' {..} = Prelude.rnf text

instance Data.ToJSON DocumentContentBlock where
  toJSON DocumentContentBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [("text" Data..=) Prelude.<$> text]
      )
