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
-- Module      : Amazonka.BedrockRuntime.Types.MessageStartEvent
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the @ConverseStream@ shapes are
-- maintained by hand. See @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.MessageStartEvent where

import Amazonka.BedrockRuntime.Types.ConversationRole
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The start of a message.
--
-- /See:/ 'newMessageStartEvent' smart constructor.
data MessageStartEvent = MessageStartEvent'
  { -- | The role for the message.
    role' :: ConversationRole
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MessageStartEvent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'role'', 'messageStartEvent_role' - The role for the message.
newMessageStartEvent ::
  -- | 'role''
  ConversationRole ->
  MessageStartEvent
newMessageStartEvent pRole_ =
  MessageStartEvent' {role' = pRole_}

-- | The role for the message.
messageStartEvent_role :: Lens.Lens' MessageStartEvent ConversationRole
messageStartEvent_role = Lens.lens (\MessageStartEvent' {role'} -> role') (\s@MessageStartEvent' {} a -> s {role' = a} :: MessageStartEvent)

instance Data.FromJSON MessageStartEvent where
  parseJSON =
    Data.withObject
      "MessageStartEvent"
      ( \x ->
          MessageStartEvent' Prelude.<$> (x Data..: "role")
      )

instance Prelude.Hashable MessageStartEvent where
  hashWithSalt _salt MessageStartEvent' {..} =
    _salt `Prelude.hashWithSalt` role'

instance Prelude.NFData MessageStartEvent where
  rnf MessageStartEvent' {..} = Prelude.rnf role'
