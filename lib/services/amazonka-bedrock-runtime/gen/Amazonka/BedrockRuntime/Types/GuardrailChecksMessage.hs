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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksMessage
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksMessage where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.GuardrailChecksContentBlock
import Amazonka.BedrockRuntime.Types.GuardrailChecksRole
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A message to evaluate against guardrail checks, containing a role and
-- content blocks.
--
-- /See:/ 'newGuardrailChecksMessage' smart constructor.
data GuardrailChecksMessage = GuardrailChecksMessage'
  { -- | The role of the message sender.
    role' :: GuardrailChecksRole,
    -- | The content blocks for the message.
    content :: Prelude.NonEmpty GuardrailChecksContentBlock
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksMessage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'role'', 'guardrailChecksMessage_role' - The role of the message sender.
--
-- 'content', 'guardrailChecksMessage_content' - The content blocks for the message.
newGuardrailChecksMessage ::
  -- | 'role''
  GuardrailChecksRole ->
  -- | 'content'
  Prelude.NonEmpty GuardrailChecksContentBlock ->
  GuardrailChecksMessage
newGuardrailChecksMessage pRole_ pContent_ =
  GuardrailChecksMessage'
    { role' = pRole_,
      content = Lens.coerced Lens.# pContent_
    }

-- | The role of the message sender.
guardrailChecksMessage_role :: Lens.Lens' GuardrailChecksMessage GuardrailChecksRole
guardrailChecksMessage_role = Lens.lens (\GuardrailChecksMessage' {role'} -> role') (\s@GuardrailChecksMessage' {} a -> s {role' = a} :: GuardrailChecksMessage)

-- | The content blocks for the message.
guardrailChecksMessage_content :: Lens.Lens' GuardrailChecksMessage (Prelude.NonEmpty GuardrailChecksContentBlock)
guardrailChecksMessage_content = Lens.lens (\GuardrailChecksMessage' {content} -> content) (\s@GuardrailChecksMessage' {} a -> s {content = a} :: GuardrailChecksMessage) Prelude.. Lens.coerced

instance Prelude.Hashable GuardrailChecksMessage where
  hashWithSalt _salt GuardrailChecksMessage' {..} =
    _salt
      `Prelude.hashWithSalt` role'
      `Prelude.hashWithSalt` content

instance Prelude.NFData GuardrailChecksMessage where
  rnf GuardrailChecksMessage' {..} =
    Prelude.rnf role' `Prelude.seq` Prelude.rnf content

instance Data.ToJSON GuardrailChecksMessage where
  toJSON GuardrailChecksMessage' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just ("role" Data..= role'),
            Prelude.Just ("content" Data..= content)
          ]
      )
