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
-- Module      : Amazonka.BedrockRuntime.Types.CountTokensInput
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.CountTokensInput where

import Amazonka.BedrockRuntime.Types.ConverseTokensRequest
import Amazonka.BedrockRuntime.Types.InvokeModelTokensRequest
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The input value for token counting. The value should be either an
-- @InvokeModel@ or @Converse@ request body.
--
-- /See:/ 'newCountTokensInput' smart constructor.
data CountTokensInput = CountTokensInput'
  { -- | A @Converse@ request for which to count tokens. Use this field when you
    -- want to count tokens for a conversation-based input that would be sent
    -- to the @Converse@ operation.
    converse :: Prelude.Maybe ConverseTokensRequest,
    -- | An @InvokeModel@ request for which to count tokens. Use this field when
    -- you want to count tokens for a raw text input that would be sent to the
    -- @InvokeModel@ operation.
    invokeModel :: Prelude.Maybe InvokeModelTokensRequest
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CountTokensInput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'converse', 'countTokensInput_converse' - A @Converse@ request for which to count tokens. Use this field when you
-- want to count tokens for a conversation-based input that would be sent
-- to the @Converse@ operation.
--
-- 'invokeModel', 'countTokensInput_invokeModel' - An @InvokeModel@ request for which to count tokens. Use this field when
-- you want to count tokens for a raw text input that would be sent to the
-- @InvokeModel@ operation.
newCountTokensInput ::
  CountTokensInput
newCountTokensInput =
  CountTokensInput'
    { converse = Prelude.Nothing,
      invokeModel = Prelude.Nothing
    }

-- | A @Converse@ request for which to count tokens. Use this field when you
-- want to count tokens for a conversation-based input that would be sent
-- to the @Converse@ operation.
countTokensInput_converse :: Lens.Lens' CountTokensInput (Prelude.Maybe ConverseTokensRequest)
countTokensInput_converse = Lens.lens (\CountTokensInput' {converse} -> converse) (\s@CountTokensInput' {} a -> s {converse = a} :: CountTokensInput)

-- | An @InvokeModel@ request for which to count tokens. Use this field when
-- you want to count tokens for a raw text input that would be sent to the
-- @InvokeModel@ operation.
countTokensInput_invokeModel :: Lens.Lens' CountTokensInput (Prelude.Maybe InvokeModelTokensRequest)
countTokensInput_invokeModel = Lens.lens (\CountTokensInput' {invokeModel} -> invokeModel) (\s@CountTokensInput' {} a -> s {invokeModel = a} :: CountTokensInput)

instance Prelude.Hashable CountTokensInput where
  hashWithSalt _salt CountTokensInput' {..} =
    _salt
      `Prelude.hashWithSalt` converse
      `Prelude.hashWithSalt` invokeModel

instance Prelude.NFData CountTokensInput where
  rnf CountTokensInput' {..} =
    Prelude.rnf converse `Prelude.seq`
      Prelude.rnf invokeModel

instance Data.ToJSON CountTokensInput where
  toJSON CountTokensInput' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("converse" Data..=) Prelude.<$> converse,
            ("invokeModel" Data..=) Prelude.<$> invokeModel
          ]
      )
