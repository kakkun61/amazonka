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
-- Module      : Network.AWS.NetworkManager.UpdateConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the information for an existing connection. To remove
-- information for any of the parameters, specify an empty string.
module Network.AWS.NetworkManager.UpdateConnection
  ( -- * Creating a Request
    UpdateConnection (..),
    newUpdateConnection,

    -- * Request Lenses
    updateConnection_connectedLinkId,
    updateConnection_linkId,
    updateConnection_description,
    updateConnection_globalNetworkId,
    updateConnection_connectionId,

    -- * Destructuring the Response
    UpdateConnectionResponse (..),
    newUpdateConnectionResponse,

    -- * Response Lenses
    updateConnectionResponse_connection,
    updateConnectionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateConnection' smart constructor.
data UpdateConnection = UpdateConnection'
  { -- | The ID of the link for the second device in the connection.
    connectedLinkId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the link for the first device in the connection.
    linkId :: Prelude.Maybe Prelude.Text,
    -- | A description of the connection.
    --
    -- Length Constraints: Maximum length of 256 characters.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ID of the global network.
    globalNetworkId :: Prelude.Text,
    -- | The ID of the connection.
    connectionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateConnection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectedLinkId', 'updateConnection_connectedLinkId' - The ID of the link for the second device in the connection.
--
-- 'linkId', 'updateConnection_linkId' - The ID of the link for the first device in the connection.
--
-- 'description', 'updateConnection_description' - A description of the connection.
--
-- Length Constraints: Maximum length of 256 characters.
--
-- 'globalNetworkId', 'updateConnection_globalNetworkId' - The ID of the global network.
--
-- 'connectionId', 'updateConnection_connectionId' - The ID of the connection.
newUpdateConnection ::
  -- | 'globalNetworkId'
  Prelude.Text ->
  -- | 'connectionId'
  Prelude.Text ->
  UpdateConnection
newUpdateConnection pGlobalNetworkId_ pConnectionId_ =
  UpdateConnection'
    { connectedLinkId =
        Prelude.Nothing,
      linkId = Prelude.Nothing,
      description = Prelude.Nothing,
      globalNetworkId = pGlobalNetworkId_,
      connectionId = pConnectionId_
    }

-- | The ID of the link for the second device in the connection.
updateConnection_connectedLinkId :: Lens.Lens' UpdateConnection (Prelude.Maybe Prelude.Text)
updateConnection_connectedLinkId = Lens.lens (\UpdateConnection' {connectedLinkId} -> connectedLinkId) (\s@UpdateConnection' {} a -> s {connectedLinkId = a} :: UpdateConnection)

-- | The ID of the link for the first device in the connection.
updateConnection_linkId :: Lens.Lens' UpdateConnection (Prelude.Maybe Prelude.Text)
updateConnection_linkId = Lens.lens (\UpdateConnection' {linkId} -> linkId) (\s@UpdateConnection' {} a -> s {linkId = a} :: UpdateConnection)

-- | A description of the connection.
--
-- Length Constraints: Maximum length of 256 characters.
updateConnection_description :: Lens.Lens' UpdateConnection (Prelude.Maybe Prelude.Text)
updateConnection_description = Lens.lens (\UpdateConnection' {description} -> description) (\s@UpdateConnection' {} a -> s {description = a} :: UpdateConnection)

-- | The ID of the global network.
updateConnection_globalNetworkId :: Lens.Lens' UpdateConnection Prelude.Text
updateConnection_globalNetworkId = Lens.lens (\UpdateConnection' {globalNetworkId} -> globalNetworkId) (\s@UpdateConnection' {} a -> s {globalNetworkId = a} :: UpdateConnection)

-- | The ID of the connection.
updateConnection_connectionId :: Lens.Lens' UpdateConnection Prelude.Text
updateConnection_connectionId = Lens.lens (\UpdateConnection' {connectionId} -> connectionId) (\s@UpdateConnection' {} a -> s {connectionId = a} :: UpdateConnection)

instance Core.AWSRequest UpdateConnection where
  type
    AWSResponse UpdateConnection =
      UpdateConnectionResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateConnectionResponse'
            Prelude.<$> (x Core..?> "Connection")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateConnection

instance Prelude.NFData UpdateConnection

instance Core.ToHeaders UpdateConnection where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateConnection where
  toJSON UpdateConnection' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ConnectedLinkId" Core..=)
              Prelude.<$> connectedLinkId,
            ("LinkId" Core..=) Prelude.<$> linkId,
            ("Description" Core..=) Prelude.<$> description
          ]
      )

instance Core.ToPath UpdateConnection where
  toPath UpdateConnection' {..} =
    Prelude.mconcat
      [ "/global-networks/",
        Core.toBS globalNetworkId,
        "/connections/",
        Core.toBS connectionId
      ]

instance Core.ToQuery UpdateConnection where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateConnectionResponse' smart constructor.
data UpdateConnectionResponse = UpdateConnectionResponse'
  { -- | Information about the connection.
    connection :: Prelude.Maybe Connection,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateConnectionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connection', 'updateConnectionResponse_connection' - Information about the connection.
--
-- 'httpStatus', 'updateConnectionResponse_httpStatus' - The response's http status code.
newUpdateConnectionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateConnectionResponse
newUpdateConnectionResponse pHttpStatus_ =
  UpdateConnectionResponse'
    { connection =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the connection.
updateConnectionResponse_connection :: Lens.Lens' UpdateConnectionResponse (Prelude.Maybe Connection)
updateConnectionResponse_connection = Lens.lens (\UpdateConnectionResponse' {connection} -> connection) (\s@UpdateConnectionResponse' {} a -> s {connection = a} :: UpdateConnectionResponse)

-- | The response's http status code.
updateConnectionResponse_httpStatus :: Lens.Lens' UpdateConnectionResponse Prelude.Int
updateConnectionResponse_httpStatus = Lens.lens (\UpdateConnectionResponse' {httpStatus} -> httpStatus) (\s@UpdateConnectionResponse' {} a -> s {httpStatus = a} :: UpdateConnectionResponse)

instance Prelude.NFData UpdateConnectionResponse
