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
-- Module      : Network.AWS.Transfer.DeleteSshPublicKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a user\'s Secure Shell (SSH) public key.
module Network.AWS.Transfer.DeleteSshPublicKey
  ( -- * Creating a Request
    DeleteSshPublicKey (..),
    newDeleteSshPublicKey,

    -- * Request Lenses
    deleteSshPublicKey_serverId,
    deleteSshPublicKey_sshPublicKeyId,
    deleteSshPublicKey_userName,

    -- * Destructuring the Response
    DeleteSshPublicKeyResponse (..),
    newDeleteSshPublicKeyResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Transfer.Types

-- | /See:/ 'newDeleteSshPublicKey' smart constructor.
data DeleteSshPublicKey = DeleteSshPublicKey'
  { -- | A system-assigned unique identifier for a file transfer protocol-enabled
    -- server instance that has the user assigned to it.
    serverId :: Prelude.Text,
    -- | A unique identifier used to reference your user\'s specific SSH key.
    sshPublicKeyId :: Prelude.Text,
    -- | A unique string that identifies a user whose public key is being
    -- deleted.
    userName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSshPublicKey' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serverId', 'deleteSshPublicKey_serverId' - A system-assigned unique identifier for a file transfer protocol-enabled
-- server instance that has the user assigned to it.
--
-- 'sshPublicKeyId', 'deleteSshPublicKey_sshPublicKeyId' - A unique identifier used to reference your user\'s specific SSH key.
--
-- 'userName', 'deleteSshPublicKey_userName' - A unique string that identifies a user whose public key is being
-- deleted.
newDeleteSshPublicKey ::
  -- | 'serverId'
  Prelude.Text ->
  -- | 'sshPublicKeyId'
  Prelude.Text ->
  -- | 'userName'
  Prelude.Text ->
  DeleteSshPublicKey
newDeleteSshPublicKey
  pServerId_
  pSshPublicKeyId_
  pUserName_ =
    DeleteSshPublicKey'
      { serverId = pServerId_,
        sshPublicKeyId = pSshPublicKeyId_,
        userName = pUserName_
      }

-- | A system-assigned unique identifier for a file transfer protocol-enabled
-- server instance that has the user assigned to it.
deleteSshPublicKey_serverId :: Lens.Lens' DeleteSshPublicKey Prelude.Text
deleteSshPublicKey_serverId = Lens.lens (\DeleteSshPublicKey' {serverId} -> serverId) (\s@DeleteSshPublicKey' {} a -> s {serverId = a} :: DeleteSshPublicKey)

-- | A unique identifier used to reference your user\'s specific SSH key.
deleteSshPublicKey_sshPublicKeyId :: Lens.Lens' DeleteSshPublicKey Prelude.Text
deleteSshPublicKey_sshPublicKeyId = Lens.lens (\DeleteSshPublicKey' {sshPublicKeyId} -> sshPublicKeyId) (\s@DeleteSshPublicKey' {} a -> s {sshPublicKeyId = a} :: DeleteSshPublicKey)

-- | A unique string that identifies a user whose public key is being
-- deleted.
deleteSshPublicKey_userName :: Lens.Lens' DeleteSshPublicKey Prelude.Text
deleteSshPublicKey_userName = Lens.lens (\DeleteSshPublicKey' {userName} -> userName) (\s@DeleteSshPublicKey' {} a -> s {userName = a} :: DeleteSshPublicKey)

instance Core.AWSRequest DeleteSshPublicKey where
  type
    AWSResponse DeleteSshPublicKey =
      DeleteSshPublicKeyResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull DeleteSshPublicKeyResponse'

instance Prelude.Hashable DeleteSshPublicKey

instance Prelude.NFData DeleteSshPublicKey

instance Core.ToHeaders DeleteSshPublicKey where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "TransferService.DeleteSshPublicKey" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteSshPublicKey where
  toJSON DeleteSshPublicKey' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ServerId" Core..= serverId),
            Prelude.Just
              ("SshPublicKeyId" Core..= sshPublicKeyId),
            Prelude.Just ("UserName" Core..= userName)
          ]
      )

instance Core.ToPath DeleteSshPublicKey where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteSshPublicKey where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteSshPublicKeyResponse' smart constructor.
data DeleteSshPublicKeyResponse = DeleteSshPublicKeyResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSshPublicKeyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteSshPublicKeyResponse ::
  DeleteSshPublicKeyResponse
newDeleteSshPublicKeyResponse =
  DeleteSshPublicKeyResponse'

instance Prelude.NFData DeleteSshPublicKeyResponse
