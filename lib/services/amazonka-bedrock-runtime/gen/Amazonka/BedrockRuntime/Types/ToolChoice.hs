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
-- Module      : Amazonka.BedrockRuntime.Types.ToolChoice
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.ToolChoice where

import Amazonka.BedrockRuntime.Types.AnyToolChoice
import Amazonka.BedrockRuntime.Types.AutoToolChoice
import Amazonka.BedrockRuntime.Types.SpecificToolChoice
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Determines which tools the model should request in a call to @Converse@
-- or @ConverseStream@. For more information, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/tool-use.html Call a tool with the Converse API>
-- in the Amazon Bedrock User Guide.
--
-- /See:/ 'newToolChoice' smart constructor.
data ToolChoice = ToolChoice'
  { -- | The model must request at least one tool (no text is generated).
    any :: Prelude.Maybe AnyToolChoice,
    -- | (Default). The Model automatically decides if a tool should be called or
    -- whether to generate text instead.
    auto :: Prelude.Maybe AutoToolChoice,
    -- | The Model must request the specified tool. Only supported by Anthropic
    -- Claude 3 and Amazon Nova models.
    tool :: Prelude.Maybe SpecificToolChoice
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ToolChoice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'any', 'toolChoice_any' - The model must request at least one tool (no text is generated).
--
-- 'auto', 'toolChoice_auto' - (Default). The Model automatically decides if a tool should be called or
-- whether to generate text instead.
--
-- 'tool', 'toolChoice_tool' - The Model must request the specified tool. Only supported by Anthropic
-- Claude 3 and Amazon Nova models.
newToolChoice ::
  ToolChoice
newToolChoice =
  ToolChoice'
    { any = Prelude.Nothing,
      auto = Prelude.Nothing,
      tool = Prelude.Nothing
    }

-- | The model must request at least one tool (no text is generated).
toolChoice_any :: Lens.Lens' ToolChoice (Prelude.Maybe AnyToolChoice)
toolChoice_any = Lens.lens (\ToolChoice' {any} -> any) (\s@ToolChoice' {} a -> s {any = a} :: ToolChoice)

-- | (Default). The Model automatically decides if a tool should be called or
-- whether to generate text instead.
toolChoice_auto :: Lens.Lens' ToolChoice (Prelude.Maybe AutoToolChoice)
toolChoice_auto = Lens.lens (\ToolChoice' {auto} -> auto) (\s@ToolChoice' {} a -> s {auto = a} :: ToolChoice)

-- | The Model must request the specified tool. Only supported by Anthropic
-- Claude 3 and Amazon Nova models.
toolChoice_tool :: Lens.Lens' ToolChoice (Prelude.Maybe SpecificToolChoice)
toolChoice_tool = Lens.lens (\ToolChoice' {tool} -> tool) (\s@ToolChoice' {} a -> s {tool = a} :: ToolChoice)

instance Prelude.Hashable ToolChoice where
  hashWithSalt _salt ToolChoice' {..} =
    _salt
      `Prelude.hashWithSalt` any
      `Prelude.hashWithSalt` auto
      `Prelude.hashWithSalt` tool

instance Prelude.NFData ToolChoice where
  rnf ToolChoice' {..} =
    Prelude.rnf any `Prelude.seq`
      Prelude.rnf auto `Prelude.seq`
        Prelude.rnf tool

instance Data.ToJSON ToolChoice where
  toJSON ToolChoice' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("any" Data..=) Prelude.<$> any,
            ("auto" Data..=) Prelude.<$> auto,
            ("tool" Data..=) Prelude.<$> tool
          ]
      )
