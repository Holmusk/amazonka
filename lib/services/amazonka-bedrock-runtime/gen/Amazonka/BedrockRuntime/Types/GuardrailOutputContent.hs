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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailOutputContent
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailOutputContent where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The output content produced by the guardrail.
--
-- /See:/ 'newGuardrailOutputContent' smart constructor.
data GuardrailOutputContent = GuardrailOutputContent'
  { -- | The specific text for the output content produced by the guardrail.
    text :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailOutputContent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'text', 'guardrailOutputContent_text' - The specific text for the output content produced by the guardrail.
newGuardrailOutputContent ::
  GuardrailOutputContent
newGuardrailOutputContent =
  GuardrailOutputContent' {text = Prelude.Nothing}

-- | The specific text for the output content produced by the guardrail.
guardrailOutputContent_text :: Lens.Lens' GuardrailOutputContent (Prelude.Maybe Prelude.Text)
guardrailOutputContent_text = Lens.lens (\GuardrailOutputContent' {text} -> text) (\s@GuardrailOutputContent' {} a -> s {text = a} :: GuardrailOutputContent)

instance Data.FromJSON GuardrailOutputContent where
  parseJSON =
    Data.withObject
      "GuardrailOutputContent"
      ( \x ->
          GuardrailOutputContent'
            Prelude.<$> (x Data..:? "text")
      )

instance Prelude.Hashable GuardrailOutputContent where
  hashWithSalt _salt GuardrailOutputContent' {..} =
    _salt `Prelude.hashWithSalt` text

instance Prelude.NFData GuardrailOutputContent where
  rnf GuardrailOutputContent' {..} = Prelude.rnf text
