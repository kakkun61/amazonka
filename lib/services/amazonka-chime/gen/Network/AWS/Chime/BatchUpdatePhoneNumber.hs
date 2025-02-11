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
-- Module      : Network.AWS.Chime.BatchUpdatePhoneNumber
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates phone number product types or calling names. You can update one
-- attribute at a time for each @UpdatePhoneNumberRequestItem@. For
-- example, you can update the product type or the calling name.
--
-- For toll-free numbers, you cannot use the Amazon Chime Business Calling
-- product type. For numbers outside the U.S., you must use the Amazon
-- Chime SIP Media Application Dial-In product type.
--
-- Updates to outbound calling names can take up to 72 hours to complete.
-- Pending updates to outbound calling names must be complete before you
-- can request another update.
module Network.AWS.Chime.BatchUpdatePhoneNumber
  ( -- * Creating a Request
    BatchUpdatePhoneNumber (..),
    newBatchUpdatePhoneNumber,

    -- * Request Lenses
    batchUpdatePhoneNumber_updatePhoneNumberRequestItems,

    -- * Destructuring the Response
    BatchUpdatePhoneNumberResponse (..),
    newBatchUpdatePhoneNumberResponse,

    -- * Response Lenses
    batchUpdatePhoneNumberResponse_phoneNumberErrors,
    batchUpdatePhoneNumberResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchUpdatePhoneNumber' smart constructor.
data BatchUpdatePhoneNumber = BatchUpdatePhoneNumber'
  { -- | The request containing the phone number IDs and product types or calling
    -- names to update.
    updatePhoneNumberRequestItems :: [UpdatePhoneNumberRequestItem]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchUpdatePhoneNumber' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'updatePhoneNumberRequestItems', 'batchUpdatePhoneNumber_updatePhoneNumberRequestItems' - The request containing the phone number IDs and product types or calling
-- names to update.
newBatchUpdatePhoneNumber ::
  BatchUpdatePhoneNumber
newBatchUpdatePhoneNumber =
  BatchUpdatePhoneNumber'
    { updatePhoneNumberRequestItems =
        Prelude.mempty
    }

-- | The request containing the phone number IDs and product types or calling
-- names to update.
batchUpdatePhoneNumber_updatePhoneNumberRequestItems :: Lens.Lens' BatchUpdatePhoneNumber [UpdatePhoneNumberRequestItem]
batchUpdatePhoneNumber_updatePhoneNumberRequestItems = Lens.lens (\BatchUpdatePhoneNumber' {updatePhoneNumberRequestItems} -> updatePhoneNumberRequestItems) (\s@BatchUpdatePhoneNumber' {} a -> s {updatePhoneNumberRequestItems = a} :: BatchUpdatePhoneNumber) Prelude.. Lens.coerced

instance Core.AWSRequest BatchUpdatePhoneNumber where
  type
    AWSResponse BatchUpdatePhoneNumber =
      BatchUpdatePhoneNumberResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchUpdatePhoneNumberResponse'
            Prelude.<$> ( x Core..?> "PhoneNumberErrors"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchUpdatePhoneNumber

instance Prelude.NFData BatchUpdatePhoneNumber

instance Core.ToHeaders BatchUpdatePhoneNumber where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON BatchUpdatePhoneNumber where
  toJSON BatchUpdatePhoneNumber' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "UpdatePhoneNumberRequestItems"
                  Core..= updatePhoneNumberRequestItems
              )
          ]
      )

instance Core.ToPath BatchUpdatePhoneNumber where
  toPath = Prelude.const "/phone-numbers"

instance Core.ToQuery BatchUpdatePhoneNumber where
  toQuery =
    Prelude.const
      (Prelude.mconcat ["operation=batch-update"])

-- | /See:/ 'newBatchUpdatePhoneNumberResponse' smart constructor.
data BatchUpdatePhoneNumberResponse = BatchUpdatePhoneNumberResponse'
  { -- | If the action fails for one or more of the phone numbers in the request,
    -- a list of the phone numbers is returned, along with error codes and
    -- error messages.
    phoneNumberErrors :: Prelude.Maybe [PhoneNumberError],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchUpdatePhoneNumberResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'phoneNumberErrors', 'batchUpdatePhoneNumberResponse_phoneNumberErrors' - If the action fails for one or more of the phone numbers in the request,
-- a list of the phone numbers is returned, along with error codes and
-- error messages.
--
-- 'httpStatus', 'batchUpdatePhoneNumberResponse_httpStatus' - The response's http status code.
newBatchUpdatePhoneNumberResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchUpdatePhoneNumberResponse
newBatchUpdatePhoneNumberResponse pHttpStatus_ =
  BatchUpdatePhoneNumberResponse'
    { phoneNumberErrors =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the action fails for one or more of the phone numbers in the request,
-- a list of the phone numbers is returned, along with error codes and
-- error messages.
batchUpdatePhoneNumberResponse_phoneNumberErrors :: Lens.Lens' BatchUpdatePhoneNumberResponse (Prelude.Maybe [PhoneNumberError])
batchUpdatePhoneNumberResponse_phoneNumberErrors = Lens.lens (\BatchUpdatePhoneNumberResponse' {phoneNumberErrors} -> phoneNumberErrors) (\s@BatchUpdatePhoneNumberResponse' {} a -> s {phoneNumberErrors = a} :: BatchUpdatePhoneNumberResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchUpdatePhoneNumberResponse_httpStatus :: Lens.Lens' BatchUpdatePhoneNumberResponse Prelude.Int
batchUpdatePhoneNumberResponse_httpStatus = Lens.lens (\BatchUpdatePhoneNumberResponse' {httpStatus} -> httpStatus) (\s@BatchUpdatePhoneNumberResponse' {} a -> s {httpStatus = a} :: BatchUpdatePhoneNumberResponse)

instance
  Prelude.NFData
    BatchUpdatePhoneNumberResponse
