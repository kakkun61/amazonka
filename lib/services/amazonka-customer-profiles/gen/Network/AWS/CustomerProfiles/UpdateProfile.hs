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
-- Module      : Network.AWS.CustomerProfiles.UpdateProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the properties of a profile. The ProfileId is required for
-- updating a customer profile.
--
-- When calling the UpdateProfile API, specifying an empty string value
-- means that any existing value will be removed. Not specifying a string
-- value means that any value already there will be kept.
module Network.AWS.CustomerProfiles.UpdateProfile
  ( -- * Creating a Request
    UpdateProfile (..),
    newUpdateProfile,

    -- * Request Lenses
    updateProfile_shippingAddress,
    updateProfile_mobilePhoneNumber,
    updateProfile_mailingAddress,
    updateProfile_middleName,
    updateProfile_personalEmailAddress,
    updateProfile_lastName,
    updateProfile_additionalInformation,
    updateProfile_homePhoneNumber,
    updateProfile_address,
    updateProfile_partyType,
    updateProfile_businessEmailAddress,
    updateProfile_attributes,
    updateProfile_gender,
    updateProfile_phoneNumber,
    updateProfile_accountNumber,
    updateProfile_emailAddress,
    updateProfile_firstName,
    updateProfile_billingAddress,
    updateProfile_businessPhoneNumber,
    updateProfile_birthDate,
    updateProfile_businessName,
    updateProfile_domainName,
    updateProfile_profileId,

    -- * Destructuring the Response
    UpdateProfileResponse (..),
    newUpdateProfileResponse,

    -- * Response Lenses
    updateProfileResponse_httpStatus,
    updateProfileResponse_profileId,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.CustomerProfiles.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateProfile' smart constructor.
data UpdateProfile = UpdateProfile'
  { -- | The customer’s shipping address.
    shippingAddress :: Prelude.Maybe UpdateAddress,
    -- | The customer’s mobile phone number.
    mobilePhoneNumber :: Prelude.Maybe Prelude.Text,
    -- | The customer’s mailing address.
    mailingAddress :: Prelude.Maybe UpdateAddress,
    -- | The customer’s middle name.
    middleName :: Prelude.Maybe Prelude.Text,
    -- | The customer’s personal email address.
    personalEmailAddress :: Prelude.Maybe Prelude.Text,
    -- | The customer’s last name.
    lastName :: Prelude.Maybe Prelude.Text,
    -- | Any additional information relevant to the customer’s profile.
    additionalInformation :: Prelude.Maybe Prelude.Text,
    -- | The customer’s home phone number.
    homePhoneNumber :: Prelude.Maybe Prelude.Text,
    -- | A generic address associated with the customer that is not mailing,
    -- shipping, or billing.
    address :: Prelude.Maybe UpdateAddress,
    -- | The type of profile used to describe the customer.
    partyType :: Prelude.Maybe PartyType,
    -- | The customer’s business email address.
    businessEmailAddress :: Prelude.Maybe Prelude.Text,
    -- | A key value pair of attributes of a customer profile.
    attributes :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The gender with which the customer identifies.
    gender :: Prelude.Maybe Gender,
    -- | The customer’s phone number, which has not been specified as a mobile,
    -- home, or business number.
    phoneNumber :: Prelude.Maybe Prelude.Text,
    -- | A unique account number that you have given to the customer.
    accountNumber :: Prelude.Maybe Prelude.Text,
    -- | The customer’s email address, which has not been specified as a personal
    -- or business address.
    emailAddress :: Prelude.Maybe Prelude.Text,
    -- | The customer’s first name.
    firstName :: Prelude.Maybe Prelude.Text,
    -- | The customer’s billing address.
    billingAddress :: Prelude.Maybe UpdateAddress,
    -- | The customer’s business phone number.
    businessPhoneNumber :: Prelude.Maybe Prelude.Text,
    -- | The customer’s birth date.
    birthDate :: Prelude.Maybe Prelude.Text,
    -- | The name of the customer’s business.
    businessName :: Prelude.Maybe Prelude.Text,
    -- | The unique name of the domain.
    domainName :: Prelude.Text,
    -- | The unique identifier of a customer profile.
    profileId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'shippingAddress', 'updateProfile_shippingAddress' - The customer’s shipping address.
--
-- 'mobilePhoneNumber', 'updateProfile_mobilePhoneNumber' - The customer’s mobile phone number.
--
-- 'mailingAddress', 'updateProfile_mailingAddress' - The customer’s mailing address.
--
-- 'middleName', 'updateProfile_middleName' - The customer’s middle name.
--
-- 'personalEmailAddress', 'updateProfile_personalEmailAddress' - The customer’s personal email address.
--
-- 'lastName', 'updateProfile_lastName' - The customer’s last name.
--
-- 'additionalInformation', 'updateProfile_additionalInformation' - Any additional information relevant to the customer’s profile.
--
-- 'homePhoneNumber', 'updateProfile_homePhoneNumber' - The customer’s home phone number.
--
-- 'address', 'updateProfile_address' - A generic address associated with the customer that is not mailing,
-- shipping, or billing.
--
-- 'partyType', 'updateProfile_partyType' - The type of profile used to describe the customer.
--
-- 'businessEmailAddress', 'updateProfile_businessEmailAddress' - The customer’s business email address.
--
-- 'attributes', 'updateProfile_attributes' - A key value pair of attributes of a customer profile.
--
-- 'gender', 'updateProfile_gender' - The gender with which the customer identifies.
--
-- 'phoneNumber', 'updateProfile_phoneNumber' - The customer’s phone number, which has not been specified as a mobile,
-- home, or business number.
--
-- 'accountNumber', 'updateProfile_accountNumber' - A unique account number that you have given to the customer.
--
-- 'emailAddress', 'updateProfile_emailAddress' - The customer’s email address, which has not been specified as a personal
-- or business address.
--
-- 'firstName', 'updateProfile_firstName' - The customer’s first name.
--
-- 'billingAddress', 'updateProfile_billingAddress' - The customer’s billing address.
--
-- 'businessPhoneNumber', 'updateProfile_businessPhoneNumber' - The customer’s business phone number.
--
-- 'birthDate', 'updateProfile_birthDate' - The customer’s birth date.
--
-- 'businessName', 'updateProfile_businessName' - The name of the customer’s business.
--
-- 'domainName', 'updateProfile_domainName' - The unique name of the domain.
--
-- 'profileId', 'updateProfile_profileId' - The unique identifier of a customer profile.
newUpdateProfile ::
  -- | 'domainName'
  Prelude.Text ->
  -- | 'profileId'
  Prelude.Text ->
  UpdateProfile
newUpdateProfile pDomainName_ pProfileId_ =
  UpdateProfile'
    { shippingAddress = Prelude.Nothing,
      mobilePhoneNumber = Prelude.Nothing,
      mailingAddress = Prelude.Nothing,
      middleName = Prelude.Nothing,
      personalEmailAddress = Prelude.Nothing,
      lastName = Prelude.Nothing,
      additionalInformation = Prelude.Nothing,
      homePhoneNumber = Prelude.Nothing,
      address = Prelude.Nothing,
      partyType = Prelude.Nothing,
      businessEmailAddress = Prelude.Nothing,
      attributes = Prelude.Nothing,
      gender = Prelude.Nothing,
      phoneNumber = Prelude.Nothing,
      accountNumber = Prelude.Nothing,
      emailAddress = Prelude.Nothing,
      firstName = Prelude.Nothing,
      billingAddress = Prelude.Nothing,
      businessPhoneNumber = Prelude.Nothing,
      birthDate = Prelude.Nothing,
      businessName = Prelude.Nothing,
      domainName = pDomainName_,
      profileId = pProfileId_
    }

-- | The customer’s shipping address.
updateProfile_shippingAddress :: Lens.Lens' UpdateProfile (Prelude.Maybe UpdateAddress)
updateProfile_shippingAddress = Lens.lens (\UpdateProfile' {shippingAddress} -> shippingAddress) (\s@UpdateProfile' {} a -> s {shippingAddress = a} :: UpdateProfile)

-- | The customer’s mobile phone number.
updateProfile_mobilePhoneNumber :: Lens.Lens' UpdateProfile (Prelude.Maybe Prelude.Text)
updateProfile_mobilePhoneNumber = Lens.lens (\UpdateProfile' {mobilePhoneNumber} -> mobilePhoneNumber) (\s@UpdateProfile' {} a -> s {mobilePhoneNumber = a} :: UpdateProfile)

-- | The customer’s mailing address.
updateProfile_mailingAddress :: Lens.Lens' UpdateProfile (Prelude.Maybe UpdateAddress)
updateProfile_mailingAddress = Lens.lens (\UpdateProfile' {mailingAddress} -> mailingAddress) (\s@UpdateProfile' {} a -> s {mailingAddress = a} :: UpdateProfile)

-- | The customer’s middle name.
updateProfile_middleName :: Lens.Lens' UpdateProfile (Prelude.Maybe Prelude.Text)
updateProfile_middleName = Lens.lens (\UpdateProfile' {middleName} -> middleName) (\s@UpdateProfile' {} a -> s {middleName = a} :: UpdateProfile)

-- | The customer’s personal email address.
updateProfile_personalEmailAddress :: Lens.Lens' UpdateProfile (Prelude.Maybe Prelude.Text)
updateProfile_personalEmailAddress = Lens.lens (\UpdateProfile' {personalEmailAddress} -> personalEmailAddress) (\s@UpdateProfile' {} a -> s {personalEmailAddress = a} :: UpdateProfile)

-- | The customer’s last name.
updateProfile_lastName :: Lens.Lens' UpdateProfile (Prelude.Maybe Prelude.Text)
updateProfile_lastName = Lens.lens (\UpdateProfile' {lastName} -> lastName) (\s@UpdateProfile' {} a -> s {lastName = a} :: UpdateProfile)

-- | Any additional information relevant to the customer’s profile.
updateProfile_additionalInformation :: Lens.Lens' UpdateProfile (Prelude.Maybe Prelude.Text)
updateProfile_additionalInformation = Lens.lens (\UpdateProfile' {additionalInformation} -> additionalInformation) (\s@UpdateProfile' {} a -> s {additionalInformation = a} :: UpdateProfile)

-- | The customer’s home phone number.
updateProfile_homePhoneNumber :: Lens.Lens' UpdateProfile (Prelude.Maybe Prelude.Text)
updateProfile_homePhoneNumber = Lens.lens (\UpdateProfile' {homePhoneNumber} -> homePhoneNumber) (\s@UpdateProfile' {} a -> s {homePhoneNumber = a} :: UpdateProfile)

-- | A generic address associated with the customer that is not mailing,
-- shipping, or billing.
updateProfile_address :: Lens.Lens' UpdateProfile (Prelude.Maybe UpdateAddress)
updateProfile_address = Lens.lens (\UpdateProfile' {address} -> address) (\s@UpdateProfile' {} a -> s {address = a} :: UpdateProfile)

-- | The type of profile used to describe the customer.
updateProfile_partyType :: Lens.Lens' UpdateProfile (Prelude.Maybe PartyType)
updateProfile_partyType = Lens.lens (\UpdateProfile' {partyType} -> partyType) (\s@UpdateProfile' {} a -> s {partyType = a} :: UpdateProfile)

-- | The customer’s business email address.
updateProfile_businessEmailAddress :: Lens.Lens' UpdateProfile (Prelude.Maybe Prelude.Text)
updateProfile_businessEmailAddress = Lens.lens (\UpdateProfile' {businessEmailAddress} -> businessEmailAddress) (\s@UpdateProfile' {} a -> s {businessEmailAddress = a} :: UpdateProfile)

-- | A key value pair of attributes of a customer profile.
updateProfile_attributes :: Lens.Lens' UpdateProfile (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateProfile_attributes = Lens.lens (\UpdateProfile' {attributes} -> attributes) (\s@UpdateProfile' {} a -> s {attributes = a} :: UpdateProfile) Prelude.. Lens.mapping Lens.coerced

-- | The gender with which the customer identifies.
updateProfile_gender :: Lens.Lens' UpdateProfile (Prelude.Maybe Gender)
updateProfile_gender = Lens.lens (\UpdateProfile' {gender} -> gender) (\s@UpdateProfile' {} a -> s {gender = a} :: UpdateProfile)

-- | The customer’s phone number, which has not been specified as a mobile,
-- home, or business number.
updateProfile_phoneNumber :: Lens.Lens' UpdateProfile (Prelude.Maybe Prelude.Text)
updateProfile_phoneNumber = Lens.lens (\UpdateProfile' {phoneNumber} -> phoneNumber) (\s@UpdateProfile' {} a -> s {phoneNumber = a} :: UpdateProfile)

-- | A unique account number that you have given to the customer.
updateProfile_accountNumber :: Lens.Lens' UpdateProfile (Prelude.Maybe Prelude.Text)
updateProfile_accountNumber = Lens.lens (\UpdateProfile' {accountNumber} -> accountNumber) (\s@UpdateProfile' {} a -> s {accountNumber = a} :: UpdateProfile)

-- | The customer’s email address, which has not been specified as a personal
-- or business address.
updateProfile_emailAddress :: Lens.Lens' UpdateProfile (Prelude.Maybe Prelude.Text)
updateProfile_emailAddress = Lens.lens (\UpdateProfile' {emailAddress} -> emailAddress) (\s@UpdateProfile' {} a -> s {emailAddress = a} :: UpdateProfile)

-- | The customer’s first name.
updateProfile_firstName :: Lens.Lens' UpdateProfile (Prelude.Maybe Prelude.Text)
updateProfile_firstName = Lens.lens (\UpdateProfile' {firstName} -> firstName) (\s@UpdateProfile' {} a -> s {firstName = a} :: UpdateProfile)

-- | The customer’s billing address.
updateProfile_billingAddress :: Lens.Lens' UpdateProfile (Prelude.Maybe UpdateAddress)
updateProfile_billingAddress = Lens.lens (\UpdateProfile' {billingAddress} -> billingAddress) (\s@UpdateProfile' {} a -> s {billingAddress = a} :: UpdateProfile)

-- | The customer’s business phone number.
updateProfile_businessPhoneNumber :: Lens.Lens' UpdateProfile (Prelude.Maybe Prelude.Text)
updateProfile_businessPhoneNumber = Lens.lens (\UpdateProfile' {businessPhoneNumber} -> businessPhoneNumber) (\s@UpdateProfile' {} a -> s {businessPhoneNumber = a} :: UpdateProfile)

-- | The customer’s birth date.
updateProfile_birthDate :: Lens.Lens' UpdateProfile (Prelude.Maybe Prelude.Text)
updateProfile_birthDate = Lens.lens (\UpdateProfile' {birthDate} -> birthDate) (\s@UpdateProfile' {} a -> s {birthDate = a} :: UpdateProfile)

-- | The name of the customer’s business.
updateProfile_businessName :: Lens.Lens' UpdateProfile (Prelude.Maybe Prelude.Text)
updateProfile_businessName = Lens.lens (\UpdateProfile' {businessName} -> businessName) (\s@UpdateProfile' {} a -> s {businessName = a} :: UpdateProfile)

-- | The unique name of the domain.
updateProfile_domainName :: Lens.Lens' UpdateProfile Prelude.Text
updateProfile_domainName = Lens.lens (\UpdateProfile' {domainName} -> domainName) (\s@UpdateProfile' {} a -> s {domainName = a} :: UpdateProfile)

-- | The unique identifier of a customer profile.
updateProfile_profileId :: Lens.Lens' UpdateProfile Prelude.Text
updateProfile_profileId = Lens.lens (\UpdateProfile' {profileId} -> profileId) (\s@UpdateProfile' {} a -> s {profileId = a} :: UpdateProfile)

instance Core.AWSRequest UpdateProfile where
  type
    AWSResponse UpdateProfile =
      UpdateProfileResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateProfileResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "ProfileId")
      )

