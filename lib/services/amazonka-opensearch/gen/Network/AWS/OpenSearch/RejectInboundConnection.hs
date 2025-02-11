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
-- Module      : Network.AWS.OpenSearch.RejectInboundConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows the remote domain owner to reject an inbound cross-cluster
-- connection request.
module Network.AWS.OpenSearch.RejectInboundConnection
  ( -- * Creating a Request
    RejectInboundConnection (..),
    newRejectInboundConnection,

    -- * Request Lenses
    rejectInboundConnection_connectionId,

    -- * Destructuring the Response
    RejectInboundConnectionResponse (..),
    newRejectInboundConnectionResponse,

    -- * Response Lenses
    rejectInboundConnectionResponse_connection,
    rejectInboundConnectionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpenSearch.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the @ RejectInboundConnection @
-- operation.
--
-- /See:/ 'newRejectInboundConnection' smart constructor.
data RejectInboundConnection = RejectInboundConnection'
  { -- | The ID of the inbound connection to reject.
    connectionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RejectInboundConnection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectionId', 'rejectInboundConnection_connectionId' - The ID of the inbound connection to reject.
newRejectInboundConnection ::
  -- | 'connectionId'
  Prelude.Text ->
  RejectInboundConnection
newRejectInboundConnection pConnectionId_ =
  RejectInboundConnection'
    { connectionId =
        pConnectionId_
    }

-- | The ID of the inbound connection to reject.
rejectInboundConnection_connectionId :: Lens.Lens' RejectInboundConnection Prelude.Text
rejectInboundConnection_connectionId = Lens.lens (\RejectInboundConnection' {connectionId} -> connectionId) (\s@RejectInboundConnection' {} a -> s {connectionId = a} :: RejectInboundConnection)

instance Core.AWSRequest RejectInboundConnection where
  type
    AWSResponse RejectInboundConnection =
      RejectInboundConnectionResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          RejectInboundConnectionResponse'
            Prelude.<$> (x Core..?> "Connection")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RejectInboundConnection

instance Prelude.NFData RejectInboundConnection

instance Core.ToHeaders RejectInboundConnection where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON RejectInboundConnection where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath RejectInboundConnection where
  toPath RejectInboundConnection' {..} =
    Prelude.mconcat
      [ "/2021-01-01/opensearch/cc/inboundConnection/",
        Core.toBS connectionId,
        "/reject"
      ]

instance Core.ToQuery RejectInboundConnection where
  toQuery = Prelude.const Prelude.mempty

-- | The result of a @ RejectInboundConnection @ operation. Contains details
-- about the rejected inbound connection.
--
-- /See:/ 'newRejectInboundConnectionResponse' smart constructor.
data RejectInboundConnectionResponse = RejectInboundConnectionResponse'
  { -- | The @ InboundConnection @ of the rejected inbound connection.
    connection :: Prelude.Maybe InboundConnection,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RejectInboundConnectionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connection', 'rejectInboundConnectionResponse_connection' - The @ InboundConnection @ of the rejected inbound connection.
--
-- 'httpStatus', 'rejectInboundConnectionResponse_httpStatus' - The response's http status code.
newRejectInboundConnectionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RejectInboundConnectionResponse
newRejectInboundConnectionResponse pHttpStatus_ =
  RejectInboundConnectionResponse'
    { connection =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The @ InboundConnection @ of the rejected inbound connection.
rejectInboundConnectionResponse_connection :: Lens.Lens' RejectInboundConnectionResponse (Prelude.Maybe InboundConnection)
rejectInboundConnectionResponse_connection = Lens.lens (\RejectInboundConnectionResponse' {connection} -> connection) (\s@RejectInboundConnectionResponse' {} a -> s {connection = a} :: RejectInboundConnectionResponse)

-- | The response's http status code.
rejectInboundConnectionResponse_httpStatus :: Lens.Lens' RejectInboundConnectionResponse Prelude.Int
rejectInboundConnectionResponse_httpStatus = Lens.lens (\RejectInboundConnectionResponse' {httpStatus} -> httpStatus) (\s@RejectInboundConnectionResponse' {} a -> s {httpStatus = a} :: RejectInboundConnectionResponse)

instance
  Prelude.NFData
    RejectInboundConnectionResponse
