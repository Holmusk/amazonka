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
-- Module      : Amazonka.BedrockRuntime.Types.ResponseStream
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the
-- @InvokeModelWithResponseStream@ shapes are maintained by hand. See
-- @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.ResponseStream where

import Amazonka.BedrockRuntime.Types.PayloadPart
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Data.EventStream as EventStream
import qualified Amazonka.Prelude as Prelude

-- | The messages output stream of an @InvokeModelWithResponseStream@ call.
--
-- Unlike ordinary (all-'Prelude.Maybe' record) unions, this event stream
-- union is modelled as a sum type, since exactly one member arrives per
-- stream event, selected by the @:event-type@ header.
--
-- The exception members of the modelled union
-- (@internalServerException@, @modelStreamErrorException@,
-- @validationException@, @throttlingException@, @modelTimeoutException@,
-- @serviceUnavailableException@) are /not/ constructors here: in-stream
-- exceptions are delivered as @:message-type: exception@ messages and are
-- thrown as 'EventStream.EventStreamException' while the stream is
-- consumed.
data ResponseStream
  = -- | Content included in the response.
    ResponseStream_Chunk PayloadPart
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

instance EventStream.FromEventStream ResponseStream where
  parseEvent msg =
    case EventStream.eventType msg of
      Prelude.Just "chunk" ->
        ResponseStream_Chunk
          Prelude.<$> EventStream.parseJSONPayload msg
      Prelude.Just other ->
        Prelude.Left
          ("unknown ResponseStream event type: " Prelude.<> Prelude.show other)
      Prelude.Nothing ->
        Prelude.Left "missing :event-type header"

instance Prelude.Hashable ResponseStream where
  hashWithSalt _salt y = case y of
    ResponseStream_Chunk x ->
      _salt `Prelude.hashWithSalt` (0 :: Prelude.Int) `Prelude.hashWithSalt` x

instance Prelude.NFData ResponseStream where
  rnf y = case y of
    ResponseStream_Chunk x -> Prelude.rnf x
