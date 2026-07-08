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
-- Module      : Amazonka.BedrockRuntime.Types.ToolResultContentBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ToolResultContentBlock where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.DocumentBlock
import Amazonka.BedrockRuntime.Types.ImageBlock
import Amazonka.BedrockRuntime.Types.SearchResultBlock
import Amazonka.BedrockRuntime.Types.VideoBlock
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The tool result content block. For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html Call a tool with the Converse API>
-- in the Amazon Bedrock User Guide.
--
-- /See:/ 'newToolResultContentBlock' smart constructor.
data ToolResultContentBlock = ToolResultContentBlock'
  { -- | A tool result that is a document.
    document :: Prelude.Maybe DocumentBlock,
    -- | A tool result that is an image.
    --
    -- This field is only supported by Amazon Nova and Anthropic Claude 3 and 4
    -- models.
    image :: Prelude.Maybe ImageBlock,
    -- | A tool result that is JSON format data.
    json :: Prelude.Maybe Document,
    -- | A tool result that is a search result.
    searchResult :: Prelude.Maybe SearchResultBlock,
    -- | A tool result that is text.
    text :: Prelude.Maybe Prelude.Text,
    -- | A tool result that is video.
    video :: Prelude.Maybe VideoBlock
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ToolResultContentBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'document', 'toolResultContentBlock_document' - A tool result that is a document.
--
-- 'image', 'toolResultContentBlock_image' - A tool result that is an image.
--
-- This field is only supported by Amazon Nova and Anthropic Claude 3 and 4
-- models.
--
-- 'json', 'toolResultContentBlock_json' - A tool result that is JSON format data.
--
-- 'searchResult', 'toolResultContentBlock_searchResult' - A tool result that is a search result.
--
-- 'text', 'toolResultContentBlock_text' - A tool result that is text.
--
-- 'video', 'toolResultContentBlock_video' - A tool result that is video.
newToolResultContentBlock ::
  ToolResultContentBlock
newToolResultContentBlock =
  ToolResultContentBlock'
    { document = Prelude.Nothing,
      image = Prelude.Nothing,
      json = Prelude.Nothing,
      searchResult = Prelude.Nothing,
      text = Prelude.Nothing,
      video = Prelude.Nothing
    }

-- | A tool result that is a document.
toolResultContentBlock_document :: Lens.Lens' ToolResultContentBlock (Prelude.Maybe DocumentBlock)
toolResultContentBlock_document = Lens.lens (\ToolResultContentBlock' {document} -> document) (\s@ToolResultContentBlock' {} a -> s {document = a} :: ToolResultContentBlock)

-- | A tool result that is an image.
--
-- This field is only supported by Amazon Nova and Anthropic Claude 3 and 4
-- models.
toolResultContentBlock_image :: Lens.Lens' ToolResultContentBlock (Prelude.Maybe ImageBlock)
toolResultContentBlock_image = Lens.lens (\ToolResultContentBlock' {image} -> image) (\s@ToolResultContentBlock' {} a -> s {image = a} :: ToolResultContentBlock)

-- | A tool result that is JSON format data.
toolResultContentBlock_json :: Lens.Lens' ToolResultContentBlock (Prelude.Maybe Document)
toolResultContentBlock_json = Lens.lens (\ToolResultContentBlock' {json} -> json) (\s@ToolResultContentBlock' {} a -> s {json = a} :: ToolResultContentBlock)

-- | A tool result that is a search result.
toolResultContentBlock_searchResult :: Lens.Lens' ToolResultContentBlock (Prelude.Maybe SearchResultBlock)
toolResultContentBlock_searchResult = Lens.lens (\ToolResultContentBlock' {searchResult} -> searchResult) (\s@ToolResultContentBlock' {} a -> s {searchResult = a} :: ToolResultContentBlock)

-- | A tool result that is text.
toolResultContentBlock_text :: Lens.Lens' ToolResultContentBlock (Prelude.Maybe Prelude.Text)
toolResultContentBlock_text = Lens.lens (\ToolResultContentBlock' {text} -> text) (\s@ToolResultContentBlock' {} a -> s {text = a} :: ToolResultContentBlock)

-- | A tool result that is video.
toolResultContentBlock_video :: Lens.Lens' ToolResultContentBlock (Prelude.Maybe VideoBlock)
toolResultContentBlock_video = Lens.lens (\ToolResultContentBlock' {video} -> video) (\s@ToolResultContentBlock' {} a -> s {video = a} :: ToolResultContentBlock)

instance Data.FromJSON ToolResultContentBlock where
  parseJSON =
    Data.withObject
      "ToolResultContentBlock"
      ( \x ->
          ToolResultContentBlock'
            Prelude.<$> (x Data..:? "document")
            Prelude.<*> (x Data..:? "image")
            Prelude.<*> (x Data..:? "json")
            Prelude.<*> (x Data..:? "searchResult")
            Prelude.<*> (x Data..:? "text")
            Prelude.<*> (x Data..:? "video")
      )

instance Prelude.Hashable ToolResultContentBlock where
  hashWithSalt _salt ToolResultContentBlock' {..} =
    _salt
      `Prelude.hashWithSalt` document
      `Prelude.hashWithSalt` image
      `Prelude.hashWithSalt` json
      `Prelude.hashWithSalt` searchResult
      `Prelude.hashWithSalt` text
      `Prelude.hashWithSalt` video

instance Prelude.NFData ToolResultContentBlock where
  rnf ToolResultContentBlock' {..} =
    Prelude.rnf document `Prelude.seq`
      Prelude.rnf image `Prelude.seq`
        Prelude.rnf json `Prelude.seq`
          Prelude.rnf searchResult `Prelude.seq`
            Prelude.rnf text `Prelude.seq`
              Prelude.rnf video

instance Data.ToJSON ToolResultContentBlock where
  toJSON ToolResultContentBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("document" Data..=) Prelude.<$> document,
            ("image" Data..=) Prelude.<$> image,
            ("json" Data..=) Prelude.<$> json,
            ("searchResult" Data..=) Prelude.<$> searchResult,
            ("text" Data..=) Prelude.<$> text,
            ("video" Data..=) Prelude.<$> video
          ]
      )
