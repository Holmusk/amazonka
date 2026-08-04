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
-- Module      : Amazonka.BedrockRuntime.Types.PayloadPart
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the
-- @InvokeModelWithResponseStream@ shapes are maintained by hand. See
-- @HANDWRITTEN.md@ in this package.
--
-- Like the @Body@ shape (see the service annex), this type is not wrapped
-- in 'Data.Sensitive' — the payload bytes are the model output the caller
-- is asking for.
module Amazonka.BedrockRuntime.Types.PayloadPart where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Payload content included in the response.
--
-- /See:/ 'newPayloadPart' smart constructor.
data PayloadPart = PayloadPart'
  { -- | Base64-encoded bytes of payload data.
    bytes :: Prelude.Maybe Data.Base64
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PayloadPart' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bytes', 'payloadPart_bytes' - Base64-encoded bytes of payload data.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
newPayloadPart ::
  PayloadPart
newPayloadPart = PayloadPart' {bytes = Prelude.Nothing}

-- | Base64-encoded bytes of payload data.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
payloadPart_bytes :: Lens.Lens' PayloadPart (Prelude.Maybe Prelude.ByteString)
payloadPart_bytes = Lens.lens (\PayloadPart' {bytes} -> bytes) (\s@PayloadPart' {} a -> s {bytes = a} :: PayloadPart) Prelude.. Lens.mapping Data._Base64

instance Data.FromJSON PayloadPart where
  parseJSON =
    Data.withObject
      "PayloadPart"
      ( \x ->
          PayloadPart' Prelude.<$> (x Data..:? "bytes")
      )

instance Prelude.Hashable PayloadPart where
  hashWithSalt _salt PayloadPart' {..} =
    _salt `Prelude.hashWithSalt` bytes

instance Prelude.NFData PayloadPart where
  rnf PayloadPart' {..} = Prelude.rnf bytes
