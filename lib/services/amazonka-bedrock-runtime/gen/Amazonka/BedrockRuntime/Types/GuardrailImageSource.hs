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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailImageSource
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailImageSource where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The image source (image bytes) of the guardrail image source. Object
-- used in independent api.
--
-- /See:/ 'newGuardrailImageSource' smart constructor.
data GuardrailImageSource = GuardrailImageSource'
  { -- | The bytes details of the guardrail image source. Object used in
    -- independent api.
    bytes :: Prelude.Maybe Data.Base64
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailImageSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bytes', 'guardrailImageSource_bytes' - The bytes details of the guardrail image source. Object used in
-- independent api.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
newGuardrailImageSource ::
  GuardrailImageSource
newGuardrailImageSource =
  GuardrailImageSource' {bytes = Prelude.Nothing}

-- | The bytes details of the guardrail image source. Object used in
-- independent api.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
guardrailImageSource_bytes :: Lens.Lens' GuardrailImageSource (Prelude.Maybe Prelude.ByteString)
guardrailImageSource_bytes = Lens.lens (\GuardrailImageSource' {bytes} -> bytes) (\s@GuardrailImageSource' {} a -> s {bytes = a} :: GuardrailImageSource) Prelude.. Lens.mapping Data._Base64

instance Prelude.Hashable GuardrailImageSource where
  hashWithSalt _salt GuardrailImageSource' {..} =
    _salt `Prelude.hashWithSalt` bytes

instance Prelude.NFData GuardrailImageSource where
  rnf GuardrailImageSource' {..} = Prelude.rnf bytes

instance Data.ToJSON GuardrailImageSource where
  toJSON GuardrailImageSource' {..} =
    Data.object
      ( Prelude.catMaybes
          [("bytes" Data..=) Prelude.<$> bytes]
      )
