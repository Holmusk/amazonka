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
-- Module      : Amazonka.BedrockRuntime.Types.ReasoningContentBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ReasoningContentBlock where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.ReasoningTextBlock
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Contains content regarding the reasoning that is carried out by the
-- model with respect to the content in the content block. Reasoning refers
-- to a Chain of Thought (CoT) that the model generates to enhance the
-- accuracy of its final response.
--
-- /See:/ 'newReasoningContentBlock' smart constructor.
data ReasoningContentBlock = ReasoningContentBlock'
  { -- | The reasoning that the model used to return the output.
    reasoningText :: Prelude.Maybe (Data.Sensitive ReasoningTextBlock),
    -- | The content in the reasoning that was encrypted by the model provider
    -- for safety reasons. The encryption doesn\'t affect the quality of
    -- responses.
    redactedContent :: Prelude.Maybe Data.Base64
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReasoningContentBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reasoningText', 'reasoningContentBlock_reasoningText' - The reasoning that the model used to return the output.
--
-- 'redactedContent', 'reasoningContentBlock_redactedContent' - The content in the reasoning that was encrypted by the model provider
-- for safety reasons. The encryption doesn\'t affect the quality of
-- responses.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
newReasoningContentBlock ::
  ReasoningContentBlock
newReasoningContentBlock =
  ReasoningContentBlock'
    { reasoningText =
        Prelude.Nothing,
      redactedContent = Prelude.Nothing
    }

-- | The reasoning that the model used to return the output.
reasoningContentBlock_reasoningText :: Lens.Lens' ReasoningContentBlock (Prelude.Maybe ReasoningTextBlock)
reasoningContentBlock_reasoningText = Lens.lens (\ReasoningContentBlock' {reasoningText} -> reasoningText) (\s@ReasoningContentBlock' {} a -> s {reasoningText = a} :: ReasoningContentBlock) Prelude.. Lens.mapping Data._Sensitive

-- | The content in the reasoning that was encrypted by the model provider
-- for safety reasons. The encryption doesn\'t affect the quality of
-- responses.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
reasoningContentBlock_redactedContent :: Lens.Lens' ReasoningContentBlock (Prelude.Maybe Prelude.ByteString)
reasoningContentBlock_redactedContent = Lens.lens (\ReasoningContentBlock' {redactedContent} -> redactedContent) (\s@ReasoningContentBlock' {} a -> s {redactedContent = a} :: ReasoningContentBlock) Prelude.. Lens.mapping Data._Base64

instance Data.FromJSON ReasoningContentBlock where
  parseJSON =
    Data.withObject
      "ReasoningContentBlock"
      ( \x ->
          ReasoningContentBlock'
            Prelude.<$> (x Data..:? "reasoningText")
            Prelude.<*> (x Data..:? "redactedContent")
      )

instance Prelude.Hashable ReasoningContentBlock where
  hashWithSalt _salt ReasoningContentBlock' {..} =
    _salt
      `Prelude.hashWithSalt` reasoningText
      `Prelude.hashWithSalt` redactedContent

instance Prelude.NFData ReasoningContentBlock where
  rnf ReasoningContentBlock' {..} =
    Prelude.rnf reasoningText `Prelude.seq`
      Prelude.rnf redactedContent

instance Data.ToJSON ReasoningContentBlock where
  toJSON ReasoningContentBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("reasoningText" Data..=) Prelude.<$> reasoningText,
            ("redactedContent" Data..=)
              Prelude.<$> redactedContent
          ]
      )
