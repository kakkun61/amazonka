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
-- Module      : Network.AWS.Chime.Types.PhoneNumber
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.PhoneNumber where

import Network.AWS.Chime.Types.CallingNameStatus
import Network.AWS.Chime.Types.PhoneNumberAssociation
import Network.AWS.Chime.Types.PhoneNumberCapabilities
import Network.AWS.Chime.Types.PhoneNumberProductType
import Network.AWS.Chime.Types.PhoneNumberStatus
import Network.AWS.Chime.Types.PhoneNumberType
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A phone number used for Amazon Chime Business Calling or an Amazon Chime
-- Voice Connector.
--
-- /See:/ 'newPhoneNumber' smart constructor.
data PhoneNumber = PhoneNumber'
  { -- | The phone number status.
    status :: Prelude.Maybe PhoneNumberStatus,
    -- | The deleted phone number timestamp, in ISO 8601 format.
    deletionTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The phone number ID.
    phoneNumberId :: Prelude.Maybe Prelude.Text,
    -- | The phone number country. Format: ISO 3166-1 alpha-2.
    country :: Prelude.Maybe Prelude.Text,
    -- | The updated phone number timestamp, in ISO 8601 format.
    updatedTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The phone number product type.
    productType :: Prelude.Maybe PhoneNumberProductType,
    -- | The phone number, in E.164 format.
    e164PhoneNumber :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The phone number associations.
    associations :: Prelude.Maybe [PhoneNumberAssociation],
    -- | The outbound calling name associated with the phone number.
    callingName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The phone number type.
    type' :: Prelude.Maybe PhoneNumberType,
    -- | The phone number creation timestamp, in ISO 8601 format.
    createdTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The phone number capabilities.
    capabilities :: Prelude.Maybe PhoneNumberCapabilities,
    -- | The outbound calling name status.
    callingNameStatus :: Prelude.Maybe CallingNameStatus
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PhoneNumber' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'phoneNumber_status' - The phone number status.
--
-- 'deletionTimestamp', 'phoneNumber_deletionTimestamp' - The deleted phone number timestamp, in ISO 8601 format.
--
-- 'phoneNumberId', 'phoneNumber_phoneNumberId' - The phone number ID.
--
-- 'country', 'phoneNumber_country' - The phone number country. Format: ISO 3166-1 alpha-2.
--
-- 'updatedTimestamp', 'phoneNumber_updatedTimestamp' - The updated phone number timestamp, in ISO 8601 format.
--
-- 'productType', 'phoneNumber_productType' - The phone number product type.
--
-- 'e164PhoneNumber', 'phoneNumber_e164PhoneNumber' - The phone number, in E.164 format.
--
-- 'associations', 'phoneNumber_associations' - The phone number associations.
--
-- 'callingName', 'phoneNumber_callingName' - The outbound calling name associated with the phone number.
--
-- 'type'', 'phoneNumber_type' - The phone number type.
--
-- 'createdTimestamp', 'phoneNumber_createdTimestamp' - The phone number creation timestamp, in ISO 8601 format.
--
-- 'capabilities', 'phoneNumber_capabilities' - The phone number capabilities.
--
-- 'callingNameStatus', 'phoneNumber_callingNameStatus' - The outbound calling name status.
newPhoneNumber ::
  PhoneNumber
newPhoneNumber =
  PhoneNumber'
    { status = Prelude.Nothing,
      deletionTimestamp = Prelude.Nothing,
      phoneNumberId = Prelude.Nothing,
      country = Prelude.Nothing,
      updatedTimestamp = Prelude.Nothing,
      productType = Prelude.Nothing,
      e164PhoneNumber = Prelude.Nothing,
      associations = Prelude.Nothing,
      callingName = Prelude.Nothing,
      type' = Prelude.Nothing,
      createdTimestamp = Prelude.Nothing,
      capabilities = Prelude.Nothing,
      callingNameStatus = Prelude.Nothing
    }

-- | The phone number status.
phoneNumber_status :: Lens.Lens' PhoneNumber (Prelude.Maybe PhoneNumberStatus)
phoneNumber_status = Lens.lens (\PhoneNumber' {status} -> status) (\s@PhoneNumber' {} a -> s {status = a} :: PhoneNumber)

-- | The deleted phone number timestamp, in ISO 8601 format.
phoneNumber_deletionTimestamp :: Lens.Lens' PhoneNumber (Prelude.Maybe Prelude.UTCTime)
phoneNumber_deletionTimestamp = Lens.lens (\PhoneNumber' {deletionTimestamp} -> deletionTimestamp) (\s@PhoneNumber' {} a -> s {deletionTimestamp = a} :: PhoneNumber) Prelude.. Lens.mapping Core._Time

-- | The phone number ID.
phoneNumber_phoneNumberId :: Lens.Lens' PhoneNumber (Prelude.Maybe Prelude.Text)
phoneNumber_phoneNumberId = Lens.lens (\PhoneNumber' {phoneNumberId} -> phoneNumberId) (\s@PhoneNumber' {} a -> s {phoneNumberId = a} :: PhoneNumber)

-- | The phone number country. Format: ISO 3166-1 alpha-2.
phoneNumber_country :: Lens.Lens' PhoneNumber (Prelude.Maybe Prelude.Text)
phoneNumber_country = Lens.lens (\PhoneNumber' {country} -> country) (\s@PhoneNumber' {} a -> s {country = a} :: PhoneNumber)

-- | The updated phone number timestamp, in ISO 8601 format.
phoneNumber_updatedTimestamp :: Lens.Lens' PhoneNumber (Prelude.Maybe Prelude.UTCTime)
phoneNumber_updatedTimestamp = Lens.lens (\PhoneNumber' {updatedTimestamp} -> updatedTimestamp) (\s@PhoneNumber' {} a -> s {updatedTimestamp = a} :: PhoneNumber) Prelude.. Lens.mapping Core._Time

-- | The phone number product type.
phoneNumber_productType :: Lens.Lens' PhoneNumber (Prelude.Maybe PhoneNumberProductType)
phoneNumber_productType = Lens.lens (\PhoneNumber' {productType} -> productType) (\s@PhoneNumber' {} a -> s {productType = a} :: PhoneNumber)

-- | The phone number, in E.164 format.
phoneNumber_e164PhoneNumber :: Lens.Lens' PhoneNumber (Prelude.Maybe Prelude.Text)
phoneNumber_e164PhoneNumber = Lens.lens (\PhoneNumber' {e164PhoneNumber} -> e164PhoneNumber) (\s@PhoneNumber' {} a -> s {e164PhoneNumber = a} :: PhoneNumber) Prelude.. Lens.mapping Core._Sensitive

-- | The phone number associations.
phoneNumber_associations :: Lens.Lens' PhoneNumber (Prelude.Maybe [PhoneNumberAssociation])
phoneNumber_associations = Lens.lens (\PhoneNumber' {associations} -> associations) (\s@PhoneNumber' {} a -> s {associations = a} :: PhoneNumber) Prelude.. Lens.mapping Lens.coerced

-- | The outbound calling name associated with the phone number.
phoneNumber_callingName :: Lens.Lens' PhoneNumber (Prelude.Maybe Prelude.Text)
phoneNumber_callingName = Lens.lens (\PhoneNumber' {callingName} -> callingName) (\s@PhoneNumber' {} a -> s {callingName = a} :: PhoneNumber) Prelude.. Lens.mapping Core._Sensitive

-- | The phone number type.
phoneNumber_type :: Lens.Lens' PhoneNumber (Prelude.Maybe PhoneNumberType)
phoneNumber_type = Lens.lens (\PhoneNumber' {type'} -> type') (\s@PhoneNumber' {} a -> s {type' = a} :: PhoneNumber)

-- | The phone number creation timestamp, in ISO 8601 format.
phoneNumber_createdTimestamp :: Lens.Lens' PhoneNumber (Prelude.Maybe Prelude.UTCTime)
phoneNumber_createdTimestamp = Lens.lens (\PhoneNumber' {createdTimestamp} -> createdTimestamp) (\s@PhoneNumber' {} a -> s {createdTimestamp = a} :: PhoneNumber) Prelude.. Lens.mapping Core._Time

-- | The phone number capabilities.
phoneNumber_capabilities :: Lens.Lens' PhoneNumber (Prelude.Maybe PhoneNumberCapabilities)
phoneNumber_capabilities = Lens.lens (\PhoneNumber' {capabilities} -> capabilities) (\s@PhoneNumber' {} a -> s {capabilities = a} :: PhoneNumber)

-- | The outbound calling name status.
phoneNumber_callingNameStatus :: Lens.Lens' PhoneNumber (Prelude.Maybe CallingNameStatus)
phoneNumber_callingNameStatus = Lens.lens (\PhoneNumber' {callingNameStatus} -> callingNameStatus) (\s@PhoneNumber' {} a -> s {callingNameStatus = a} :: PhoneNumber)

instance Core.FromJSON PhoneNumber where
  parseJSON =
    Core.withObject
      "PhoneNumber"
      ( \x ->
          PhoneNumber'
            Prelude.<$> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "DeletionTimestamp")
            Prelude.<*> (x Core..:? "PhoneNumberId")
            Prelude.<*> (x Core..:? "Country")
            Prelude.<*> (x Core..:? "UpdatedTimestamp")
            Prelude.<*> (x Core..:? "ProductType")
            Prelude.<*> (x Core..:? "E164PhoneNumber")
            Prelude.<*> (x Core..:? "Associations" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "CallingName")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "CreatedTimestamp")
            Prelude.<*> (x Core..:? "Capabilities")
            Prelude.<*> (x Core..:? "CallingNameStatus")
      )

instance Prelude.Hashable PhoneNumber

instance Prelude.NFData PhoneNumber
