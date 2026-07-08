{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE OverloadedStrings #-}

module BedrockRuntime where

import Amazonka
import Amazonka.BedrockRuntime
import Control.Lens
import Control.Monad.IO.Class
import Data.Foldable (for_)
import Data.Generics.Labels ()
import Data.Text (Text)
import qualified Data.Text as Text
import qualified Data.Text.IO as Text
import System.IO

-- | Claude Haiku 4.5 via a cross-region inference profile. Depending on the
-- region you call from, you may need the @eu.@ or @apac.@ prefix instead, or a
-- different model entirely - see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/inference-profiles-support.html>.
defaultModelId :: Text
defaultModelId = "us.anthropic.claude-haiku-4-5-20251001-v1:0"

-- | Ask a Claude model a single question via the Bedrock Converse API and
-- print its reply.
ask ::
  -- | Region to operate in.
  Region ->
  -- | The question to ask, e.g. \"What is the capital of France?\".
  Text ->
  IO ()
ask reg prompt = do
  lgr <- newLogger Debug stdout
  env <- newEnv discover <&> set #logger lgr . set #region reg

  let say = liftIO . Text.putStrLn

      userMessage =
        newMessage ConversationRole_User
          & #content .~ [newContentBlock & #text ?~ prompt]

      request_ =
        newConverse defaultModelId
          & #messages ?~ [userMessage]

  runResourceT $ do
    response_ <- send env request_

    case response_ ^. #output . #message of
      Nothing -> say "The response contained no message."
      Just reply ->
        for_ (reply ^. #content) $ \block ->
          for_ (block ^. #text) $ \text ->
            say $ "Claude says: " <> text

    say $ "Stop reason: " <> Text.pack (show (response_ ^. #stopReason))
    say $ "Token usage: " <> Text.pack (show (response_ ^. #usage))
