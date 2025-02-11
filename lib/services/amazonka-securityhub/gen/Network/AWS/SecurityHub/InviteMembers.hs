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
-- Module      : Network.AWS.SecurityHub.InviteMembers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Invites other Amazon Web Services accounts to become member accounts for
-- the Security Hub administrator account that the invitation is sent from.
--
-- This operation is only used to invite accounts that do not belong to an
-- organization. Organization accounts do not receive invitations.
--
-- Before you can use this action to invite a member, you must first use
-- the @CreateMembers@ action to create the member account in Security Hub.
--
-- When the account owner enables Security Hub and accepts the invitation
-- to become a member account, the administrator account can view the
-- findings generated from the member account.
module Network.AWS.SecurityHub.InviteMembers
  ( -- * Creating a Request
    InviteMembers (..),
    newInviteMembers,

    -- * Request Lenses
    inviteMembers_accountIds,

    -- * Destructuring the Response
    InviteMembersResponse (..),
    newInviteMembersResponse,

    -- * Response Lenses
    inviteMembersResponse_unprocessedAccounts,
    inviteMembersResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newInviteMembers' smart constructor.
data InviteMembers = InviteMembers'
  { -- | The list of account IDs of the Amazon Web Services accounts to invite to
    -- Security Hub as members.
    accountIds :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InviteMembers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountIds', 'inviteMembers_accountIds' - The list of account IDs of the Amazon Web Services accounts to invite to
-- Security Hub as members.
newInviteMembers ::
  InviteMembers
newInviteMembers =
  InviteMembers' {accountIds = Prelude.mempty}

-- | The list of account IDs of the Amazon Web Services accounts to invite to
-- Security Hub as members.
inviteMembers_accountIds :: Lens.Lens' InviteMembers [Prelude.Text]
inviteMembers_accountIds = Lens.lens (\InviteMembers' {accountIds} -> accountIds) (\s@InviteMembers' {} a -> s {accountIds = a} :: InviteMembers) Prelude.. Lens.coerced

instance Core.AWSRequest InviteMembers where
  type
    AWSResponse InviteMembers =
      InviteMembersResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          InviteMembersResponse'
            Prelude.<$> ( x Core..?> "UnprocessedAccounts"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable InviteMembers

instance Prelude.NFData InviteMembers

instance Core.ToHeaders InviteMembers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON InviteMembers where
  toJSON InviteMembers' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("AccountIds" Core..= accountIds)]
      )

instance Core.ToPath InviteMembers where
  toPath = Prelude.const "/members/invite"

instance Core.ToQuery InviteMembers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newInviteMembersResponse' smart constructor.
data InviteMembersResponse = InviteMembersResponse'
  { -- | The list of Amazon Web Services accounts that could not be processed.
    -- For each account, the list includes the account ID and the email
    -- address.
    unprocessedAccounts :: Prelude.Maybe [Result],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InviteMembersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'unprocessedAccounts', 'inviteMembersResponse_unprocessedAccounts' - The list of Amazon Web Services accounts that could not be processed.
-- For each account, the list includes the account ID and the email
-- address.
--
-- 'httpStatus', 'inviteMembersResponse_httpStatus' - The response's http status code.
newInviteMembersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  InviteMembersResponse
newInviteMembersResponse pHttpStatus_ =
  InviteMembersResponse'
    { unprocessedAccounts =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of Amazon Web Services accounts that could not be processed.
-- For each account, the list includes the account ID and the email
-- address.
inviteMembersResponse_unprocessedAccounts :: Lens.Lens' InviteMembersResponse (Prelude.Maybe [Result])
inviteMembersResponse_unprocessedAccounts = Lens.lens (\InviteMembersResponse' {unprocessedAccounts} -> unprocessedAccounts) (\s@InviteMembersResponse' {} a -> s {unprocessedAccounts = a} :: InviteMembersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
inviteMembersResponse_httpStatus :: Lens.Lens' InviteMembersResponse Prelude.Int
inviteMembersResponse_httpStatus = Lens.lens (\InviteMembersResponse' {httpStatus} -> httpStatus) (\s@InviteMembersResponse' {} a -> s {httpStatus = a} :: InviteMembersResponse)

instance Prelude.NFData InviteMembersResponse
