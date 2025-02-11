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
-- Module      : Network.AWS.WellArchitected.UpdateShareInvitation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a workload invitation.
module Network.AWS.WellArchitected.UpdateShareInvitation
  ( -- * Creating a Request
    UpdateShareInvitation (..),
    newUpdateShareInvitation,

    -- * Request Lenses
    updateShareInvitation_shareInvitationId,
    updateShareInvitation_shareInvitationAction,

    -- * Destructuring the Response
    UpdateShareInvitationResponse (..),
    newUpdateShareInvitationResponse,

    -- * Response Lenses
    updateShareInvitationResponse_shareInvitation,
    updateShareInvitationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WellArchitected.Types

-- | Input for Update Share Invitation
--
-- /See:/ 'newUpdateShareInvitation' smart constructor.
data UpdateShareInvitation = UpdateShareInvitation'
  { -- | The ID assigned to the share invitation.
    shareInvitationId :: Prelude.Text,
    shareInvitationAction :: ShareInvitationAction
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateShareInvitation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'shareInvitationId', 'updateShareInvitation_shareInvitationId' - The ID assigned to the share invitation.
--
-- 'shareInvitationAction', 'updateShareInvitation_shareInvitationAction' - Undocumented member.
newUpdateShareInvitation ::
  -- | 'shareInvitationId'
  Prelude.Text ->
  -- | 'shareInvitationAction'
  ShareInvitationAction ->
  UpdateShareInvitation
newUpdateShareInvitation
  pShareInvitationId_
  pShareInvitationAction_ =
    UpdateShareInvitation'
      { shareInvitationId =
          pShareInvitationId_,
        shareInvitationAction = pShareInvitationAction_
      }

-- | The ID assigned to the share invitation.
updateShareInvitation_shareInvitationId :: Lens.Lens' UpdateShareInvitation Prelude.Text
updateShareInvitation_shareInvitationId = Lens.lens (\UpdateShareInvitation' {shareInvitationId} -> shareInvitationId) (\s@UpdateShareInvitation' {} a -> s {shareInvitationId = a} :: UpdateShareInvitation)

-- | Undocumented member.
updateShareInvitation_shareInvitationAction :: Lens.Lens' UpdateShareInvitation ShareInvitationAction
updateShareInvitation_shareInvitationAction = Lens.lens (\UpdateShareInvitation' {shareInvitationAction} -> shareInvitationAction) (\s@UpdateShareInvitation' {} a -> s {shareInvitationAction = a} :: UpdateShareInvitation)

instance Core.AWSRequest UpdateShareInvitation where
  type
    AWSResponse UpdateShareInvitation =
      UpdateShareInvitationResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateShareInvitationResponse'
            Prelude.<$> (x Core..?> "ShareInvitation")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateShareInvitation

instance Prelude.NFData UpdateShareInvitation

instance Core.ToHeaders UpdateShareInvitation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateShareInvitation where
  toJSON UpdateShareInvitation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "ShareInvitationAction"
                  Core..= shareInvitationAction
              )
          ]
      )

instance Core.ToPath UpdateShareInvitation where
  toPath UpdateShareInvitation' {..} =
    Prelude.mconcat
      ["/shareInvitations/", Core.toBS shareInvitationId]

instance Core.ToQuery UpdateShareInvitation where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateShareInvitationResponse' smart constructor.
data UpdateShareInvitationResponse = UpdateShareInvitationResponse'
  { -- | The updated workload share invitation.
    shareInvitation :: Prelude.Maybe ShareInvitation,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateShareInvitationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'shareInvitation', 'updateShareInvitationResponse_shareInvitation' - The updated workload share invitation.
--
-- 'httpStatus', 'updateShareInvitationResponse_httpStatus' - The response's http status code.
newUpdateShareInvitationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateShareInvitationResponse
newUpdateShareInvitationResponse pHttpStatus_ =
  UpdateShareInvitationResponse'
    { shareInvitation =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The updated workload share invitation.
updateShareInvitationResponse_shareInvitation :: Lens.Lens' UpdateShareInvitationResponse (Prelude.Maybe ShareInvitation)
updateShareInvitationResponse_shareInvitation = Lens.lens (\UpdateShareInvitationResponse' {shareInvitation} -> shareInvitation) (\s@UpdateShareInvitationResponse' {} a -> s {shareInvitation = a} :: UpdateShareInvitationResponse)

-- | The response's http status code.
updateShareInvitationResponse_httpStatus :: Lens.Lens' UpdateShareInvitationResponse Prelude.Int
updateShareInvitationResponse_httpStatus = Lens.lens (\UpdateShareInvitationResponse' {httpStatus} -> httpStatus) (\s@UpdateShareInvitationResponse' {} a -> s {httpStatus = a} :: UpdateShareInvitationResponse)

instance Prelude.NFData UpdateShareInvitationResponse
