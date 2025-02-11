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
-- Module      : Network.AWS.AutoScaling.DescribeLoadBalancers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the load balancers for the specified Auto Scaling
-- group.
--
-- This operation describes only Classic Load Balancers. If you have
-- Application Load Balancers, Network Load Balancers, or Gateway Load
-- Balancers, use the DescribeLoadBalancerTargetGroups API instead.
--
-- To determine the availability of registered instances, use the @State@
-- element in the response. When you attach a load balancer to an Auto
-- Scaling group, the initial @State@ value is @Adding@. The state
-- transitions to @Added@ after all Auto Scaling instances are registered
-- with the load balancer. If Elastic Load Balancing health checks are
-- enabled for the Auto Scaling group, the state transitions to @InService@
-- after at least one Auto Scaling instance passes the health check. When
-- the load balancer is in the @InService@ state, Amazon EC2 Auto Scaling
-- can terminate and replace any instances that are reported as unhealthy.
-- If no registered instances pass the health checks, the load balancer
-- doesn\'t enter the @InService@ state.
--
-- Load balancers also have an @InService@ state if you attach them in the
-- CreateAutoScalingGroup API call. If your load balancer state is
-- @InService@, but it is not working properly, check the scaling
-- activities by calling DescribeScalingActivities and take any corrective
-- actions necessary.
--
-- For help with failed health checks, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/ts-as-healthchecks.html Troubleshooting Amazon EC2 Auto Scaling: Health checks>
-- in the /Amazon EC2 Auto Scaling User Guide/. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html Elastic Load Balancing and Amazon EC2 Auto Scaling>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- This operation returns paginated results.
module Network.AWS.AutoScaling.DescribeLoadBalancers
  ( -- * Creating a Request
    DescribeLoadBalancers (..),
    newDescribeLoadBalancers,

    -- * Request Lenses
    describeLoadBalancers_nextToken,
    describeLoadBalancers_maxRecords,
    describeLoadBalancers_autoScalingGroupName,

    -- * Destructuring the Response
    DescribeLoadBalancersResponse (..),
    newDescribeLoadBalancersResponse,

    -- * Response Lenses
    describeLoadBalancersResponse_loadBalancers,
    describeLoadBalancersResponse_nextToken,
    describeLoadBalancersResponse_httpStatus,
  )
where

import Network.AWS.AutoScaling.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeLoadBalancers' smart constructor.
data DescribeLoadBalancers = DescribeLoadBalancers'
  { -- | The token for the next set of items to return. (You received this token
    -- from a previous call.)
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to return with this call. The default value
    -- is @100@ and the maximum value is @100@.
    maxRecords :: Prelude.Maybe Prelude.Int,
    -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLoadBalancers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeLoadBalancers_nextToken' - The token for the next set of items to return. (You received this token
-- from a previous call.)
--
-- 'maxRecords', 'describeLoadBalancers_maxRecords' - The maximum number of items to return with this call. The default value
-- is @100@ and the maximum value is @100@.
--
-- 'autoScalingGroupName', 'describeLoadBalancers_autoScalingGroupName' - The name of the Auto Scaling group.
newDescribeLoadBalancers ::
  -- | 'autoScalingGroupName'
  Prelude.Text ->
  DescribeLoadBalancers
newDescribeLoadBalancers pAutoScalingGroupName_ =
  DescribeLoadBalancers'
    { nextToken = Prelude.Nothing,
      maxRecords = Prelude.Nothing,
      autoScalingGroupName = pAutoScalingGroupName_
    }

-- | The token for the next set of items to return. (You received this token
-- from a previous call.)
describeLoadBalancers_nextToken :: Lens.Lens' DescribeLoadBalancers (Prelude.Maybe Prelude.Text)
describeLoadBalancers_nextToken = Lens.lens (\DescribeLoadBalancers' {nextToken} -> nextToken) (\s@DescribeLoadBalancers' {} a -> s {nextToken = a} :: DescribeLoadBalancers)

-- | The maximum number of items to return with this call. The default value
-- is @100@ and the maximum value is @100@.
describeLoadBalancers_maxRecords :: Lens.Lens' DescribeLoadBalancers (Prelude.Maybe Prelude.Int)
describeLoadBalancers_maxRecords = Lens.lens (\DescribeLoadBalancers' {maxRecords} -> maxRecords) (\s@DescribeLoadBalancers' {} a -> s {maxRecords = a} :: DescribeLoadBalancers)

