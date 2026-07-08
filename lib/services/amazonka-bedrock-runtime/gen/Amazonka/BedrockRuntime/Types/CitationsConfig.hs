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
-- Module      : Amazonka.BedrockRuntime.Types.CitationsConfig
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.CitationsConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Configuration settings for enabling and controlling document citations
-- in Converse API responses. When enabled, the model can include citation
-- information that links generated content back to specific source
-- documents.
--
-- /See:/ 'newCitationsConfig' smart constructor.
data CitationsConfig = CitationsConfig'
  { -- | Specifies whether citations from the selected document should be used in
    -- the model\'s response. When set to true, the model can generate
    -- citations that reference the source documents used to inform the
    -- response.
    enabled :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CitationsConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enabled', 'citationsConfig_enabled' - Specifies whether citations from the selected document should be used in
-- the model\'s response. When set to true, the model can generate
-- citations that reference the source documents used to inform the
-- response.
newCitationsConfig ::
  -- | 'enabled'
  Prelude.Bool ->
  CitationsConfig
newCitationsConfig pEnabled_ =
  CitationsConfig' {enabled = pEnabled_}

-- | Specifies whether citations from the selected document should be used in
-- the model\'s response. When set to true, the model can generate
-- citations that reference the source documents used to inform the
-- response.
citationsConfig_enabled :: Lens.Lens' CitationsConfig Prelude.Bool
citationsConfig_enabled = Lens.lens (\CitationsConfig' {enabled} -> enabled) (\s@CitationsConfig' {} a -> s {enabled = a} :: CitationsConfig)

instance Data.FromJSON CitationsConfig where
  parseJSON =
    Data.withObject
      "CitationsConfig"
      ( \x ->
          CitationsConfig' Prelude.<$> (x Data..: "enabled")
      )

instance Prelude.Hashable CitationsConfig where
  hashWithSalt _salt CitationsConfig' {..} =
    _salt `Prelude.hashWithSalt` enabled

instance Prelude.NFData CitationsConfig where
  rnf CitationsConfig' {..} = Prelude.rnf enabled

instance Data.ToJSON CitationsConfig where
  toJSON CitationsConfig' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("enabled" Data..= enabled)]
      )
