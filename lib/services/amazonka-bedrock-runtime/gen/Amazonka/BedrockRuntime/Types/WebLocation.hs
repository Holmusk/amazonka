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
-- Module      : Amazonka.BedrockRuntime.Types.WebLocation
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.WebLocation where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Provides the URL and domain information for the website that was cited
-- when performing a web search.
--
-- /See:/ 'newWebLocation' smart constructor.
data WebLocation = WebLocation'
  { -- | The domain that was cited when performing a web search.
    domain :: Prelude.Maybe Prelude.Text,
    -- | The URL that was cited when performing a web search.
    url :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'WebLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domain', 'webLocation_domain' - The domain that was cited when performing a web search.
--
-- 'url', 'webLocation_url' - The URL that was cited when performing a web search.
newWebLocation ::
  WebLocation
newWebLocation =
  WebLocation'
    { domain = Prelude.Nothing,
      url = Prelude.Nothing
    }

-- | The domain that was cited when performing a web search.
webLocation_domain :: Lens.Lens' WebLocation (Prelude.Maybe Prelude.Text)
webLocation_domain = Lens.lens (\WebLocation' {domain} -> domain) (\s@WebLocation' {} a -> s {domain = a} :: WebLocation)

-- | The URL that was cited when performing a web search.
webLocation_url :: Lens.Lens' WebLocation (Prelude.Maybe Prelude.Text)
webLocation_url = Lens.lens (\WebLocation' {url} -> url) (\s@WebLocation' {} a -> s {url = a} :: WebLocation)

instance Data.FromJSON WebLocation where
  parseJSON =
    Data.withObject
      "WebLocation"
      ( \x ->
          WebLocation'
            Prelude.<$> (x Data..:? "domain")
            Prelude.<*> (x Data..:? "url")
      )

instance Prelude.Hashable WebLocation where
  hashWithSalt _salt WebLocation' {..} =
    _salt
      `Prelude.hashWithSalt` domain
      `Prelude.hashWithSalt` url

instance Prelude.NFData WebLocation where
  rnf WebLocation' {..} =
    Prelude.rnf domain `Prelude.seq` Prelude.rnf url

instance Data.ToJSON WebLocation where
  toJSON WebLocation' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("domain" Data..=) Prelude.<$> domain,
            ("url" Data..=) Prelude.<$> url
          ]
      )
