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
-- Module      : Amazonka.BedrockRuntime.Types.SystemContentBlock
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.SystemContentBlock where

import Amazonka.BedrockRuntime.Types.CachePointBlock
import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailConverseContentBlock
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Contains configurations for instructions to provide the model for how to
-- handle input. To learn more, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-call.html Using the Converse API>.
--
-- /See:/ 'newSystemContentBlock' smart constructor.
data SystemContentBlock = SystemContentBlock'
  { -- | CachePoint to include in the system prompt.
    cachePoint :: Prelude.Maybe CachePointBlock,
    -- | A content block to assess with the guardrail. Use with the
    -- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html Converse>
    -- or
    -- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html ConverseStream>
    -- API operations.
    --
    -- For more information, see /Use a guardrail with the Converse API/ in the
    -- /Amazon Bedrock User Guide/.
    guardContent :: Prelude.Maybe GuardrailConverseContentBlock,
    -- | A system prompt for the model.
    text :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SystemContentBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cachePoint', 'systemContentBlock_cachePoint' - CachePoint to include in the system prompt.
--
-- 'guardContent', 'systemContentBlock_guardContent' - A content block to assess with the guardrail. Use with the
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html Converse>
-- or
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html ConverseStream>
-- API operations.
--
-- For more information, see /Use a guardrail with the Converse API/ in the
-- /Amazon Bedrock User Guide/.
--
-- 'text', 'systemContentBlock_text' - A system prompt for the model.
newSystemContentBlock ::
  SystemContentBlock
newSystemContentBlock =
  SystemContentBlock'
    { cachePoint = Prelude.Nothing,
      guardContent = Prelude.Nothing,
      text = Prelude.Nothing
    }

-- | CachePoint to include in the system prompt.
systemContentBlock_cachePoint :: Lens.Lens' SystemContentBlock (Prelude.Maybe CachePointBlock)
systemContentBlock_cachePoint = Lens.lens (\SystemContentBlock' {cachePoint} -> cachePoint) (\s@SystemContentBlock' {} a -> s {cachePoint = a} :: SystemContentBlock)

-- | A content block to assess with the guardrail. Use with the
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html Converse>
-- or
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html ConverseStream>
-- API operations.
--
-- For more information, see /Use a guardrail with the Converse API/ in the
-- /Amazon Bedrock User Guide/.
systemContentBlock_guardContent :: Lens.Lens' SystemContentBlock (Prelude.Maybe GuardrailConverseContentBlock)
systemContentBlock_guardContent = Lens.lens (\SystemContentBlock' {guardContent} -> guardContent) (\s@SystemContentBlock' {} a -> s {guardContent = a} :: SystemContentBlock)

-- | A system prompt for the model.
systemContentBlock_text :: Lens.Lens' SystemContentBlock (Prelude.Maybe Prelude.Text)
systemContentBlock_text = Lens.lens (\SystemContentBlock' {text} -> text) (\s@SystemContentBlock' {} a -> s {text = a} :: SystemContentBlock)

instance Prelude.Hashable SystemContentBlock where
  hashWithSalt _salt SystemContentBlock' {..} =
    _salt
      `Prelude.hashWithSalt` cachePoint
      `Prelude.hashWithSalt` guardContent
      `Prelude.hashWithSalt` text

instance Prelude.NFData SystemContentBlock where
  rnf SystemContentBlock' {..} =
    Prelude.rnf cachePoint `Prelude.seq`
      Prelude.rnf guardContent `Prelude.seq`
        Prelude.rnf text

instance Data.ToJSON SystemContentBlock where
  toJSON SystemContentBlock' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("cachePoint" Data..=) Prelude.<$> cachePoint,
            ("guardContent" Data..=) Prelude.<$> guardContent,
            ("text" Data..=) Prelude.<$> text
          ]
      )
