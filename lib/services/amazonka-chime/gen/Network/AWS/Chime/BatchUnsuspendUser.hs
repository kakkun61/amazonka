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
-- Module      : Network.AWS.Chime.BatchUnsuspendUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the suspension from up to 50 previously suspended users for the
-- specified Amazon Chime @EnterpriseLWA@ account. Only users on
-- @EnterpriseLWA@ accounts can be unsuspended using this action. For more
-- information about different account types, see
-- <https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html Managing Your Amazon Chime Accounts>
-- in the account types, in the /Amazon Chime Administration Guide/.
--
-- Previously suspended users who are unsuspended using this action are
-- returned to @Registered@ status. Users who are not previously suspended
-- are ignored.
module Network.AWS.Chime.BatchUnsuspendUser
  ( -- * Creating a Request
    BatchUnsuspendUser (..),
    newBatchUnsuspendUser,

    -- * Request Lenses
    batchUnsuspendUser_accountId,
    batchUnsuspendUser_userIdList,

    -- * Destructuring the Response
    BatchUnsuspendUserResponse (..),
    newBatchUnsuspendUserResponse,

    -- * Response Lenses
    batchUnsuspendUserResponse_userErrors,
    batchUnsuspendUserResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchUnsuspendUser' smart constructor.
data BatchUnsuspendUser = BatchUnsuspendUser'
  { -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The request containing the user IDs to unsuspend.
    userIdList :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchUnsuspendUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'batchUnsuspendUser_accountId' - The Amazon Chime account ID.
--
-- 'userIdList', 'batchUnsuspendUser_userIdList' - The request containing the user IDs to unsuspend.
newBatchUnsuspendUser ::
  -- | 'accountId'
  Prelude.Text ->
  BatchUnsuspendUser
newBatchUnsuspendUser pAccountId_ =
  BatchUnsuspendUser'
    { accountId = pAccountId_,
      userIdList = Prelude.mempty
    }

-- | The Amazon Chime account ID.
batchUnsuspendUser_accountId :: Lens.Lens' BatchUnsuspendUser Prelude.Text
batchUnsuspendUser_accountId = Lens.lens (\BatchUnsuspendUser' {accountId} -> accountId) (\s@BatchUnsuspendUser' {} a -> s {accountId = a} :: BatchUnsuspendUser)

-- | The request containing the user IDs to unsuspend.
batchUnsuspendUser_userIdList :: Lens.Lens' BatchUnsuspendUser [Prelude.Text]
batchUnsuspendUser_userIdList = Lens.lens (\BatchUnsuspendUser' {userIdList} -> userIdList) (\s@BatchUnsuspendUser' {} a -> s {userIdList = a} :: BatchUnsuspendUser) Prelude.. Lens.coerced

instance Core.AWSRequest BatchUnsuspendUser where
  type
    AWSResponse BatchUnsuspendUser =
      BatchUnsuspendUserResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchUnsuspendUserResponse'
            Prelude.<$> (x Core..?> "UserErrors" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchUnsuspendUser

instance Prelude.NFData BatchUnsuspendUser

instance Core.ToHeaders BatchUnsuspendUser where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON BatchUnsuspendUser where
  toJSON BatchUnsuspendUser' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("UserIdList" Core..= userIdList)]
      )

instance Core.ToPath BatchUnsuspendUser where
  toPath BatchUnsuspendUser' {..} =
    Prelude.mconcat
      ["/accounts/", Core.toBS accountId, "/users"]

instance Core.ToQuery BatchUnsuspendUser where
  toQuery =
    Prelude.const
      (Prelude.mconcat ["operation=unsuspend"])

-- | /See:/ 'newBatchUnsuspendUserResponse' smart constructor.
data BatchUnsuspendUserResponse = BatchUnsuspendUserResponse'
  { -- | If the BatchUnsuspendUser action fails for one or more of the user IDs
    -- in the request, a list of the user IDs is returned, along with error
    -- codes and error messages.
    userErrors :: Prelude.Maybe [UserError],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchUnsuspendUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userErrors', 'batchUnsuspendUserResponse_userErrors' - If the BatchUnsuspendUser action fails for one or more of the user IDs
-- in the request, a list of the user IDs is returned, along with error
-- codes and error messages.
--
-- 'httpStatus', 'batchUnsuspendUserResponse_httpStatus' - The response's http status code.
newBatchUnsuspendUserResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchUnsuspendUserResponse
newBatchUnsuspendUserResponse pHttpStatus_ =
  BatchUnsuspendUserResponse'
    { userErrors =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the BatchUnsuspendUser action fails for one or more of the user IDs
-- in the request, a list of the user IDs is returned, along with error
-- codes and error messages.
batchUnsuspendUserResponse_userErrors :: Lens.Lens' BatchUnsuspendUserResponse (Prelude.Maybe [UserError])
batchUnsuspendUserResponse_userErrors = Lens.lens (\BatchUnsuspendUserResponse' {userErrors} -> userErrors) (\s@BatchUnsuspendUserResponse' {} a -> s {userErrors = a} :: BatchUnsuspendUserResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchUnsuspendUserResponse_httpStatus :: Lens.Lens' BatchUnsuspendUserResponse Prelude.Int
batchUnsuspendUserResponse_httpStatus = Lens.lens (\BatchUnsuspendUserResponse' {httpStatus} -> httpStatus) (\s@BatchUnsuspendUserResponse' {} a -> s {httpStatus = a} :: BatchUnsuspendUserResponse)

instance Prelude.NFData BatchUnsuspendUserResponse
