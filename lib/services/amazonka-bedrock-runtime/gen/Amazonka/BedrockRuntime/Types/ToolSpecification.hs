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
-- Module      : Amazonka.BedrockRuntime.Types.ToolSpecification
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ToolSpecification where

import Amazonka.BedrockRuntime.Types.ToolInputSchema
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The specification for the tool. For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html Call a tool with the Converse API>
-- in the Amazon Bedrock User Guide.
--
-- /See:/ 'newToolSpecification' smart constructor.
data ToolSpecification = ToolSpecification'
  { -- | The description for the tool.
    description :: Prelude.Maybe Prelude.Text,
    -- | Flag to enable structured output enforcement on a tool usage response.
    strict :: Prelude.Maybe Prelude.Bool,
    -- | The name for the tool.
    name :: Prelude.Text,
    -- | The input schema for the tool in JSON format.
    inputSchema :: ToolInputSchema
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ToolSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'toolSpecification_description' - The description for the tool.
--
-- 'strict', 'toolSpecification_strict' - Flag to enable structured output enforcement on a tool usage response.
--
-- 'name', 'toolSpecification_name' - The name for the tool.
--
-- 'inputSchema', 'toolSpecification_inputSchema' - The input schema for the tool in JSON format.
newToolSpecification ::
  -- | 'name'
  Prelude.Text ->
  -- | 'inputSchema'
  ToolInputSchema ->
  ToolSpecification
newToolSpecification pName_ pInputSchema_ =
  ToolSpecification'
    { description = Prelude.Nothing,
      strict = Prelude.Nothing,
      name = pName_,
      inputSchema = pInputSchema_
    }

-- | The description for the tool.
toolSpecification_description :: Lens.Lens' ToolSpecification (Prelude.Maybe Prelude.Text)
toolSpecification_description = Lens.lens (\ToolSpecification' {description} -> description) (\s@ToolSpecification' {} a -> s {description = a} :: ToolSpecification)

-- | Flag to enable structured output enforcement on a tool usage response.
toolSpecification_strict :: Lens.Lens' ToolSpecification (Prelude.Maybe Prelude.Bool)
toolSpecification_strict = Lens.lens (\ToolSpecification' {strict} -> strict) (\s@ToolSpecification' {} a -> s {strict = a} :: ToolSpecification)

-- | The name for the tool.
toolSpecification_name :: Lens.Lens' ToolSpecification Prelude.Text
toolSpecification_name = Lens.lens (\ToolSpecification' {name} -> name) (\s@ToolSpecification' {} a -> s {name = a} :: ToolSpecification)

-- | The input schema for the tool in JSON format.
toolSpecification_inputSchema :: Lens.Lens' ToolSpecification ToolInputSchema
toolSpecification_inputSchema = Lens.lens (\ToolSpecification' {inputSchema} -> inputSchema) (\s@ToolSpecification' {} a -> s {inputSchema = a} :: ToolSpecification)

instance Prelude.Hashable ToolSpecification where
  hashWithSalt _salt ToolSpecification' {..} =
    _salt
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` strict
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` inputSchema

instance Prelude.NFData ToolSpecification where
  rnf ToolSpecification' {..} =
    Prelude.rnf description `Prelude.seq`
      Prelude.rnf strict `Prelude.seq`
        Prelude.rnf name `Prelude.seq`
          Prelude.rnf inputSchema

instance Data.ToJSON ToolSpecification where
  toJSON ToolSpecification' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("description" Data..=) Prelude.<$> description,
            ("strict" Data..=) Prelude.<$> strict,
            Prelude.Just ("name" Data..= name),
            Prelude.Just ("inputSchema" Data..= inputSchema)
          ]
      )
