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
-- Module      : Amazonka.BedrockRuntime.Types.ToolResultBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ToolResultBlock where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.ToolResultContentBlock
import Amazonka.BedrockRuntime.Types.ToolResultStatus
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A tool result block that contains the results for a tool request that
-- the model previously made. For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html Call a tool with the Converse API>
-- in the Amazon Bedrock User Guide.
--
-- /See:/ 'newToolResultBlock' smart constructor.
data ToolResultBlock = ToolResultBlock'
  { -- | The status for the tool result content block.
    --
    -- This field is only supported by Amazon Nova and Anthropic Claude 3 and 4
    -- models.
    status :: Prelude.Maybe ToolResultStatus,
    -- | The type for the tool result content block.
    type' :: Prelude.Maybe Prelude.Text,
    -- | The ID of the tool request that this is the result for.
    toolUseId :: Prelude.Text,
    -- | The content for tool result content block.
    content :: [ToolResultContentBlock]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ToolResultBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'toolResultBlock_status' - The status for the tool result content block.
--
-- This field is only supported by Amazon Nova and Anthropic Claude 3 and 4
-- models.
--
-- 'type'', 'toolResultBlock_type' - The type for the tool result content block.
--
-- 'toolUseId', 'toolResultBlock_toolUseId' - The ID of the tool request that this is the result for.
--
-- 'content', 'toolResultBlock_content' - The content for tool result content block.
newToolResultBlock ::
  -- | 'toolUseId'
  Prelude.Text ->
  ToolResultBlock
newToolResultBlock pToolUseId_ =
  ToolResultBlock'
    { status = Prelude.Nothing,
      type' = Prelude.Nothing,
      toolUseId = pToolUseId_,
      content = Prelude.mempty
    }

-- | The status for the tool result content block.
--
-- This field is only supported by Amazon Nova and Anthropic Claude 3 and 4
-- models.
toolResultBlock_status :: Lens.Lens' ToolResultBlock (Prelude.Maybe ToolResultStatus)
toolResultBlock_status = Lens.lens (\ToolResultBlock' {status} -> status) (\s@ToolResultBlock' {} a -> s {status = a} :: ToolResultBlock)

-- | The type for the tool result content block.
toolResultBlock_type :: Lens.Lens' ToolResultBlock (Prelude.Maybe Prelude.Text)
toolResultBlock_type = Lens.lens (\ToolResultBlock' {type'} -> type') (\s@ToolResultBlock' {} a -> s {type' = a} :: ToolResultBlock)

-- | The ID of the tool request that this is the result for.
toolResultBlock_toolUseId :: Lens.Lens' ToolResultBlock Prelude.Text
toolResultBlock_toolUseId = Lens.lens (\ToolResultBlock' {toolUseId} -> toolUseId) (\s@ToolResultBlock' {} a -> s {toolUseId = a} :: ToolResultBlock)

-- | The content for tool result content block.
toolResultBlock_content :: Lens.Lens' ToolResultBlock [ToolResultContentBlock]
toolResultBlock_content = Lens.lens (\ToolResultBlock' {content} -> content) (\s@ToolResultBlock' {} a -> s {content = a} :: ToolResultBlock) Prelude.. Lens.coerced

instance Data.FromJSON ToolResultBlock where
  parseJSON =
    Data.withObject
      "ToolResultBlock"
      ( \x ->
          ToolResultBlock'
            Prelude.<$> (x Data..:? "status")
            Prelude.<*> (x Data..:? "type")
            Prelude.<*> (x Data..: "toolUseId")
            Prelude.<*> (x Data..:? "content" Data..!= Prelude.mempty)
      )

instance Prelude.Hashable ToolResultBlock where
  hashWithSalt _salt ToolResultBlock' {..} =
    _salt
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` toolUseId
      `Prelude.hashWithSalt` content

instance Prelude.NFData ToolResultBlock where
  rnf ToolResultBlock' {..} =
    Prelude.rnf status `Prelude.seq`
      Prelude.rnf type' `Prelude.seq`
        Prelude.rnf toolUseId `Prelude.seq`
          Prelude.rnf content

instance Data.ToJSON ToolResultBlock where
  toJSON ToolResultBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("status" Data..=) Prelude.<$> status,
            ("type" Data..=) Prelude.<$> type',
            Prelude.Just ("toolUseId" Data..= toolUseId),
            Prelude.Just ("content" Data..= content)
          ]
      )
