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
-- Module      : Network.AWS.Chime.CreateRoom
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a chat room for the specified Amazon Chime Enterprise account.
module Network.AWS.Chime.CreateRoom
  ( -- * Creating a Request
    CreateRoom (..),
    newCreateRoom,

    -- * Request Lenses
    createRoom_clientRequestToken,
    createRoom_accountId,
    createRoom_name,

    -- * Destructuring the Response
    CreateRoomResponse (..),
    newCreateRoomResponse,

    -- * Response Lenses
    createRoomResponse_room,
    createRoomResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateRoom' smart constructor.
data CreateRoom = CreateRoom'
  { -- | The idempotency token for the request.
    clientRequestToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The room name.
    name :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRoom' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientRequestToken', 'createRoom_clientRequestToken' - The idempotency token for the request.
--
-- 'accountId', 'createRoom_accountId' - The Amazon Chime account ID.
--
-- 'name', 'createRoom_name' - The room name.
newCreateRoom ::
  -- | 'accountId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  CreateRoom
newCreateRoom pAccountId_ pName_ =
  CreateRoom'
    { clientRequestToken = Prelude.Nothing,
      accountId = pAccountId_,
      name = Core._Sensitive Lens.# pName_
    }

-- | The idempotency token for the request.
createRoom_clientRequestToken :: Lens.Lens' CreateRoom (Prelude.Maybe Prelude.Text)
createRoom_clientRequestToken = Lens.lens (\CreateRoom' {clientRequestToken} -> clientRequestToken) (\s@CreateRoom' {} a -> s {clientRequestToken = a} :: CreateRoom) Prelude.. Lens.mapping Core._Sensitive

-- | The Amazon Chime account ID.
createRoom_accountId :: Lens.Lens' CreateRoom Prelude.Text
createRoom_accountId = Lens.lens (\CreateRoom' {accountId} -> accountId) (\s@CreateRoom' {} a -> s {accountId = a} :: CreateRoom)

-- | The room name.
createRoom_name :: Lens.Lens' CreateRoom Prelude.Text
createRoom_name = Lens.lens (\CreateRoom' {name} -> name) (\s@CreateRoom' {} a -> s {name = a} :: CreateRoom) Prelude.. Core._Sensitive

instance Core.AWSRequest CreateRoom where
  type AWSResponse CreateRoom = CreateRoomResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateRoomResponse'
            Prelude.<$> (x Core..?> "Room")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateRoom

instance Prelude.NFData CreateRoom

instance Core.ToHeaders CreateRoom where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateRoom where
  toJSON CreateRoom' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ClientRequestToken" Core..=)
              Prelude.<$> clientRequestToken,
            Prelude.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath CreateRoom where
  toPath CreateRoom' {..} =
    Prelude.mconcat
      ["/accounts/", Core.toBS accountId, "/rooms"]

instance Core.ToQuery CreateRoom where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateRoomResponse' smart constructor.
data CreateRoomResponse = CreateRoomResponse'
  { -- | The room details.
    room :: Prelude.Maybe Room,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRoomResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'room', 'createRoomResponse_room' - The room details.
--
-- 'httpStatus', 'createRoomResponse_httpStatus' - The response's http status code.
newCreateRoomResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateRoomResponse
newCreateRoomResponse pHttpStatus_ =
  CreateRoomResponse'
    { room = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The room details.
createRoomResponse_room :: Lens.Lens' CreateRoomResponse (Prelude.Maybe Room)
createRoomResponse_room = Lens.lens (\CreateRoomResponse' {room} -> room) (\s@CreateRoomResponse' {} a -> s {room = a} :: CreateRoomResponse)

-- | The response's http status code.
createRoomResponse_httpStatus :: Lens.Lens' CreateRoomResponse Prelude.Int
createRoomResponse_httpStatus = Lens.lens (\CreateRoomResponse' {httpStatus} -> httpStatus) (\s@CreateRoomResponse' {} a -> s {httpStatus = a} :: CreateRoomResponse)

instance Prelude.NFData CreateRoomResponse
