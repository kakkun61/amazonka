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
-- Module      : Network.AWS.ELBV2.DescribeAccountLimits
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the current Elastic Load Balancing resource limits for your
-- Amazon Web Services account.
--
-- For more information, see the following:
--
-- -   <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html Quotas for your Application Load Balancers>
--
-- -   <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html Quotas for your Network Load Balancers>
--
-- -   <https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/quotas-limits.html Quotas for your Gateway Load Balancers>
--
-- This operation returns paginated results.
module Network.AWS.ELBV2.DescribeAccountLimits
  ( -- * Creating a Request
    DescribeAccountLimits (..),
    newDescribeAccountLimits,

    -- * Request Lenses
    describeAccountLimits_marker,
    describeAccountLimits_pageSize,

    -- * Destructuring the Response
    DescribeAccountLimitsResponse (..),
    newDescribeAccountLimitsResponse,

    -- * Response Lenses
    describeAccountLimitsResponse_limits,
    describeAccountLimitsResponse_nextMarker,
    describeAccountLimitsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ELBV2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeAccountLimits' smart constructor.
data DescribeAccountLimits = DescribeAccountLimits'
  { -- | The marker for the next set of results. (You received this marker from a
    -- previous call.)
    marker :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return with this call.
    pageSize :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAccountLimits' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeAccountLimits_marker' - The marker for the next set of results. (You received this marker from a
-- previous call.)
--
-- 'pageSize', 'describeAccountLimits_pageSize' - The maximum number of results to return with this call.
newDescribeAccountLimits ::
  DescribeAccountLimits
newDescribeAccountLimits =
  DescribeAccountLimits'
    { marker = Prelude.Nothing,
      pageSize = Prelude.Nothing
    }

-- | The marker for the next set of results. (You received this marker from a
-- previous call.)
describeAccountLimits_marker :: Lens.Lens' DescribeAccountLimits (Prelude.Maybe Prelude.Text)
describeAccountLimits_marker = Lens.lens (\DescribeAccountLimits' {marker} -> marker) (\s@DescribeAccountLimits' {} a -> s {marker = a} :: DescribeAccountLimits)

-- | The maximum number of results to return with this call.
describeAccountLimits_pageSize :: Lens.Lens' DescribeAccountLimits (Prelude.Maybe Prelude.Natural)
describeAccountLimits_pageSize = Lens.lens (\DescribeAccountLimits' {pageSize} -> pageSize) (\s@DescribeAccountLimits' {} a -> s {pageSize = a} :: DescribeAccountLimits)

instance Core.AWSPager DescribeAccountLimits where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeAccountLimitsResponse_nextMarker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeAccountLimitsResponse_limits
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeAccountLimits_marker
          Lens..~ rs
          Lens.^? describeAccountLimitsResponse_nextMarker
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeAccountLimits where
  type
    AWSResponse DescribeAccountLimits =
      DescribeAccountLimitsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeAccountLimitsResult"
      ( \s h x ->
          DescribeAccountLimitsResponse'
            Prelude.<$> ( x Core..@? "Limits" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (x Core..@? "NextMarker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeAccountLimits

instance Prelude.NFData DescribeAccountLimits

instance Core.ToHeaders DescribeAccountLimits where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeAccountLimits where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeAccountLimits where
  toQuery DescribeAccountLimits' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeAccountLimits" :: Prelude.ByteString),
        "Version"
          Core.=: ("2015-12-01" :: Prelude.ByteString),
        "Marker" Core.=: marker,
        "PageSize" Core.=: pageSize
      ]

-- | /See:/ 'newDescribeAccountLimitsResponse' smart constructor.
data DescribeAccountLimitsResponse = DescribeAccountLimitsResponse'
  { -- | Information about the limits.
    limits :: Prelude.Maybe [Limit],
    -- | If there are additional results, this is the marker for the next set of
    -- results. Otherwise, this is null.
    nextMarker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAccountLimitsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'limits', 'describeAccountLimitsResponse_limits' - Information about the limits.
--
-- 'nextMarker', 'describeAccountLimitsResponse_nextMarker' - If there are additional results, this is the marker for the next set of
-- results. Otherwise, this is null.
--
-- 'httpStatus', 'describeAccountLimitsResponse_httpStatus' - The response's http status code.
newDescribeAccountLimitsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAccountLimitsResponse
newDescribeAccountLimitsResponse pHttpStatus_ =
  DescribeAccountLimitsResponse'
    { limits =
        Prelude.Nothing,
      nextMarker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the limits.
describeAccountLimitsResponse_limits :: Lens.Lens' DescribeAccountLimitsResponse (Prelude.Maybe [Limit])
describeAccountLimitsResponse_limits = Lens.lens (\DescribeAccountLimitsResponse' {limits} -> limits) (\s@DescribeAccountLimitsResponse' {} a -> s {limits = a} :: DescribeAccountLimitsResponse) Prelude.. Lens.mapping Lens.coerced

-- | If there are additional results, this is the marker for the next set of
-- results. Otherwise, this is null.
describeAccountLimitsResponse_nextMarker :: Lens.Lens' DescribeAccountLimitsResponse (Prelude.Maybe Prelude.Text)
describeAccountLimitsResponse_nextMarker = Lens.lens (\DescribeAccountLimitsResponse' {nextMarker} -> nextMarker) (\s@DescribeAccountLimitsResponse' {} a -> s {nextMarker = a} :: DescribeAccountLimitsResponse)

-- | The response's http status code.
describeAccountLimitsResponse_httpStatus :: Lens.Lens' DescribeAccountLimitsResponse Prelude.Int
describeAccountLimitsResponse_httpStatus = Lens.lens (\DescribeAccountLimitsResponse' {httpStatus} -> httpStatus) (\s@DescribeAccountLimitsResponse' {} a -> s {httpStatus = a} :: DescribeAccountLimitsResponse)

instance Prelude.NFData DescribeAccountLimitsResponse
