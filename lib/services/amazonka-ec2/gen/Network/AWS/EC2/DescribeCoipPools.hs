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
-- Module      : Network.AWS.EC2.DescribeCoipPools
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified customer-owned address pools or all of your
-- customer-owned address pools.
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeCoipPools
  ( -- * Creating a Request
    DescribeCoipPools (..),
    newDescribeCoipPools,

    -- * Request Lenses
    describeCoipPools_poolIds,
    describeCoipPools_filters,
    describeCoipPools_nextToken,
    describeCoipPools_dryRun,
    describeCoipPools_maxResults,

    -- * Destructuring the Response
    DescribeCoipPoolsResponse (..),
    newDescribeCoipPoolsResponse,

    -- * Response Lenses
    describeCoipPoolsResponse_coipPools,
    describeCoipPoolsResponse_nextToken,
    describeCoipPoolsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeCoipPools' smart constructor.
data DescribeCoipPools = DescribeCoipPools'
  { -- | The IDs of the address pools.
    poolIds :: Prelude.Maybe [Prelude.Text],
    -- | The filters. The following are the possible values:
    --
    -- -   @coip-pool.pool-id@
    --
    -- -   @coip-pool.local-gateway-route-table-id@
    filters :: Prelude.Maybe [Filter],
    -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, make another call with the returned @nextToken@
    -- value.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCoipPools' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'poolIds', 'describeCoipPools_poolIds' - The IDs of the address pools.
--
-- 'filters', 'describeCoipPools_filters' - The filters. The following are the possible values:
--
-- -   @coip-pool.pool-id@
--
-- -   @coip-pool.local-gateway-route-table-id@
--
-- 'nextToken', 'describeCoipPools_nextToken' - The token for the next page of results.
--
-- 'dryRun', 'describeCoipPools_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'describeCoipPools_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
newDescribeCoipPools ::
  DescribeCoipPools
newDescribeCoipPools =
  DescribeCoipPools'
    { poolIds = Prelude.Nothing,
      filters = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The IDs of the address pools.
describeCoipPools_poolIds :: Lens.Lens' DescribeCoipPools (Prelude.Maybe [Prelude.Text])
describeCoipPools_poolIds = Lens.lens (\DescribeCoipPools' {poolIds} -> poolIds) (\s@DescribeCoipPools' {} a -> s {poolIds = a} :: DescribeCoipPools) Prelude.. Lens.mapping Lens.coerced

-- | The filters. The following are the possible values:
--
-- -   @coip-pool.pool-id@
--
-- -   @coip-pool.local-gateway-route-table-id@
describeCoipPools_filters :: Lens.Lens' DescribeCoipPools (Prelude.Maybe [Filter])
describeCoipPools_filters = Lens.lens (\DescribeCoipPools' {filters} -> filters) (\s@DescribeCoipPools' {} a -> s {filters = a} :: DescribeCoipPools) Prelude.. Lens.mapping Lens.coerced

-- | The token for the next page of results.
describeCoipPools_nextToken :: Lens.Lens' DescribeCoipPools (Prelude.Maybe Prelude.Text)
describeCoipPools_nextToken = Lens.lens (\DescribeCoipPools' {nextToken} -> nextToken) (\s@DescribeCoipPools' {} a -> s {nextToken = a} :: DescribeCoipPools)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
describeCoipPools_dryRun :: Lens.Lens' DescribeCoipPools (Prelude.Maybe Prelude.Bool)
describeCoipPools_dryRun = Lens.lens (\DescribeCoipPools' {dryRun} -> dryRun) (\s@DescribeCoipPools' {} a -> s {dryRun = a} :: DescribeCoipPools)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
describeCoipPools_maxResults :: Lens.Lens' DescribeCoipPools (Prelude.Maybe Prelude.Natural)
describeCoipPools_maxResults = Lens.lens (\DescribeCoipPools' {maxResults} -> maxResults) (\s@DescribeCoipPools' {} a -> s {maxResults = a} :: DescribeCoipPools)

instance Core.AWSPager DescribeCoipPools where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeCoipPoolsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeCoipPoolsResponse_coipPools
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeCoipPools_nextToken
          Lens..~ rs
          Lens.^? describeCoipPoolsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeCoipPools where
  type
    AWSResponse DescribeCoipPools =
      DescribeCoipPoolsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeCoipPoolsResponse'
            Prelude.<$> ( x Core..@? "coipPoolSet" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (x Core..@? "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeCoipPools

instance Prelude.NFData DescribeCoipPools

instance Core.ToHeaders DescribeCoipPools where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeCoipPools where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeCoipPools where
  toQuery DescribeCoipPools' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeCoipPools" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        Core.toQuery
          (Core.toQueryList "PoolId" Prelude.<$> poolIds),
        Core.toQuery
          (Core.toQueryList "Filter" Prelude.<$> filters),
        "NextToken" Core.=: nextToken,
        "DryRun" Core.=: dryRun,
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newDescribeCoipPoolsResponse' smart constructor.
data DescribeCoipPoolsResponse = DescribeCoipPoolsResponse'
  { -- | Information about the address pools.
    coipPools :: Prelude.Maybe [CoipPool],
    -- | The token to use to retrieve the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCoipPoolsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'coipPools', 'describeCoipPoolsResponse_coipPools' - Information about the address pools.
--
-- 'nextToken', 'describeCoipPoolsResponse_nextToken' - The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'httpStatus', 'describeCoipPoolsResponse_httpStatus' - The response's http status code.
newDescribeCoipPoolsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeCoipPoolsResponse
newDescribeCoipPoolsResponse pHttpStatus_ =
  DescribeCoipPoolsResponse'
    { coipPools =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the address pools.
describeCoipPoolsResponse_coipPools :: Lens.Lens' DescribeCoipPoolsResponse (Prelude.Maybe [CoipPool])
describeCoipPoolsResponse_coipPools = Lens.lens (\DescribeCoipPoolsResponse' {coipPools} -> coipPools) (\s@DescribeCoipPoolsResponse' {} a -> s {coipPools = a} :: DescribeCoipPoolsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
describeCoipPoolsResponse_nextToken :: Lens.Lens' DescribeCoipPoolsResponse (Prelude.Maybe Prelude.Text)
describeCoipPoolsResponse_nextToken = Lens.lens (\DescribeCoipPoolsResponse' {nextToken} -> nextToken) (\s@DescribeCoipPoolsResponse' {} a -> s {nextToken = a} :: DescribeCoipPoolsResponse)

-- | The response's http status code.
describeCoipPoolsResponse_httpStatus :: Lens.Lens' DescribeCoipPoolsResponse Prelude.Int
describeCoipPoolsResponse_httpStatus = Lens.lens (\DescribeCoipPoolsResponse' {httpStatus} -> httpStatus) (\s@DescribeCoipPoolsResponse' {} a -> s {httpStatus = a} :: DescribeCoipPoolsResponse)

instance Prelude.NFData DescribeCoipPoolsResponse
