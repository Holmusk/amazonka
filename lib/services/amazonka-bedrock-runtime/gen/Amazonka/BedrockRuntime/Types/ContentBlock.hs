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
-- Module      : Amazonka.BedrockRuntime.Types.ContentBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ContentBlock where

import Amazonka.BedrockRuntime.Types.AudioBlock
import Amazonka.BedrockRuntime.Types.CachePointBlock
import Amazonka.BedrockRuntime.Types.CitationsContentBlock
import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.DocumentBlock
import Amazonka.BedrockRuntime.Types.GuardrailConverseContentBlock
import Amazonka.BedrockRuntime.Types.ImageBlock
import Amazonka.BedrockRuntime.Types.ReasoningContentBlock
import Amazonka.BedrockRuntime.Types.SearchResultBlock
import Amazonka.BedrockRuntime.Types.ToolResultBlock
import Amazonka.BedrockRuntime.Types.ToolUseBlock
import Amazonka.BedrockRuntime.Types.VideoBlock
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A block of content for a message that you pass to, or receive from, a
-- model with the
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html Converse>
-- or
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html ConverseStream>
-- API operations.
--
-- /See:/ 'newContentBlock' smart constructor.
data ContentBlock = ContentBlock'
  { -- | An audio content block containing audio data in the conversation.
    audio :: Prelude.Maybe AudioBlock,
    -- | CachePoint to include in the message.
    cachePoint :: Prelude.Maybe CachePointBlock,
    -- | A content block that contains both generated text and associated
    -- citation information, providing traceability between the response and
    -- source documents.
    citationsContent :: Prelude.Maybe CitationsContentBlock,
    -- | A document to include in the message.
    document :: Prelude.Maybe DocumentBlock,
    -- | Contains the content to assess with the guardrail. If you don\'t specify
    -- @guardContent@ in a call to the Converse API, the guardrail (if passed
    -- in the Converse API) assesses the entire message.
    --
    -- For more information, see /Use a guardrail with the Converse API/ in the
    -- /Amazon Bedrock User Guide/.
    guardContent :: Prelude.Maybe GuardrailConverseContentBlock,
    -- | Image to include in the message.
    --
    -- This field is only supported by Anthropic Claude 3 models.
    image :: Prelude.Maybe ImageBlock,
    -- | Contains content regarding the reasoning that is carried out by the
    -- model. Reasoning refers to a Chain of Thought (CoT) that the model
    -- generates to enhance the accuracy of its final response.
    reasoningContent :: Prelude.Maybe (Data.Sensitive ReasoningContentBlock),
    -- | Search result to include in the message.
    searchResult :: Prelude.Maybe SearchResultBlock,
    -- | Text to include in the message.
    text :: Prelude.Maybe Prelude.Text,
    -- | The result for a tool request that a model makes.
    toolResult :: Prelude.Maybe ToolResultBlock,
    -- | Information about a tool use request from a model.
    toolUse :: Prelude.Maybe ToolUseBlock,
    -- | Video to include in the message.
    video :: Prelude.Maybe VideoBlock
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContentBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'audio', 'contentBlock_audio' - An audio content block containing audio data in the conversation.
--
-- 'cachePoint', 'contentBlock_cachePoint' - CachePoint to include in the message.
--
-- 'citationsContent', 'contentBlock_citationsContent' - A content block that contains both generated text and associated
-- citation information, providing traceability between the response and
-- source documents.
--
-- 'document', 'contentBlock_document' - A document to include in the message.
--
-- 'guardContent', 'contentBlock_guardContent' - Contains the content to assess with the guardrail. If you don\'t specify
-- @guardContent@ in a call to the Converse API, the guardrail (if passed
-- in the Converse API) assesses the entire message.
--
-- For more information, see /Use a guardrail with the Converse API/ in the
-- /Amazon Bedrock User Guide/.
--
-- 'image', 'contentBlock_image' - Image to include in the message.
--
-- This field is only supported by Anthropic Claude 3 models.
--
-- 'reasoningContent', 'contentBlock_reasoningContent' - Contains content regarding the reasoning that is carried out by the
-- model. Reasoning refers to a Chain of Thought (CoT) that the model
-- generates to enhance the accuracy of its final response.
--
-- 'searchResult', 'contentBlock_searchResult' - Search result to include in the message.
--
-- 'text', 'contentBlock_text' - Text to include in the message.
--
-- 'toolResult', 'contentBlock_toolResult' - The result for a tool request that a model makes.
--
-- 'toolUse', 'contentBlock_toolUse' - Information about a tool use request from a model.
--
-- 'video', 'contentBlock_video' - Video to include in the message.
newContentBlock ::
  ContentBlock
newContentBlock =
  ContentBlock'
    { audio = Prelude.Nothing,
      cachePoint = Prelude.Nothing,
      citationsContent = Prelude.Nothing,
      document = Prelude.Nothing,
      guardContent = Prelude.Nothing,
      image = Prelude.Nothing,
      reasoningContent = Prelude.Nothing,
      searchResult = Prelude.Nothing,
      text = Prelude.Nothing,
      toolResult = Prelude.Nothing,
      toolUse = Prelude.Nothing,
      video = Prelude.Nothing
    }

-- | An audio content block containing audio data in the conversation.
contentBlock_audio :: Lens.Lens' ContentBlock (Prelude.Maybe AudioBlock)
contentBlock_audio = Lens.lens (\ContentBlock' {audio} -> audio) (\s@ContentBlock' {} a -> s {audio = a} :: ContentBlock)

-- | CachePoint to include in the message.
contentBlock_cachePoint :: Lens.Lens' ContentBlock (Prelude.Maybe CachePointBlock)
contentBlock_cachePoint = Lens.lens (\ContentBlock' {cachePoint} -> cachePoint) (\s@ContentBlock' {} a -> s {cachePoint = a} :: ContentBlock)

-- | A content block that contains both generated text and associated
-- citation information, providing traceability between the response and
-- source documents.
contentBlock_citationsContent :: Lens.Lens' ContentBlock (Prelude.Maybe CitationsContentBlock)
contentBlock_citationsContent = Lens.lens (\ContentBlock' {citationsContent} -> citationsContent) (\s@ContentBlock' {} a -> s {citationsContent = a} :: ContentBlock)

-- | A document to include in the message.
contentBlock_document :: Lens.Lens' ContentBlock (Prelude.Maybe DocumentBlock)
contentBlock_document = Lens.lens (\ContentBlock' {document} -> document) (\s@ContentBlock' {} a -> s {document = a} :: ContentBlock)

-- | Contains the content to assess with the guardrail. If you don\'t specify
-- @guardContent@ in a call to the Converse API, the guardrail (if passed
-- in the Converse API) assesses the entire message.
--
-- For more information, see /Use a guardrail with the Converse API/ in the
-- /Amazon Bedrock User Guide/.
contentBlock_guardContent :: Lens.Lens' ContentBlock (Prelude.Maybe GuardrailConverseContentBlock)
contentBlock_guardContent = Lens.lens (\ContentBlock' {guardContent} -> guardContent) (\s@ContentBlock' {} a -> s {guardContent = a} :: ContentBlock)

-- | Image to include in the message.
--
-- This field is only supported by Anthropic Claude 3 models.
contentBlock_image :: Lens.Lens' ContentBlock (Prelude.Maybe ImageBlock)
contentBlock_image = Lens.lens (\ContentBlock' {image} -> image) (\s@ContentBlock' {} a -> s {image = a} :: ContentBlock)

-- | Contains content regarding the reasoning that is carried out by the
-- model. Reasoning refers to a Chain of Thought (CoT) that the model
-- generates to enhance the accuracy of its final response.
contentBlock_reasoningContent :: Lens.Lens' ContentBlock (Prelude.Maybe ReasoningContentBlock)
contentBlock_reasoningContent = Lens.lens (\ContentBlock' {reasoningContent} -> reasoningContent) (\s@ContentBlock' {} a -> s {reasoningContent = a} :: ContentBlock) Prelude.. Lens.mapping Data._Sensitive

-- | Search result to include in the message.
contentBlock_searchResult :: Lens.Lens' ContentBlock (Prelude.Maybe SearchResultBlock)
contentBlock_searchResult = Lens.lens (\ContentBlock' {searchResult} -> searchResult) (\s@ContentBlock' {} a -> s {searchResult = a} :: ContentBlock)

-- | Text to include in the message.
contentBlock_text :: Lens.Lens' ContentBlock (Prelude.Maybe Prelude.Text)
contentBlock_text = Lens.lens (\ContentBlock' {text} -> text) (\s@ContentBlock' {} a -> s {text = a} :: ContentBlock)

-- | The result for a tool request that a model makes.
contentBlock_toolResult :: Lens.Lens' ContentBlock (Prelude.Maybe ToolResultBlock)
contentBlock_toolResult = Lens.lens (\ContentBlock' {toolResult} -> toolResult) (\s@ContentBlock' {} a -> s {toolResult = a} :: ContentBlock)

-- | Information about a tool use request from a model.
contentBlock_toolUse :: Lens.Lens' ContentBlock (Prelude.Maybe ToolUseBlock)
contentBlock_toolUse = Lens.lens (\ContentBlock' {toolUse} -> toolUse) (\s@ContentBlock' {} a -> s {toolUse = a} :: ContentBlock)

-- | Video to include in the message.
contentBlock_video :: Lens.Lens' ContentBlock (Prelude.Maybe VideoBlock)
contentBlock_video = Lens.lens (\ContentBlock' {video} -> video) (\s@ContentBlock' {} a -> s {video = a} :: ContentBlock)

instance Data.FromJSON ContentBlock where
  parseJSON =
    Data.withObject
      "ContentBlock"
      ( \x ->
          ContentBlock'
            Prelude.<$> (x Data..:? "audio")
            Prelude.<*> (x Data..:? "cachePoint")
            Prelude.<*> (x Data..:? "citationsContent")
            Prelude.<*> (x Data..:? "document")
            Prelude.<*> (x Data..:? "guardContent")
            Prelude.<*> (x Data..:? "image")
            Prelude.<*> (x Data..:? "reasoningContent")
            Prelude.<*> (x Data..:? "searchResult")
            Prelude.<*> (x Data..:? "text")
            Prelude.<*> (x Data..:? "toolResult")
            Prelude.<*> (x Data..:? "toolUse")
            Prelude.<*> (x Data..:? "video")
      )

instance Prelude.Hashable ContentBlock where
  hashWithSalt _salt ContentBlock' {..} =
    _salt
      `Prelude.hashWithSalt` audio
      `Prelude.hashWithSalt` cachePoint
      `Prelude.hashWithSalt` citationsContent
      `Prelude.hashWithSalt` document
      `Prelude.hashWithSalt` guardContent
      `Prelude.hashWithSalt` image
      `Prelude.hashWithSalt` reasoningContent
      `Prelude.hashWithSalt` searchResult
      `Prelude.hashWithSalt` text
      `Prelude.hashWithSalt` toolResult
      `Prelude.hashWithSalt` toolUse
      `Prelude.hashWithSalt` video

instance Prelude.NFData ContentBlock where
  rnf ContentBlock' {..} =
    Prelude.rnf audio `Prelude.seq`
      Prelude.rnf cachePoint `Prelude.seq`
        Prelude.rnf citationsContent `Prelude.seq`
          Prelude.rnf document `Prelude.seq`
            Prelude.rnf guardContent `Prelude.seq`
              Prelude.rnf image `Prelude.seq`
                Prelude.rnf reasoningContent `Prelude.seq`
                  Prelude.rnf searchResult `Prelude.seq`
                    Prelude.rnf text `Prelude.seq`
                      Prelude.rnf toolResult `Prelude.seq`
                        Prelude.rnf toolUse `Prelude.seq`
                          Prelude.rnf video

instance Data.ToJSON ContentBlock where
  toJSON ContentBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("audio" Data..=) Prelude.<$> audio,
            ("cachePoint" Data..=) Prelude.<$> cachePoint,
            ("citationsContent" Data..=)
              Prelude.<$> citationsContent,
            ("document" Data..=) Prelude.<$> document,
            ("guardContent" Data..=) Prelude.<$> guardContent,
            ("image" Data..=) Prelude.<$> image,
            ("reasoningContent" Data..=)
              Prelude.<$> reasoningContent,
            ("searchResult" Data..=) Prelude.<$> searchResult,
            ("text" Data..=) Prelude.<$> text,
            ("toolResult" Data..=) Prelude.<$> toolResult,
            ("toolUse" Data..=) Prelude.<$> toolUse,
            ("video" Data..=) Prelude.<$> video
          ]
      )