instance Prelude.Hashable UpdateProfile

instance Prelude.NFData UpdateProfile

instance Core.ToHeaders UpdateProfile where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateProfile where
  toJSON UpdateProfile' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ShippingAddress" Core..=)
              Prelude.<$> shippingAddress,
            ("MobilePhoneNumber" Core..=)
              Prelude.<$> mobilePhoneNumber,
            ("MailingAddress" Core..=)
              Prelude.<$> mailingAddress,
            ("MiddleName" Core..=) Prelude.<$> middleName,
            ("PersonalEmailAddress" Core..=)
              Prelude.<$> personalEmailAddress,
            ("LastName" Core..=) Prelude.<$> lastName,
            ("AdditionalInformation" Core..=)
              Prelude.<$> additionalInformation,
            ("HomePhoneNumber" Core..=)
              Prelude.<$> homePhoneNumber,
            ("Address" Core..=) Prelude.<$> address,
            ("PartyType" Core..=) Prelude.<$> partyType,
            ("BusinessEmailAddress" Core..=)
              Prelude.<$> businessEmailAddress,
            ("Attributes" Core..=) Prelude.<$> attributes,
            ("Gender" Core..=) Prelude.<$> gender,
            ("PhoneNumber" Core..=) Prelude.<$> phoneNumber,
            ("AccountNumber" Core..=) Prelude.<$> accountNumber,
            ("EmailAddress" Core..=) Prelude.<$> emailAddress,
            ("FirstName" Core..=) Prelude.<$> firstName,
            ("BillingAddress" Core..=)
              Prelude.<$> billingAddress,
            ("BusinessPhoneNumber" Core..=)
              Prelude.<$> businessPhoneNumber,
            ("BirthDate" Core..=) Prelude.<$> birthDate,
            ("BusinessName" Core..=) Prelude.<$> businessName,
            Prelude.Just ("ProfileId" Core..= profileId)
          ]
      )

