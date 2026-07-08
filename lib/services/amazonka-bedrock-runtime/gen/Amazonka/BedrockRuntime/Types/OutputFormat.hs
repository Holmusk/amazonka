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
-- Module      : Amazonka.BedrockRuntime.Types.OutputFormat
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.OutputFormat where

import Amazonka.BedrockRuntime.Types.OutputFormatStructure
import Amazonka.BedrockRuntime.Types.OutputFormatType
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Structured output parameters to control the model\'s response.
--
-- /See:/ 'newOutputFormat' smart constructor.
data OutputFormat = OutputFormat'
  { -- | The type of structured output format.
    type' :: OutputFormatType,
    -- | The structure that the model\'s output must adhere to.
    structure :: Data.Sensitive OutputFormatStructure
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OutputFormat' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'outputFormat_type' - The type of structured output format.
--
-- 'structure', 'outputFormat_structure' - The structure that the model\'s output must adhere to.
newOutputFormat ::
  -- | 'type''
  OutputFormatType ->
  -- | 'structure'
  OutputFormatStructure ->
  OutputFormat
newOutputFormat pType_ pStructure_ =
  OutputFormat'
    { type' = pType_,
      structure = Data._Sensitive Lens.# pStructure_
    }

-- | The type of structured output format.
outputFormat_type :: Lens.Lens' OutputFormat OutputFormatType
outputFormat_type = Lens.lens (\OutputFormat' {type'} -> type') (\s@OutputFormat' {} a -> s {type' = a} :: OutputFormat)

-- | The structure that the model\'s output must adhere to.
outputFormat_structure :: Lens.Lens' OutputFormat OutputFormatStructure
outputFormat_structure = Lens.lens (\OutputFormat' {structure} -> structure) (\s@OutputFormat' {} a -> s {structure = a} :: OutputFormat) Prelude.. Data._Sensitive

instance Prelude.Hashable OutputFormat where
  hashWithSalt _salt OutputFormat' {..} =
    _salt
      `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` structure

instance Prelude.NFData OutputFormat where
  rnf OutputFormat' {..} =
    Prelude.rnf type' `Prelude.seq`
      Prelude.rnf structure

instance Data.ToJSON OutputFormat where
  toJSON OutputFormat' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just ("type" Data..= type'),
            Prelude.Just ("structure" Data..= structure)
          ]
      )
