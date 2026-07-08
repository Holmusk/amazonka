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
-- Module      : Amazonka.BedrockRuntime.Types.GuardrailPiiEntityType
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.GuardrailPiiEntityType
  ( GuardrailPiiEntityType
      ( ..,
        GuardrailPiiEntityType_ADDRESS,
        GuardrailPiiEntityType_AGE,
        GuardrailPiiEntityType_AWS_ACCESS_KEY,
        GuardrailPiiEntityType_AWS_SECRET_KEY,
        GuardrailPiiEntityType_CA_HEALTH_NUMBER,
        GuardrailPiiEntityType_CA_SOCIAL_INSURANCE_NUMBER,
        GuardrailPiiEntityType_CREDIT_DEBIT_CARD_CVV,
        GuardrailPiiEntityType_CREDIT_DEBIT_CARD_EXPIRY,
        GuardrailPiiEntityType_CREDIT_DEBIT_CARD_NUMBER,
        GuardrailPiiEntityType_DRIVER_ID,
        GuardrailPiiEntityType_EMAIL,
        GuardrailPiiEntityType_INTERNATIONAL_BANK_ACCOUNT_NUMBER,
        GuardrailPiiEntityType_IP_ADDRESS,
        GuardrailPiiEntityType_LICENSE_PLATE,
        GuardrailPiiEntityType_MAC_ADDRESS,
        GuardrailPiiEntityType_NAME,
        GuardrailPiiEntityType_PASSWORD,
        GuardrailPiiEntityType_PHONE,
        GuardrailPiiEntityType_PIN,
        GuardrailPiiEntityType_SWIFT_CODE,
        GuardrailPiiEntityType_UK_NATIONAL_HEALTH_SERVICE_NUMBER,
        GuardrailPiiEntityType_UK_NATIONAL_INSURANCE_NUMBER,
        GuardrailPiiEntityType_UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER,
        GuardrailPiiEntityType_URL,
        GuardrailPiiEntityType_USERNAME,
        GuardrailPiiEntityType_US_BANK_ACCOUNT_NUMBER,
        GuardrailPiiEntityType_US_BANK_ROUTING_NUMBER,
        GuardrailPiiEntityType_US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER,
        GuardrailPiiEntityType_US_PASSPORT_NUMBER,
        GuardrailPiiEntityType_US_SOCIAL_SECURITY_NUMBER,
        GuardrailPiiEntityType_VEHICLE_IDENTIFICATION_NUMBER
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype GuardrailPiiEntityType = GuardrailPiiEntityType'
  { fromGuardrailPiiEntityType ::
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

pattern GuardrailPiiEntityType_ADDRESS :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_ADDRESS = GuardrailPiiEntityType' "ADDRESS"

pattern GuardrailPiiEntityType_AGE :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_AGE = GuardrailPiiEntityType' "AGE"

pattern GuardrailPiiEntityType_AWS_ACCESS_KEY :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_AWS_ACCESS_KEY = GuardrailPiiEntityType' "AWS_ACCESS_KEY"

pattern GuardrailPiiEntityType_AWS_SECRET_KEY :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_AWS_SECRET_KEY = GuardrailPiiEntityType' "AWS_SECRET_KEY"

pattern GuardrailPiiEntityType_CA_HEALTH_NUMBER :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_CA_HEALTH_NUMBER = GuardrailPiiEntityType' "CA_HEALTH_NUMBER"

pattern GuardrailPiiEntityType_CA_SOCIAL_INSURANCE_NUMBER :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_CA_SOCIAL_INSURANCE_NUMBER = GuardrailPiiEntityType' "CA_SOCIAL_INSURANCE_NUMBER"

pattern GuardrailPiiEntityType_CREDIT_DEBIT_CARD_CVV :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_CREDIT_DEBIT_CARD_CVV = GuardrailPiiEntityType' "CREDIT_DEBIT_CARD_CVV"

pattern GuardrailPiiEntityType_CREDIT_DEBIT_CARD_EXPIRY :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_CREDIT_DEBIT_CARD_EXPIRY = GuardrailPiiEntityType' "CREDIT_DEBIT_CARD_EXPIRY"

pattern GuardrailPiiEntityType_CREDIT_DEBIT_CARD_NUMBER :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_CREDIT_DEBIT_CARD_NUMBER = GuardrailPiiEntityType' "CREDIT_DEBIT_CARD_NUMBER"

pattern GuardrailPiiEntityType_DRIVER_ID :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_DRIVER_ID = GuardrailPiiEntityType' "DRIVER_ID"

pattern GuardrailPiiEntityType_EMAIL :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_EMAIL = GuardrailPiiEntityType' "EMAIL"

pattern GuardrailPiiEntityType_INTERNATIONAL_BANK_ACCOUNT_NUMBER :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_INTERNATIONAL_BANK_ACCOUNT_NUMBER = GuardrailPiiEntityType' "INTERNATIONAL_BANK_ACCOUNT_NUMBER"

pattern GuardrailPiiEntityType_IP_ADDRESS :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_IP_ADDRESS = GuardrailPiiEntityType' "IP_ADDRESS"

pattern GuardrailPiiEntityType_LICENSE_PLATE :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_LICENSE_PLATE = GuardrailPiiEntityType' "LICENSE_PLATE"

pattern GuardrailPiiEntityType_MAC_ADDRESS :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_MAC_ADDRESS = GuardrailPiiEntityType' "MAC_ADDRESS"

pattern GuardrailPiiEntityType_NAME :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_NAME = GuardrailPiiEntityType' "NAME"

pattern GuardrailPiiEntityType_PASSWORD :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_PASSWORD = GuardrailPiiEntityType' "PASSWORD"

pattern GuardrailPiiEntityType_PHONE :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_PHONE = GuardrailPiiEntityType' "PHONE"

pattern GuardrailPiiEntityType_PIN :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_PIN = GuardrailPiiEntityType' "PIN"

pattern GuardrailPiiEntityType_SWIFT_CODE :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_SWIFT_CODE = GuardrailPiiEntityType' "SWIFT_CODE"

pattern GuardrailPiiEntityType_UK_NATIONAL_HEALTH_SERVICE_NUMBER :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_UK_NATIONAL_HEALTH_SERVICE_NUMBER = GuardrailPiiEntityType' "UK_NATIONAL_HEALTH_SERVICE_NUMBER"

pattern GuardrailPiiEntityType_UK_NATIONAL_INSURANCE_NUMBER :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_UK_NATIONAL_INSURANCE_NUMBER = GuardrailPiiEntityType' "UK_NATIONAL_INSURANCE_NUMBER"

pattern GuardrailPiiEntityType_UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER = GuardrailPiiEntityType' "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"

pattern GuardrailPiiEntityType_URL :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_URL = GuardrailPiiEntityType' "URL"

pattern GuardrailPiiEntityType_USERNAME :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_USERNAME = GuardrailPiiEntityType' "USERNAME"

pattern GuardrailPiiEntityType_US_BANK_ACCOUNT_NUMBER :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_US_BANK_ACCOUNT_NUMBER = GuardrailPiiEntityType' "US_BANK_ACCOUNT_NUMBER"

pattern GuardrailPiiEntityType_US_BANK_ROUTING_NUMBER :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_US_BANK_ROUTING_NUMBER = GuardrailPiiEntityType' "US_BANK_ROUTING_NUMBER"

pattern GuardrailPiiEntityType_US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER = GuardrailPiiEntityType' "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER"

pattern GuardrailPiiEntityType_US_PASSPORT_NUMBER :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_US_PASSPORT_NUMBER = GuardrailPiiEntityType' "US_PASSPORT_NUMBER"

pattern GuardrailPiiEntityType_US_SOCIAL_SECURITY_NUMBER :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_US_SOCIAL_SECURITY_NUMBER = GuardrailPiiEntityType' "US_SOCIAL_SECURITY_NUMBER"

pattern GuardrailPiiEntityType_VEHICLE_IDENTIFICATION_NUMBER :: GuardrailPiiEntityType
pattern GuardrailPiiEntityType_VEHICLE_IDENTIFICATION_NUMBER = GuardrailPiiEntityType' "VEHICLE_IDENTIFICATION_NUMBER"

{-# COMPLETE
  GuardrailPiiEntityType_ADDRESS,
  GuardrailPiiEntityType_AGE,
  GuardrailPiiEntityType_AWS_ACCESS_KEY,
  GuardrailPiiEntityType_AWS_SECRET_KEY,
  GuardrailPiiEntityType_CA_HEALTH_NUMBER,
  GuardrailPiiEntityType_CA_SOCIAL_INSURANCE_NUMBER,
  GuardrailPiiEntityType_CREDIT_DEBIT_CARD_CVV,
  GuardrailPiiEntityType_CREDIT_DEBIT_CARD_EXPIRY,
  GuardrailPiiEntityType_CREDIT_DEBIT_CARD_NUMBER,
  GuardrailPiiEntityType_DRIVER_ID,
  GuardrailPiiEntityType_EMAIL,
  GuardrailPiiEntityType_INTERNATIONAL_BANK_ACCOUNT_NUMBER,
  GuardrailPiiEntityType_IP_ADDRESS,
  GuardrailPiiEntityType_LICENSE_PLATE,
  GuardrailPiiEntityType_MAC_ADDRESS,
  GuardrailPiiEntityType_NAME,
  GuardrailPiiEntityType_PASSWORD,
  GuardrailPiiEntityType_PHONE,
  GuardrailPiiEntityType_PIN,
  GuardrailPiiEntityType_SWIFT_CODE,
  GuardrailPiiEntityType_UK_NATIONAL_HEALTH_SERVICE_NUMBER,
  GuardrailPiiEntityType_UK_NATIONAL_INSURANCE_NUMBER,
  GuardrailPiiEntityType_UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER,
  GuardrailPiiEntityType_URL,
  GuardrailPiiEntityType_USERNAME,
  GuardrailPiiEntityType_US_BANK_ACCOUNT_NUMBER,
  GuardrailPiiEntityType_US_BANK_ROUTING_NUMBER,
  GuardrailPiiEntityType_US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER,
  GuardrailPiiEntityType_US_PASSPORT_NUMBER,
  GuardrailPiiEntityType_US_SOCIAL_SECURITY_NUMBER,
  GuardrailPiiEntityType_VEHICLE_IDENTIFICATION_NUMBER,
  GuardrailPiiEntityType'
  #-}
