{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.BedrockRuntime.GetAsyncInvoke
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve information about an asynchronous invocation.
module Amazonka.BedrockRuntime.GetAsyncInvoke
  ( -- * Creating a Request
    GetAsyncInvoke (..),
    newGetAsyncInvoke,

    -- * Request Lenses
    getAsyncInvoke_invocationArn,

    -- * Destructuring the Response
    GetAsyncInvokeResponse (..),
    newGetAsyncInvokeResponse,

    -- * Response Lenses
    getAsyncInvokeResponse_clientRequestToken,
    getAsyncInvokeResponse_endTime,
    getAsyncInvokeResponse_failureMessage,
    getAsyncInvokeResponse_lastModifiedTime,
    getAsyncInvokeResponse_httpStatus,
    getAsyncInvokeResponse_invocationArn,
    getAsyncInvokeResponse_modelArn,
    getAsyncInvokeResponse_status,
    getAsyncInvokeResponse_submitTime,
    getAsyncInvokeResponse_outputDataConfig,
  )
where

import Amazonka.BedrockRuntime.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetAsyncInvoke' smart constructor.
data GetAsyncInvoke = GetAsyncInvoke'
  { -- | The invocation\'s ARN.
    invocationArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAsyncInvoke' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'invocationArn', 'getAsyncInvoke_invocationArn' - The invocation\'s ARN.
newGetAsyncInvoke ::
  -- | 'invocationArn'
  Prelude.Text ->
  GetAsyncInvoke
newGetAsyncInvoke pInvocationArn_ =
  GetAsyncInvoke' {invocationArn = pInvocationArn_}

-- | The invocation\'s ARN.
getAsyncInvoke_invocationArn :: Lens.Lens' GetAsyncInvoke Prelude.Text
getAsyncInvoke_invocationArn = Lens.lens (\GetAsyncInvoke' {invocationArn} -> invocationArn) (\s@GetAsyncInvoke' {} a -> s {invocationArn = a} :: GetAsyncInvoke)

instance Core.AWSRequest GetAsyncInvoke where
  type
    AWSResponse GetAsyncInvoke =
      GetAsyncInvokeResponse
  request overrides =
    Request.get (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAsyncInvokeResponse'
            Prelude.<$> (x Data..?> "clientRequestToken")
            Prelude.<*> (x Data..?> "endTime")
            Prelude.<*> (x Data..?> "failureMessage")
            Prelude.<*> (x Data..?> "lastModifiedTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Data..:> "invocationArn")
            Prelude.<*> (x Data..:> "modelArn")
            Prelude.<*> (x Data..:> "status")
            Prelude.<*> (x Data..:> "submitTime")
            Prelude.<*> (x Data..:> "outputDataConfig")
      )

instance Prelude.Hashable GetAsyncInvoke where
  hashWithSalt _salt GetAsyncInvoke' {..} =
    _salt `Prelude.hashWithSalt` invocationArn

instance Prelude.NFData GetAsyncInvoke where
  rnf GetAsyncInvoke' {..} = Prelude.rnf invocationArn

instance Data.ToHeaders GetAsyncInvoke where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToPath GetAsyncInvoke where
  toPath GetAsyncInvoke' {..} =
    Prelude.mconcat
      ["/async-invoke/", Data.toBS invocationArn]

instance Data.ToQuery GetAsyncInvoke where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAsyncInvokeResponse' smart constructor.
data GetAsyncInvokeResponse = GetAsyncInvokeResponse'
  { -- | The invocation\'s idempotency token.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | When the invocation ended.
    endTime :: Prelude.Maybe Data.ISO8601,
    -- | An error message.
    failureMessage :: Prelude.Maybe (Data.Sensitive Prelude.Text),
    -- | The invocation\'s last modified time.
    lastModifiedTime :: Prelude.Maybe Data.ISO8601,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The invocation\'s ARN.
    invocationArn :: Prelude.Text,
    -- | The invocation\'s model ARN.
    modelArn :: Prelude.Text,
    -- | The invocation\'s status.
    status :: AsyncInvokeStatus,
    -- | When the invocation request was submitted.
    submitTime :: Data.ISO8601,
    -- | Output data settings.
    outputDataConfig :: AsyncInvokeOutputDataConfig
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAsyncInvokeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientRequestToken', 'getAsyncInvokeResponse_clientRequestToken' - The invocation\'s idempotency token.
--
-- 'endTime', 'getAsyncInvokeResponse_endTime' - When the invocation ended.
--
-- 'failureMessage', 'getAsyncInvokeResponse_failureMessage' - An error message.
--
-- 'lastModifiedTime', 'getAsyncInvokeResponse_lastModifiedTime' - The invocation\'s last modified time.
--
-- 'httpStatus', 'getAsyncInvokeResponse_httpStatus' - The response's http status code.
--
-- 'invocationArn', 'getAsyncInvokeResponse_invocationArn' - The invocation\'s ARN.
--
-- 'modelArn', 'getAsyncInvokeResponse_modelArn' - The invocation\'s model ARN.
--
-- 'status', 'getAsyncInvokeResponse_status' - The invocation\'s status.
--
-- 'submitTime', 'getAsyncInvokeResponse_submitTime' - When the invocation request was submitted.
--
-- 'outputDataConfig', 'getAsyncInvokeResponse_outputDataConfig' - Output data settings.
newGetAsyncInvokeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'invocationArn'
  Prelude.Text ->
  -- | 'modelArn'
  Prelude.Text ->
  -- | 'status'
  AsyncInvokeStatus ->
  -- | 'submitTime'
  Prelude.UTCTime ->
  -- | 'outputDataConfig'
  AsyncInvokeOutputDataConfig ->
  GetAsyncInvokeResponse
newGetAsyncInvokeResponse
  pHttpStatus_
  pInvocationArn_
  pModelArn_
  pStatus_
  pSubmitTime_
  pOutputDataConfig_ =
    GetAsyncInvokeResponse'
      { clientRequestToken =
          Prelude.Nothing,
        endTime = Prelude.Nothing,
        failureMessage = Prelude.Nothing,
        lastModifiedTime = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        invocationArn = pInvocationArn_,
        modelArn = pModelArn_,
        status = pStatus_,
        submitTime = Data._Time Lens.# pSubmitTime_,
        outputDataConfig = pOutputDataConfig_
      }

-- | The invocation\'s idempotency token.
getAsyncInvokeResponse_clientRequestToken :: Lens.Lens' GetAsyncInvokeResponse (Prelude.Maybe Prelude.Text)
getAsyncInvokeResponse_clientRequestToken = Lens.lens (\GetAsyncInvokeResponse' {clientRequestToken} -> clientRequestToken) (\s@GetAsyncInvokeResponse' {} a -> s {clientRequestToken = a} :: GetAsyncInvokeResponse)

-- | When the invocation ended.
getAsyncInvokeResponse_endTime :: Lens.Lens' GetAsyncInvokeResponse (Prelude.Maybe Prelude.UTCTime)
getAsyncInvokeResponse_endTime = Lens.lens (\GetAsyncInvokeResponse' {endTime} -> endTime) (\s@GetAsyncInvokeResponse' {} a -> s {endTime = a} :: GetAsyncInvokeResponse) Prelude.. Lens.mapping Data._Time

-- | An error message.
getAsyncInvokeResponse_failureMessage :: Lens.Lens' GetAsyncInvokeResponse (Prelude.Maybe Prelude.Text)
getAsyncInvokeResponse_failureMessage = Lens.lens (\GetAsyncInvokeResponse' {failureMessage} -> failureMessage) (\s@GetAsyncInvokeResponse' {} a -> s {failureMessage = a} :: GetAsyncInvokeResponse) Prelude.. Lens.mapping Data._Sensitive

-- | The invocation\'s last modified time.
getAsyncInvokeResponse_lastModifiedTime :: Lens.Lens' GetAsyncInvokeResponse (Prelude.Maybe Prelude.UTCTime)
getAsyncInvokeResponse_lastModifiedTime = Lens.lens (\GetAsyncInvokeResponse' {lastModifiedTime} -> lastModifiedTime) (\s@GetAsyncInvokeResponse' {} a -> s {lastModifiedTime = a} :: GetAsyncInvokeResponse) Prelude.. Lens.mapping Data._Time

-- | The response's http status code.
getAsyncInvokeResponse_httpStatus :: Lens.Lens' GetAsyncInvokeResponse Prelude.Int
getAsyncInvokeResponse_httpStatus = Lens.lens (\GetAsyncInvokeResponse' {httpStatus} -> httpStatus) (\s@GetAsyncInvokeResponse' {} a -> s {httpStatus = a} :: GetAsyncInvokeResponse)

-- | The invocation\'s ARN.
getAsyncInvokeResponse_invocationArn :: Lens.Lens' GetAsyncInvokeResponse Prelude.Text
getAsyncInvokeResponse_invocationArn = Lens.lens (\GetAsyncInvokeResponse' {invocationArn} -> invocationArn) (\s@GetAsyncInvokeResponse' {} a -> s {invocationArn = a} :: GetAsyncInvokeResponse)

-- | The invocation\'s model ARN.
getAsyncInvokeResponse_modelArn :: Lens.Lens' GetAsyncInvokeResponse Prelude.Text
getAsyncInvokeResponse_modelArn = Lens.lens (\GetAsyncInvokeResponse' {modelArn} -> modelArn) (\s@GetAsyncInvokeResponse' {} a -> s {modelArn = a} :: GetAsyncInvokeResponse)

-- | The invocation\'s status.
getAsyncInvokeResponse_status :: Lens.Lens' GetAsyncInvokeResponse AsyncInvokeStatus
getAsyncInvokeResponse_status = Lens.lens (\GetAsyncInvokeResponse' {status} -> status) (\s@GetAsyncInvokeResponse' {} a -> s {status = a} :: GetAsyncInvokeResponse)

-- | When the invocation request was submitted.
getAsyncInvokeResponse_submitTime :: Lens.Lens' GetAsyncInvokeResponse Prelude.UTCTime
getAsyncInvokeResponse_submitTime = Lens.lens (\GetAsyncInvokeResponse' {submitTime} -> submitTime) (\s@GetAsyncInvokeResponse' {} a -> s {submitTime = a} :: GetAsyncInvokeResponse) Prelude.. Data._Time

-- | Output data settings.
getAsyncInvokeResponse_outputDataConfig :: Lens.Lens' GetAsyncInvokeResponse AsyncInvokeOutputDataConfig
getAsyncInvokeResponse_outputDataConfig = Lens.lens (\GetAsyncInvokeResponse' {outputDataConfig} -> outputDataConfig) (\s@GetAsyncInvokeResponse' {} a -> s {outputDataConfig = a} :: GetAsyncInvokeResponse)

instance Prelude.NFData GetAsyncInvokeResponse where
  rnf GetAsyncInvokeResponse' {..} =
    Prelude.rnf clientRequestToken `Prelude.seq`
      Prelude.rnf endTime `Prelude.seq`
        Prelude.rnf failureMessage `Prelude.seq`
          Prelude.rnf lastModifiedTime `Prelude.seq`
            Prelude.rnf httpStatus `Prelude.seq`
              Prelude.rnf invocationArn `Prelude.seq`
                Prelude.rnf modelArn `Prelude.seq`
                  Prelude.rnf status `Prelude.seq`
                    Prelude.rnf submitTime `Prelude.seq`
                      Prelude.rnf outputDataConfig
