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
-- Module      : Network.AWS.MacieV2.DeclineInvitations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Declines Amazon Macie membership invitations that were received from
-- specific accounts.
module Network.AWS.MacieV2.DeclineInvitations
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
import Network.AWS.MacieV2.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeclineInvitations' smart constructor.
data DeclineInvitations = DeclineInvitations'
  { -- | An array that lists Amazon Web Services account IDs, one for each
    -- account that sent an invitation to decline.
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
-- 'accountIds', 'declineInvitations_accountIds' - An array that lists Amazon Web Services account IDs, one for each
-- account that sent an invitation to decline.
newDeclineInvitations ::
  DeclineInvitations
newDeclineInvitations =
  DeclineInvitations' {accountIds = Prelude.mempty}

-- | An array that lists Amazon Web Services account IDs, one for each
-- account that sent an invitation to decline.
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
            Prelude.<$> ( x Core..?> "unprocessedAccounts"
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
          [Prelude.Just ("accountIds" Core..= accountIds)]
      )

instance Core.ToPath DeclineInvitations where
  toPath = Prelude.const "/invitations/decline"

instance Core.ToQuery DeclineInvitations where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeclineInvitationsResponse' smart constructor.
data DeclineInvitationsResponse = DeclineInvitationsResponse'
  { -- | An array of objects, one for each account whose invitation hasn\'t been
    -- declined. Each object identifies the account and explains why the
    -- request hasn\'t been processed for that account.
    unprocessedAccounts :: Prelude.Maybe [UnprocessedAccount],
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
-- 'unprocessedAccounts', 'declineInvitationsResponse_unprocessedAccounts' - An array of objects, one for each account whose invitation hasn\'t been
-- declined. Each object identifies the account and explains why the
-- request hasn\'t been processed for that account.
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

-- | An array of objects, one for each account whose invitation hasn\'t been
-- declined. Each object identifies the account and explains why the
-- request hasn\'t been processed for that account.
declineInvitationsResponse_unprocessedAccounts :: Lens.Lens' DeclineInvitationsResponse (Prelude.Maybe [UnprocessedAccount])
declineInvitationsResponse_unprocessedAccounts = Lens.lens (\DeclineInvitationsResponse' {unprocessedAccounts} -> unprocessedAccounts) (\s@DeclineInvitationsResponse' {} a -> s {unprocessedAccounts = a} :: DeclineInvitationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
declineInvitationsResponse_httpStatus :: Lens.Lens' DeclineInvitationsResponse Prelude.Int
declineInvitationsResponse_httpStatus = Lens.lens (\DeclineInvitationsResponse' {httpStatus} -> httpStatus) (\s@DeclineInvitationsResponse' {} a -> s {httpStatus = a} :: DeclineInvitationsResponse)

instance Prelude.NFData DeclineInvitationsResponse
