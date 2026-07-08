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
-- Module      : Amazonka.BedrockRuntime.Types.ConverseOutput
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ConverseOutput where

import Amazonka.BedrockRuntime.Types.Message
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The output from a call to
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html Converse>.
--
-- /See:/ 'newConverseOutput' smart constructor.
data ConverseOutput = ConverseOutput'
  { -- | The message that the model generates.
    message :: Prelude.Maybe Message
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConverseOutput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'converseOutput_message' - The message that the model generates.
newConverseOutput ::
  ConverseOutput
newConverseOutput =
  ConverseOutput' {message = Prelude.Nothing}

-- | The message that the model generates.
converseOutput_message :: Lens.Lens' ConverseOutput (Prelude.Maybe Message)
converseOutput_message = Lens.lens (\ConverseOutput' {message} -> message) (\s@ConverseOutput' {} a -> s {message = a} :: ConverseOutput)

instance Data.FromJSON ConverseOutput where
  parseJSON =
    Data.withObject
      "ConverseOutput"
      ( \x ->
          ConverseOutput' Prelude.<$> (x Data..:? "message")
      )

instance Prelude.Hashable ConverseOutput where
  hashWithSalt _salt ConverseOutput' {..} =
    _salt `Prelude.hashWithSalt` message

instance Prelude.NFData ConverseOutput where
  rnf ConverseOutput' {..} = Prelude.rnf message
