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
-- Module      : Network.AWS.MacieV2.DeleteInvitations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes Amazon Macie membership invitations that were received from
-- specific accounts.
module Network.AWS.MacieV2.DeleteInvitations
  ( -- * Creating a Request
    DeleteInvitations (..),
    newDeleteInvitations,

    -- * Request Lenses
    deleteInvitations_accountIds,

    -- * Destructuring the Response
    DeleteInvitationsResponse (..),
    newDeleteInvitationsResponse,

    -- * Response Lenses
    deleteInvitationsResponse_unprocessedAccounts,
    deleteInvitationsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteInvitations' smart constructor.
data DeleteInvitations = DeleteInvitations'
  { -- | An array that lists Amazon Web Services account IDs, one for each
    -- account that sent an invitation to delete.
    accountIds :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteInvitations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountIds', 'deleteInvitations_accountIds' - An array that lists Amazon Web Services account IDs, one for each
-- account that sent an invitation to delete.
newDeleteInvitations ::
  DeleteInvitations
newDeleteInvitations =
  DeleteInvitations' {accountIds = Prelude.mempty}

-- | An array that lists Amazon Web Services account IDs, one for each
-- account that sent an invitation to delete.
deleteInvitations_accountIds :: Lens.Lens' DeleteInvitations [Prelude.Text]
deleteInvitations_accountIds = Lens.lens (\DeleteInvitations' {accountIds} -> accountIds) (\s@DeleteInvitations' {} a -> s {accountIds = a} :: DeleteInvitations) Prelude.. Lens.coerced

instance Core.AWSRequest DeleteInvitations where
  type
    AWSResponse DeleteInvitations =
      DeleteInvitationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteInvitationsResponse'
            Prelude.<$> ( x Core..?> "unprocessedAccounts"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteInvitations

instance Prelude.NFData DeleteInvitations

instance Core.ToHeaders DeleteInvitations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteInvitations where
  toJSON DeleteInvitations' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("accountIds" Core..= accountIds)]
      )

instance Core.ToPath DeleteInvitations where
  toPath = Prelude.const "/invitations/delete"

instance Core.ToQuery DeleteInvitations where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteInvitationsResponse' smart constructor.
data DeleteInvitationsResponse = DeleteInvitationsResponse'
  { -- | An array of objects, one for each account whose invitation hasn\'t been
    -- deleted. Each object identifies the account and explains why the request
    -- hasn\'t been processed for that account.
    unprocessedAccounts :: Prelude.Maybe [UnprocessedAccount],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteInvitationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'unprocessedAccounts', 'deleteInvitationsResponse_unprocessedAccounts' - An array of objects, one for each account whose invitation hasn\'t been
-- deleted. Each object identifies the account and explains why the request
-- hasn\'t been processed for that account.
--
-- 'httpStatus', 'deleteInvitationsResponse_httpStatus' - The response's http status code.
newDeleteInvitationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteInvitationsResponse
newDeleteInvitationsResponse pHttpStatus_ =
  DeleteInvitationsResponse'
    { unprocessedAccounts =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of objects, one for each account whose invitation hasn\'t been
-- deleted. Each object identifies the account and explains why the request
-- hasn\'t been processed for that account.
deleteInvitationsResponse_unprocessedAccounts :: Lens.Lens' DeleteInvitationsResponse (Prelude.Maybe [UnprocessedAccount])
deleteInvitationsResponse_unprocessedAccounts = Lens.lens (\DeleteInvitationsResponse' {unprocessedAccounts} -> unprocessedAccounts) (\s@DeleteInvitationsResponse' {} a -> s {unprocessedAccounts = a} :: DeleteInvitationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
deleteInvitationsResponse_httpStatus :: Lens.Lens' DeleteInvitationsResponse Prelude.Int
deleteInvitationsResponse_httpStatus = Lens.lens (\DeleteInvitationsResponse' {httpStatus} -> httpStatus) (\s@DeleteInvitationsResponse' {} a -> s {httpStatus = a} :: DeleteInvitationsResponse)

instance Prelude.NFData DeleteInvitationsResponse
