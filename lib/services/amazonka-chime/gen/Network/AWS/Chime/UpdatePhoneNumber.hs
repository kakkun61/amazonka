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
-- Module      : Network.AWS.Chime.UpdatePhoneNumber
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates phone number details, such as product type or calling name, for
-- the specified phone number ID. You can update one phone number detail at
-- a time. For example, you can update either the product type or the
-- calling name in one action.
--
-- For toll-free numbers, you cannot use the Amazon Chime Business Calling
-- product type. For numbers outside the U.S., you must use the Amazon
-- Chime SIP Media Application Dial-In product type.
--
-- Updates to outbound calling names can take 72 hours to complete. Pending
-- updates to outbound calling names must be complete before you can
-- request another update.
module Network.AWS.Chime.UpdatePhoneNumber
  ( -- * Creating a Request
    UpdatePhoneNumber (..),
    newUpdatePhoneNumber,

    -- * Request Lenses
    updatePhoneNumber_productType,
    updatePhoneNumber_callingName,
    updatePhoneNumber_phoneNumberId,

    -- * Destructuring the Response
    UpdatePhoneNumberResponse (..),
    newUpdatePhoneNumberResponse,

    -- * Response Lenses
    updatePhoneNumberResponse_phoneNumber,
    updatePhoneNumberResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdatePhoneNumber' smart constructor.
data UpdatePhoneNumber = UpdatePhoneNumber'
  { -- | The product type.
    productType :: Prelude.Maybe PhoneNumberProductType,
    -- | The outbound calling name associated with the phone number.
    callingName :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The phone number ID.
    phoneNumberId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePhoneNumber' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'productType', 'updatePhoneNumber_productType' - The product type.
--
-- 'callingName', 'updatePhoneNumber_callingName' - The outbound calling name associated with the phone number.
--
-- 'phoneNumberId', 'updatePhoneNumber_phoneNumberId' - The phone number ID.
newUpdatePhoneNumber ::
  -- | 'phoneNumberId'
  Prelude.Text ->
  UpdatePhoneNumber
newUpdatePhoneNumber pPhoneNumberId_ =
  UpdatePhoneNumber'
    { productType = Prelude.Nothing,
      callingName = Prelude.Nothing,
      phoneNumberId = pPhoneNumberId_
    }

-- | The product type.
updatePhoneNumber_productType :: Lens.Lens' UpdatePhoneNumber (Prelude.Maybe PhoneNumberProductType)
updatePhoneNumber_productType = Lens.lens (\UpdatePhoneNumber' {productType} -> productType) (\s@UpdatePhoneNumber' {} a -> s {productType = a} :: UpdatePhoneNumber)

-- | The outbound calling name associated with the phone number.
updatePhoneNumber_callingName :: Lens.Lens' UpdatePhoneNumber (Prelude.Maybe Prelude.Text)
updatePhoneNumber_callingName = Lens.lens (\UpdatePhoneNumber' {callingName} -> callingName) (\s@UpdatePhoneNumber' {} a -> s {callingName = a} :: UpdatePhoneNumber) Prelude.. Lens.mapping Core._Sensitive

-- | The phone number ID.
updatePhoneNumber_phoneNumberId :: Lens.Lens' UpdatePhoneNumber Prelude.Text
updatePhoneNumber_phoneNumberId = Lens.lens (\UpdatePhoneNumber' {phoneNumberId} -> phoneNumberId) (\s@UpdatePhoneNumber' {} a -> s {phoneNumberId = a} :: UpdatePhoneNumber)

instance Core.AWSRequest UpdatePhoneNumber where
  type
    AWSResponse UpdatePhoneNumber =
      UpdatePhoneNumberResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdatePhoneNumberResponse'
            Prelude.<$> (x Core..?> "PhoneNumber")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdatePhoneNumber

instance Prelude.NFData UpdatePhoneNumber

instance Core.ToHeaders UpdatePhoneNumber where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdatePhoneNumber where
  toJSON UpdatePhoneNumber' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ProductType" Core..=) Prelude.<$> productType,
            ("CallingName" Core..=) Prelude.<$> callingName
          ]
      )

instance Core.ToPath UpdatePhoneNumber where
  toPath UpdatePhoneNumber' {..} =
    Prelude.mconcat
      ["/phone-numbers/", Core.toBS phoneNumberId]

instance Core.ToQuery UpdatePhoneNumber where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdatePhoneNumberResponse' smart constructor.
data UpdatePhoneNumberResponse = UpdatePhoneNumberResponse'
  { -- | The updated phone number details.
    phoneNumber :: Prelude.Maybe PhoneNumber,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePhoneNumberResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'phoneNumber', 'updatePhoneNumberResponse_phoneNumber' - The updated phone number details.
--
-- 'httpStatus', 'updatePhoneNumberResponse_httpStatus' - The response's http status code.
newUpdatePhoneNumberResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdatePhoneNumberResponse
newUpdatePhoneNumberResponse pHttpStatus_ =
  UpdatePhoneNumberResponse'
    { phoneNumber =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The updated phone number details.
updatePhoneNumberResponse_phoneNumber :: Lens.Lens' UpdatePhoneNumberResponse (Prelude.Maybe PhoneNumber)
updatePhoneNumberResponse_phoneNumber = Lens.lens (\UpdatePhoneNumberResponse' {phoneNumber} -> phoneNumber) (\s@UpdatePhoneNumberResponse' {} a -> s {phoneNumber = a} :: UpdatePhoneNumberResponse)

-- | The response's http status code.
updatePhoneNumberResponse_httpStatus :: Lens.Lens' UpdatePhoneNumberResponse Prelude.Int
updatePhoneNumberResponse_httpStatus = Lens.lens (\UpdatePhoneNumberResponse' {httpStatus} -> httpStatus) (\s@UpdatePhoneNumberResponse' {} a -> s {httpStatus = a} :: UpdatePhoneNumberResponse)

instance Prelude.NFData UpdatePhoneNumberResponse
