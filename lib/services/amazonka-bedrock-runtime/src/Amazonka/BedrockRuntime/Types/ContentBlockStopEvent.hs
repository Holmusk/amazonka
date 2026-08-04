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
-- Module      : Amazonka.BedrockRuntime.Types.ContentBlockStopEvent
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : hand-written
-- Portability : non-portable (GHC extensions)
--
-- Hand-written module: the code generator cannot render
-- @vnd.amazon.eventstream@ operations, so the @ConverseStream@ shapes are
-- maintained by hand. See @HANDWRITTEN.md@ in this package.
module Amazonka.BedrockRuntime.Types.ContentBlockStopEvent where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A content block stop event.
--
-- /See:/ 'newContentBlockStopEvent' smart constructor.
data ContentBlockStopEvent = ContentBlockStopEvent'
  { -- | The index for a content block.
    contentBlockIndex :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContentBlockStopEvent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contentBlockIndex', 'contentBlockStopEvent_contentBlockIndex' - The index for a content block.
newContentBlockStopEvent ::
  -- | 'contentBlockIndex'
  Prelude.Natural ->
  ContentBlockStopEvent
newContentBlockStopEvent pContentBlockIndex_ =
  ContentBlockStopEvent'
    { contentBlockIndex = pContentBlockIndex_
    }

-- | The index for a content block.
contentBlockStopEvent_contentBlockIndex :: Lens.Lens' ContentBlockStopEvent Prelude.Natural
contentBlockStopEvent_contentBlockIndex = Lens.lens (\ContentBlockStopEvent' {contentBlockIndex} -> contentBlockIndex) (\s@ContentBlockStopEvent' {} a -> s {contentBlockIndex = a} :: ContentBlockStopEvent)

instance Data.FromJSON ContentBlockStopEvent where
  parseJSON =
    Data.withObject
      "ContentBlockStopEvent"
      ( \x ->
          ContentBlockStopEvent'
            Prelude.<$> (x Data..: "contentBlockIndex")
      )

instance Prelude.Hashable ContentBlockStopEvent where
  hashWithSalt _salt ContentBlockStopEvent' {..} =
    _salt `Prelude.hashWithSalt` contentBlockIndex

instance Prelude.NFData ContentBlockStopEvent where
  rnf ContentBlockStopEvent' {..} =
    Prelude.rnf contentBlockIndex
