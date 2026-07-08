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
-- Module      : Amazonka.BedrockRuntime.Types.ToolUseBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ToolUseBlock where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.ToolUseType
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A tool use content block. Contains information about a tool that the
-- model is requesting be run., The model uses the result from the tool to
-- generate a response. For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html Call a tool with the Converse API>
-- in the Amazon Bedrock User Guide.
--
-- /See:/ 'newToolUseBlock' smart constructor.
data ToolUseBlock = ToolUseBlock'
  { -- | The type for the tool request.
    type' :: Prelude.Maybe ToolUseType,
    -- | The ID for the tool request.
    toolUseId :: Prelude.Text,
    -- | The name of the tool that the model wants to use.
    name :: Prelude.Text,
    -- | The input to pass to the tool.
    input :: Document
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ToolUseBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'toolUseBlock_type' - The type for the tool request.
--
-- 'toolUseId', 'toolUseBlock_toolUseId' - The ID for the tool request.
--
-- 'name', 'toolUseBlock_name' - The name of the tool that the model wants to use.
--
-- 'input', 'toolUseBlock_input' - The input to pass to the tool.
newToolUseBlock ::
  -- | 'toolUseId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'input'
  Document ->
  ToolUseBlock
newToolUseBlock pToolUseId_ pName_ pInput_ =
  ToolUseBlock'
    { type' = Prelude.Nothing,
      toolUseId = pToolUseId_,
      name = pName_,
      input = pInput_
    }

-- | The type for the tool request.
toolUseBlock_type :: Lens.Lens' ToolUseBlock (Prelude.Maybe ToolUseType)
toolUseBlock_type = Lens.lens (\ToolUseBlock' {type'} -> type') (\s@ToolUseBlock' {} a -> s {type' = a} :: ToolUseBlock)

-- | The ID for the tool request.
toolUseBlock_toolUseId :: Lens.Lens' ToolUseBlock Prelude.Text
toolUseBlock_toolUseId = Lens.lens (\ToolUseBlock' {toolUseId} -> toolUseId) (\s@ToolUseBlock' {} a -> s {toolUseId = a} :: ToolUseBlock)

-- | The name of the tool that the model wants to use.
toolUseBlock_name :: Lens.Lens' ToolUseBlock Prelude.Text
toolUseBlock_name = Lens.lens (\ToolUseBlock' {name} -> name) (\s@ToolUseBlock' {} a -> s {name = a} :: ToolUseBlock)

-- | The input to pass to the tool.
toolUseBlock_input :: Lens.Lens' ToolUseBlock Document
toolUseBlock_input = Lens.lens (\ToolUseBlock' {input} -> input) (\s@ToolUseBlock' {} a -> s {input = a} :: ToolUseBlock)

instance Data.FromJSON ToolUseBlock where
  parseJSON =
    Data.withObject
      "ToolUseBlock"
      ( \x ->
          ToolUseBlock'
            Prelude.<$> (x Data..:? "type")
            Prelude.<*> (x Data..: "toolUseId")
            Prelude.<*> (x Data..: "name")
            Prelude.<*> (x Data..: "input")
      )

instance Prelude.Hashable ToolUseBlock where
  hashWithSalt _salt ToolUseBlock' {..} =
    _salt
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` toolUseId
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` input

instance Prelude.NFData ToolUseBlock where
  rnf ToolUseBlock' {..} =
    Prelude.rnf type' `Prelude.seq`
      Prelude.rnf toolUseId `Prelude.seq`
        Prelude.rnf name `Prelude.seq`
          Prelude.rnf input

instance Data.ToJSON ToolUseBlock where
  toJSON ToolUseBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("type" Data..=) Prelude.<$> type',
            Prelude.Just ("toolUseId" Data..= toolUseId),
            Prelude.Just ("name" Data..= name),
            Prelude.Just ("input" Data..= input)
          ]
      )
