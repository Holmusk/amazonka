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
-- Module      : Amazonka.BedrockRuntime.Types.OutputConfig
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.OutputConfig where

import Amazonka.BedrockRuntime.Types.OutputFormat
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Output configuration for a model response in a call to
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html Converse>
-- or
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html ConverseStream>.
--
-- /See:/ 'newOutputConfig' smart constructor.
data OutputConfig = OutputConfig'
  { -- | Structured output parameters to control the model\'s text response.
    textFormat :: Prelude.Maybe OutputFormat
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OutputConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'textFormat', 'outputConfig_textFormat' - Structured output parameters to control the model\'s text response.
newOutputConfig ::
  OutputConfig
newOutputConfig =
  OutputConfig' {textFormat = Prelude.Nothing}

-- | Structured output parameters to control the model\'s text response.
outputConfig_textFormat :: Lens.Lens' OutputConfig (Prelude.Maybe OutputFormat)
outputConfig_textFormat = Lens.lens (\OutputConfig' {textFormat} -> textFormat) (\s@OutputConfig' {} a -> s {textFormat = a} :: OutputConfig)

instance Prelude.Hashable OutputConfig where
  hashWithSalt _salt OutputConfig' {..} =
    _salt `Prelude.hashWithSalt` textFormat

instance Prelude.NFData OutputConfig where
  rnf OutputConfig' {..} = Prelude.rnf textFormat

instance Data.ToJSON OutputConfig where
  toJSON OutputConfig' {..} =
    Data.object
      ( Prelude.catMaybes
          [("textFormat" Data..=) Prelude.<$> textFormat]
      )
