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
-- Module      : Network.AWS.Chime.BatchUpdateUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates user details within the UpdateUserRequestItem object for up to
-- 20 users for the specified Amazon Chime account. Currently, only
-- @LicenseType@ updates are supported for this action.
module Network.AWS.Chime.BatchUpdateUser
  ( -- * Creating a Request
    BatchUpdateUser (..),
    newBatchUpdateUser,

    -- * Request Lenses
    batchUpdateUser_accountId,
    batchUpdateUser_updateUserRequestItems,

    -- * Destructuring the Response
    BatchUpdateUserResponse (..),
    newBatchUpdateUserResponse,

    -- * Response Lenses
    batchUpdateUserResponse_userErrors,
    batchUpdateUserResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchUpdateUser' smart constructor.
data BatchUpdateUser = BatchUpdateUser'
  { -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The request containing the user IDs and details to update.
    updateUserRequestItems :: [UpdateUserRequestItem]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchUpdateUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'batchUpdateUser_accountId' - The Amazon Chime account ID.
--
-- 'updateUserRequestItems', 'batchUpdateUser_updateUserRequestItems' - The request containing the user IDs and details to update.
newBatchUpdateUser ::
  -- | 'accountId'
  Prelude.Text ->
  BatchUpdateUser
newBatchUpdateUser pAccountId_ =
  BatchUpdateUser'
    { accountId = pAccountId_,
      updateUserRequestItems = Prelude.mempty
    }

-- | The Amazon Chime account ID.
batchUpdateUser_accountId :: Lens.Lens' BatchUpdateUser Prelude.Text
batchUpdateUser_accountId = Lens.lens (\BatchUpdateUser' {accountId} -> accountId) (\s@BatchUpdateUser' {} a -> s {accountId = a} :: BatchUpdateUser)

-- | The request containing the user IDs and details to update.
batchUpdateUser_updateUserRequestItems :: Lens.Lens' BatchUpdateUser [UpdateUserRequestItem]
batchUpdateUser_updateUserRequestItems = Lens.lens (\BatchUpdateUser' {updateUserRequestItems} -> updateUserRequestItems) (\s@BatchUpdateUser' {} a -> s {updateUserRequestItems = a} :: BatchUpdateUser) Prelude.. Lens.coerced

instance Core.AWSRequest BatchUpdateUser where
  type
    AWSResponse BatchUpdateUser =
      BatchUpdateUserResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchUpdateUserResponse'
            Prelude.<$> (x Core..?> "UserErrors" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchUpdateUser

instance Prelude.NFData BatchUpdateUser

instance Core.ToHeaders BatchUpdateUser where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON BatchUpdateUser where
  toJSON BatchUpdateUser' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "UpdateUserRequestItems"
                  Core..= updateUserRequestItems
              )
          ]
      )

instance Core.ToPath BatchUpdateUser where
  toPath BatchUpdateUser' {..} =
    Prelude.mconcat
      ["/accounts/", Core.toBS accountId, "/users"]

instance Core.ToQuery BatchUpdateUser where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchUpdateUserResponse' smart constructor.
data BatchUpdateUserResponse = BatchUpdateUserResponse'
  { -- | If the BatchUpdateUser action fails for one or more of the user IDs in
    -- the request, a list of the user IDs is returned, along with error codes
    -- and error messages.
    userErrors :: Prelude.Maybe [UserError],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchUpdateUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userErrors', 'batchUpdateUserResponse_userErrors' - If the BatchUpdateUser action fails for one or more of the user IDs in
-- the request, a list of the user IDs is returned, along with error codes
-- and error messages.
--
-- 'httpStatus', 'batchUpdateUserResponse_httpStatus' - The response's http status code.
newBatchUpdateUserResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchUpdateUserResponse
newBatchUpdateUserResponse pHttpStatus_ =
  BatchUpdateUserResponse'
    { userErrors =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the BatchUpdateUser action fails for one or more of the user IDs in
-- the request, a list of the user IDs is returned, along with error codes
-- and error messages.
batchUpdateUserResponse_userErrors :: Lens.Lens' BatchUpdateUserResponse (Prelude.Maybe [UserError])
batchUpdateUserResponse_userErrors = Lens.lens (\BatchUpdateUserResponse' {userErrors} -> userErrors) (\s@BatchUpdateUserResponse' {} a -> s {userErrors = a} :: BatchUpdateUserResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchUpdateUserResponse_httpStatus :: Lens.Lens' BatchUpdateUserResponse Prelude.Int
batchUpdateUserResponse_httpStatus = Lens.lens (\BatchUpdateUserResponse' {httpStatus} -> httpStatus) (\s@BatchUpdateUserResponse' {} a -> s {httpStatus = a} :: BatchUpdateUserResponse)

instance Prelude.NFData BatchUpdateUserResponse
