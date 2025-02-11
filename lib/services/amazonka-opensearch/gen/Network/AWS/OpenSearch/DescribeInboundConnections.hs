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
-- Module      : Network.AWS.OpenSearch.DescribeInboundConnections
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the inbound cross-cluster connections for a remote domain.
module Network.AWS.OpenSearch.DescribeInboundConnections
  ( -- * Creating a Request
    DescribeInboundConnections (..),
    newDescribeInboundConnections,

    -- * Request Lenses
    describeInboundConnections_filters,
    describeInboundConnections_nextToken,
    describeInboundConnections_maxResults,

    -- * Destructuring the Response
    DescribeInboundConnectionsResponse (..),
    newDescribeInboundConnectionsResponse,

    -- * Response Lenses
    describeInboundConnectionsResponse_connections,
    describeInboundConnectionsResponse_nextToken,
    describeInboundConnectionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpenSearch.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the @ DescribeInboundConnections @
-- operation.
--
-- /See:/ 'newDescribeInboundConnections' smart constructor.
data DescribeInboundConnections = DescribeInboundConnections'
  { -- | A list of filters used to match properties for inbound cross-cluster
    -- connections. Available @ Filter @ values are:
    --
    -- -   connection-id
    -- -   local-domain-info.domain-name
    -- -   local-domain-info.owner-id
    -- -   local-domain-info.region
    -- -   remote-domain-info.domain-name
    filters :: Prelude.Maybe [Filter],
    -- | If more results are available and NextToken is present, make the next
    -- request to the same API with the received NextToken to paginate the
    -- remaining results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Set this value to limit the number of results returned. If not
    -- specified, defaults to 100.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeInboundConnections' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'describeInboundConnections_filters' - A list of filters used to match properties for inbound cross-cluster
-- connections. Available @ Filter @ values are:
--
-- -   connection-id
-- -   local-domain-info.domain-name
-- -   local-domain-info.owner-id
-- -   local-domain-info.region
-- -   remote-domain-info.domain-name
--
-- 'nextToken', 'describeInboundConnections_nextToken' - If more results are available and NextToken is present, make the next
-- request to the same API with the received NextToken to paginate the
-- remaining results.
--
-- 'maxResults', 'describeInboundConnections_maxResults' - Set this value to limit the number of results returned. If not
-- specified, defaults to 100.
newDescribeInboundConnections ::
  DescribeInboundConnections
newDescribeInboundConnections =
  DescribeInboundConnections'
    { filters =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | A list of filters used to match properties for inbound cross-cluster
-- connections. Available @ Filter @ values are:
--
-- -   connection-id
-- -   local-domain-info.domain-name
-- -   local-domain-info.owner-id
-- -   local-domain-info.region
-- -   remote-domain-info.domain-name
describeInboundConnections_filters :: Lens.Lens' DescribeInboundConnections (Prelude.Maybe [Filter])
describeInboundConnections_filters = Lens.lens (\DescribeInboundConnections' {filters} -> filters) (\s@DescribeInboundConnections' {} a -> s {filters = a} :: DescribeInboundConnections) Prelude.. Lens.mapping Lens.coerced

-- | If more results are available and NextToken is present, make the next
-- request to the same API with the received NextToken to paginate the
-- remaining results.
describeInboundConnections_nextToken :: Lens.Lens' DescribeInboundConnections (Prelude.Maybe Prelude.Text)
describeInboundConnections_nextToken = Lens.lens (\DescribeInboundConnections' {nextToken} -> nextToken) (\s@DescribeInboundConnections' {} a -> s {nextToken = a} :: DescribeInboundConnections)

-- | Set this value to limit the number of results returned. If not
-- specified, defaults to 100.
describeInboundConnections_maxResults :: Lens.Lens' DescribeInboundConnections (Prelude.Maybe Prelude.Int)
describeInboundConnections_maxResults = Lens.lens (\DescribeInboundConnections' {maxResults} -> maxResults) (\s@DescribeInboundConnections' {} a -> s {maxResults = a} :: DescribeInboundConnections)

instance Core.AWSRequest DescribeInboundConnections where
  type
    AWSResponse DescribeInboundConnections =
      DescribeInboundConnectionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeInboundConnectionsResponse'
            Prelude.<$> (x Core..?> "Connections" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeInboundConnections

instance Prelude.NFData DescribeInboundConnections

instance Core.ToHeaders DescribeInboundConnections where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON DescribeInboundConnections where
  toJSON DescribeInboundConnections' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Filters" Core..=) Prelude.<$> filters,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath DescribeInboundConnections where
  toPath =
    Prelude.const
      "/2021-01-01/opensearch/cc/inboundConnection/search"

instance Core.ToQuery DescribeInboundConnections where
  toQuery = Prelude.const Prelude.mempty

-- | The result of a @ DescribeInboundConnections @ request. Contains a list
-- of connections matching the filter criteria.
--
-- /See:/ 'newDescribeInboundConnectionsResponse' smart constructor.
data DescribeInboundConnectionsResponse = DescribeInboundConnectionsResponse'
  { -- | A list of @ InboundConnection @ matching the specified filter criteria.
    connections :: Prelude.Maybe [InboundConnection],
    -- | If more results are available and NextToken is present, make the next
    -- request to the same API with the received NextToken to paginate the
    -- remaining results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeInboundConnectionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connections', 'describeInboundConnectionsResponse_connections' - A list of @ InboundConnection @ matching the specified filter criteria.
--
-- 'nextToken', 'describeInboundConnectionsResponse_nextToken' - If more results are available and NextToken is present, make the next
-- request to the same API with the received NextToken to paginate the
-- remaining results.
--
-- 'httpStatus', 'describeInboundConnectionsResponse_httpStatus' - The response's http status code.
newDescribeInboundConnectionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeInboundConnectionsResponse
newDescribeInboundConnectionsResponse pHttpStatus_ =
  DescribeInboundConnectionsResponse'
    { connections =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of @ InboundConnection @ matching the specified filter criteria.
describeInboundConnectionsResponse_connections :: Lens.Lens' DescribeInboundConnectionsResponse (Prelude.Maybe [InboundConnection])
describeInboundConnectionsResponse_connections = Lens.lens (\DescribeInboundConnectionsResponse' {connections} -> connections) (\s@DescribeInboundConnectionsResponse' {} a -> s {connections = a} :: DescribeInboundConnectionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | If more results are available and NextToken is present, make the next
-- request to the same API with the received NextToken to paginate the
-- remaining results.
describeInboundConnectionsResponse_nextToken :: Lens.Lens' DescribeInboundConnectionsResponse (Prelude.Maybe Prelude.Text)
describeInboundConnectionsResponse_nextToken = Lens.lens (\DescribeInboundConnectionsResponse' {nextToken} -> nextToken) (\s@DescribeInboundConnectionsResponse' {} a -> s {nextToken = a} :: DescribeInboundConnectionsResponse)

-- | The response's http status code.
describeInboundConnectionsResponse_httpStatus :: Lens.Lens' DescribeInboundConnectionsResponse Prelude.Int
describeInboundConnectionsResponse_httpStatus = Lens.lens (\DescribeInboundConnectionsResponse' {httpStatus} -> httpStatus) (\s@DescribeInboundConnectionsResponse' {} a -> s {httpStatus = a} :: DescribeInboundConnectionsResponse)

instance
  Prelude.NFData
    DescribeInboundConnectionsResponse
