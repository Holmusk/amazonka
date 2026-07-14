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
-- Module      : Amazonka.BedrockRuntime.ApplyGuardrail
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The action to apply a guardrail.
--
-- For troubleshooting some of the common errors you might encounter when
-- using the @ApplyGuardrail@ API, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html Troubleshooting Amazon Bedrock API Error Codes>
-- in the Amazon Bedrock User Guide
module Amazonka.BedrockRuntime.ApplyGuardrail
  ( -- * Creating a Request
    ApplyGuardrail (..),
    newApplyGuardrail,

    -- * Request Lenses
    applyGuardrail_outputScope,
    applyGuardrail_guardrailIdentifier,
    applyGuardrail_guardrailVersion,
    applyGuardrail_source,
    applyGuardrail_content,

    -- * Destructuring the Response
    ApplyGuardrailResponse (..),
    newApplyGuardrailResponse,

    -- * Response Lenses
    applyGuardrailResponse_actionReason,
    applyGuardrailResponse_guardrailCoverage,
    applyGuardrailResponse_httpStatus,
    applyGuardrailResponse_usage,
    applyGuardrailResponse_action,
    applyGuardrailResponse_outputs,
    applyGuardrailResponse_assessments,
  )
where

import Amazonka.BedrockRuntime.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newApplyGuardrail' smart constructor.
data ApplyGuardrail = ApplyGuardrail'
  { -- | Specifies the scope of the output that you get in the response. Set to
    -- @FULL@ to return the entire output, including any detected and
    -- non-detected entries in the response for enhanced debugging.
    --
    -- Note that the full output scope doesn\'t apply to word filters or regex
    -- in sensitive information filters. It does apply to all other filtering
    -- policies, including sensitive information with filters that can detect
    -- personally identifiable information (PII).
    outputScope :: Prelude.Maybe GuardrailOutputScope,
    -- | The guardrail identifier used in the request to apply the guardrail.
    guardrailIdentifier :: Prelude.Text,
    -- | The guardrail version used in the request to apply the guardrail.
    guardrailVersion :: Prelude.Text,
    -- | The source of data used in the request to apply the guardrail.
    source :: GuardrailContentSource,
    -- | The content details used in the request to apply the guardrail.
    content :: [GuardrailContentBlock]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApplyGuardrail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'outputScope', 'applyGuardrail_outputScope' - Specifies the scope of the output that you get in the response. Set to
-- @FULL@ to return the entire output, including any detected and
-- non-detected entries in the response for enhanced debugging.
--
-- Note that the full output scope doesn\'t apply to word filters or regex
-- in sensitive information filters. It does apply to all other filtering
-- policies, including sensitive information with filters that can detect
-- personally identifiable information (PII).
--
-- 'guardrailIdentifier', 'applyGuardrail_guardrailIdentifier' - The guardrail identifier used in the request to apply the guardrail.
--
-- 'guardrailVersion', 'applyGuardrail_guardrailVersion' - The guardrail version used in the request to apply the guardrail.
--
-- 'source', 'applyGuardrail_source' - The source of data used in the request to apply the guardrail.
--
-- 'content', 'applyGuardrail_content' - The content details used in the request to apply the guardrail.
newApplyGuardrail ::
  -- | 'guardrailIdentifier'
  Prelude.Text ->
  -- | 'guardrailVersion'
  Prelude.Text ->
  -- | 'source'
  GuardrailContentSource ->
  ApplyGuardrail
newApplyGuardrail
  pGuardrailIdentifier_
  pGuardrailVersion_
  pSource_ =
    ApplyGuardrail'
      { outputScope = Prelude.Nothing,
        guardrailIdentifier = pGuardrailIdentifier_,
        guardrailVersion = pGuardrailVersion_,
        source = pSource_,
        content = Prelude.mempty
      }

-- | Specifies the scope of the output that you get in the response. Set to
-- @FULL@ to return the entire output, including any detected and
-- non-detected entries in the response for enhanced debugging.
--
-- Note that the full output scope doesn\'t apply to word filters or regex
-- in sensitive information filters. It does apply to all other filtering
-- policies, including sensitive information with filters that can detect
-- personally identifiable information (PII).
applyGuardrail_outputScope :: Lens.Lens' ApplyGuardrail (Prelude.Maybe GuardrailOutputScope)
applyGuardrail_outputScope = Lens.lens (\ApplyGuardrail' {outputScope} -> outputScope) (\s@ApplyGuardrail' {} a -> s {outputScope = a} :: ApplyGuardrail)

-- | The guardrail identifier used in the request to apply the guardrail.
applyGuardrail_guardrailIdentifier :: Lens.Lens' ApplyGuardrail Prelude.Text
applyGuardrail_guardrailIdentifier = Lens.lens (\ApplyGuardrail' {guardrailIdentifier} -> guardrailIdentifier) (\s@ApplyGuardrail' {} a -> s {guardrailIdentifier = a} :: ApplyGuardrail)

-- | The guardrail version used in the request to apply the guardrail.
applyGuardrail_guardrailVersion :: Lens.Lens' ApplyGuardrail Prelude.Text
applyGuardrail_guardrailVersion = Lens.lens (\ApplyGuardrail' {guardrailVersion} -> guardrailVersion) (\s@ApplyGuardrail' {} a -> s {guardrailVersion = a} :: ApplyGuardrail)

-- | The source of data used in the request to apply the guardrail.
applyGuardrail_source :: Lens.Lens' ApplyGuardrail GuardrailContentSource
applyGuardrail_source = Lens.lens (\ApplyGuardrail' {source} -> source) (\s@ApplyGuardrail' {} a -> s {source = a} :: ApplyGuardrail)

-- | The content details used in the request to apply the guardrail.
applyGuardrail_content :: Lens.Lens' ApplyGuardrail [GuardrailContentBlock]
applyGuardrail_content = Lens.lens (\ApplyGuardrail' {content} -> content) (\s@ApplyGuardrail' {} a -> s {content = a} :: ApplyGuardrail) Prelude.. Lens.coerced

instance Core.AWSRequest ApplyGuardrail where
  type
    AWSResponse ApplyGuardrail =
      ApplyGuardrailResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ApplyGuardrailResponse'
            Prelude.<$> (x Data..?> "actionReason")
            Prelude.<*> (x Data..?> "guardrailCoverage")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Data..:> "usage")
            Prelude.<*> (x Data..:> "action")
            Prelude.<*> (x Data..?> "outputs" Core..!@ Prelude.mempty)
            Prelude.<*> (x Data..?> "assessments" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ApplyGuardrail where
  hashWithSalt _salt ApplyGuardrail' {..} =
    _salt
      `Prelude.hashWithSalt` outputScope
      `Prelude.hashWithSalt` guardrailIdentifier
      `Prelude.hashWithSalt` guardrailVersion
      `Prelude.hashWithSalt` source
      `Prelude.hashWithSalt` content

instance Prelude.NFData ApplyGuardrail where
  rnf ApplyGuardrail' {..} =
    Prelude.rnf outputScope `Prelude.seq`
      Prelude.rnf guardrailIdentifier `Prelude.seq`
        Prelude.rnf guardrailVersion `Prelude.seq`
          Prelude.rnf source `Prelude.seq`
            Prelude.rnf content

instance Data.ToHeaders ApplyGuardrail where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToJSON ApplyGuardrail where
  toJSON ApplyGuardrail' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("outputScope" Data..=) Prelude.<$> outputScope,
            Prelude.Just ("source" Data..= source),
            Prelude.Just ("content" Data..= content)
          ]
      )

