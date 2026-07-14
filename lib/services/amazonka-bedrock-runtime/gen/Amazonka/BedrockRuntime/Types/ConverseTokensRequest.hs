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
-- Module      : Amazonka.BedrockRuntime.Types.ConverseTokensRequest
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ConverseTokensRequest where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.Message
import Amazonka.BedrockRuntime.Types.SystemContentBlock
import Amazonka.BedrockRuntime.Types.ToolConfiguration
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The inputs from a @Converse@ API request for token counting.
--
-- This structure mirrors the input format for the @Converse@ operation,
-- allowing you to count tokens for conversation-based inference requests.
--
-- /See:/ 'newConverseTokensRequest' smart constructor.
data ConverseTokensRequest = ConverseTokensRequest'
  { -- | The additionalModelRequestFields of Converse input request to count
    -- tokens for. Use this field when you want to pass additional parameters
    -- that the model supports.
    additionalModelRequestFields :: Prelude.Maybe Document,
    -- | An array of messages to count tokens for.
    messages :: Prelude.Maybe [Message],
    -- | The system content blocks to count tokens for. System content provides
    -- instructions or context to the model about how it should behave or
    -- respond. The token count will include any system content provided.
    system :: Prelude.Maybe [SystemContentBlock],
    -- | The toolConfig of Converse input request to count tokens for.
    -- Configuration information for the tools that the model can use when
    -- generating a response.
    toolConfig :: Prelude.Maybe ToolConfiguration
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConverseTokensRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'additionalModelRequestFields', 'converseTokensRequest_additionalModelRequestFields' - The additionalModelRequestFields of Converse input request to count
-- tokens for. Use this field when you want to pass additional parameters
-- that the model supports.
--
-- 'messages', 'converseTokensRequest_messages' - An array of messages to count tokens for.
--
-- 'system', 'converseTokensRequest_system' - The system content blocks to count tokens for. System content provides
-- instructions or context to the model about how it should behave or
-- respond. The token count will include any system content provided.
--
-- 'toolConfig', 'converseTokensRequest_toolConfig' - The toolConfig of Converse input request to count tokens for.
-- Configuration information for the tools that the model can use when
-- generating a response.
newConverseTokensRequest ::
  ConverseTokensRequest
newConverseTokensRequest =
  ConverseTokensRequest'
    { additionalModelRequestFields =
        Prelude.Nothing,
      messages = Prelude.Nothing,
      system = Prelude.Nothing,
      toolConfig = Prelude.Nothing
    }

-- | The additionalModelRequestFields of Converse input request to count
-- tokens for. Use this field when you want to pass additional parameters
-- that the model supports.
converseTokensRequest_additionalModelRequestFields :: Lens.Lens' ConverseTokensRequest (Prelude.Maybe Document)
converseTokensRequest_additionalModelRequestFields = Lens.lens (\ConverseTokensRequest' {additionalModelRequestFields} -> additionalModelRequestFields) (\s@ConverseTokensRequest' {} a -> s {additionalModelRequestFields = a} :: ConverseTokensRequest)

-- | An array of messages to count tokens for.
converseTokensRequest_messages :: Lens.Lens' ConverseTokensRequest (Prelude.Maybe [Message])
converseTokensRequest_messages = Lens.lens (\ConverseTokensRequest' {messages} -> messages) (\s@ConverseTokensRequest' {} a -> s {messages = a} :: ConverseTokensRequest) Prelude.. Lens.mapping Lens.coerced

-- | The system content blocks to count tokens for. System content provides
-- instructions or context to the model about how it should behave or
-- respond. The token count will include any system content provided.
converseTokensRequest_system :: Lens.Lens' ConverseTokensRequest (Prelude.Maybe [SystemContentBlock])
converseTokensRequest_system = Lens.lens (\ConverseTokensRequest' {system} -> system) (\s@ConverseTokensRequest' {} a -> s {system = a} :: ConverseTokensRequest) Prelude.. Lens.mapping Lens.coerced

-- | The toolConfig of Converse input request to count tokens for.
-- Configuration information for the tools that the model can use when
-- generating a response.
converseTokensRequest_toolConfig :: Lens.Lens' ConverseTokensRequest (Prelude.Maybe ToolConfiguration)
converseTokensRequest_toolConfig = Lens.lens (\ConverseTokensRequest' {toolConfig} -> toolConfig) (\s@ConverseTokensRequest' {} a -> s {toolConfig = a} :: ConverseTokensRequest)

instance Prelude.Hashable ConverseTokensRequest where
  hashWithSalt _salt ConverseTokensRequest' {..} =
    _salt
      `Prelude.hashWithSalt` additionalModelRequestFields
      `Prelude.hashWithSalt` messages
      `Prelude.hashWithSalt` system
      `Prelude.hashWithSalt` toolConfig

instance Prelude.NFData ConverseTokensRequest where
  rnf ConverseTokensRequest' {..} =
    Prelude.rnf additionalModelRequestFields `Prelude.seq`
      Prelude.rnf messages `Prelude.seq`
        Prelude.rnf system `Prelude.seq`
          Prelude.rnf toolConfig

instance Data.ToJSON ConverseTokensRequest where
  toJSON ConverseTokensRequest' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("additionalModelRequestFields" Data..=)
              Prelude.<$> additionalModelRequestFields,
            ("messages" Data..=) Prelude.<$> messages,
            ("system" Data..=) Prelude.<$> system,
            ("toolConfig" Data..=) Prelude.<$> toolConfig
          ]
      )
