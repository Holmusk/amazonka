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
-- Module      : Amazonka.BedrockRuntime.Types.AsyncInvokeSummary
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.AsyncInvokeSummary where

import Amazonka.BedrockRuntime.Types.AsyncInvokeOutputDataConfig
import Amazonka.BedrockRuntime.Types.AsyncInvokeStatus
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A summary of an asynchronous invocation.
--
-- /See:/ 'newAsyncInvokeSummary' smart constructor.
data AsyncInvokeSummary = AsyncInvokeSummary'
  { -- | The invocation\'s idempotency token.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | When the invocation ended.
    endTime :: Prelude.Maybe Data.ISO8601,
    -- | An error message.
    failureMessage :: Prelude.Maybe (Data.Sensitive Prelude.Text),
    -- | When the invocation was last modified.
    lastModifiedTime :: Prelude.Maybe Data.ISO8601,
    -- | The invocation\'s status.
    status :: Prelude.Maybe AsyncInvokeStatus,
    -- | The invocation\'s ARN.
    invocationArn :: Prelude.Text,
    -- | The invoked model\'s ARN.
    modelArn :: Prelude.Text,
    -- | When the invocation was submitted.
    submitTime :: Data.ISO8601,
    -- | The invocation\'s output data settings.
    outputDataConfig :: AsyncInvokeOutputDataConfig
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AsyncInvokeSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientRequestToken', 'asyncInvokeSummary_clientRequestToken' - The invocation\'s idempotency token.
--
-- 'endTime', 'asyncInvokeSummary_endTime' - When the invocation ended.
--
-- 'failureMessage', 'asyncInvokeSummary_failureMessage' - An error message.
--
-- 'lastModifiedTime', 'asyncInvokeSummary_lastModifiedTime' - When the invocation was last modified.
--
-- 'status', 'asyncInvokeSummary_status' - The invocation\'s status.
--
-- 'invocationArn', 'asyncInvokeSummary_invocationArn' - The invocation\'s ARN.
--
-- 'modelArn', 'asyncInvokeSummary_modelArn' - The invoked model\'s ARN.
--
-- 'submitTime', 'asyncInvokeSummary_submitTime' - When the invocation was submitted.
--
-- 'outputDataConfig', 'asyncInvokeSummary_outputDataConfig' - The invocation\'s output data settings.
newAsyncInvokeSummary ::
  -- | 'invocationArn'
  Prelude.Text ->
  -- | 'modelArn'
  Prelude.Text ->
  -- | 'submitTime'
  Prelude.UTCTime ->
  -- | 'outputDataConfig'
  AsyncInvokeOutputDataConfig ->
  AsyncInvokeSummary
newAsyncInvokeSummary
  pInvocationArn_
  pModelArn_
  pSubmitTime_
  pOutputDataConfig_ =
    AsyncInvokeSummary'
      { clientRequestToken =
          Prelude.Nothing,
        endTime = Prelude.Nothing,
        failureMessage = Prelude.Nothing,
        lastModifiedTime = Prelude.Nothing,
        status = Prelude.Nothing,
        invocationArn = pInvocationArn_,
        modelArn = pModelArn_,
        submitTime = Data._Time Lens.# pSubmitTime_,
        outputDataConfig = pOutputDataConfig_
      }

-- | The invocation\'s idempotency token.
asyncInvokeSummary_clientRequestToken :: Lens.Lens' AsyncInvokeSummary (Prelude.Maybe Prelude.Text)
asyncInvokeSummary_clientRequestToken = Lens.lens (\AsyncInvokeSummary' {clientRequestToken} -> clientRequestToken) (\s@AsyncInvokeSummary' {} a -> s {clientRequestToken = a} :: AsyncInvokeSummary)

-- | When the invocation ended.
asyncInvokeSummary_endTime :: Lens.Lens' AsyncInvokeSummary (Prelude.Maybe Prelude.UTCTime)
asyncInvokeSummary_endTime = Lens.lens (\AsyncInvokeSummary' {endTime} -> endTime) (\s@AsyncInvokeSummary' {} a -> s {endTime = a} :: AsyncInvokeSummary) Prelude.. Lens.mapping Data._Time

-- | An error message.
asyncInvokeSummary_failureMessage :: Lens.Lens' AsyncInvokeSummary (Prelude.Maybe Prelude.Text)
asyncInvokeSummary_failureMessage = Lens.lens (\AsyncInvokeSummary' {failureMessage} -> failureMessage) (\s@AsyncInvokeSummary' {} a -> s {failureMessage = a} :: AsyncInvokeSummary) Prelude.. Lens.mapping Data._Sensitive

-- | When the invocation was last modified.
asyncInvokeSummary_lastModifiedTime :: Lens.Lens' AsyncInvokeSummary (Prelude.Maybe Prelude.UTCTime)
asyncInvokeSummary_lastModifiedTime = Lens.lens (\AsyncInvokeSummary' {lastModifiedTime} -> lastModifiedTime) (\s@AsyncInvokeSummary' {} a -> s {lastModifiedTime = a} :: AsyncInvokeSummary) Prelude.. Lens.mapping Data._Time

-- | The invocation\'s status.
asyncInvokeSummary_status :: Lens.Lens' AsyncInvokeSummary (Prelude.Maybe AsyncInvokeStatus)
asyncInvokeSummary_status = Lens.lens (\AsyncInvokeSummary' {status} -> status) (\s@AsyncInvokeSummary' {} a -> s {status = a} :: AsyncInvokeSummary)

-- | The invocation\'s ARN.
asyncInvokeSummary_invocationArn :: Lens.Lens' AsyncInvokeSummary Prelude.Text
asyncInvokeSummary_invocationArn = Lens.lens (\AsyncInvokeSummary' {invocationArn} -> invocationArn) (\s@AsyncInvokeSummary' {} a -> s {invocationArn = a} :: AsyncInvokeSummary)

-- | The invoked model\'s ARN.
asyncInvokeSummary_modelArn :: Lens.Lens' AsyncInvokeSummary Prelude.Text
asyncInvokeSummary_modelArn = Lens.lens (\AsyncInvokeSummary' {modelArn} -> modelArn) (\s@AsyncInvokeSummary' {} a -> s {modelArn = a} :: AsyncInvokeSummary)

-- | When the invocation was submitted.
asyncInvokeSummary_submitTime :: Lens.Lens' AsyncInvokeSummary Prelude.UTCTime
asyncInvokeSummary_submitTime = Lens.lens (\AsyncInvokeSummary' {submitTime} -> submitTime) (\s@AsyncInvokeSummary' {} a -> s {submitTime = a} :: AsyncInvokeSummary) Prelude.. Data._Time

-- | The invocation\'s output data settings.
asyncInvokeSummary_outputDataConfig :: Lens.Lens' AsyncInvokeSummary AsyncInvokeOutputDataConfig
asyncInvokeSummary_outputDataConfig = Lens.lens (\AsyncInvokeSummary' {outputDataConfig} -> outputDataConfig) (\s@AsyncInvokeSummary' {} a -> s {outputDataConfig = a} :: AsyncInvokeSummary)

instance Data.FromJSON AsyncInvokeSummary where
  parseJSON =
    Data.withObject
      "AsyncInvokeSummary"
      ( \x ->
          AsyncInvokeSummary'
            Prelude.<$> (x Data..:? "clientRequestToken")
            Prelude.<*> (x Data..:? "endTime")
            Prelude.<*> (x Data..:? "failureMessage")
            Prelude.<*> (x Data..:? "lastModifiedTime")
            Prelude.<*> (x Data..:? "status")
            Prelude.<*> (x Data..: "invocationArn")
            Prelude.<*> (x Data..: "modelArn")
            Prelude.<*> (x Data..: "submitTime")
            Prelude.<*> (x Data..: "outputDataConfig")
      )

instance Prelude.Hashable AsyncInvokeSummary where
  hashWithSalt _salt AsyncInvokeSummary' {..} =
    _salt
      `Prelude.hashWithSalt` clientRequestToken
      `Prelude.hashWithSalt` endTime
      `Prelude.hashWithSalt` failureMessage
      `Prelude.hashWithSalt` lastModifiedTime
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` invocationArn
      `Prelude.hashWithSalt` modelArn
      `Prelude.hashWithSalt` submitTime
      `Prelude.hashWithSalt` outputDataConfig

instance Prelude.NFData AsyncInvokeSummary where
  rnf AsyncInvokeSummary' {..} =
    Prelude.rnf clientRequestToken `Prelude.seq`
      Prelude.rnf endTime `Prelude.seq`
        Prelude.rnf failureMessage `Prelude.seq`
          Prelude.rnf lastModifiedTime `Prelude.seq`
            Prelude.rnf status `Prelude.seq`
              Prelude.rnf invocationArn `Prelude.seq`
                Prelude.rnf modelArn `Prelude.seq`
                  Prelude.rnf submitTime `Prelude.seq`
                    Prelude.rnf outputDataConfig
