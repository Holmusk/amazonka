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
-- Module      : Amazonka.BedrockRuntime.Types.ContentBlockDeltaEvent
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the @ConverseStream@ shapes are
-- maintained by hand. See @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.ContentBlockDeltaEvent where

import Amazonka.BedrockRuntime.Types.ContentBlockDelta
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The content block delta event.
--
-- /See:/ 'newContentBlockDeltaEvent' smart constructor.
data ContentBlockDeltaEvent = ContentBlockDeltaEvent'
  { -- | The delta for a content block delta event.
    delta :: ContentBlockDelta,
    -- | The block index for a content block delta event.
    contentBlockIndex :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContentBlockDeltaEvent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'delta', 'contentBlockDeltaEvent_delta' - The delta for a content block delta event.
--
-- 'contentBlockIndex', 'contentBlockDeltaEvent_contentBlockIndex' - The block index for a content block delta event.
newContentBlockDeltaEvent ::
  -- | 'delta'
  ContentBlockDelta ->
  -- | 'contentBlockIndex'
  Prelude.Natural ->
  ContentBlockDeltaEvent
newContentBlockDeltaEvent pDelta_ pContentBlockIndex_ =
  ContentBlockDeltaEvent'
    { delta = pDelta_,
      contentBlockIndex = pContentBlockIndex_
    }

-- | The delta for a content block delta event.
contentBlockDeltaEvent_delta :: Lens.Lens' ContentBlockDeltaEvent ContentBlockDelta
contentBlockDeltaEvent_delta = Lens.lens (\ContentBlockDeltaEvent' {delta} -> delta) (\s@ContentBlockDeltaEvent' {} a -> s {delta = a} :: ContentBlockDeltaEvent)

-- | The block index for a content block delta event.
contentBlockDeltaEvent_contentBlockIndex :: Lens.Lens' ContentBlockDeltaEvent Prelude.Natural
contentBlockDeltaEvent_contentBlockIndex = Lens.lens (\ContentBlockDeltaEvent' {contentBlockIndex} -> contentBlockIndex) (\s@ContentBlockDeltaEvent' {} a -> s {contentBlockIndex = a} :: ContentBlockDeltaEvent)

instance Data.FromJSON ContentBlockDeltaEvent where
  parseJSON =
    Data.withObject
      "ContentBlockDeltaEvent"
      ( \x ->
          ContentBlockDeltaEvent'
            Prelude.<$> (x Data..: "delta")
            Prelude.<*> (x Data..: "contentBlockIndex")
      )

instance Prelude.Hashable ContentBlockDeltaEvent where
  hashWithSalt _salt ContentBlockDeltaEvent' {..} =
    _salt
      `Prelude.hashWithSalt` delta
      `Prelude.hashWithSalt` contentBlockIndex

instance Prelude.NFData ContentBlockDeltaEvent where
  rnf ContentBlockDeltaEvent' {..} =
    Prelude.rnf delta `Prelude.seq`
      Prelude.rnf contentBlockIndex
