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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksContentBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksContentBlock where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A content block within a message to evaluate.
--
-- /See:/ 'newGuardrailChecksContentBlock' smart constructor.
data GuardrailChecksContentBlock = GuardrailChecksContentBlock'
  { -- | The text content to evaluate.
    text :: Prelude.Maybe (Data.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksContentBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'text', 'guardrailChecksContentBlock_text' - The text content to evaluate.
newGuardrailChecksContentBlock ::
  GuardrailChecksContentBlock
newGuardrailChecksContentBlock =
  GuardrailChecksContentBlock'
    { text =
        Prelude.Nothing
    }

-- | The text content to evaluate.
guardrailChecksContentBlock_text :: Lens.Lens' GuardrailChecksContentBlock (Prelude.Maybe Prelude.Text)
guardrailChecksContentBlock_text = Lens.lens (\GuardrailChecksContentBlock' {text} -> text) (\s@GuardrailChecksContentBlock' {} a -> s {text = a} :: GuardrailChecksContentBlock) Prelude.. Lens.mapping Data._Sensitive

instance Prelude.Hashable GuardrailChecksContentBlock where
  hashWithSalt _salt GuardrailChecksContentBlock' {..} =
    _salt `Prelude.hashWithSalt` text

instance Prelude.NFData GuardrailChecksContentBlock where
  rnf GuardrailChecksContentBlock' {..} =
    Prelude.rnf text

instance Data.ToJSON GuardrailChecksContentBlock where
  toJSON GuardrailChecksContentBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [("text" Data..=) Prelude.<$> text]
      )
