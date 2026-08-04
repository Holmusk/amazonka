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
-- Module      : Amazonka.BedrockRuntime.Types.ConverseStreamOutput
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the @ConverseStream@ shapes are
-- maintained by hand. See @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.ConverseStreamOutput where

import Amazonka.BedrockRuntime.Types.ContentBlockDeltaEvent
import Amazonka.BedrockRuntime.Types.ContentBlockStartEvent
import Amazonka.BedrockRuntime.Types.ContentBlockStopEvent
import Amazonka.BedrockRuntime.Types.ConverseStreamMetadataEvent
import Amazonka.BedrockRuntime.Types.MessageStartEvent
import Amazonka.BedrockRuntime.Types.MessageStopEvent
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Data.EventStream as EventStream
import qualified Amazonka.Prelude as Prelude

-- | The messages output stream.
--
-- Unlike ordinary (all-'Prelude.Maybe' record) unions, this event stream
-- union is modelled as a sum type, since exactly one member arrives per
-- stream event, selected by the @:event-type@ header.
--
-- The @internalServerException@, @modelStreamErrorException@,
-- @validationException@, @throttlingException@ and
-- @serviceUnavailableException@ members of the modelled union are /not/
-- constructors here: in-stream exceptions are delivered as
-- @:message-type: exception@ messages and are thrown as
-- 'EventStream.EventStreamException' while the stream is consumed.
data ConverseStreamOutput
  = -- | Message start information.
    ConverseStreamOutput_MessageStart MessageStartEvent
  | -- | Start information for a content block.
    ConverseStreamOutput_ContentBlockStart ContentBlockStartEvent
  | -- | The messages output content block delta.
    ConverseStreamOutput_ContentBlockDelta ContentBlockDeltaEvent
  | -- | Stop information for a content block.
    ConverseStreamOutput_ContentBlockStop ContentBlockStopEvent
  | -- | Message stop information.
    ConverseStreamOutput_MessageStop MessageStopEvent
  | -- | Metadata for the converse output stream.
    ConverseStreamOutput_Metadata ConverseStreamMetadataEvent
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

instance EventStream.FromEventStream ConverseStreamOutput where
  parseEvent msg =
    case EventStream.eventType msg of
      Prelude.Just "messageStart" ->
        ConverseStreamOutput_MessageStart
          Prelude.<$> EventStream.parseJSONPayload msg
      Prelude.Just "contentBlockStart" ->
        ConverseStreamOutput_ContentBlockStart
          Prelude.<$> EventStream.parseJSONPayload msg
      Prelude.Just "contentBlockDelta" ->
        ConverseStreamOutput_ContentBlockDelta
          Prelude.<$> EventStream.parseJSONPayload msg
      Prelude.Just "contentBlockStop" ->
        ConverseStreamOutput_ContentBlockStop
          Prelude.<$> EventStream.parseJSONPayload msg
      Prelude.Just "messageStop" ->
        ConverseStreamOutput_MessageStop
          Prelude.<$> EventStream.parseJSONPayload msg
      Prelude.Just "metadata" ->
        ConverseStreamOutput_Metadata
          Prelude.<$> EventStream.parseJSONPayload msg
      Prelude.Just other ->
        Prelude.Left
          ("unknown ConverseStreamOutput event type: " Prelude.<> Prelude.show other)
      Prelude.Nothing ->
        Prelude.Left "missing :event-type header"

instance Prelude.Hashable ConverseStreamOutput where
  hashWithSalt _salt y = case y of
    ConverseStreamOutput_MessageStart x ->
      _salt `Prelude.hashWithSalt` (0 :: Prelude.Int) `Prelude.hashWithSalt` x
    ConverseStreamOutput_ContentBlockStart x ->
      _salt `Prelude.hashWithSalt` (1 :: Prelude.Int) `Prelude.hashWithSalt` x
    ConverseStreamOutput_ContentBlockDelta x ->
      _salt `Prelude.hashWithSalt` (2 :: Prelude.Int) `Prelude.hashWithSalt` x
    ConverseStreamOutput_ContentBlockStop x ->
      _salt `Prelude.hashWithSalt` (3 :: Prelude.Int) `Prelude.hashWithSalt` x
    ConverseStreamOutput_MessageStop x ->
      _salt `Prelude.hashWithSalt` (4 :: Prelude.Int) `Prelude.hashWithSalt` x
    ConverseStreamOutput_Metadata x ->
      _salt `Prelude.hashWithSalt` (5 :: Prelude.Int) `Prelude.hashWithSalt` x

instance Prelude.NFData ConverseStreamOutput where
  rnf y = case y of
    ConverseStreamOutput_MessageStart x -> Prelude.rnf x
    ConverseStreamOutput_ContentBlockStart x -> Prelude.rnf x
    ConverseStreamOutput_ContentBlockDelta x -> Prelude.rnf x
    ConverseStreamOutput_ContentBlockStop x -> Prelude.rnf x
    ConverseStreamOutput_MessageStop x -> Prelude.rnf x
    ConverseStreamOutput_Metadata x -> Prelude.rnf x
