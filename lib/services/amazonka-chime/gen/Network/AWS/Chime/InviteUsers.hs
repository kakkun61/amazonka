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
-- Module      : Network.AWS.Chime.InviteUsers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends email to a maximum of 50 users, inviting them to the specified
-- Amazon Chime @Team@ account. Only @Team@ account types are currently
-- supported for this action.
module Network.AWS.Chime.InviteUsers
  ( -- * Creating a Request
    InviteUsers (..),
    newInviteUsers,

    -- * Request Lenses
    inviteUsers_userType,
    inviteUsers_accountId,
    inviteUsers_userEmailList,

    -- * Destructuring the Response
    InviteUsersResponse (..),
    newInviteUsersResponse,

    -- * Response Lenses
    inviteUsersResponse_invites,
    inviteUsersResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newInviteUsers' smart constructor.
data InviteUsers = InviteUsers'
  { -- | The user type.
    userType :: Prelude.Maybe UserType,
    -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The user email addresses to which to send the email invitation.
    userEmailList :: [Core.Sensitive Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InviteUsers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userType', 'inviteUsers_userType' - The user type.
--
-- 'accountId', 'inviteUsers_accountId' - The Amazon Chime account ID.
--
-- 'userEmailList', 'inviteUsers_userEmailList' - The user email addresses to which to send the email invitation.
newInviteUsers ::
  -- | 'accountId'
  Prelude.Text ->
  InviteUsers
newInviteUsers pAccountId_ =
  InviteUsers'
    { userType = Prelude.Nothing,
      accountId = pAccountId_,
      userEmailList = Prelude.mempty
    }

-- | The user type.
inviteUsers_userType :: Lens.Lens' InviteUsers (Prelude.Maybe UserType)
inviteUsers_userType = Lens.lens (\InviteUsers' {userType} -> userType) (\s@InviteUsers' {} a -> s {userType = a} :: InviteUsers)

-- | The Amazon Chime account ID.
inviteUsers_accountId :: Lens.Lens' InviteUsers Prelude.Text
inviteUsers_accountId = Lens.lens (\InviteUsers' {accountId} -> accountId) (\s@InviteUsers' {} a -> s {accountId = a} :: InviteUsers)

-- | The user email addresses to which to send the email invitation.
inviteUsers_userEmailList :: Lens.Lens' InviteUsers [Prelude.Text]
inviteUsers_userEmailList = Lens.lens (\InviteUsers' {userEmailList} -> userEmailList) (\s@InviteUsers' {} a -> s {userEmailList = a} :: InviteUsers) Prelude.. Lens.coerced

instance Core.AWSRequest InviteUsers where
  type AWSResponse InviteUsers = InviteUsersResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          InviteUsersResponse'
            Prelude.<$> (x Core..?> "Invites" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable InviteUsers

instance Prelude.NFData InviteUsers

instance Core.ToHeaders InviteUsers where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON InviteUsers where
  toJSON InviteUsers' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("UserType" Core..=) Prelude.<$> userType,
            Prelude.Just
              ("UserEmailList" Core..= userEmailList)
          ]
      )

instance Core.ToPath InviteUsers where
  toPath InviteUsers' {..} =
    Prelude.mconcat
      ["/accounts/", Core.toBS accountId, "/users"]

instance Core.ToQuery InviteUsers where
  toQuery =
    Prelude.const (Prelude.mconcat ["operation=add"])

-- | /See:/ 'newInviteUsersResponse' smart constructor.
data InviteUsersResponse = InviteUsersResponse'
  { -- | The email invitation details.
    invites :: Prelude.Maybe [Invite],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InviteUsersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'invites', 'inviteUsersResponse_invites' - The email invitation details.
--
-- 'httpStatus', 'inviteUsersResponse_httpStatus' - The response's http status code.
newInviteUsersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  InviteUsersResponse
newInviteUsersResponse pHttpStatus_ =
  InviteUsersResponse'
    { invites = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The email invitation details.
inviteUsersResponse_invites :: Lens.Lens' InviteUsersResponse (Prelude.Maybe [Invite])
inviteUsersResponse_invites = Lens.lens (\InviteUsersResponse' {invites} -> invites) (\s@InviteUsersResponse' {} a -> s {invites = a} :: InviteUsersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
inviteUsersResponse_httpStatus :: Lens.Lens' InviteUsersResponse Prelude.Int
inviteUsersResponse_httpStatus = Lens.lens (\InviteUsersResponse' {httpStatus} -> httpStatus) (\s@InviteUsersResponse' {} a -> s {httpStatus = a} :: InviteUsersResponse)

instance Prelude.NFData InviteUsersResponse
