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
-- Module      : Network.AWS.Transfer.DeleteServer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the file transfer protocol-enabled server that you specify.
--
-- No response returns from this operation.
module Network.AWS.Transfer.DeleteServer
  ( -- * Creating a Request
    DeleteServer (..),
    newDeleteServer,

    -- * Request Lenses
    deleteServer_serverId,

    -- * Destructuring the Response
    DeleteServerResponse (..),
    newDeleteServerResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Transfer.Types

-- | /See:/ 'newDeleteServer' smart constructor.
data DeleteServer = DeleteServer'
  { -- | A unique system-assigned identifier for a server instance.
    serverId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteServer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serverId', 'deleteServer_serverId' - A unique system-assigned identifier for a server instance.
newDeleteServer ::
  -- | 'serverId'
  Prelude.Text ->
  DeleteServer
newDeleteServer pServerId_ =
  DeleteServer' {serverId = pServerId_}

-- | A unique system-assigned identifier for a server instance.
deleteServer_serverId :: Lens.Lens' DeleteServer Prelude.Text
deleteServer_serverId = Lens.lens (\DeleteServer' {serverId} -> serverId) (\s@DeleteServer' {} a -> s {serverId = a} :: DeleteServer)

instance Core.AWSRequest DeleteServer where
  type AWSResponse DeleteServer = DeleteServerResponse
  request = Request.postJSON defaultService
  response = Response.receiveNull DeleteServerResponse'

instance Prelude.Hashable DeleteServer

instance Prelude.NFData DeleteServer

instance Core.ToHeaders DeleteServer where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "TransferService.DeleteServer" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteServer where
  toJSON DeleteServer' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ServerId" Core..= serverId)]
      )

instance Core.ToPath DeleteServer where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteServer where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteServerResponse' smart constructor.
data DeleteServerResponse = DeleteServerResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteServerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteServerResponse ::
  DeleteServerResponse
newDeleteServerResponse = DeleteServerResponse'

instance Prelude.NFData DeleteServerResponse
