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
-- Module      : Amazonka.BedrockRuntime.Types.ToolUseBlockStart
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the @ConverseStream@ shapes are
-- maintained by hand. See @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.ToolUseBlockStart where

import Amazonka.BedrockRuntime.Types.ToolUseType
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The start of a tool use block in a streaming response.
--
-- /See:/ 'newToolUseBlockStart' smart constructor.
data ToolUseBlockStart = ToolUseBlockStart'
  { -- | The type for the tool request.
    type' :: Prelude.Maybe ToolUseType,
    -- | The ID for the tool request.
    toolUseId :: Prelude.Text,
    -- | The name of the tool that the model is requesting to use.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ToolUseBlockStart' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'toolUseBlockStart_type' - The type for the tool request.
--
-- 'toolUseId', 'toolUseBlockStart_toolUseId' - The ID for the tool request.
--
-- 'name', 'toolUseBlockStart_name' - The name of the tool that the model is requesting to use.
newToolUseBlockStart ::
  -- | 'toolUseId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  ToolUseBlockStart
newToolUseBlockStart pToolUseId_ pName_ =
  ToolUseBlockStart'
    { type' = Prelude.Nothing,
      toolUseId = pToolUseId_,
      name = pName_
    }

-- | The type for the tool request.
toolUseBlockStart_type :: Lens.Lens' ToolUseBlockStart (Prelude.Maybe ToolUseType)
toolUseBlockStart_type = Lens.lens (\ToolUseBlockStart' {type'} -> type') (\s@ToolUseBlockStart' {} a -> s {type' = a} :: ToolUseBlockStart)

-- | The ID for the tool request.
toolUseBlockStart_toolUseId :: Lens.Lens' ToolUseBlockStart Prelude.Text
toolUseBlockStart_toolUseId = Lens.lens (\ToolUseBlockStart' {toolUseId} -> toolUseId) (\s@ToolUseBlockStart' {} a -> s {toolUseId = a} :: ToolUseBlockStart)

-- | The name of the tool that the model is requesting to use.
toolUseBlockStart_name :: Lens.Lens' ToolUseBlockStart Prelude.Text
toolUseBlockStart_name = Lens.lens (\ToolUseBlockStart' {name} -> name) (\s@ToolUseBlockStart' {} a -> s {name = a} :: ToolUseBlockStart)

instance Data.FromJSON ToolUseBlockStart where
  parseJSON =
    Data.withObject
      "ToolUseBlockStart"
      ( \x ->
          ToolUseBlockStart'
            Prelude.<$> (x Data..:? "type")
            Prelude.<*> (x Data..: "toolUseId")
            Prelude.<*> (x Data..: "name")
      )

instance Prelude.Hashable ToolUseBlockStart where
  hashWithSalt _salt ToolUseBlockStart' {..} =
    _salt
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` toolUseId
      `Prelude.hashWithSalt` name

instance Prelude.NFData ToolUseBlockStart where
  rnf ToolUseBlockStart' {..} =
    Prelude.rnf type' `Prelude.seq`
      Prelude.rnf toolUseId `Prelude.seq`
        Prelude.rnf name