instance Data.ToPath ApplyGuardrail where
  toPath ApplyGuardrail' {..} =
    Prelude.mconcat
      [ "/guardrail/",
        Data.toBS guardrailIdentifier,
        "/version/",
        Data.toBS guardrailVersion,
        "/apply"
      ]

instance Data.ToQuery ApplyGuardrail where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newApplyGuardrailResponse' smart constructor.
data ApplyGuardrailResponse = ApplyGuardrailResponse'
  { -- | The reason for the action taken when harmful content is detected.
    actionReason :: Prelude.Maybe Prelude.Text,
    -- | The guardrail coverage details in the apply guardrail response.
    guardrailCoverage :: Prelude.Maybe GuardrailCoverage,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The usage details in the response from the guardrail.
    usage :: GuardrailUsage,
    -- | The action taken in the response from the guardrail.
    action :: GuardrailAction,
    -- | The output details in the response from the guardrail.
    outputs :: [GuardrailOutputContent],
    -- | The assessment details in the response from the guardrail.
    assessments :: [GuardrailAssessment]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApplyGuardrailResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'actionReason', 'applyGuardrailResponse_actionReason' - The reason for the action taken when harmful content is detected.
--
-- 'guardrailCoverage', 'applyGuardrailResponse_guardrailCoverage' - The guardrail coverage details in the apply guardrail response.
--
-- 'httpStatus', 'applyGuardrailResponse_httpStatus' - The response's http status code.
--
-- 'usage', 'applyGuardrailResponse_usage' - The usage details in the response from the guardrail.
--
-- 'action', 'applyGuardrailResponse_action' - The action taken in the response from the guardrail.
--
-- 'outputs', 'applyGuardrailResponse_outputs' - The output details in the response from the guardrail.
--
-- 'assessments', 'applyGuardrailResponse_assessments' - The assessment details in the response from the guardrail.
newApplyGuardrailResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'usage'
  GuardrailUsage ->
  -- | 'action'
  GuardrailAction ->
  ApplyGuardrailResponse
newApplyGuardrailResponse
  pHttpStatus_
  pUsage_
  pAction_ =
    ApplyGuardrailResponse'
      { actionReason =
          Prelude.Nothing,
        guardrailCoverage = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        usage = pUsage_,
        action = pAction_,
        outputs = Prelude.mempty,
        assessments = Prelude.mempty
      }

-- | The reason for the action taken when harmful content is detected.
applyGuardrailResponse_actionReason :: Lens.Lens' ApplyGuardrailResponse (Prelude.Maybe Prelude.Text)
applyGuardrailResponse_actionReason = Lens.lens (\ApplyGuardrailResponse' {actionReason} -> actionReason) (\s@ApplyGuardrailResponse' {} a -> s {actionReason = a} :: ApplyGuardrailResponse)

-- | The guardrail coverage details in the apply guardrail response.
applyGuardrailResponse_guardrailCoverage :: Lens.Lens' ApplyGuardrailResponse (Prelude.Maybe GuardrailCoverage)
applyGuardrailResponse_guardrailCoverage = Lens.lens (\ApplyGuardrailResponse' {guardrailCoverage} -> guardrailCoverage) (\s@ApplyGuardrailResponse' {} a -> s {guardrailCoverage = a} :: ApplyGuardrailResponse)

-- | The response's http status code.
applyGuardrailResponse_httpStatus :: Lens.Lens' ApplyGuardrailResponse Prelude.Int
applyGuardrailResponse_httpStatus = Lens.lens (\ApplyGuardrailResponse' {httpStatus} -> httpStatus) (\s@ApplyGuardrailResponse' {} a -> s {httpStatus = a} :: ApplyGuardrailResponse)

-- | The usage details in the response from the guardrail.
applyGuardrailResponse_usage :: Lens.Lens' ApplyGuardrailResponse GuardrailUsage
applyGuardrailResponse_usage = Lens.lens (\ApplyGuardrailResponse' {usage} -> usage) (\s@ApplyGuardrailResponse' {} a -> s {usage = a} :: ApplyGuardrailResponse)

-- | The action taken in the response from the guardrail.
applyGuardrailResponse_action :: Lens.Lens' ApplyGuardrailResponse GuardrailAction
applyGuardrailResponse_action = Lens.lens (\ApplyGuardrailResponse' {action} -> action) (\s@ApplyGuardrailResponse' {} a -> s {action = a} :: ApplyGuardrailResponse)

-- | The output details in the response from the guardrail.
applyGuardrailResponse_outputs :: Lens.Lens' ApplyGuardrailResponse [GuardrailOutputContent]
applyGuardrailResponse_outputs = Lens.lens (\ApplyGuardrailResponse' {outputs} -> outputs) (\s@ApplyGuardrailResponse' {} a -> s {outputs = a} :: ApplyGuardrailResponse) Prelude.. Lens.coerced

-- | The assessment details in the response from the guardrail.
applyGuardrailResponse_assessments :: Lens.Lens' ApplyGuardrailResponse [GuardrailAssessment]
applyGuardrailResponse_assessments = Lens.lens (\ApplyGuardrailResponse' {assessments} -> assessments) (\s@ApplyGuardrailResponse' {} a -> s {assessments = a} :: ApplyGuardrailResponse) Prelude.. Lens.coerced

instance Prelude.NFData ApplyGuardrailResponse where
  rnf ApplyGuardrailResponse' {..} =
    Prelude.rnf actionReason `Prelude.seq`
      Prelude.rnf guardrailCoverage `Prelude.seq`
        Prelude.rnf httpStatus `Prelude.seq`
          Prelude.rnf usage `Prelude.seq`
            Prelude.rnf action `Prelude.seq`
              Prelude.rnf outputs `Prelude.seq`
                Prelude.rnf assessments
