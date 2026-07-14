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
-- Module      : Amazonka.BedrockRuntime.Types.ErrorBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ErrorBlock where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A block containing error information when content processing fails.
--
-- /See:/ 'newErrorBlock' smart constructor.
data ErrorBlock = ErrorBlock'
  { -- | A human-readable error message describing what went wrong during content
    -- processing.
    message :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ErrorBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'errorBlock_message' - A human-readable error message describing what went wrong during content
-- processing.
newErrorBlock ::
  ErrorBlock
newErrorBlock =
  ErrorBlock' {message = Prelude.Nothing}

-- | A human-readable error message describing what went wrong during content
-- processing.
errorBlock_message :: Lens.Lens' ErrorBlock (Prelude.Maybe Prelude.Text)
errorBlock_message = Lens.lens (\ErrorBlock' {message} -> message) (\s@ErrorBlock' {} a -> s {message = a} :: ErrorBlock)

instance Data.FromJSON ErrorBlock where
  parseJSON =
    Data.withObject
      "ErrorBlock"
      ( \x ->
          ErrorBlock' Prelude.<$> (x Data..:? "message")
      )

instance Prelude.Hashable ErrorBlock where
  hashWithSalt _salt ErrorBlock' {..} =
    _salt `Prelude.hashWithSalt` message

instance Prelude.NFData ErrorBlock where
  rnf ErrorBlock' {..} = Prelude.rnf message

instance Data.ToJSON ErrorBlock where
  toJSON ErrorBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [("message" Data..=) Prelude.<$> message]
      )
