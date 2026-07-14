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
-- Module      : Amazonka.BedrockRuntime.Types.JsonSchemaDefinition
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.JsonSchemaDefinition where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | JSON schema structured output format options.
--
-- /See:/ 'newJsonSchemaDefinition' smart constructor.
data JsonSchemaDefinition = JsonSchemaDefinition'
  { -- | A description of the JSON schema.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the JSON schema.
    name :: Prelude.Maybe Prelude.Text,
    -- | The JSON schema to constrain the model\'s output. For more information,
    -- see
    -- <https://json-schema.org/understanding-json-schema/reference JSON Schema Reference>.
    schema :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JsonSchemaDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'jsonSchemaDefinition_description' - A description of the JSON schema.
--
-- 'name', 'jsonSchemaDefinition_name' - The name of the JSON schema.
--
-- 'schema', 'jsonSchemaDefinition_schema' - The JSON schema to constrain the model\'s output. For more information,
-- see
-- <https://json-schema.org/understanding-json-schema/reference JSON Schema Reference>.
newJsonSchemaDefinition ::
  -- | 'schema'
  Prelude.Text ->
  JsonSchemaDefinition
newJsonSchemaDefinition pSchema_ =
  JsonSchemaDefinition'
    { description =
        Prelude.Nothing,
      name = Prelude.Nothing,
      schema = pSchema_
    }

-- | A description of the JSON schema.
jsonSchemaDefinition_description :: Lens.Lens' JsonSchemaDefinition (Prelude.Maybe Prelude.Text)
jsonSchemaDefinition_description = Lens.lens (\JsonSchemaDefinition' {description} -> description) (\s@JsonSchemaDefinition' {} a -> s {description = a} :: JsonSchemaDefinition)

-- | The name of the JSON schema.
jsonSchemaDefinition_name :: Lens.Lens' JsonSchemaDefinition (Prelude.Maybe Prelude.Text)
jsonSchemaDefinition_name = Lens.lens (\JsonSchemaDefinition' {name} -> name) (\s@JsonSchemaDefinition' {} a -> s {name = a} :: JsonSchemaDefinition)

-- | The JSON schema to constrain the model\'s output. For more information,
-- see
-- <https://json-schema.org/understanding-json-schema/reference JSON Schema Reference>.
jsonSchemaDefinition_schema :: Lens.Lens' JsonSchemaDefinition Prelude.Text
jsonSchemaDefinition_schema = Lens.lens (\JsonSchemaDefinition' {schema} -> schema) (\s@JsonSchemaDefinition' {} a -> s {schema = a} :: JsonSchemaDefinition)

instance Prelude.Hashable JsonSchemaDefinition where
  hashWithSalt _salt JsonSchemaDefinition' {..} =
    _salt
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` schema

instance Prelude.NFData JsonSchemaDefinition where
  rnf JsonSchemaDefinition' {..} =
    Prelude.rnf description `Prelude.seq`
      Prelude.rnf name `Prelude.seq`
        Prelude.rnf schema

instance Data.ToJSON JsonSchemaDefinition where
  toJSON JsonSchemaDefinition' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("description" Data..=) Prelude.<$> description,
            ("name" Data..=) Prelude.<$> name,
            Prelude.Just ("schema" Data..= schema)
          ]
      )