instance Core.ToPath UpdateProfile where
  toPath UpdateProfile' {..} =
    Prelude.mconcat
      ["/domains/", Core.toBS domainName, "/profiles"]

instance Core.ToQuery UpdateProfile where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateProfileResponse' smart constructor.
data UpdateProfileResponse = UpdateProfileResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The unique identifier of a customer profile.
    profileId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateProfileResponse_httpStatus' - The response's http status code.
--
-- 'profileId', 'updateProfileResponse_profileId' - The unique identifier of a customer profile.
newUpdateProfileResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'profileId'
  Prelude.Text ->
  UpdateProfileResponse
newUpdateProfileResponse pHttpStatus_ pProfileId_ =
  UpdateProfileResponse'
    { httpStatus = pHttpStatus_,
      profileId = pProfileId_
    }

-- | The response's http status code.
updateProfileResponse_httpStatus :: Lens.Lens' UpdateProfileResponse Prelude.Int
updateProfileResponse_httpStatus = Lens.lens (\UpdateProfileResponse' {httpStatus} -> httpStatus) (\s@UpdateProfileResponse' {} a -> s {httpStatus = a} :: UpdateProfileResponse)

-- | The unique identifier of a customer profile.
updateProfileResponse_profileId :: Lens.Lens' UpdateProfileResponse Prelude.Text
updateProfileResponse_profileId = Lens.lens (\UpdateProfileResponse' {profileId} -> profileId) (\s@UpdateProfileResponse' {} a -> s {profileId = a} :: UpdateProfileResponse)

instance Prelude.NFData UpdateProfileResponse
