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
-- Module      : Network.AWS.Chime.CreateRoomMembership
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a member to a chat room in an Amazon Chime Enterprise account. A
-- member can be either a user or a bot. The member role designates whether
-- the member is a chat room administrator or a general chat room member.
module Network.AWS.Chime.CreateRoomMembership
  ( -- * Creating a Request
    CreateRoomMembership (..),
    newCreateRoomMembership,

    -- * Request Lenses
    createRoomMembership_role,
    createRoomMembership_accountId,
    createRoomMembership_roomId,
    createRoomMembership_memberId,

    -- * Destructuring the Response
    CreateRoomMembershipResponse (..),
    newCreateRoomMembershipResponse,

    -- * Response Lenses
    createRoomMembershipResponse_roomMembership,
    createRoomMembershipResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateRoomMembership' smart constructor.
data CreateRoomMembership = CreateRoomMembership'
  { -- | The role of the member.
    role' :: Prelude.Maybe RoomMembershipRole,
    -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The room ID.
    roomId :: Prelude.Text,
    -- | The Amazon Chime member ID (user ID or bot ID).
    memberId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRoomMembership' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'role'', 'createRoomMembership_role' - The role of the member.
--
-- 'accountId', 'createRoomMembership_accountId' - The Amazon Chime account ID.
--
-- 'roomId', 'createRoomMembership_roomId' - The room ID.
--
-- 'memberId', 'createRoomMembership_memberId' - The Amazon Chime member ID (user ID or bot ID).
newCreateRoomMembership ::
  -- | 'accountId'
  Prelude.Text ->
  -- | 'roomId'
  Prelude.Text ->
  -- | 'memberId'
  Prelude.Text ->
  CreateRoomMembership
newCreateRoomMembership
  pAccountId_
  pRoomId_
  pMemberId_ =
    CreateRoomMembership'
      { role' = Prelude.Nothing,
        accountId = pAccountId_,
        roomId = pRoomId_,
        memberId = pMemberId_
      }

-- | The role of the member.
createRoomMembership_role :: Lens.Lens' CreateRoomMembership (Prelude.Maybe RoomMembershipRole)
createRoomMembership_role = Lens.lens (\CreateRoomMembership' {role'} -> role') (\s@CreateRoomMembership' {} a -> s {role' = a} :: CreateRoomMembership)

-- | The Amazon Chime account ID.
createRoomMembership_accountId :: Lens.Lens' CreateRoomMembership Prelude.Text
createRoomMembership_accountId = Lens.lens (\CreateRoomMembership' {accountId} -> accountId) (\s@CreateRoomMembership' {} a -> s {accountId = a} :: CreateRoomMembership)

-- | The room ID.
createRoomMembership_roomId :: Lens.Lens' CreateRoomMembership Prelude.Text
createRoomMembership_roomId = Lens.lens (\CreateRoomMembership' {roomId} -> roomId) (\s@CreateRoomMembership' {} a -> s {roomId = a} :: CreateRoomMembership)

-- | The Amazon Chime member ID (user ID or bot ID).
createRoomMembership_memberId :: Lens.Lens' CreateRoomMembership Prelude.Text
createRoomMembership_memberId = Lens.lens (\CreateRoomMembership' {memberId} -> memberId) (\s@CreateRoomMembership' {} a -> s {memberId = a} :: CreateRoomMembership)

instance Core.AWSRequest CreateRoomMembership where
  type
    AWSResponse CreateRoomMembership =
      CreateRoomMembershipResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateRoomMembershipResponse'
            Prelude.<$> (x Core..?> "RoomMembership")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateRoomMembership

instance Prelude.NFData CreateRoomMembership

instance Core.ToHeaders CreateRoomMembership where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateRoomMembership where
  toJSON CreateRoomMembership' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Role" Core..=) Prelude.<$> role',
            Prelude.Just ("MemberId" Core..= memberId)
          ]
      )

instance Core.ToPath CreateRoomMembership where
  toPath CreateRoomMembership' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS accountId,
        "/rooms/",
        Core.toBS roomId,
        "/memberships"
      ]

instance Core.ToQuery CreateRoomMembership where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateRoomMembershipResponse' smart constructor.
data CreateRoomMembershipResponse = CreateRoomMembershipResponse'
  { -- | The room membership details.
    roomMembership :: Prelude.Maybe RoomMembership,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRoomMembershipResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roomMembership', 'createRoomMembershipResponse_roomMembership' - The room membership details.
--
-- 'httpStatus', 'createRoomMembershipResponse_httpStatus' - The response's http status code.
newCreateRoomMembershipResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateRoomMembershipResponse
newCreateRoomMembershipResponse pHttpStatus_ =
  CreateRoomMembershipResponse'
    { roomMembership =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The room membership details.
createRoomMembershipResponse_roomMembership :: Lens.Lens' CreateRoomMembershipResponse (Prelude.Maybe RoomMembership)
createRoomMembershipResponse_roomMembership = Lens.lens (\CreateRoomMembershipResponse' {roomMembership} -> roomMembership) (\s@CreateRoomMembershipResponse' {} a -> s {roomMembership = a} :: CreateRoomMembershipResponse)

-- | The response's http status code.
createRoomMembershipResponse_httpStatus :: Lens.Lens' CreateRoomMembershipResponse Prelude.Int
createRoomMembershipResponse_httpStatus = Lens.lens (\CreateRoomMembershipResponse' {httpStatus} -> httpStatus) (\s@CreateRoomMembershipResponse' {} a -> s {httpStatus = a} :: CreateRoomMembershipResponse)

instance Prelude.NFData CreateRoomMembershipResponse
