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
-- Module      : Amazonka.BedrockRuntime.Types.OutputFormatStructure
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.OutputFormatStructure where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.JsonSchemaDefinition
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The structure that the model\'s output must adhere to.
--
-- /See:/ 'newOutputFormatStructure' smart constructor.
data OutputFormatStructure = OutputFormatStructure'
  { -- | A JSON schema structure that the model\'s output must adhere to.
    jsonSchema :: Prelude.Maybe JsonSchemaDefinition
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OutputFormatStructure' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jsonSchema', 'outputFormatStructure_jsonSchema' - A JSON schema structure that the model\'s output must adhere to.
newOutputFormatStructure ::
  OutputFormatStructure
newOutputFormatStructure =
  OutputFormatStructure'
    { jsonSchema =
        Prelude.Nothing
    }

-- | A JSON schema structure that the model\'s output must adhere to.
outputFormatStructure_jsonSchema :: Lens.Lens' OutputFormatStructure (Prelude.Maybe JsonSchemaDefinition)
outputFormatStructure_jsonSchema = Lens.lens (\OutputFormatStructure' {jsonSchema} -> jsonSchema) (\s@OutputFormatStructure' {} a -> s {jsonSchema = a} :: OutputFormatStructure)

instance Prelude.Hashable OutputFormatStructure where
  hashWithSalt _salt OutputFormatStructure' {..} =
    _salt `Prelude.hashWithSalt` jsonSchema

instance Prelude.NFData OutputFormatStructure where
  rnf OutputFormatStructure' {..} =
    Prelude.rnf jsonSchema

instance Data.ToJSON OutputFormatStructure where
  toJSON OutputFormatStructure' {..} =
    Data.object
      ( Prelude.catMaybes
          [("jsonSchema" Data..=) Prelude.<$> jsonSchema]
      )
