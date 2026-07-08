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
-- Module      : Amazonka.BedrockRuntime.InvokeGuardrailChecks
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Evaluates messages against inline guardrail checks. You specify the
-- check configurations directly in the request, and Amazon Bedrock returns
-- per-check results with severity or confidence scores.
module Amazonka.BedrockRuntime.InvokeGuardrailChecks
  ( -- * Creating a Request
    InvokeGuardrailChecks (..),
    newInvokeGuardrailChecks,

    -- * Request Lenses
    invokeGuardrailChecks_messages,
    invokeGuardrailChecks_checks,

    -- * Destructuring the Response
    InvokeGuardrailChecksResponse (..),
    newInvokeGuardrailChecksResponse,

    -- * Response Lenses
    invokeGuardrailChecksResponse_httpStatus,
    invokeGuardrailChecksResponse_results,
    invokeGuardrailChecksResponse_usage,
  )
where

import Amazonka.BedrockRuntime.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newInvokeGuardrailChecks' smart constructor.
data InvokeGuardrailChecks = InvokeGuardrailChecks'
  { -- | The messages to evaluate against the specified guardrail checks. Each
    -- message includes a role and one or more content blocks.
    messages :: Prelude.NonEmpty GuardrailChecksMessage,
    -- | The inline check configurations that specify which guardrail checks to
    -- run against the messages.
    checks :: GuardrailChecksConfig
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InvokeGuardrailChecks' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'messages', 'invokeGuardrailChecks_messages' - The messages to evaluate against the specified guardrail checks. Each
-- message includes a role and one or more content blocks.
--
-- 'checks', 'invokeGuardrailChecks_checks' - The inline check configurations that specify which guardrail checks to
-- run against the messages.
newInvokeGuardrailChecks ::
  -- | 'messages'
  Prelude.NonEmpty GuardrailChecksMessage ->
  -- | 'checks'
  GuardrailChecksConfig ->
  InvokeGuardrailChecks
newInvokeGuardrailChecks pMessages_ pChecks_ =
  InvokeGuardrailChecks'
    { messages =
        Lens.coerced Lens.# pMessages_,
      checks = pChecks_
    }

-- | The messages to evaluate against the specified guardrail checks. Each
-- message includes a role and one or more content blocks.
invokeGuardrailChecks_messages :: Lens.Lens' InvokeGuardrailChecks (Prelude.NonEmpty GuardrailChecksMessage)
invokeGuardrailChecks_messages = Lens.lens (\InvokeGuardrailChecks' {messages} -> messages) (\s@InvokeGuardrailChecks' {} a -> s {messages = a} :: InvokeGuardrailChecks) Prelude.. Lens.coerced

-- | The inline check configurations that specify which guardrail checks to
-- run against the messages.
invokeGuardrailChecks_checks :: Lens.Lens' InvokeGuardrailChecks GuardrailChecksConfig
invokeGuardrailChecks_checks = Lens.lens (\InvokeGuardrailChecks' {checks} -> checks) (\s@InvokeGuardrailChecks' {} a -> s {checks = a} :: InvokeGuardrailChecks)

instance Core.AWSRequest InvokeGuardrailChecks where
  type
    AWSResponse InvokeGuardrailChecks =
      InvokeGuardrailChecksResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          InvokeGuardrailChecksResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Data..:> "results")
            Prelude.<*> (x Data..:> "usage")
      )

instance Prelude.Hashable InvokeGuardrailChecks where
  hashWithSalt _salt InvokeGuardrailChecks' {..} =
    _salt
      `Prelude.hashWithSalt` messages
      `Prelude.hashWithSalt` checks

instance Prelude.NFData InvokeGuardrailChecks where
  rnf InvokeGuardrailChecks' {..} =
    Prelude.rnf messages `Prelude.seq`
      Prelude.rnf checks

instance Data.ToHeaders InvokeGuardrailChecks where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToJSON InvokeGuardrailChecks where
  toJSON InvokeGuardrailChecks' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just ("messages" Data..= messages),
            Prelude.Just ("checks" Data..= checks)
          ]
      )

instance Data.ToPath InvokeGuardrailChecks where
  toPath = Prelude.const "/guardrail-checks/invoke"

instance Data.ToQuery InvokeGuardrailChecks where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newInvokeGuardrailChecksResponse' smart constructor.
data InvokeGuardrailChecksResponse = InvokeGuardrailChecksResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The per-check results containing findings from the guardrail evaluation.
    results :: GuardrailChecksResults,
    -- | The per-check text unit consumption for the guardrail evaluation.
    usage :: GuardrailChecksUsageResults
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InvokeGuardrailChecksResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'invokeGuardrailChecksResponse_httpStatus' - The response's http status code.
--
-- 'results', 'invokeGuardrailChecksResponse_results' - The per-check results containing findings from the guardrail evaluation.
--
-- 'usage', 'invokeGuardrailChecksResponse_usage' - The per-check text unit consumption for the guardrail evaluation.
newInvokeGuardrailChecksResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'results'
  GuardrailChecksResults ->
  -- | 'usage'
  GuardrailChecksUsageResults ->
  InvokeGuardrailChecksResponse
newInvokeGuardrailChecksResponse
  pHttpStatus_
  pResults_
  pUsage_ =
    InvokeGuardrailChecksResponse'
      { httpStatus =
          pHttpStatus_,
        results = pResults_,
        usage = pUsage_
      }

-- | The response's http status code.
invokeGuardrailChecksResponse_httpStatus :: Lens.Lens' InvokeGuardrailChecksResponse Prelude.Int
invokeGuardrailChecksResponse_httpStatus = Lens.lens (\InvokeGuardrailChecksResponse' {httpStatus} -> httpStatus) (\s@InvokeGuardrailChecksResponse' {} a -> s {httpStatus = a} :: InvokeGuardrailChecksResponse)

-- | The per-check results containing findings from the guardrail evaluation.
invokeGuardrailChecksResponse_results :: Lens.Lens' InvokeGuardrailChecksResponse GuardrailChecksResults
invokeGuardrailChecksResponse_results = Lens.lens (\InvokeGuardrailChecksResponse' {results} -> results) (\s@InvokeGuardrailChecksResponse' {} a -> s {results = a} :: InvokeGuardrailChecksResponse)

-- | The per-check text unit consumption for the guardrail evaluation.
invokeGuardrailChecksResponse_usage :: Lens.Lens' InvokeGuardrailChecksResponse GuardrailChecksUsageResults
invokeGuardrailChecksResponse_usage = Lens.lens (\InvokeGuardrailChecksResponse' {usage} -> usage) (\s@InvokeGuardrailChecksResponse' {} a -> s {usage = a} :: InvokeGuardrailChecksResponse)

instance Prelude.NFData InvokeGuardrailChecksResponse where
  rnf InvokeGuardrailChecksResponse' {..} =
    Prelude.rnf httpStatus `Prelude.seq`
      Prelude.rnf results `Prelude.seq`
        Prelude.rnf usage
