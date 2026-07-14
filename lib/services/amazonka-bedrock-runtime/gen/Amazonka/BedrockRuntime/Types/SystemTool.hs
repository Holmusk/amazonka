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
-- Module      : Amazonka.BedrockRuntime.Types.SystemTool
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.SystemTool where

import Amazonka.BedrockRuntime.Types.Document
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Specifies a system-defined tool for the model to use. /System-defined
-- tools/ are tools that are created and provided by the model provider.
--
-- /See:/ 'newSystemTool' smart constructor.
data SystemTool = SystemTool'
  { -- | The name of the system-defined tool that you want to call.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SystemTool' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'systemTool_name' - The name of the system-defined tool that you want to call.
newSystemTool ::
  -- | 'name'
  Prelude.Text ->
  SystemTool
newSystemTool pName_ = SystemTool' {name = pName_}

-- | The name of the system-defined tool that you want to call.
systemTool_name :: Lens.Lens' SystemTool Prelude.Text
systemTool_name = Lens.lens (\SystemTool' {name} -> name) (\s@SystemTool' {} a -> s {name = a} :: SystemTool)

instance Prelude.Hashable SystemTool where
  hashWithSalt _salt SystemTool' {..} =
    _salt `Prelude.hashWithSalt` name

instance Prelude.NFData SystemTool where
  rnf SystemTool' {..} = Prelude.rnf name

instance Data.ToJSON SystemTool where
  toJSON SystemTool' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("name" Data..= name)]
      )
