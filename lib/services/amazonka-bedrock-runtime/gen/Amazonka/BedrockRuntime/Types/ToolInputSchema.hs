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
-- Module      : Amazonka.BedrockRuntime.Types.ToolInputSchema
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ToolInputSchema where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The schema for the tool. The top level schema type must be @object@. For
-- more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html Call a tool with the Converse API>
-- in the Amazon Bedrock User Guide.
--
-- /See:/ 'newToolInputSchema' smart constructor.
data ToolInputSchema = ToolInputSchema'
  { -- | The JSON schema for the tool. For more information, see
    -- <https://json-schema.org/understanding-json-schema/reference JSON Schema Reference>.
    json :: Prelude.Maybe Document
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ToolInputSchema' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'json', 'toolInputSchema_json' - The JSON schema for the tool. For more information, see
-- <https://json-schema.org/understanding-json-schema/reference JSON Schema Reference>.
newToolInputSchema ::
  ToolInputSchema
newToolInputSchema =
  ToolInputSchema' {json = Prelude.Nothing}

-- | The JSON schema for the tool. For more information, see
-- <https://json-schema.org/understanding-json-schema/reference JSON Schema Reference>.
toolInputSchema_json :: Lens.Lens' ToolInputSchema (Prelude.Maybe Document)
toolInputSchema_json = Lens.lens (\ToolInputSchema' {json} -> json) (\s@ToolInputSchema' {} a -> s {json = a} :: ToolInputSchema)

instance Prelude.Hashable ToolInputSchema where
  hashWithSalt _salt ToolInputSchema' {..} =
    _salt `Prelude.hashWithSalt` json

instance Prelude.NFData ToolInputSchema where
  rnf ToolInputSchema' {..} = Prelude.rnf json

instance Data.ToJSON ToolInputSchema where
  toJSON ToolInputSchema' {..} =
    Data.object
      ( Prelude.catMaybes
          [("json" Data..=) Prelude.<$> json]
      )
