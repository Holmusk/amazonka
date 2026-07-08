{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationEntityType
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationEntityType
  ( GuardrailChecksSensitiveInformationEntityType
      ( ..,
        GuardrailChecksSensitiveInformationEntityType_ADDRESS,
        GuardrailChecksSensitiveInformationEntityType_AGE,
        GuardrailChecksSensitiveInformationEntityType_AWS_ACCESS_KEY,
        GuardrailChecksSensitiveInformationEntityType_AWS_SECRET_KEY,
        GuardrailChecksSensitiveInformationEntityType_CA_HEALTH_NUMBER,
        GuardrailChecksSensitiveInformationEntityType_CA_SOCIAL_INSURANCE_NUMBER,
        GuardrailChecksSensitiveInformationEntityType_CREDIT_DEBIT_CARD_CVV,
        GuardrailChecksSensitiveInformationEntityType_CREDIT_DEBIT_CARD_EXPIRY,
        GuardrailChecksSensitiveInformationEntityType_CREDIT_DEBIT_CARD_NUMBER,
        GuardrailChecksSensitiveInformationEntityType_DRIVER_ID,
        GuardrailChecksSensitiveInformationEntityType_EMAIL,
        GuardrailChecksSensitiveInformationEntityType_INTERNATIONAL_BANK_ACCOUNT_NUMBER,
        GuardrailChecksSensitiveInformationEntityType_IP_ADDRESS,
        GuardrailChecksSensitiveInformationEntityType_LICENSE_PLATE,
        GuardrailChecksSensitiveInformationEntityType_MAC_ADDRESS,
        GuardrailChecksSensitiveInformationEntityType_NAME,
        GuardrailChecksSensitiveInformationEntityType_PASSWORD,
        GuardrailChecksSensitiveInformationEntityType_PHONE,
        GuardrailChecksSensitiveInformationEntityType_PIN,
        GuardrailChecksSensitiveInformationEntityType_SWIFT_CODE,
        GuardrailChecksSensitiveInformationEntityType_UK_NATIONAL_HEALTH_SERVICE_NUMBER,
        GuardrailChecksSensitiveInformationEntityType_UK_NATIONAL_INSURANCE_NUMBER,
        GuardrailChecksSensitiveInformationEntityType_UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER,
        GuardrailChecksSensitiveInformationEntityType_URL,
        GuardrailChecksSensitiveInformationEntityType_USERNAME,
        GuardrailChecksSensitiveInformationEntityType_US_BANK_ACCOUNT_NUMBER,
        GuardrailChecksSensitiveInformationEntityType_US_BANK_ROUTING_NUMBER,
        GuardrailChecksSensitiveInformationEntityType_US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER,
        GuardrailChecksSensitiveInformationEntityType_US_PASSPORT_NUMBER,
        GuardrailChecksSensitiveInformationEntityType_US_SOCIAL_SECURITY_NUMBER,
        GuardrailChecksSensitiveInformationEntityType_VEHICLE_IDENTIFICATION_NUMBER
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The type of personally identifiable information (PII) entity to detect.
newtype GuardrailChecksSensitiveInformationEntityType = GuardrailChecksSensitiveInformationEntityType'
  { fromGuardrailChecksSensitiveInformationEntityType ::
      Data.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern GuardrailChecksSensitiveInformationEntityType_ADDRESS :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_ADDRESS = GuardrailChecksSensitiveInformationEntityType' "ADDRESS"

pattern GuardrailChecksSensitiveInformationEntityType_AGE :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_AGE = GuardrailChecksSensitiveInformationEntityType' "AGE"

pattern GuardrailChecksSensitiveInformationEntityType_AWS_ACCESS_KEY :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_AWS_ACCESS_KEY = GuardrailChecksSensitiveInformationEntityType' "AWS_ACCESS_KEY"

pattern GuardrailChecksSensitiveInformationEntityType_AWS_SECRET_KEY :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_AWS_SECRET_KEY = GuardrailChecksSensitiveInformationEntityType' "AWS_SECRET_KEY"

pattern GuardrailChecksSensitiveInformationEntityType_CA_HEALTH_NUMBER :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_CA_HEALTH_NUMBER = GuardrailChecksSensitiveInformationEntityType' "CA_HEALTH_NUMBER"

pattern GuardrailChecksSensitiveInformationEntityType_CA_SOCIAL_INSURANCE_NUMBER :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_CA_SOCIAL_INSURANCE_NUMBER = GuardrailChecksSensitiveInformationEntityType' "CA_SOCIAL_INSURANCE_NUMBER"

pattern GuardrailChecksSensitiveInformationEntityType_CREDIT_DEBIT_CARD_CVV :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_CREDIT_DEBIT_CARD_CVV = GuardrailChecksSensitiveInformationEntityType' "CREDIT_DEBIT_CARD_CVV"

pattern GuardrailChecksSensitiveInformationEntityType_CREDIT_DEBIT_CARD_EXPIRY :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_CREDIT_DEBIT_CARD_EXPIRY = GuardrailChecksSensitiveInformationEntityType' "CREDIT_DEBIT_CARD_EXPIRY"

pattern GuardrailChecksSensitiveInformationEntityType_CREDIT_DEBIT_CARD_NUMBER :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_CREDIT_DEBIT_CARD_NUMBER = GuardrailChecksSensitiveInformationEntityType' "CREDIT_DEBIT_CARD_NUMBER"

pattern GuardrailChecksSensitiveInformationEntityType_DRIVER_ID :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_DRIVER_ID = GuardrailChecksSensitiveInformationEntityType' "DRIVER_ID"

pattern GuardrailChecksSensitiveInformationEntityType_EMAIL :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_EMAIL = GuardrailChecksSensitiveInformationEntityType' "EMAIL"

pattern GuardrailChecksSensitiveInformationEntityType_INTERNATIONAL_BANK_ACCOUNT_NUMBER :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_INTERNATIONAL_BANK_ACCOUNT_NUMBER = GuardrailChecksSensitiveInformationEntityType' "INTERNATIONAL_BANK_ACCOUNT_NUMBER"

pattern GuardrailChecksSensitiveInformationEntityType_IP_ADDRESS :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_IP_ADDRESS = GuardrailChecksSensitiveInformationEntityType' "IP_ADDRESS"

pattern GuardrailChecksSensitiveInformationEntityType_LICENSE_PLATE :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_LICENSE_PLATE = GuardrailChecksSensitiveInformationEntityType' "LICENSE_PLATE"

pattern GuardrailChecksSensitiveInformationEntityType_MAC_ADDRESS :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_MAC_ADDRESS = GuardrailChecksSensitiveInformationEntityType' "MAC_ADDRESS"

pattern GuardrailChecksSensitiveInformationEntityType_NAME :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_NAME = GuardrailChecksSensitiveInformationEntityType' "NAME"

pattern GuardrailChecksSensitiveInformationEntityType_PASSWORD :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_PASSWORD = GuardrailChecksSensitiveInformationEntityType' "PASSWORD"

pattern GuardrailChecksSensitiveInformationEntityType_PHONE :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_PHONE = GuardrailChecksSensitiveInformationEntityType' "PHONE"

pattern GuardrailChecksSensitiveInformationEntityType_PIN :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_PIN = GuardrailChecksSensitiveInformationEntityType' "PIN"

pattern GuardrailChecksSensitiveInformationEntityType_SWIFT_CODE :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_SWIFT_CODE = GuardrailChecksSensitiveInformationEntityType' "SWIFT_CODE"

pattern GuardrailChecksSensitiveInformationEntityType_UK_NATIONAL_HEALTH_SERVICE_NUMBER :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_UK_NATIONAL_HEALTH_SERVICE_NUMBER = GuardrailChecksSensitiveInformationEntityType' "UK_NATIONAL_HEALTH_SERVICE_NUMBER"

pattern GuardrailChecksSensitiveInformationEntityType_UK_NATIONAL_INSURANCE_NUMBER :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_UK_NATIONAL_INSURANCE_NUMBER = GuardrailChecksSensitiveInformationEntityType' "UK_NATIONAL_INSURANCE_NUMBER"

pattern GuardrailChecksSensitiveInformationEntityType_UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER = GuardrailChecksSensitiveInformationEntityType' "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"

pattern GuardrailChecksSensitiveInformationEntityType_URL :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_URL = GuardrailChecksSensitiveInformationEntityType' "URL"

pattern GuardrailChecksSensitiveInformationEntityType_USERNAME :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_USERNAME = GuardrailChecksSensitiveInformationEntityType' "USERNAME"

pattern GuardrailChecksSensitiveInformationEntityType_US_BANK_ACCOUNT_NUMBER :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_US_BANK_ACCOUNT_NUMBER = GuardrailChecksSensitiveInformationEntityType' "US_BANK_ACCOUNT_NUMBER"

pattern GuardrailChecksSensitiveInformationEntityType_US_BANK_ROUTING_NUMBER :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_US_BANK_ROUTING_NUMBER = GuardrailChecksSensitiveInformationEntityType' "US_BANK_ROUTING_NUMBER"

pattern GuardrailChecksSensitiveInformationEntityType_US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER = GuardrailChecksSensitiveInformationEntityType' "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER"

pattern GuardrailChecksSensitiveInformationEntityType_US_PASSPORT_NUMBER :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_US_PASSPORT_NUMBER = GuardrailChecksSensitiveInformationEntityType' "US_PASSPORT_NUMBER"

pattern GuardrailChecksSensitiveInformationEntityType_US_SOCIAL_SECURITY_NUMBER :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_US_SOCIAL_SECURITY_NUMBER = GuardrailChecksSensitiveInformationEntityType' "US_SOCIAL_SECURITY_NUMBER"

pattern GuardrailChecksSensitiveInformationEntityType_VEHICLE_IDENTIFICATION_NUMBER :: GuardrailChecksSensitiveInformationEntityType
pattern GuardrailChecksSensitiveInformationEntityType_VEHICLE_IDENTIFICATION_NUMBER = GuardrailChecksSensitiveInformationEntityType' "VEHICLE_IDENTIFICATION_NUMBER"

{-# COMPLETE
  GuardrailChecksSensitiveInformationEntityType_ADDRESS,
  GuardrailChecksSensitiveInformationEntityType_AGE,
  GuardrailChecksSensitiveInformationEntityType_AWS_ACCESS_KEY,
  GuardrailChecksSensitiveInformationEntityType_AWS_SECRET_KEY,
  GuardrailChecksSensitiveInformationEntityType_CA_HEALTH_NUMBER,
  GuardrailChecksSensitiveInformationEntityType_CA_SOCIAL_INSURANCE_NUMBER,
  GuardrailChecksSensitiveInformationEntityType_CREDIT_DEBIT_CARD_CVV,
  GuardrailChecksSensitiveInformationEntityType_CREDIT_DEBIT_CARD_EXPIRY,
  GuardrailChecksSensitiveInformationEntityType_CREDIT_DEBIT_CARD_NUMBER,
  GuardrailChecksSensitiveInformationEntityType_DRIVER_ID,
  GuardrailChecksSensitiveInformationEntityType_EMAIL,
  GuardrailChecksSensitiveInformationEntityType_INTERNATIONAL_BANK_ACCOUNT_NUMBER,
  GuardrailChecksSensitiveInformationEntityType_IP_ADDRESS,
  GuardrailChecksSensitiveInformationEntityType_LICENSE_PLATE,
  GuardrailChecksSensitiveInformationEntityType_MAC_ADDRESS,
  GuardrailChecksSensitiveInformationEntityType_NAME,
  GuardrailChecksSensitiveInformationEntityType_PASSWORD,
  GuardrailChecksSensitiveInformationEntityType_PHONE,
  GuardrailChecksSensitiveInformationEntityType_PIN,
  GuardrailChecksSensitiveInformationEntityType_SWIFT_CODE,
  GuardrailChecksSensitiveInformationEntityType_UK_NATIONAL_HEALTH_SERVICE_NUMBER,
  GuardrailChecksSensitiveInformationEntityType_UK_NATIONAL_INSURANCE_NUMBER,
  GuardrailChecksSensitiveInformationEntityType_UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER,
  GuardrailChecksSensitiveInformationEntityType_URL,
  GuardrailChecksSensitiveInformationEntityType_USERNAME,
  GuardrailChecksSensitiveInformationEntityType_US_BANK_ACCOUNT_NUMBER,
  GuardrailChecksSensitiveInformationEntityType_US_BANK_ROUTING_NUMBER,
  GuardrailChecksSensitiveInformationEntityType_US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER,
  GuardrailChecksSensitiveInformationEntityType_US_PASSPORT_NUMBER,
  GuardrailChecksSensitiveInformationEntityType_US_SOCIAL_SECURITY_NUMBER,
  GuardrailChecksSensitiveInformationEntityType_VEHICLE_IDENTIFICATION_NUMBER,
  GuardrailChecksSensitiveInformationEntityType'
  #-}
