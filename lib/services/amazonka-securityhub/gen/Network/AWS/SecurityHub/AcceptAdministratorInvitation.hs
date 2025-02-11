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
-- Module      : Network.AWS.SecurityHub.AcceptAdministratorInvitation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accepts the invitation to be a member account and be monitored by the
-- Security Hub administrator account that the invitation was sent from.
--
-- This operation is only used by member accounts that are not added
-- through Organizations.
--
-- When the member account accepts the invitation, permission is granted to
-- the administrator account to view findings generated in the member
-- account.
module Network.AWS.SecurityHub.AcceptAdministratorInvitation
  ( -- * Creating a Request
    AcceptAdministratorInvitation (..),
    newAcceptAdministratorInvitation,

    -- * Request Lenses
    acceptAdministratorInvitation_administratorId,
    acceptAdministratorInvitation_invitationId,

    -- * Destructuring the Response
    AcceptAdministratorInvitationResponse (..),
    newAcceptAdministratorInvitationResponse,

    -- * Response Lenses
    acceptAdministratorInvitationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newAcceptAdministratorInvitation' smart constructor.
data AcceptAdministratorInvitation = AcceptAdministratorInvitation'
  { -- | The account ID of the Security Hub administrator account that sent the
    -- invitation.
    administratorId :: Prelude.Text,
    -- | The identifier of the invitation sent from the Security Hub
    -- administrator account.
    invitationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AcceptAdministratorInvitation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'administratorId', 'acceptAdministratorInvitation_administratorId' - The account ID of the Security Hub administrator account that sent the
-- invitation.
--
-- 'invitationId', 'acceptAdministratorInvitation_invitationId' - The identifier of the invitation sent from the Security Hub
-- administrator account.
newAcceptAdministratorInvitation ::
  -- | 'administratorId'
  Prelude.Text ->
  -- | 'invitationId'
  Prelude.Text ->
  AcceptAdministratorInvitation
newAcceptAdministratorInvitation
  pAdministratorId_
  pInvitationId_ =
    AcceptAdministratorInvitation'
      { administratorId =
          pAdministratorId_,
        invitationId = pInvitationId_
      }

-- | The account ID of the Security Hub administrator account that sent the
-- invitation.
acceptAdministratorInvitation_administratorId :: Lens.Lens' AcceptAdministratorInvitation Prelude.Text
acceptAdministratorInvitation_administratorId = Lens.lens (\AcceptAdministratorInvitation' {administratorId} -> administratorId) (\s@AcceptAdministratorInvitation' {} a -> s {administratorId = a} :: AcceptAdministratorInvitation)

-- | The identifier of the invitation sent from the Security Hub
-- administrator account.
acceptAdministratorInvitation_invitationId :: Lens.Lens' AcceptAdministratorInvitation Prelude.Text
acceptAdministratorInvitation_invitationId = Lens.lens (\AcceptAdministratorInvitation' {invitationId} -> invitationId) (\s@AcceptAdministratorInvitation' {} a -> s {invitationId = a} :: AcceptAdministratorInvitation)

instance
  Core.AWSRequest
    AcceptAdministratorInvitation
  where
  type
    AWSResponse AcceptAdministratorInvitation =
      AcceptAdministratorInvitationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          AcceptAdministratorInvitationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    AcceptAdministratorInvitation

instance Prelude.NFData AcceptAdministratorInvitation

instance Core.ToHeaders AcceptAdministratorInvitation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON AcceptAdministratorInvitation where
  toJSON AcceptAdministratorInvitation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("AdministratorId" Core..= administratorId),
            Prelude.Just ("InvitationId" Core..= invitationId)
          ]
      )

instance Core.ToPath AcceptAdministratorInvitation where
  toPath = Prelude.const "/administrator"

instance Core.ToQuery AcceptAdministratorInvitation where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAcceptAdministratorInvitationResponse' smart constructor.
data AcceptAdministratorInvitationResponse = AcceptAdministratorInvitationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AcceptAdministratorInvitationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'acceptAdministratorInvitationResponse_httpStatus' - The response's http status code.
newAcceptAdministratorInvitationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AcceptAdministratorInvitationResponse
newAcceptAdministratorInvitationResponse pHttpStatus_ =
  AcceptAdministratorInvitationResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
acceptAdministratorInvitationResponse_httpStatus :: Lens.Lens' AcceptAdministratorInvitationResponse Prelude.Int
acceptAdministratorInvitationResponse_httpStatus = Lens.lens (\AcceptAdministratorInvitationResponse' {httpStatus} -> httpStatus) (\s@AcceptAdministratorInvitationResponse' {} a -> s {httpStatus = a} :: AcceptAdministratorInvitationResponse)

instance
  Prelude.NFData
    AcceptAdministratorInvitationResponse
