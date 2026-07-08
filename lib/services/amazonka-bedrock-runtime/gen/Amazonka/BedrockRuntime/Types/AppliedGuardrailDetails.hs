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
-- Module      : Amazonka.BedrockRuntime.Types.AppliedGuardrailDetails
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.AppliedGuardrailDetails where

import Amazonka.BedrockRuntime.Types.GuardrailOrigin
import Amazonka.BedrockRuntime.Types.GuardrailOwnership
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Details about the specific guardrail that was applied during this
-- assessment, including its identifier, version, ARN, origin, and
-- ownership information.
--
-- /See:/ 'newAppliedGuardrailDetails' smart constructor.
data AppliedGuardrailDetails = AppliedGuardrailDetails'
  { -- | The ARN of the guardrail that was applied.
    guardrailArn :: Prelude.Maybe Prelude.Text,
    -- | The unique ID of the guardrail that was applied.
    guardrailId :: Prelude.Maybe Prelude.Text,
    -- | The origin of how the guardrail was applied. This can be either
    -- requested at the API level or enforced at the account or organization
    -- level as a default guardrail.
    guardrailOrigin :: Prelude.Maybe [GuardrailOrigin],
    -- | The ownership type of the guardrail, indicating whether it is owned by
    -- the requesting account or is a cross-account guardrail shared from
    -- another AWS account.
    guardrailOwnership :: Prelude.Maybe GuardrailOwnership,
    -- | The version of the guardrail that was applied.
    guardrailVersion :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AppliedGuardrailDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'guardrailArn', 'appliedGuardrailDetails_guardrailArn' - The ARN of the guardrail that was applied.
--
-- 'guardrailId', 'appliedGuardrailDetails_guardrailId' - The unique ID of the guardrail that was applied.
--
-- 'guardrailOrigin', 'appliedGuardrailDetails_guardrailOrigin' - The origin of how the guardrail was applied. This can be either
-- requested at the API level or enforced at the account or organization
-- level as a default guardrail.
--
-- 'guardrailOwnership', 'appliedGuardrailDetails_guardrailOwnership' - The ownership type of the guardrail, indicating whether it is owned by
-- the requesting account or is a cross-account guardrail shared from
-- another AWS account.
--
-- 'guardrailVersion', 'appliedGuardrailDetails_guardrailVersion' - The version of the guardrail that was applied.
newAppliedGuardrailDetails ::
  AppliedGuardrailDetails
newAppliedGuardrailDetails =
  AppliedGuardrailDetails'
    { guardrailArn =
        Prelude.Nothing,
      guardrailId = Prelude.Nothing,
      guardrailOrigin = Prelude.Nothing,
      guardrailOwnership = Prelude.Nothing,
      guardrailVersion = Prelude.Nothing
    }

-- | The ARN of the guardrail that was applied.
appliedGuardrailDetails_guardrailArn :: Lens.Lens' AppliedGuardrailDetails (Prelude.Maybe Prelude.Text)
appliedGuardrailDetails_guardrailArn = Lens.lens (\AppliedGuardrailDetails' {guardrailArn} -> guardrailArn) (\s@AppliedGuardrailDetails' {} a -> s {guardrailArn = a} :: AppliedGuardrailDetails)

-- | The unique ID of the guardrail that was applied.
appliedGuardrailDetails_guardrailId :: Lens.Lens' AppliedGuardrailDetails (Prelude.Maybe Prelude.Text)
appliedGuardrailDetails_guardrailId = Lens.lens (\AppliedGuardrailDetails' {guardrailId} -> guardrailId) (\s@AppliedGuardrailDetails' {} a -> s {guardrailId = a} :: AppliedGuardrailDetails)

-- | The origin of how the guardrail was applied. This can be either
-- requested at the API level or enforced at the account or organization
-- level as a default guardrail.
appliedGuardrailDetails_guardrailOrigin :: Lens.Lens' AppliedGuardrailDetails (Prelude.Maybe [GuardrailOrigin])
appliedGuardrailDetails_guardrailOrigin = Lens.lens (\AppliedGuardrailDetails' {guardrailOrigin} -> guardrailOrigin) (\s@AppliedGuardrailDetails' {} a -> s {guardrailOrigin = a} :: AppliedGuardrailDetails) Prelude.. Lens.mapping Lens.coerced

-- | The ownership type of the guardrail, indicating whether it is owned by
-- the requesting account or is a cross-account guardrail shared from
-- another AWS account.
appliedGuardrailDetails_guardrailOwnership :: Lens.Lens' AppliedGuardrailDetails (Prelude.Maybe GuardrailOwnership)
appliedGuardrailDetails_guardrailOwnership = Lens.lens (\AppliedGuardrailDetails' {guardrailOwnership} -> guardrailOwnership) (\s@AppliedGuardrailDetails' {} a -> s {guardrailOwnership = a} :: AppliedGuardrailDetails)

-- | The version of the guardrail that was applied.
appliedGuardrailDetails_guardrailVersion :: Lens.Lens' AppliedGuardrailDetails (Prelude.Maybe Prelude.Text)
appliedGuardrailDetails_guardrailVersion = Lens.lens (\AppliedGuardrailDetails' {guardrailVersion} -> guardrailVersion) (\s@AppliedGuardrailDetails' {} a -> s {guardrailVersion = a} :: AppliedGuardrailDetails)

instance Data.FromJSON AppliedGuardrailDetails where
  parseJSON =
    Data.withObject
      "AppliedGuardrailDetails"
      ( \x ->
          AppliedGuardrailDetails'
            Prelude.<$> (x Data..:? "guardrailArn")
            Prelude.<*> (x Data..:? "guardrailId")
            Prelude.<*> ( x
                            Data..:? "guardrailOrigin"
                            Data..!= Prelude.mempty
                        )
            Prelude.<*> (x Data..:? "guardrailOwnership")
            Prelude.<*> (x Data..:? "guardrailVersion")
      )

instance Prelude.Hashable AppliedGuardrailDetails where
  hashWithSalt _salt AppliedGuardrailDetails' {..} =
    _salt
      `Prelude.hashWithSalt` guardrailArn
      `Prelude.hashWithSalt` guardrailId
      `Prelude.hashWithSalt` guardrailOrigin
      `Prelude.hashWithSalt` guardrailOwnership
      `Prelude.hashWithSalt` guardrailVersion

instance Prelude.NFData AppliedGuardrailDetails where
  rnf AppliedGuardrailDetails' {..} =
    Prelude.rnf guardrailArn `Prelude.seq`
      Prelude.rnf guardrailId `Prelude.seq`
        Prelude.rnf guardrailOrigin `Prelude.seq`
          Prelude.rnf guardrailOwnership `Prelude.seq`
            Prelude.rnf guardrailVersion
