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
-- Module      : Amazonka.BedrockRuntime.Types.SpecificToolChoice
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.SpecificToolChoice where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The model must request a specific tool. For example,
-- @{\"tool\" : {\"name\" : \"Your tool name\"}}@. For more information,
-- see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html Call a tool with the Converse API>
-- in the Amazon Bedrock User Guide
--
-- This field is only supported by Anthropic Claude 3 models.
--
-- /See:/ 'newSpecificToolChoice' smart constructor.
data SpecificToolChoice = SpecificToolChoice'
  { -- | The name of the tool that the model must request.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SpecificToolChoice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'specificToolChoice_name' - The name of the tool that the model must request.
newSpecificToolChoice ::
  -- | 'name'
  Prelude.Text ->
  SpecificToolChoice
newSpecificToolChoice pName_ =
  SpecificToolChoice' {name = pName_}

-- | The name of the tool that the model must request.
specificToolChoice_name :: Lens.Lens' SpecificToolChoice Prelude.Text
specificToolChoice_name = Lens.lens (\SpecificToolChoice' {name} -> name) (\s@SpecificToolChoice' {} a -> s {name = a} :: SpecificToolChoice)

instance Prelude.Hashable SpecificToolChoice where
  hashWithSalt _salt SpecificToolChoice' {..} =
    _salt `Prelude.hashWithSalt` name

instance Prelude.NFData SpecificToolChoice where
  rnf SpecificToolChoice' {..} = Prelude.rnf name

instance Data.ToJSON SpecificToolChoice where
  toJSON SpecificToolChoice' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("name" Data..= name)]
      )
