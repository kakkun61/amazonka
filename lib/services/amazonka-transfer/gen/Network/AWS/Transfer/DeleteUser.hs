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
-- Module      : Network.AWS.Transfer.DeleteUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the user belonging to a file transfer protocol-enabled server
-- you specify.
--
-- No response returns from this operation.
--
-- When you delete a user from a server, the user\'s information is lost.
module Network.AWS.Transfer.DeleteUser
  ( -- * Creating a Request
    DeleteUser (..),
    newDeleteUser,

    -- * Request Lenses
    deleteUser_serverId,
    deleteUser_userName,

    -- * Destructuring the Response
    DeleteUserResponse (..),
    newDeleteUserResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Transfer.Types

-- | /See:/ 'newDeleteUser' smart constructor.
data DeleteUser = DeleteUser'
  { -- | A system-assigned unique identifier for a server instance that has the
    -- user assigned to it.
    serverId :: Prelude.Text,
    -- | A unique string that identifies a user that is being deleted from a
    -- server.
    userName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serverId', 'deleteUser_serverId' - A system-assigned unique identifier for a server instance that has the
-- user assigned to it.
--
-- 'userName', 'deleteUser_userName' - A unique string that identifies a user that is being deleted from a
-- server.
newDeleteUser ::
  -- | 'serverId'
  Prelude.Text ->
  -- | 'userName'
  Prelude.Text ->
  DeleteUser
newDeleteUser pServerId_ pUserName_ =
  DeleteUser'
    { serverId = pServerId_,
      userName = pUserName_
    }

-- | A system-assigned unique identifier for a server instance that has the
-- user assigned to it.
deleteUser_serverId :: Lens.Lens' DeleteUser Prelude.Text
deleteUser_serverId = Lens.lens (\DeleteUser' {serverId} -> serverId) (\s@DeleteUser' {} a -> s {serverId = a} :: DeleteUser)

-- | A unique string that identifies a user that is being deleted from a
-- server.
deleteUser_userName :: Lens.Lens' DeleteUser Prelude.Text
deleteUser_userName = Lens.lens (\DeleteUser' {userName} -> userName) (\s@DeleteUser' {} a -> s {userName = a} :: DeleteUser)

instance Core.AWSRequest DeleteUser where
  type AWSResponse DeleteUser = DeleteUserResponse
  request = Request.postJSON defaultService
  response = Response.receiveNull DeleteUserResponse'

instance Prelude.Hashable DeleteUser

instance Prelude.NFData DeleteUser

instance Core.ToHeaders DeleteUser where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("TransferService.DeleteUser" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteUser where
  toJSON DeleteUser' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ServerId" Core..= serverId),
            Prelude.Just ("UserName" Core..= userName)
          ]
      )

instance Core.ToPath DeleteUser where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteUser where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteUserResponse' smart constructor.
data DeleteUserResponse = DeleteUserResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteUserResponse ::
  DeleteUserResponse
newDeleteUserResponse = DeleteUserResponse'

instance Prelude.NFData DeleteUserResponse
