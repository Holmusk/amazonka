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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailCoverage
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailCoverage where

import Amazonka.BedrockRuntime.Types.GuardrailImageCoverage
import Amazonka.BedrockRuntime.Types.GuardrailTextCharactersCoverage
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The action of the guardrail coverage details.
--
-- /See:/ 'newGuardrailCoverage' smart constructor.
data GuardrailCoverage = GuardrailCoverage'
  { -- | The guardrail coverage for images (the number of images that guardrails
    -- guarded).
    images :: Prelude.Maybe GuardrailImageCoverage,
    -- | The text characters of the guardrail coverage details.
    textCharacters :: Prelude.Maybe GuardrailTextCharactersCoverage
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailCoverage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'images', 'guardrailCoverage_images' - The guardrail coverage for images (the number of images that guardrails
-- guarded).
--
-- 'textCharacters', 'guardrailCoverage_textCharacters' - The text characters of the guardrail coverage details.
newGuardrailCoverage ::
  GuardrailCoverage
newGuardrailCoverage =
  GuardrailCoverage'
    { images = Prelude.Nothing,
      textCharacters = Prelude.Nothing
    }

-- | The guardrail coverage for images (the number of images that guardrails
-- guarded).
guardrailCoverage_images :: Lens.Lens' GuardrailCoverage (Prelude.Maybe GuardrailImageCoverage)
guardrailCoverage_images = Lens.lens (\GuardrailCoverage' {images} -> images) (\s@GuardrailCoverage' {} a -> s {images = a} :: GuardrailCoverage)

-- | The text characters of the guardrail coverage details.
guardrailCoverage_textCharacters :: Lens.Lens' GuardrailCoverage (Prelude.Maybe GuardrailTextCharactersCoverage)
guardrailCoverage_textCharacters = Lens.lens (\GuardrailCoverage' {textCharacters} -> textCharacters) (\s@GuardrailCoverage' {} a -> s {textCharacters = a} :: GuardrailCoverage)

instance Data.FromJSON GuardrailCoverage where
  parseJSON =
    Data.withObject
      "GuardrailCoverage"
      ( \x ->
          GuardrailCoverage'
            Prelude.<$> (x Data..:? "images")
            Prelude.<*> (x Data..:? "textCharacters")
      )

instance Prelude.Hashable GuardrailCoverage where
  hashWithSalt _salt GuardrailCoverage' {..} =
    _salt
      `Prelude.hashWithSalt` images
      `Prelude.hashWithSalt` textCharacters

instance Prelude.NFData GuardrailCoverage where
  rnf GuardrailCoverage' {..} =
    Prelude.rnf images `Prelude.seq`
      Prelude.rnf textCharacters
