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
-- Module      : Amazonka.BedrockRuntime.Types.CitationsContentBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.CitationsContentBlock where

import Amazonka.BedrockRuntime.Types.Citation
import Amazonka.BedrockRuntime.Types.CitationGeneratedContent
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A content block that contains both generated text and associated
-- citation information. This block type is returned when document
-- citations are enabled, providing traceability between the generated
-- content and the source documents that informed the response.
--
-- /See:/ 'newCitationsContentBlock' smart constructor.
data CitationsContentBlock = CitationsContentBlock'
  { -- | An array of citations that reference the source documents used to
    -- generate the associated content.
    citations :: Prelude.Maybe [Citation],
    -- | The generated content that is supported by the associated citations.
    content :: Prelude.Maybe [CitationGeneratedContent]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CitationsContentBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'citations', 'citationsContentBlock_citations' - An array of citations that reference the source documents used to
-- generate the associated content.
--
-- 'content', 'citationsContentBlock_content' - The generated content that is supported by the associated citations.
newCitationsContentBlock ::
  CitationsContentBlock
newCitationsContentBlock =
  CitationsContentBlock'
    { citations = Prelude.Nothing,
      content = Prelude.Nothing
    }

-- | An array of citations that reference the source documents used to
-- generate the associated content.
citationsContentBlock_citations :: Lens.Lens' CitationsContentBlock (Prelude.Maybe [Citation])
citationsContentBlock_citations = Lens.lens (\CitationsContentBlock' {citations} -> citations) (\s@CitationsContentBlock' {} a -> s {citations = a} :: CitationsContentBlock) Prelude.. Lens.mapping Lens.coerced

-- | The generated content that is supported by the associated citations.
citationsContentBlock_content :: Lens.Lens' CitationsContentBlock (Prelude.Maybe [CitationGeneratedContent])
citationsContentBlock_content = Lens.lens (\CitationsContentBlock' {content} -> content) (\s@CitationsContentBlock' {} a -> s {content = a} :: CitationsContentBlock) Prelude.. Lens.mapping Lens.coerced

instance Data.FromJSON CitationsContentBlock where
  parseJSON =
    Data.withObject
      "CitationsContentBlock"
      ( \x ->
          CitationsContentBlock'
            Prelude.<$> (x Data..:? "citations" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "content" Data..!= Prelude.mempty)
      )

instance Prelude.Hashable CitationsContentBlock where
  hashWithSalt _salt CitationsContentBlock' {..} =
    _salt
      `Prelude.hashWithSalt` citations
      `Prelude.hashWithSalt` content

instance Prelude.NFData CitationsContentBlock where
  rnf CitationsContentBlock' {..} =
    Prelude.rnf citations `Prelude.seq`
      Prelude.rnf content

instance Data.ToJSON CitationsContentBlock where
  toJSON CitationsContentBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("citations" Data..=) Prelude.<$> citations,
            ("content" Data..=) Prelude.<$> content
          ]
      )
