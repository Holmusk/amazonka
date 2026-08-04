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
-- Module      : Amazonka.BedrockRuntime.Types.MessageStopEvent
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the @ConverseStream@ shapes are
-- maintained by hand. See @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.MessageStopEvent where

import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.StopReason
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The stop event for a message.
--
-- /See:/ 'newMessageStopEvent' smart constructor.
data MessageStopEvent = MessageStopEvent'
  { -- | The additional model response fields.
    additionalModelResponseFields :: Prelude.Maybe Document,
    -- | The reason why the model stopped generating output.
    stopReason :: StopReason
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MessageStopEvent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'additionalModelResponseFields', 'messageStopEvent_additionalModelResponseFields' - The additional model response fields.
--
-- 'stopReason', 'messageStopEvent_stopReason' - The reason why the model stopped generating output.
newMessageStopEvent ::
  -- | 'stopReason'
  StopReason ->
  MessageStopEvent
newMessageStopEvent pStopReason_ =
  MessageStopEvent'
    { additionalModelResponseFields =
        Prelude.Nothing,
      stopReason = pStopReason_
    }

-- | The additional model response fields.
messageStopEvent_additionalModelResponseFields :: Lens.Lens' MessageStopEvent (Prelude.Maybe Document)
messageStopEvent_additionalModelResponseFields = Lens.lens (\MessageStopEvent' {additionalModelResponseFields} -> additionalModelResponseFields) (\s@MessageStopEvent' {} a -> s {additionalModelResponseFields = a} :: MessageStopEvent)

-- | The reason why the model stopped generating output.
messageStopEvent_stopReason :: Lens.Lens' MessageStopEvent StopReason
messageStopEvent_stopReason = Lens.lens (\MessageStopEvent' {stopReason} -> stopReason) (\s@MessageStopEvent' {} a -> s {stopReason = a} :: MessageStopEvent)

instance Data.FromJSON MessageStopEvent where
  parseJSON =
    Data.withObject
      "MessageStopEvent"
      ( \x ->
          MessageStopEvent'
            Prelude.<$> (x Data..:? "additionalModelResponseFields")
            Prelude.<*> (x Data..: "stopReason")
      )

instance Prelude.Hashable MessageStopEvent where
  hashWithSalt _salt MessageStopEvent' {..} =
    _salt
      `Prelude.hashWithSalt` additionalModelResponseFields
      `Prelude.hashWithSalt` stopReason

instance Prelude.NFData MessageStopEvent where
  rnf MessageStopEvent' {..} =
    Prelude.rnf additionalModelResponseFields `Prelude.seq`
      Prelude.rnf stopReason
