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
-- Module      : Amazonka.BedrockRuntime.Types.ToolConfiguration
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ToolConfiguration where

import Amazonka.BedrockRuntime.Types.Tool
import Amazonka.BedrockRuntime.Types.ToolChoice
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Configuration information for the tools that you pass to a model. For
-- more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html Tool use (function calling)>
-- in the Amazon Bedrock User Guide.
--
-- /See:/ 'newToolConfiguration' smart constructor.
data ToolConfiguration = ToolConfiguration'
  { -- | If supported by model, forces the model to request a tool.
    toolChoice :: Prelude.Maybe ToolChoice,
    -- | An array of tools that you want to pass to a model.
    tools :: Prelude.NonEmpty Tool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ToolConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'toolChoice', 'toolConfiguration_toolChoice' - If supported by model, forces the model to request a tool.
--
-- 'tools', 'toolConfiguration_tools' - An array of tools that you want to pass to a model.
newToolConfiguration ::
  -- | 'tools'
  Prelude.NonEmpty Tool ->
  ToolConfiguration
newToolConfiguration pTools_ =
  ToolConfiguration'
    { toolChoice = Prelude.Nothing,
      tools = Lens.coerced Lens.# pTools_
    }

-- | If supported by model, forces the model to request a tool.
toolConfiguration_toolChoice :: Lens.Lens' ToolConfiguration (Prelude.Maybe ToolChoice)
toolConfiguration_toolChoice = Lens.lens (\ToolConfiguration' {toolChoice} -> toolChoice) (\s@ToolConfiguration' {} a -> s {toolChoice = a} :: ToolConfiguration)

-- | An array of tools that you want to pass to a model.
toolConfiguration_tools :: Lens.Lens' ToolConfiguration (Prelude.NonEmpty Tool)
toolConfiguration_tools = Lens.lens (\ToolConfiguration' {tools} -> tools) (\s@ToolConfiguration' {} a -> s {tools = a} :: ToolConfiguration) Prelude.. Lens.coerced

instance Prelude.Hashable ToolConfiguration where
  hashWithSalt _salt ToolConfiguration' {..} =
    _salt
      `Prelude.hashWithSalt` toolChoice
      `Prelude.hashWithSalt` tools

instance Prelude.NFData ToolConfiguration where
  rnf ToolConfiguration' {..} =
    Prelude.rnf toolChoice `Prelude.seq`
      Prelude.rnf tools

instance Data.ToJSON ToolConfiguration where
  toJSON ToolConfiguration' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("toolChoice" Data..=) Prelude.<$> toolChoice,
            Prelude.Just ("tools" Data..= tools)
          ]
      )
