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
-- Module      : Network.AWS.SecurityHub.CreateMembers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a member association in Security Hub between the specified
-- accounts and the account used to make the request, which is the
-- administrator account. If you are integrated with Organizations, then
-- the administrator account is designated by the organization management
-- account.
--
-- @CreateMembers@ is always used to add accounts that are not organization
-- members.
--
-- For accounts that are managed using Organizations, @CreateMembers@ is
-- only used in the following cases:
--
-- -   Security Hub is not configured to automatically add new organization
--     accounts.
--
-- -   The account was disassociated or deleted in Security Hub.
--
-- This action can only be used by an account that has Security Hub
-- enabled. To enable Security Hub, you can use the @EnableSecurityHub@
-- operation.
--
-- For accounts that are not organization members, you create the account
-- association and then send an invitation to the member account. To send
-- the invitation, you use the @InviteMembers@ operation. If the account
-- owner accepts the invitation, the account becomes a member account in
-- Security Hub.
--
-- Accounts that are managed using Organizations do not receive an
-- invitation. They automatically become a member account in Security Hub.
--
-- -   If the organization account does not have Security Hub enabled, then
--     Security Hub and the default standards are automatically enabled.
--     Note that Security Hub cannot be enabled automatically for the
--     organization management account. The organization management account
--     must enable Security Hub before the administrator account enables it
--     as a member account.
--
-- -   For organization accounts that already have Security Hub enabled,
--     Security Hub does not make any other changes to those accounts. It
--     does not change their enabled standards or controls.
--
-- A permissions policy is added that permits the administrator account to
-- view the findings generated in the member account.
--
-- To remove the association between the administrator and member accounts,
-- use the @DisassociateFromMasterAccount@ or @DisassociateMembers@
-- operation.
module Network.AWS.SecurityHub.CreateMembers
  ( -- * Creating a Request
    CreateMembers (..),
    newCreateMembers,

    -- * Request Lenses
    createMembers_accountDetails,

    -- * Destructuring the Response
    CreateMembersResponse (..),
    newCreateMembersResponse,

    -- * Response Lenses
    createMembersResponse_unprocessedAccounts,
    createMembersResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newCreateMembers' smart constructor.
data CreateMembers = CreateMembers'
  { -- | The list of accounts to associate with the Security Hub administrator
    -- account. For each account, the list includes the account ID and
    -- optionally the email address.
    accountDetails :: [AccountDetails]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateMembers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountDetails', 'createMembers_accountDetails' - The list of accounts to associate with the Security Hub administrator
-- account. For each account, the list includes the account ID and
-- optionally the email address.
newCreateMembers ::
  CreateMembers
newCreateMembers =
  CreateMembers' {accountDetails = Prelude.mempty}

-- | The list of accounts to associate with the Security Hub administrator
-- account. For each account, the list includes the account ID and
-- optionally the email address.
createMembers_accountDetails :: Lens.Lens' CreateMembers [AccountDetails]
createMembers_accountDetails = Lens.lens (\CreateMembers' {accountDetails} -> accountDetails) (\s@CreateMembers' {} a -> s {accountDetails = a} :: CreateMembers) Prelude.. Lens.coerced

instance Core.AWSRequest CreateMembers where
  type
    AWSResponse CreateMembers =
      CreateMembersResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateMembersResponse'
            Prelude.<$> ( x Core..?> "UnprocessedAccounts"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateMembers

instance Prelude.NFData CreateMembers

instance Core.ToHeaders CreateMembers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateMembers where
  toJSON CreateMembers' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("AccountDetails" Core..= accountDetails)
          ]
      )

instance Core.ToPath CreateMembers where
  toPath = Prelude.const "/members"

instance Core.ToQuery CreateMembers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateMembersResponse' smart constructor.
data CreateMembersResponse = CreateMembersResponse'
  { -- | The list of Amazon Web Services accounts that were not processed. For
    -- each account, the list includes the account ID and the email address.
    unprocessedAccounts :: Prelude.Maybe [Result],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateMembersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'unprocessedAccounts', 'createMembersResponse_unprocessedAccounts' - The list of Amazon Web Services accounts that were not processed. For
-- each account, the list includes the account ID and the email address.
--
-- 'httpStatus', 'createMembersResponse_httpStatus' - The response's http status code.
newCreateMembersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateMembersResponse
newCreateMembersResponse pHttpStatus_ =
  CreateMembersResponse'
    { unprocessedAccounts =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of Amazon Web Services accounts that were not processed. For
-- each account, the list includes the account ID and the email address.
createMembersResponse_unprocessedAccounts :: Lens.Lens' CreateMembersResponse (Prelude.Maybe [Result])
createMembersResponse_unprocessedAccounts = Lens.lens (\CreateMembersResponse' {unprocessedAccounts} -> unprocessedAccounts) (\s@CreateMembersResponse' {} a -> s {unprocessedAccounts = a} :: CreateMembersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
createMembersResponse_httpStatus :: Lens.Lens' CreateMembersResponse Prelude.Int
createMembersResponse_httpStatus = Lens.lens (\CreateMembersResponse' {httpStatus} -> httpStatus) (\s@CreateMembersResponse' {} a -> s {httpStatus = a} :: CreateMembersResponse)

instance Prelude.NFData CreateMembersResponse
