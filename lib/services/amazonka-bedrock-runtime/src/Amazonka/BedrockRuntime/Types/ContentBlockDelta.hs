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
-- Module      : Amazonka.BedrockRuntime.Types.ContentBlockDelta
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the @ConverseStream@ shapes are
-- maintained by hand. See @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.ContentBlockDelta where

import Amazonka.BedrockRuntime.Types.CitationsDelta
import Amazonka.BedrockRuntime.Types.ReasoningContentBlockDelta
import Amazonka.BedrockRuntime.Types.ToolUseBlockDelta
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A block of content in a streaming response.
--
-- /See:/ 'newContentBlockDelta' smart constructor.
data ContentBlockDelta = ContentBlockDelta'
  { -- | Incremental citation information that is streamed as part of the
    -- response generation process.
    citation :: Prelude.Maybe CitationsDelta,
    -- | Contains content regarding the reasoning that is carried out by the
    -- model. Reasoning refers to a Chain of Thought (CoT) that the model
    -- generates to enhance the accuracy of its final response.
    reasoningContent :: Prelude.Maybe (Data.Sensitive ReasoningContentBlockDelta),
    -- | The content text.
    text :: Prelude.Maybe Prelude.Text,
    -- | Information about a tool that the model is requesting to use.
    toolUse :: Prelude.Maybe ToolUseBlockDelta
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContentBlockDelta' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'citation', 'contentBlockDelta_citation' - Incremental citation information that is streamed as part of the
-- response generation process.
--
-- 'reasoningContent', 'contentBlockDelta_reasoningContent' - Contains content regarding the reasoning that is carried out by the
-- model. Reasoning refers to a Chain of Thought (CoT) that the model
-- generates to enhance the accuracy of its final response.
--
-- 'text', 'contentBlockDelta_text' - The content text.
--
-- 'toolUse', 'contentBlockDelta_toolUse' - Information about a tool that the model is requesting to use.
newContentBlockDelta ::
  ContentBlockDelta
newContentBlockDelta =
  ContentBlockDelta'
    { citation = Prelude.Nothing,
      reasoningContent = Prelude.Nothing,
      text = Prelude.Nothing,
      toolUse = Prelude.Nothing
    }

-- | Incremental citation information that is streamed as part of the
-- response generation process.
contentBlockDelta_citation :: Lens.Lens' ContentBlockDelta (Prelude.Maybe CitationsDelta)
contentBlockDelta_citation = Lens.lens (\ContentBlockDelta' {citation} -> citation) (\s@ContentBlockDelta' {} a -> s {citation = a} :: ContentBlockDelta)

-- | Contains content regarding the reasoning that is carried out by the
-- model. Reasoning refers to a Chain of Thought (CoT) that the model
-- generates to enhance the accuracy of its final response.
contentBlockDelta_reasoningContent :: Lens.Lens' ContentBlockDelta (Prelude.Maybe ReasoningContentBlockDelta)
contentBlockDelta_reasoningContent = Lens.lens (\ContentBlockDelta' {reasoningContent} -> reasoningContent) (\s@ContentBlockDelta' {} a -> s {reasoningContent = a} :: ContentBlockDelta) Prelude.. Lens.mapping Data._Sensitive

-- | The content text.
contentBlockDelta_text :: Lens.Lens' ContentBlockDelta (Prelude.Maybe Prelude.Text)
contentBlockDelta_text = Lens.lens (\ContentBlockDelta' {text} -> text) (\s@ContentBlockDelta' {} a -> s {text = a} :: ContentBlockDelta)

-- | Information about a tool that the model is requesting to use.
contentBlockDelta_toolUse :: Lens.Lens' ContentBlockDelta (Prelude.Maybe ToolUseBlockDelta)
contentBlockDelta_toolUse = Lens.lens (\ContentBlockDelta' {toolUse} -> toolUse) (\s@ContentBlockDelta' {} a -> s {toolUse = a} :: ContentBlockDelta)

instance Data.FromJSON ContentBlockDelta where
  parseJSON =
    Data.withObject
      "ContentBlockDelta"
      ( \x ->
          ContentBlockDelta'
            Prelude.<$> (x Data..:? "citation")
            Prelude.<*> (x Data..:? "reasoningContent")
            Prelude.<*> (x Data..:? "text")
            Prelude.<*> (x Data..:? "toolUse")
      )

instance Prelude.Hashable ContentBlockDelta where
  hashWithSalt _salt ContentBlockDelta' {..} =
    _salt
      `Prelude.hashWithSalt` citation
      `Prelude.hashWithSalt` reasoningContent
      `Prelude.hashWithSalt` text
      `Prelude.hashWithSalt` toolUse

instance Prelude.NFData ContentBlockDelta where
  rnf ContentBlockDelta' {..} =
    Prelude.rnf citation `Prelude.seq`
      Prelude.rnf reasoningContent `Prelude.seq`
        Prelude.rnf text `Prelude.seq`
          Prelude.rnf toolUse
