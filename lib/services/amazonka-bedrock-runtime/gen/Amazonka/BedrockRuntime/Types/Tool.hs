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
-- Module      : Amazonka.BedrockRuntime.Types.Tool
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.Tool where

import Amazonka.BedrockRuntime.Types.CachePointBlock
import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.SystemTool
import Amazonka.BedrockRuntime.Types.ToolSpecification
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Information about a tool that you can use with the Converse API. For
-- more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html Call a tool with the Converse API>
-- in the Amazon Bedrock User Guide.
--
-- /See:/ 'newTool' smart constructor.
data Tool = Tool'
  { -- | CachePoint to include in the tool configuration.
    cachePoint :: Prelude.Maybe CachePointBlock,
    -- | Specifies the system-defined tool that you want use.
    systemTool :: Prelude.Maybe SystemTool,
    -- | The specfication for the tool.
    toolSpec :: Prelude.Maybe ToolSpecification
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Tool' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cachePoint', 'tool_cachePoint' - CachePoint to include in the tool configuration.
--
-- 'systemTool', 'tool_systemTool' - Specifies the system-defined tool that you want use.
--
-- 'toolSpec', 'tool_toolSpec' - The specfication for the tool.
newTool ::
  Tool
newTool =
  Tool'
    { cachePoint = Prelude.Nothing,
      systemTool = Prelude.Nothing,
      toolSpec = Prelude.Nothing
    }

-- | CachePoint to include in the tool configuration.
tool_cachePoint :: Lens.Lens' Tool (Prelude.Maybe CachePointBlock)
tool_cachePoint = Lens.lens (\Tool' {cachePoint} -> cachePoint) (\s@Tool' {} a -> s {cachePoint = a} :: Tool)

-- | Specifies the system-defined tool that you want use.
tool_systemTool :: Lens.Lens' Tool (Prelude.Maybe SystemTool)
tool_systemTool = Lens.lens (\Tool' {systemTool} -> systemTool) (\s@Tool' {} a -> s {systemTool = a} :: Tool)

-- | The specfication for the tool.
tool_toolSpec :: Lens.Lens' Tool (Prelude.Maybe ToolSpecification)
tool_toolSpec = Lens.lens (\Tool' {toolSpec} -> toolSpec) (\s@Tool' {} a -> s {toolSpec = a} :: Tool)

instance Prelude.Hashable Tool where
  hashWithSalt _salt Tool' {..} =
    _salt
      `Prelude.hashWithSalt` cachePoint
      `Prelude.hashWithSalt` systemTool
      `Prelude.hashWithSalt` toolSpec

instance Prelude.NFData Tool where
  rnf Tool' {..} =
    Prelude.rnf cachePoint `Prelude.seq`
      Prelude.rnf systemTool `Prelude.seq`
        Prelude.rnf toolSpec

instance Data.ToJSON Tool where
  toJSON Tool' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("cachePoint" Data..=) Prelude.<$> cachePoint,
            ("systemTool" Data..=) Prelude.<$> systemTool,
            ("toolSpec" Data..=) Prelude.<$> toolSpec
          ]
      )
