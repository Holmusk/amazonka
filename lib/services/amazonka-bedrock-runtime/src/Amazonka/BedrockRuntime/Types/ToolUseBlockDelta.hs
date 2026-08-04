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
-- Module      : Amazonka.BedrockRuntime.Types.ToolUseBlockDelta
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the @ConverseStream@ shapes are
-- maintained by hand. See @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.ToolUseBlockDelta where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The delta for a tool use block.
--
-- /See:/ 'newToolUseBlockDelta' smart constructor.
data ToolUseBlockDelta = ToolUseBlockDelta'
  { -- | The input for a requested tool.
    input :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ToolUseBlockDelta' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'input', 'toolUseBlockDelta_input' - The input for a requested tool.
newToolUseBlockDelta ::
  -- | 'input'
  Prelude.Text ->
  ToolUseBlockDelta
newToolUseBlockDelta pInput_ =
  ToolUseBlockDelta' {input = pInput_}

-- | The input for a requested tool.
toolUseBlockDelta_input :: Lens.Lens' ToolUseBlockDelta Prelude.Text
toolUseBlockDelta_input = Lens.lens (\ToolUseBlockDelta' {input} -> input) (\s@ToolUseBlockDelta' {} a -> s {input = a} :: ToolUseBlockDelta)

instance Data.FromJSON ToolUseBlockDelta where
  parseJSON =
    Data.withObject
      "ToolUseBlockDelta"
      ( \x ->
          ToolUseBlockDelta' Prelude.<$> (x Data..: "input")
      )

instance Prelude.Hashable ToolUseBlockDelta where
  hashWithSalt _salt ToolUseBlockDelta' {..} =
    _salt `Prelude.hashWithSalt` input

instance Prelude.NFData ToolUseBlockDelta where
  rnf ToolUseBlockDelta' {..} = Prelude.rnf input
