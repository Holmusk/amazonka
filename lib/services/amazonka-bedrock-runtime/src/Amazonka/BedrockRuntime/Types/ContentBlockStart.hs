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
-- Module      : Amazonka.BedrockRuntime.Types.ContentBlockStart
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the @ConverseStream@ shapes are
-- maintained by hand. See @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.ContentBlockStart where

import Amazonka.BedrockRuntime.Types.ToolUseBlockStart
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Content block start information.
--
-- /See:/ 'newContentBlockStart' smart constructor.
data ContentBlockStart = ContentBlockStart'
  { -- | Information about a tool that the model is requesting to use.
    toolUse :: Prelude.Maybe ToolUseBlockStart
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContentBlockStart' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'toolUse', 'contentBlockStart_toolUse' - Information about a tool that the model is requesting to use.
newContentBlockStart ::
  ContentBlockStart
newContentBlockStart =
  ContentBlockStart' {toolUse = Prelude.Nothing}

-- | Information about a tool that the model is requesting to use.
contentBlockStart_toolUse :: Lens.Lens' ContentBlockStart (Prelude.Maybe ToolUseBlockStart)
contentBlockStart_toolUse = Lens.lens (\ContentBlockStart' {toolUse} -> toolUse) (\s@ContentBlockStart' {} a -> s {toolUse = a} :: ContentBlockStart)

instance Data.FromJSON ContentBlockStart where
  parseJSON =
    Data.withObject
      "ContentBlockStart"
      ( \x ->
          ContentBlockStart'
            Prelude.<$> (x Data..:? "toolUse")
      )

instance Prelude.Hashable ContentBlockStart where
  hashWithSalt _salt ContentBlockStart' {..} =
    _salt `Prelude.hashWithSalt` toolUse

instance Prelude.NFData ContentBlockStart where
  rnf ContentBlockStart' {..} = Prelude.rnf toolUse
