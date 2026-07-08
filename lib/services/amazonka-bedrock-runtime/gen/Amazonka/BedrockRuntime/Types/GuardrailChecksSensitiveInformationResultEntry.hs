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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationResultEntry
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationResultEntry where

import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationEntityType
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The detection result for a single sensitive information entity found in
-- the evaluated messages.
--
-- /See:/ 'newGuardrailChecksSensitiveInformationResultEntry' smart constructor.
data GuardrailChecksSensitiveInformationResultEntry = GuardrailChecksSensitiveInformationResultEntry'
  { -- | The PII entity type that was detected.
    type' :: GuardrailChecksSensitiveInformationEntityType,
    -- | The confidence score for the detection, ranging from 0.0 to 1.0. Higher
    -- values indicate greater confidence.
    confidenceScore :: Prelude.Double,
    -- | The start character offset of the detected entity within the content
    -- block.
    beginOffset :: Prelude.Natural,
    -- | The end character offset of the detected entity within the content
    -- block.
    endOffset :: Prelude.Natural,
    -- | The zero-based index of the message in the input messages array where
    -- the entity was detected.
    messageIndex :: Prelude.Natural,
    -- | The zero-based index of the content block within the message where the
    -- entity was detected.
    contentIndex :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GuardrailChecksSensitiveInformationResultEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'guardrailChecksSensitiveInformationResultEntry_type' - The PII entity type that was detected.
--
-- 'confidenceScore', 'guardrailChecksSensitiveInformationResultEntry_confidenceScore' - The confidence score for the detection, ranging from 0.0 to 1.0. Higher
-- values indicate greater confidence.
--
-- 'beginOffset', 'guardrailChecksSensitiveInformationResultEntry_beginOffset' - The start character offset of the detected entity within the content
-- block.
--
-- 'endOffset', 'guardrailChecksSensitiveInformationResultEntry_endOffset' - The end character offset of the detected entity within the content
-- block.
--
-- 'messageIndex', 'guardrailChecksSensitiveInformationResultEntry_messageIndex' - The zero-based index of the message in the input messages array where
-- the entity was detected.
--
-- 'contentIndex', 'guardrailChecksSensitiveInformationResultEntry_contentIndex' - The zero-based index of the content block within the message where the
-- entity was detected.
newGuardrailChecksSensitiveInformationResultEntry ::
  -- | 'type''
  GuardrailChecksSensitiveInformationEntityType ->
  -- | 'confidenceScore'
  Prelude.Double ->
  -- | 'beginOffset'
  Prelude.Natural ->
  -- | 'endOffset'
  Prelude.Natural ->
  -- | 'messageIndex'
  Prelude.Natural ->
  -- | 'contentIndex'
  Prelude.Natural ->
  GuardrailChecksSensitiveInformationResultEntry
newGuardrailChecksSensitiveInformationResultEntry
  pType_
  pConfidenceScore_
  pBeginOffset_
  pEndOffset_
  pMessageIndex_
  pContentIndex_ =
    GuardrailChecksSensitiveInformationResultEntry'
      { type' =
          pType_,
        confidenceScore =
          pConfidenceScore_,
        beginOffset = pBeginOffset_,
        endOffset = pEndOffset_,
        messageIndex =
          pMessageIndex_,
        contentIndex =
          pContentIndex_
      }

-- | The PII entity type that was detected.
guardrailChecksSensitiveInformationResultEntry_type :: Lens.Lens' GuardrailChecksSensitiveInformationResultEntry GuardrailChecksSensitiveInformationEntityType
guardrailChecksSensitiveInformationResultEntry_type = Lens.lens (\GuardrailChecksSensitiveInformationResultEntry' {type'} -> type') (\s@GuardrailChecksSensitiveInformationResultEntry' {} a -> s {type' = a} :: GuardrailChecksSensitiveInformationResultEntry)

-- | The confidence score for the detection, ranging from 0.0 to 1.0. Higher
-- values indicate greater confidence.
guardrailChecksSensitiveInformationResultEntry_confidenceScore :: Lens.Lens' GuardrailChecksSensitiveInformationResultEntry Prelude.Double
guardrailChecksSensitiveInformationResultEntry_confidenceScore = Lens.lens (\GuardrailChecksSensitiveInformationResultEntry' {confidenceScore} -> confidenceScore) (\s@GuardrailChecksSensitiveInformationResultEntry' {} a -> s {confidenceScore = a} :: GuardrailChecksSensitiveInformationResultEntry)

-- | The start character offset of the detected entity within the content
-- block.
guardrailChecksSensitiveInformationResultEntry_beginOffset :: Lens.Lens' GuardrailChecksSensitiveInformationResultEntry Prelude.Natural
guardrailChecksSensitiveInformationResultEntry_beginOffset = Lens.lens (\GuardrailChecksSensitiveInformationResultEntry' {beginOffset} -> beginOffset) (\s@GuardrailChecksSensitiveInformationResultEntry' {} a -> s {beginOffset = a} :: GuardrailChecksSensitiveInformationResultEntry)

-- | The end character offset of the detected entity within the content
-- block.
guardrailChecksSensitiveInformationResultEntry_endOffset :: Lens.Lens' GuardrailChecksSensitiveInformationResultEntry Prelude.Natural
guardrailChecksSensitiveInformationResultEntry_endOffset = Lens.lens (\GuardrailChecksSensitiveInformationResultEntry' {endOffset} -> endOffset) (\s@GuardrailChecksSensitiveInformationResultEntry' {} a -> s {endOffset = a} :: GuardrailChecksSensitiveInformationResultEntry)

-- | The zero-based index of the message in the input messages array where
-- the entity was detected.
guardrailChecksSensitiveInformationResultEntry_messageIndex :: Lens.Lens' GuardrailChecksSensitiveInformationResultEntry Prelude.Natural
guardrailChecksSensitiveInformationResultEntry_messageIndex = Lens.lens (\GuardrailChecksSensitiveInformationResultEntry' {messageIndex} -> messageIndex) (\s@GuardrailChecksSensitiveInformationResultEntry' {} a -> s {messageIndex = a} :: GuardrailChecksSensitiveInformationResultEntry)

-- | The zero-based index of the content block within the message where the
-- entity was detected.
guardrailChecksSensitiveInformationResultEntry_contentIndex :: Lens.Lens' GuardrailChecksSensitiveInformationResultEntry Prelude.Natural
guardrailChecksSensitiveInformationResultEntry_contentIndex = Lens.lens (\GuardrailChecksSensitiveInformationResultEntry' {contentIndex} -> contentIndex) (\s@GuardrailChecksSensitiveInformationResultEntry' {} a -> s {contentIndex = a} :: GuardrailChecksSensitiveInformationResultEntry)

instance
  Data.FromJSON
    GuardrailChecksSensitiveInformationResultEntry
  where
  parseJSON =
    Data.withObject
      "GuardrailChecksSensitiveInformationResultEntry"
      ( \x ->
          GuardrailChecksSensitiveInformationResultEntry'
            Prelude.<$> (x Data..: "type")
            Prelude.<*> (x Data..: "confidenceScore")
            Prelude.<*> (x Data..: "beginOffset")
            Prelude.<*> (x Data..: "endOffset")
            Prelude.<*> (x Data..: "messageIndex")
            Prelude.<*> (x Data..: "contentIndex")
      )

instance
  Prelude.Hashable
    GuardrailChecksSensitiveInformationResultEntry
  where
  hashWithSalt
    _salt
    GuardrailChecksSensitiveInformationResultEntry' {..} =
      _salt
        `Prelude.hashWithSalt` type'
        `Prelude.hashWithSalt` confidenceScore
        `Prelude.hashWithSalt` beginOffset
        `Prelude.hashWithSalt` endOffset
        `Prelude.hashWithSalt` messageIndex
        `Prelude.hashWithSalt` contentIndex

instance
  Prelude.NFData
    GuardrailChecksSensitiveInformationResultEntry
  where
  rnf
    GuardrailChecksSensitiveInformationResultEntry' {..} =
      Prelude.rnf type' `Prelude.seq`
        Prelude.rnf confidenceScore `Prelude.seq`
          Prelude.rnf beginOffset `Prelude.seq`
            Prelude.rnf endOffset `Prelude.seq`
              Prelude.rnf messageIndex `Prelude.seq`
                Prelude.rnf contentIndex
