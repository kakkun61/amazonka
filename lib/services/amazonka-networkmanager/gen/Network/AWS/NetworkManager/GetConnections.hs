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
-- Module      : Network.AWS.NetworkManager.GetConnections
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about one or more of your connections in a global
-- network.
--
-- This operation returns paginated results.
module Network.AWS.NetworkManager.GetConnections
  ( -- * Creating a Request
    GetConnections (..),
    newGetConnections,

    -- * Request Lenses
    getConnections_connectionIds,
    getConnections_nextToken,
    getConnections_deviceId,
    getConnections_maxResults,
    getConnections_globalNetworkId,

    -- * Destructuring the Response
    GetConnectionsResponse (..),
    newGetConnectionsResponse,

    -- * Response Lenses
    getConnectionsResponse_connections,
    getConnectionsResponse_nextToken,
    getConnectionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetConnections' smart constructor.
data GetConnections = GetConnections'
  { -- | One or more connection IDs.
    connectionIds :: Prelude.Maybe [Prelude.Text],
    -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the device.
    deviceId :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the global network.
    globalNetworkId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetConnections' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectionIds', 'getConnections_connectionIds' - One or more connection IDs.
--
-- 'nextToken', 'getConnections_nextToken' - The token for the next page of results.
--
-- 'deviceId', 'getConnections_deviceId' - The ID of the device.
--
-- 'maxResults', 'getConnections_maxResults' - The maximum number of results to return.
--
-- 'globalNetworkId', 'getConnections_globalNetworkId' - The ID of the global network.
newGetConnections ::
  -- | 'globalNetworkId'
  Prelude.Text ->
  GetConnections
newGetConnections pGlobalNetworkId_ =
  GetConnections'
    { connectionIds = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      deviceId = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      globalNetworkId = pGlobalNetworkId_
    }

-- | One or more connection IDs.
getConnections_connectionIds :: Lens.Lens' GetConnections (Prelude.Maybe [Prelude.Text])
getConnections_connectionIds = Lens.lens (\GetConnections' {connectionIds} -> connectionIds) (\s@GetConnections' {} a -> s {connectionIds = a} :: GetConnections) Prelude.. Lens.mapping Lens.coerced

-- | The token for the next page of results.
getConnections_nextToken :: Lens.Lens' GetConnections (Prelude.Maybe Prelude.Text)
getConnections_nextToken = Lens.lens (\GetConnections' {nextToken} -> nextToken) (\s@GetConnections' {} a -> s {nextToken = a} :: GetConnections)

-- | The ID of the device.
getConnections_deviceId :: Lens.Lens' GetConnections (Prelude.Maybe Prelude.Text)
getConnections_deviceId = Lens.lens (\GetConnections' {deviceId} -> deviceId) (\s@GetConnections' {} a -> s {deviceId = a} :: GetConnections)

-- | The maximum number of results to return.
getConnections_maxResults :: Lens.Lens' GetConnections (Prelude.Maybe Prelude.Natural)
getConnections_maxResults = Lens.lens (\GetConnections' {maxResults} -> maxResults) (\s@GetConnections' {} a -> s {maxResults = a} :: GetConnections)

-- | The ID of the global network.
getConnections_globalNetworkId :: Lens.Lens' GetConnections Prelude.Text
getConnections_globalNetworkId = Lens.lens (\GetConnections' {globalNetworkId} -> globalNetworkId) (\s@GetConnections' {} a -> s {globalNetworkId = a} :: GetConnections)

instance Core.AWSPager GetConnections where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getConnectionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getConnectionsResponse_connections
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getConnections_nextToken
          Lens..~ rs
          Lens.^? getConnectionsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest GetConnections where
  type
    AWSResponse GetConnections =
      GetConnectionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetConnectionsResponse'
            Prelude.<$> (x Core..?> "Connections" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetConnections

instance Prelude.NFData GetConnections

instance Core.ToHeaders GetConnections where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetConnections where
  toPath GetConnections' {..} =
    Prelude.mconcat
      [ "/global-networks/",
        Core.toBS globalNetworkId,
        "/connections"
      ]

instance Core.ToQuery GetConnections where
  toQuery GetConnections' {..} =
    Prelude.mconcat
      [ "connectionIds"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> connectionIds
            ),
        "nextToken" Core.=: nextToken,
        "deviceId" Core.=: deviceId,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newGetConnectionsResponse' smart constructor.
data GetConnectionsResponse = GetConnectionsResponse'
  { -- | Information about the connections.
    connections :: Prelude.Maybe [Connection],
    -- | The token to use for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetConnectionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connections', 'getConnectionsResponse_connections' - Information about the connections.
--
-- 'nextToken', 'getConnectionsResponse_nextToken' - The token to use for the next page of results.
--
-- 'httpStatus', 'getConnectionsResponse_httpStatus' - The response's http status code.
newGetConnectionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetConnectionsResponse
newGetConnectionsResponse pHttpStatus_ =
  GetConnectionsResponse'
    { connections =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the connections.
getConnectionsResponse_connections :: Lens.Lens' GetConnectionsResponse (Prelude.Maybe [Connection])
getConnectionsResponse_connections = Lens.lens (\GetConnectionsResponse' {connections} -> connections) (\s@GetConnectionsResponse' {} a -> s {connections = a} :: GetConnectionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token to use for the next page of results.
getConnectionsResponse_nextToken :: Lens.Lens' GetConnectionsResponse (Prelude.Maybe Prelude.Text)
getConnectionsResponse_nextToken = Lens.lens (\GetConnectionsResponse' {nextToken} -> nextToken) (\s@GetConnectionsResponse' {} a -> s {nextToken = a} :: GetConnectionsResponse)

-- | The response's http status code.
getConnectionsResponse_httpStatus :: Lens.Lens' GetConnectionsResponse Prelude.Int
getConnectionsResponse_httpStatus = Lens.lens (\GetConnectionsResponse' {httpStatus} -> httpStatus) (\s@GetConnectionsResponse' {} a -> s {httpStatus = a} :: GetConnectionsResponse)

instance Prelude.NFData GetConnectionsResponse
