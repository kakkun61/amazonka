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
-- Module      : Network.AWS.OpenSearch.AcceptInboundConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows the remote domain owner to accept an inbound cross-cluster
-- connection request.
module Network.AWS.OpenSearch.AcceptInboundConnection
  ( -- * Creating a Request
    AcceptInboundConnection (..),
    newAcceptInboundConnection,

    -- * Request Lenses
    acceptInboundConnection_connectionId,

    -- * Destructuring the Response
    AcceptInboundConnectionResponse (..),
    newAcceptInboundConnectionResponse,

    -- * Response Lenses
    acceptInboundConnectionResponse_connection,
    acceptInboundConnectionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpenSearch.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the @ AcceptInboundConnection @
-- operation.
--
-- /See:/ 'newAcceptInboundConnection' smart constructor.
data AcceptInboundConnection = AcceptInboundConnection'
  { -- | The ID of the inbound connection you want to accept.
    connectionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AcceptInboundConnection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectionId', 'acceptInboundConnection_connectionId' - The ID of the inbound connection you want to accept.
newAcceptInboundConnection ::
  -- | 'connectionId'
  Prelude.Text ->
  AcceptInboundConnection
newAcceptInboundConnection pConnectionId_ =
  AcceptInboundConnection'
    { connectionId =
        pConnectionId_
    }

-- | The ID of the inbound connection you want to accept.
acceptInboundConnection_connectionId :: Lens.Lens' AcceptInboundConnection Prelude.Text
acceptInboundConnection_connectionId = Lens.lens (\AcceptInboundConnection' {connectionId} -> connectionId) (\s@AcceptInboundConnection' {} a -> s {connectionId = a} :: AcceptInboundConnection)

instance Core.AWSRequest AcceptInboundConnection where
  type
    AWSResponse AcceptInboundConnection =
      AcceptInboundConnectionResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          AcceptInboundConnectionResponse'
            Prelude.<$> (x Core..?> "Connection")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AcceptInboundConnection

instance Prelude.NFData AcceptInboundConnection

instance Core.ToHeaders AcceptInboundConnection where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON AcceptInboundConnection where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath AcceptInboundConnection where
  toPath AcceptInboundConnection' {..} =
    Prelude.mconcat
      [ "/2021-01-01/opensearch/cc/inboundConnection/",
        Core.toBS connectionId,
        "/accept"
      ]

instance Core.ToQuery AcceptInboundConnection where
  toQuery = Prelude.const Prelude.mempty

-- | The result of an @ AcceptInboundConnection @ operation. Contains details
-- about the accepted inbound connection.
--
-- /See:/ 'newAcceptInboundConnectionResponse' smart constructor.
data AcceptInboundConnectionResponse = AcceptInboundConnectionResponse'
  { -- | The @ InboundConnection @ of the accepted inbound connection.
    connection :: Prelude.Maybe InboundConnection,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AcceptInboundConnectionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connection', 'acceptInboundConnectionResponse_connection' - The @ InboundConnection @ of the accepted inbound connection.
--
-- 'httpStatus', 'acceptInboundConnectionResponse_httpStatus' - The response's http status code.
newAcceptInboundConnectionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AcceptInboundConnectionResponse
newAcceptInboundConnectionResponse pHttpStatus_ =
  AcceptInboundConnectionResponse'
    { connection =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The @ InboundConnection @ of the accepted inbound connection.
acceptInboundConnectionResponse_connection :: Lens.Lens' AcceptInboundConnectionResponse (Prelude.Maybe InboundConnection)
acceptInboundConnectionResponse_connection = Lens.lens (\AcceptInboundConnectionResponse' {connection} -> connection) (\s@AcceptInboundConnectionResponse' {} a -> s {connection = a} :: AcceptInboundConnectionResponse)

-- | The response's http status code.
acceptInboundConnectionResponse_httpStatus :: Lens.Lens' AcceptInboundConnectionResponse Prelude.Int
acceptInboundConnectionResponse_httpStatus = Lens.lens (\AcceptInboundConnectionResponse' {httpStatus} -> httpStatus) (\s@AcceptInboundConnectionResponse' {} a -> s {httpStatus = a} :: AcceptInboundConnectionResponse)

instance
  Prelude.NFData
    AcceptInboundConnectionResponse
