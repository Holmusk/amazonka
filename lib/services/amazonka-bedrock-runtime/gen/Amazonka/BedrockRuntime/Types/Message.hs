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
-- Module      : Amazonka.BedrockRuntime.Types.Message
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.Message where

import Amazonka.BedrockRuntime.Types.ContentBlock
import Amazonka.BedrockRuntime.Types.ConversationRole
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A message input, or returned from, a call to
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_Converse.html Converse>
-- or
-- <https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html ConverseStream>.
--
-- /See:/ 'newMessage' smart constructor.
data Message = Message'
  { -- | The role that the message plays in the message.
    role' :: ConversationRole,
    -- | The message content. Note the following restrictions:
    --
    -- -   You can include up to 20 images. Each image\'s size, height, and
    --     width must be no more than 3.75 MB, 8000 px, and 8000 px,
    --     respectively.
    --
    -- -   You can include up to five documents. Each document\'s size must be
    --     no more than 4.5 MB.
    --
    -- -   If you include a @ContentBlock@ with a @document@ field in the
    --     array, you must also include a @ContentBlock@ with a @text@ field.
    --
    -- -   You can only include images and documents if the @role@ is @user@.
    content :: [ContentBlock]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Message' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'role'', 'message_role' - The role that the message plays in the message.
--
-- 'content', 'message_content' - The message content. Note the following restrictions:
--
-- -   You can include up to 20 images. Each image\'s size, height, and
--     width must be no more than 3.75 MB, 8000 px, and 8000 px,
--     respectively.
--
-- -   You can include up to five documents. Each document\'s size must be
--     no more than 4.5 MB.
--
-- -   If you include a @ContentBlock@ with a @document@ field in the
--     array, you must also include a @ContentBlock@ with a @text@ field.
--
-- -   You can only include images and documents if the @role@ is @user@.
newMessage ::
  -- | 'role''
  ConversationRole ->
  Message
newMessage pRole_ =
  Message' {role' = pRole_, content = Prelude.mempty}

-- | The role that the message plays in the message.
message_role :: Lens.Lens' Message ConversationRole
message_role = Lens.lens (\Message' {role'} -> role') (\s@Message' {} a -> s {role' = a} :: Message)

-- | The message content. Note the following restrictions:
--
-- -   You can include up to 20 images. Each image\'s size, height, and
--     width must be no more than 3.75 MB, 8000 px, and 8000 px,
--     respectively.
--
-- -   You can include up to five documents. Each document\'s size must be
--     no more than 4.5 MB.
--
-- -   If you include a @ContentBlock@ with a @document@ field in the
--     array, you must also include a @ContentBlock@ with a @text@ field.
--
-- -   You can only include images and documents if the @role@ is @user@.
message_content :: Lens.Lens' Message [ContentBlock]
message_content = Lens.lens (\Message' {content} -> content) (\s@Message' {} a -> s {content = a} :: Message) Prelude.. Lens.coerced

instance Data.FromJSON Message where
  parseJSON =
    Data.withObject
      "Message"
      ( \x ->
          Message'
            Prelude.<$> (x Data..: "role")
            Prelude.<*> (x Data..:? "content" Data..!= Prelude.mempty)
      )

instance Prelude.Hashable Message where
  hashWithSalt _salt Message' {..} =
    _salt
      `Prelude.hashWithSalt` role'
      `Prelude.hashWithSalt` content

instance Prelude.NFData Message where
  rnf Message' {..} =
    Prelude.rnf role' `Prelude.seq` Prelude.rnf content

instance Data.ToJSON Message where
  toJSON Message' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just ("role" Data..= role'),
            Prelude.Just ("content" Data..= content)
          ]
      )
