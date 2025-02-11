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
-- Module      : Network.AWS.SecurityHub.DeclineInvitations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Declines invitations to become a member account.
--
-- This operation is only used by accounts that are not part of an
-- organization. Organization accounts do not receive invitations.
module Network.AWS.SecurityHub.DeclineInvitations
  ( -- * Creating a Request
    DeclineInvitations (..),
    newDeclineInvitations,

    -- * Request Lenses
    declineInvitations_accountIds,

    -- * Destructuring the Response
    DeclineInvitationsResponse (..),
    newDeclineInvitationsResponse,

    -- * Response Lenses
    declineInvitationsResponse_unprocessedAccounts,
    declineInvitationsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newDeclineInvitations' smart constructor.
data DeclineInvitations = DeclineInvitations'
  { -- | The list of account IDs for the accounts from which to decline the
    -- invitations to Security Hub.
    accountIds :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeclineInvitations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountIds', 'declineInvitations_accountIds' - The list of account IDs for the accounts from which to decline the
-- invitations to Security Hub.
newDeclineInvitations ::
  DeclineInvitations
newDeclineInvitations =
  DeclineInvitations' {accountIds = Prelude.mempty}

-- | The list of account IDs for the accounts from which to decline the
-- invitations to Security Hub.
declineInvitations_accountIds :: Lens.Lens' DeclineInvitations [Prelude.Text]
declineInvitations_accountIds = Lens.lens (\DeclineInvitations' {accountIds} -> accountIds) (\s@DeclineInvitations' {} a -> s {accountIds = a} :: DeclineInvitations) Prelude.. Lens.coerced

instance Core.AWSRequest DeclineInvitations where
  type
    AWSResponse DeclineInvitations =
      DeclineInvitationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeclineInvitationsResponse'
            Prelude.<$> ( x Core..?> "UnprocessedAccounts"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeclineInvitations

instance Prelude.NFData DeclineInvitations

instance Core.ToHeaders DeclineInvitations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeclineInvitations where
  toJSON DeclineInvitations' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("AccountIds" Core..= accountIds)]
      )

instance Core.ToPath DeclineInvitations where
  toPath = Prelude.const "/invitations/decline"

instance Core.ToQuery DeclineInvitations where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeclineInvitationsResponse' smart constructor.
data DeclineInvitationsResponse = DeclineInvitationsResponse'
  { -- | The list of Amazon Web Services accounts that were not processed. For
    -- each account, the list includes the account ID and the email address.
    unprocessedAccounts :: Prelude.Maybe [Result],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeclineInvitationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'unprocessedAccounts', 'declineInvitationsResponse_unprocessedAccounts' - The list of Amazon Web Services accounts that were not processed. For
-- each account, the list includes the account ID and the email address.
--
-- 'httpStatus', 'declineInvitationsResponse_httpStatus' - The response's http status code.
newDeclineInvitationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeclineInvitationsResponse
newDeclineInvitationsResponse pHttpStatus_ =
  DeclineInvitationsResponse'
    { unprocessedAccounts =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of Amazon Web Services accounts that were not processed. For
-- each account, the list includes the account ID and the email address.
declineInvitationsResponse_unprocessedAccounts :: Lens.Lens' DeclineInvitationsResponse (Prelude.Maybe [Result])
declineInvitationsResponse_unprocessedAccounts = Lens.lens (\DeclineInvitationsResponse' {unprocessedAccounts} -> unprocessedAccounts) (\s@DeclineInvitationsResponse' {} a -> s {unprocessedAccounts = a} :: DeclineInvitationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
declineInvitationsResponse_httpStatus :: Lens.Lens' DeclineInvitationsResponse Prelude.Int
declineInvitationsResponse_httpStatus = Lens.lens (\DeclineInvitationsResponse' {httpStatus} -> httpStatus) (\s@DeclineInvitationsResponse' {} a -> s {httpStatus = a} :: DeclineInvitationsResponse)

instance Prelude.NFData DeclineInvitationsResponse
