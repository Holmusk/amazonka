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
-- Module      : Amazonka.BedrockRuntime.Types.PromptVariableValues
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.PromptVariableValues where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Contains a map of variables in a prompt from Prompt management to an
-- object containing the values to fill in for them when running model
-- invocation. For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management-how.html How Prompt management works>.
--
-- /See:/ 'newPromptVariableValues' smart constructor.
data PromptVariableValues = PromptVariableValues'
  { -- | The text value that the variable maps to.
    text :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PromptVariableValues' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'text', 'promptVariableValues_text' - The text value that the variable maps to.
newPromptVariableValues ::
  PromptVariableValues
newPromptVariableValues =
  PromptVariableValues' {text = Prelude.Nothing}

-- | The text value that the variable maps to.
promptVariableValues_text :: Lens.Lens' PromptVariableValues (Prelude.Maybe Prelude.Text)
promptVariableValues_text = Lens.lens (\PromptVariableValues' {text} -> text) (\s@PromptVariableValues' {} a -> s {text = a} :: PromptVariableValues)

instance Prelude.Hashable PromptVariableValues where
  hashWithSalt _salt PromptVariableValues' {..} =
    _salt `Prelude.hashWithSalt` text

instance Prelude.NFData PromptVariableValues where
  rnf PromptVariableValues' {..} = Prelude.rnf text

instance Data.ToJSON PromptVariableValues where
  toJSON PromptVariableValues' {..} =
    Data.object
      ( Prelude.catMaybes
          [("text" Data..=) Prelude.<$> text]
      )
