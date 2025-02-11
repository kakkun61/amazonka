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
-- Module      : Network.AWS.Chime.GetPhoneNumber
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details for the specified phone number ID, such as
-- associations, capabilities, and product type.
module Network.AWS.Chime.GetPhoneNumber
  ( -- * Creating a Request
    GetPhoneNumber (..),
    newGetPhoneNumber,

    -- * Request Lenses
    getPhoneNumber_phoneNumberId,

    -- * Destructuring the Response
    GetPhoneNumberResponse (..),
    newGetPhoneNumberResponse,

    -- * Response Lenses
    getPhoneNumberResponse_phoneNumber,
    getPhoneNumberResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetPhoneNumber' smart constructor.
data GetPhoneNumber = GetPhoneNumber'
  { -- | The phone number ID.
    phoneNumberId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPhoneNumber' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'phoneNumberId', 'getPhoneNumber_phoneNumberId' - The phone number ID.
newGetPhoneNumber ::
  -- | 'phoneNumberId'
  Prelude.Text ->
  GetPhoneNumber
newGetPhoneNumber pPhoneNumberId_ =
  GetPhoneNumber' {phoneNumberId = pPhoneNumberId_}

-- | The phone number ID.
getPhoneNumber_phoneNumberId :: Lens.Lens' GetPhoneNumber Prelude.Text
getPhoneNumber_phoneNumberId = Lens.lens (\GetPhoneNumber' {phoneNumberId} -> phoneNumberId) (\s@GetPhoneNumber' {} a -> s {phoneNumberId = a} :: GetPhoneNumber)

instance Core.AWSRequest GetPhoneNumber where
  type
    AWSResponse GetPhoneNumber =
      GetPhoneNumberResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPhoneNumberResponse'
            Prelude.<$> (x Core..?> "PhoneNumber")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetPhoneNumber

instance Prelude.NFData GetPhoneNumber

instance Core.ToHeaders GetPhoneNumber where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetPhoneNumber where
  toPath GetPhoneNumber' {..} =
    Prelude.mconcat
      ["/phone-numbers/", Core.toBS phoneNumberId]

instance Core.ToQuery GetPhoneNumber where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetPhoneNumberResponse' smart constructor.
data GetPhoneNumberResponse = GetPhoneNumberResponse'
  { -- | The phone number details.
    phoneNumber :: Prelude.Maybe PhoneNumber,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPhoneNumberResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'phoneNumber', 'getPhoneNumberResponse_phoneNumber' - The phone number details.
--
-- 'httpStatus', 'getPhoneNumberResponse_httpStatus' - The response's http status code.
newGetPhoneNumberResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetPhoneNumberResponse
newGetPhoneNumberResponse pHttpStatus_ =
  GetPhoneNumberResponse'
    { phoneNumber =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The phone number details.
getPhoneNumberResponse_phoneNumber :: Lens.Lens' GetPhoneNumberResponse (Prelude.Maybe PhoneNumber)
getPhoneNumberResponse_phoneNumber = Lens.lens (\GetPhoneNumberResponse' {phoneNumber} -> phoneNumber) (\s@GetPhoneNumberResponse' {} a -> s {phoneNumber = a} :: GetPhoneNumberResponse)

-- | The response's http status code.
getPhoneNumberResponse_httpStatus :: Lens.Lens' GetPhoneNumberResponse Prelude.Int
getPhoneNumberResponse_httpStatus = Lens.lens (\GetPhoneNumberResponse' {httpStatus} -> httpStatus) (\s@GetPhoneNumberResponse' {} a -> s {httpStatus = a} :: GetPhoneNumberResponse)

instance Prelude.NFData GetPhoneNumberResponse
