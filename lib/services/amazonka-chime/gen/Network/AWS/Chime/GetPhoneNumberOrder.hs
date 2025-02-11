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
-- Module      : Network.AWS.Chime.GetPhoneNumberOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details for the specified phone number order, such as the
-- order creation timestamp, phone numbers in E.164 format, product type,
-- and order status.
module Network.AWS.Chime.GetPhoneNumberOrder
  ( -- * Creating a Request
    GetPhoneNumberOrder (..),
    newGetPhoneNumberOrder,

    -- * Request Lenses
    getPhoneNumberOrder_phoneNumberOrderId,

    -- * Destructuring the Response
    GetPhoneNumberOrderResponse (..),
    newGetPhoneNumberOrderResponse,

    -- * Response Lenses
    getPhoneNumberOrderResponse_phoneNumberOrder,
    getPhoneNumberOrderResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetPhoneNumberOrder' smart constructor.
data GetPhoneNumberOrder = GetPhoneNumberOrder'
  { -- | The ID for the phone number order.
    phoneNumberOrderId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPhoneNumberOrder' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'phoneNumberOrderId', 'getPhoneNumberOrder_phoneNumberOrderId' - The ID for the phone number order.
newGetPhoneNumberOrder ::
  -- | 'phoneNumberOrderId'
  Prelude.Text ->
  GetPhoneNumberOrder
newGetPhoneNumberOrder pPhoneNumberOrderId_ =
  GetPhoneNumberOrder'
    { phoneNumberOrderId =
        pPhoneNumberOrderId_
    }

-- | The ID for the phone number order.
getPhoneNumberOrder_phoneNumberOrderId :: Lens.Lens' GetPhoneNumberOrder Prelude.Text
getPhoneNumberOrder_phoneNumberOrderId = Lens.lens (\GetPhoneNumberOrder' {phoneNumberOrderId} -> phoneNumberOrderId) (\s@GetPhoneNumberOrder' {} a -> s {phoneNumberOrderId = a} :: GetPhoneNumberOrder)

instance Core.AWSRequest GetPhoneNumberOrder where
  type
    AWSResponse GetPhoneNumberOrder =
      GetPhoneNumberOrderResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPhoneNumberOrderResponse'
            Prelude.<$> (x Core..?> "PhoneNumberOrder")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetPhoneNumberOrder

instance Prelude.NFData GetPhoneNumberOrder

instance Core.ToHeaders GetPhoneNumberOrder where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetPhoneNumberOrder where
  toPath GetPhoneNumberOrder' {..} =
    Prelude.mconcat
      [ "/phone-number-orders/",
        Core.toBS phoneNumberOrderId
      ]

instance Core.ToQuery GetPhoneNumberOrder where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetPhoneNumberOrderResponse' smart constructor.
data GetPhoneNumberOrderResponse = GetPhoneNumberOrderResponse'
  { -- | The phone number order details.
    phoneNumberOrder :: Prelude.Maybe PhoneNumberOrder,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPhoneNumberOrderResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'phoneNumberOrder', 'getPhoneNumberOrderResponse_phoneNumberOrder' - The phone number order details.
--
-- 'httpStatus', 'getPhoneNumberOrderResponse_httpStatus' - The response's http status code.
newGetPhoneNumberOrderResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetPhoneNumberOrderResponse
newGetPhoneNumberOrderResponse pHttpStatus_ =
  GetPhoneNumberOrderResponse'
    { phoneNumberOrder =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The phone number order details.
getPhoneNumberOrderResponse_phoneNumberOrder :: Lens.Lens' GetPhoneNumberOrderResponse (Prelude.Maybe PhoneNumberOrder)
getPhoneNumberOrderResponse_phoneNumberOrder = Lens.lens (\GetPhoneNumberOrderResponse' {phoneNumberOrder} -> phoneNumberOrder) (\s@GetPhoneNumberOrderResponse' {} a -> s {phoneNumberOrder = a} :: GetPhoneNumberOrderResponse)

-- | The response's http status code.
getPhoneNumberOrderResponse_httpStatus :: Lens.Lens' GetPhoneNumberOrderResponse Prelude.Int
getPhoneNumberOrderResponse_httpStatus = Lens.lens (\GetPhoneNumberOrderResponse' {httpStatus} -> httpStatus) (\s@GetPhoneNumberOrderResponse' {} a -> s {httpStatus = a} :: GetPhoneNumberOrderResponse)

instance Prelude.NFData GetPhoneNumberOrderResponse
