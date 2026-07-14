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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailConverseImageSource
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailConverseImageSource where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The image source (image bytes) of the guardrail converse image source.
--
-- /See:/ 'newGuardrailConverseImageSource' smart constructor.
data GuardrailConverseImageSource = GuardrailConverseImageSource'
  { -- | The raw image bytes for the image.
    bytes :: Prelude.Maybe Data.Base64
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailConverseImageSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bytes', 'guardrailConverseImageSource_bytes' - The raw image bytes for the image.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
newGuardrailConverseImageSource ::
  GuardrailConverseImageSource
newGuardrailConverseImageSource =
  GuardrailConverseImageSource'
    { bytes =
        Prelude.Nothing
    }

-- | The raw image bytes for the image.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
guardrailConverseImageSource_bytes :: Lens.Lens' GuardrailConverseImageSource (Prelude.Maybe Prelude.ByteString)
guardrailConverseImageSource_bytes = Lens.lens (\GuardrailConverseImageSource' {bytes} -> bytes) (\s@GuardrailConverseImageSource' {} a -> s {bytes = a} :: GuardrailConverseImageSource) Prelude.. Lens.mapping Data._Base64

instance Data.FromJSON GuardrailConverseImageSource where
  parseJSON =
    Data.withObject
      "GuardrailConverseImageSource"
      ( \x ->
          GuardrailConverseImageSource'
            Prelude.<$> (x Data..:? "bytes")
      )

instance
  Prelude.Hashable
    GuardrailConverseImageSource
  where
  hashWithSalt _salt GuardrailConverseImageSource' {..} =
    _salt `Prelude.hashWithSalt` bytes

instance Prelude.NFData GuardrailConverseImageSource where
  rnf GuardrailConverseImageSource' {..} =
    Prelude.rnf bytes

instance Data.ToJSON GuardrailConverseImageSource where
  toJSON GuardrailConverseImageSource' {..} =
    Data.object
      ( Prelude.catMaybes
          [("bytes" Data..=) Prelude.<$> bytes]
      )