-- | The name of the Auto Scaling group.
describeLoadBalancers_autoScalingGroupName :: Lens.Lens' DescribeLoadBalancers Prelude.Text
describeLoadBalancers_autoScalingGroupName = Lens.lens (\DescribeLoadBalancers' {autoScalingGroupName} -> autoScalingGroupName) (\s@DescribeLoadBalancers' {} a -> s {autoScalingGroupName = a} :: DescribeLoadBalancers)

instance Core.AWSPager DescribeLoadBalancers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeLoadBalancersResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeLoadBalancersResponse_loadBalancers
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeLoadBalancers_nextToken
          Lens..~ rs
          Lens.^? describeLoadBalancersResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeLoadBalancers where
  type
    AWSResponse DescribeLoadBalancers =
      DescribeLoadBalancersResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeLoadBalancersResult"
      ( \s h x ->
          DescribeLoadBalancersResponse'
            Prelude.<$> ( x Core..@? "LoadBalancers" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (x Core..@? "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeLoadBalancers

instance Prelude.NFData DescribeLoadBalancers

instance Core.ToHeaders DescribeLoadBalancers where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeLoadBalancers where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeLoadBalancers where
  toQuery DescribeLoadBalancers' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeLoadBalancers" :: Prelude.ByteString),
        "Version"
          Core.=: ("2011-01-01" :: Prelude.ByteString),
        "NextToken" Core.=: nextToken,
        "MaxRecords" Core.=: maxRecords,
        "AutoScalingGroupName" Core.=: autoScalingGroupName
      ]

-- | /See:/ 'newDescribeLoadBalancersResponse' smart constructor.
data DescribeLoadBalancersResponse = DescribeLoadBalancersResponse'
  { -- | The load balancers.
    loadBalancers :: Prelude.Maybe [LoadBalancerState],
    -- | A string that indicates that the response contains more items than can
    -- be returned in a single response. To receive additional items, specify
    -- this string for the @NextToken@ value when requesting the next set of
    -- items. This value is null when there are no more items to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLoadBalancersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'loadBalancers', 'describeLoadBalancersResponse_loadBalancers' - The load balancers.
--
-- 'nextToken', 'describeLoadBalancersResponse_nextToken' - A string that indicates that the response contains more items than can
-- be returned in a single response. To receive additional items, specify
-- this string for the @NextToken@ value when requesting the next set of
-- items. This value is null when there are no more items to return.
--
-- 'httpStatus', 'describeLoadBalancersResponse_httpStatus' - The response's http status code.
newDescribeLoadBalancersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeLoadBalancersResponse
newDescribeLoadBalancersResponse pHttpStatus_ =
  DescribeLoadBalancersResponse'
    { loadBalancers =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The load balancers.
describeLoadBalancersResponse_loadBalancers :: Lens.Lens' DescribeLoadBalancersResponse (Prelude.Maybe [LoadBalancerState])
describeLoadBalancersResponse_loadBalancers = Lens.lens (\DescribeLoadBalancersResponse' {loadBalancers} -> loadBalancers) (\s@DescribeLoadBalancersResponse' {} a -> s {loadBalancers = a} :: DescribeLoadBalancersResponse) Prelude.. Lens.mapping Lens.coerced

-- | A string that indicates that the response contains more items than can
-- be returned in a single response. To receive additional items, specify
-- this string for the @NextToken@ value when requesting the next set of
-- items. This value is null when there are no more items to return.
describeLoadBalancersResponse_nextToken :: Lens.Lens' DescribeLoadBalancersResponse (Prelude.Maybe Prelude.Text)
describeLoadBalancersResponse_nextToken = Lens.lens (\DescribeLoadBalancersResponse' {nextToken} -> nextToken) (\s@DescribeLoadBalancersResponse' {} a -> s {nextToken = a} :: DescribeLoadBalancersResponse)

-- | The response's http status code.
describeLoadBalancersResponse_httpStatus :: Lens.Lens' DescribeLoadBalancersResponse Prelude.Int
describeLoadBalancersResponse_httpStatus = Lens.lens (\DescribeLoadBalancersResponse' {httpStatus} -> httpStatus) (\s@DescribeLoadBalancersResponse' {} a -> s {httpStatus = a} :: DescribeLoadBalancersResponse)

instance Prelude.NFData DescribeLoadBalancersResponse
