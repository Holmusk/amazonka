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
-- Module      : Amazonka.BedrockRuntime.Types.PromptRouterTrace
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.PromptRouterTrace where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A prompt router trace.
--
-- /See:/ 'newPromptRouterTrace' smart constructor.
data PromptRouterTrace = PromptRouterTrace'
  { -- | The ID of the invoked model.
    invokedModelId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PromptRouterTrace' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'invokedModelId', 'promptRouterTrace_invokedModelId' - The ID of the invoked model.
newPromptRouterTrace ::
  PromptRouterTrace
newPromptRouterTrace =
  PromptRouterTrace'
    { invokedModelId =
        Prelude.Nothing
    }

-- | The ID of the invoked model.
promptRouterTrace_invokedModelId :: Lens.Lens' PromptRouterTrace (Prelude.Maybe Prelude.Text)
promptRouterTrace_invokedModelId = Lens.lens (\PromptRouterTrace' {invokedModelId} -> invokedModelId) (\s@PromptRouterTrace' {} a -> s {invokedModelId = a} :: PromptRouterTrace)

instance Data.FromJSON PromptRouterTrace where
  parseJSON =
    Data.withObject
      "PromptRouterTrace"
      ( \x ->
          PromptRouterTrace'
            Prelude.<$> (x Data..:? "invokedModelId")
      )

instance Prelude.Hashable PromptRouterTrace where
  hashWithSalt _salt PromptRouterTrace' {..} =
    _salt `Prelude.hashWithSalt` invokedModelId

instance Prelude.NFData PromptRouterTrace where
  rnf PromptRouterTrace' {..} =
    Prelude.rnf invokedModelId
