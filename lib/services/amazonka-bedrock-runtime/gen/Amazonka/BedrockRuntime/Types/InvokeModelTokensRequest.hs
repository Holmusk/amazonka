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
-- Module      : Amazonka.BedrockRuntime.Types.InvokeModelTokensRequest
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.InvokeModelTokensRequest where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The body of an @InvokeModel@ API request for token counting. This
-- structure mirrors the input format for the @InvokeModel@ operation,
-- allowing you to count tokens for raw text inference requests.
--
-- /See:/ 'newInvokeModelTokensRequest' smart constructor.
data InvokeModelTokensRequest = InvokeModelTokensRequest'
  { -- | The request body to count tokens for, formatted according to the
    -- model\'s expected input format. To learn about the input format for
    -- different models, see
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Model inference parameters and responses>.
    body :: Data.Base64
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InvokeModelTokensRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'body', 'invokeModelTokensRequest_body' - The request body to count tokens for, formatted according to the
-- model\'s expected input format. To learn about the input format for
-- different models, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Model inference parameters and responses>.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
newInvokeModelTokensRequest ::
  -- | 'body'
  Prelude.ByteString ->
  InvokeModelTokensRequest
newInvokeModelTokensRequest pBody_ =
  InvokeModelTokensRequest'
    { body =
        Data._Base64 Lens.# pBody_
    }

-- | The request body to count tokens for, formatted according to the
-- model\'s expected input format. To learn about the input format for
-- different models, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html Model inference parameters and responses>.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
invokeModelTokensRequest_body :: Lens.Lens' InvokeModelTokensRequest Prelude.ByteString
invokeModelTokensRequest_body = Lens.lens (\InvokeModelTokensRequest' {body} -> body) (\s@InvokeModelTokensRequest' {} a -> s {body = a} :: InvokeModelTokensRequest) Prelude.. Data._Base64

instance Prelude.Hashable InvokeModelTokensRequest where
  hashWithSalt _salt InvokeModelTokensRequest' {..} =
    _salt `Prelude.hashWithSalt` body

instance Prelude.NFData InvokeModelTokensRequest where
  rnf InvokeModelTokensRequest' {..} = Prelude.rnf body

instance Data.ToJSON InvokeModelTokensRequest where
  toJSON InvokeModelTokensRequest' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("body" Data..= body)]
      )
