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
-- Module      : Network.AWS.Chime.BatchCreateRoomMembership
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds up to 50 members to a chat room in an Amazon Chime Enterprise
-- account. Members can be users or bots. The member role designates
-- whether the member is a chat room administrator or a general chat room
-- member.
module Network.AWS.Chime.BatchCreateRoomMembership
  ( -- * Creating a Request
    BatchCreateRoomMembership (..),
    newBatchCreateRoomMembership,

    -- * Request Lenses
    batchCreateRoomMembership_accountId,
    batchCreateRoomMembership_roomId,
    batchCreateRoomMembership_membershipItemList,

    -- * Destructuring the Response
    BatchCreateRoomMembershipResponse (..),
    newBatchCreateRoomMembershipResponse,

    -- * Response Lenses
    batchCreateRoomMembershipResponse_errors,
    batchCreateRoomMembershipResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchCreateRoomMembership' smart constructor.
data BatchCreateRoomMembership = BatchCreateRoomMembership'
  { -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The room ID.
    roomId :: Prelude.Text,
    -- | The list of membership items.
    membershipItemList :: [MembershipItem]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchCreateRoomMembership' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'batchCreateRoomMembership_accountId' - The Amazon Chime account ID.
--
-- 'roomId', 'batchCreateRoomMembership_roomId' - The room ID.
--
-- 'membershipItemList', 'batchCreateRoomMembership_membershipItemList' - The list of membership items.
newBatchCreateRoomMembership ::
  -- | 'accountId'
  Prelude.Text ->
  -- | 'roomId'
  Prelude.Text ->
  BatchCreateRoomMembership
newBatchCreateRoomMembership pAccountId_ pRoomId_ =
  BatchCreateRoomMembership'
    { accountId = pAccountId_,
      roomId = pRoomId_,
      membershipItemList = Prelude.mempty
    }

-- | The Amazon Chime account ID.
batchCreateRoomMembership_accountId :: Lens.Lens' BatchCreateRoomMembership Prelude.Text
batchCreateRoomMembership_accountId = Lens.lens (\BatchCreateRoomMembership' {accountId} -> accountId) (\s@BatchCreateRoomMembership' {} a -> s {accountId = a} :: BatchCreateRoomMembership)

-- | The room ID.
batchCreateRoomMembership_roomId :: Lens.Lens' BatchCreateRoomMembership Prelude.Text
batchCreateRoomMembership_roomId = Lens.lens (\BatchCreateRoomMembership' {roomId} -> roomId) (\s@BatchCreateRoomMembership' {} a -> s {roomId = a} :: BatchCreateRoomMembership)

-- | The list of membership items.
batchCreateRoomMembership_membershipItemList :: Lens.Lens' BatchCreateRoomMembership [MembershipItem]
batchCreateRoomMembership_membershipItemList = Lens.lens (\BatchCreateRoomMembership' {membershipItemList} -> membershipItemList) (\s@BatchCreateRoomMembership' {} a -> s {membershipItemList = a} :: BatchCreateRoomMembership) Prelude.. Lens.coerced

instance Core.AWSRequest BatchCreateRoomMembership where
  type
    AWSResponse BatchCreateRoomMembership =
      BatchCreateRoomMembershipResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchCreateRoomMembershipResponse'
            Prelude.<$> (x Core..?> "Errors" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchCreateRoomMembership

instance Prelude.NFData BatchCreateRoomMembership

instance Core.ToHeaders BatchCreateRoomMembership where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON BatchCreateRoomMembership where
  toJSON BatchCreateRoomMembership' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("MembershipItemList" Core..= membershipItemList)
          ]
      )

instance Core.ToPath BatchCreateRoomMembership where
  toPath BatchCreateRoomMembership' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS accountId,
        "/rooms/",
        Core.toBS roomId,
        "/memberships"
      ]

instance Core.ToQuery BatchCreateRoomMembership where
  toQuery =
    Prelude.const
      (Prelude.mconcat ["operation=batch-create"])

-- | /See:/ 'newBatchCreateRoomMembershipResponse' smart constructor.
data BatchCreateRoomMembershipResponse = BatchCreateRoomMembershipResponse'
  { -- | If the action fails for one or more of the member IDs in the request, a
    -- list of the member IDs is returned, along with error codes and error
    -- messages.
    errors :: Prelude.Maybe [MemberError],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchCreateRoomMembershipResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errors', 'batchCreateRoomMembershipResponse_errors' - If the action fails for one or more of the member IDs in the request, a
-- list of the member IDs is returned, along with error codes and error
-- messages.
--
-- 'httpStatus', 'batchCreateRoomMembershipResponse_httpStatus' - The response's http status code.
newBatchCreateRoomMembershipResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchCreateRoomMembershipResponse
newBatchCreateRoomMembershipResponse pHttpStatus_ =
  BatchCreateRoomMembershipResponse'
    { errors =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the action fails for one or more of the member IDs in the request, a
-- list of the member IDs is returned, along with error codes and error
-- messages.
batchCreateRoomMembershipResponse_errors :: Lens.Lens' BatchCreateRoomMembershipResponse (Prelude.Maybe [MemberError])
batchCreateRoomMembershipResponse_errors = Lens.lens (\BatchCreateRoomMembershipResponse' {errors} -> errors) (\s@BatchCreateRoomMembershipResponse' {} a -> s {errors = a} :: BatchCreateRoomMembershipResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchCreateRoomMembershipResponse_httpStatus :: Lens.Lens' BatchCreateRoomMembershipResponse Prelude.Int
batchCreateRoomMembershipResponse_httpStatus = Lens.lens (\BatchCreateRoomMembershipResponse' {httpStatus} -> httpStatus) (\s@BatchCreateRoomMembershipResponse' {} a -> s {httpStatus = a} :: BatchCreateRoomMembershipResponse)

instance
  Prelude.NFData
    BatchCreateRoomMembershipResponse
