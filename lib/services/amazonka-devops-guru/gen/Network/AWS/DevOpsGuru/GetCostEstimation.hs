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
-- Module      : Network.AWS.DevOpsGuru.GetCostEstimation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an estimate of the monthly cost for DevOps Guru to analyze your
-- AWS resources. For more information, see
-- <https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html Estimate your Amazon DevOps Guru costs>
-- and
-- <http://aws.amazon.com/devops-guru/pricing/ Amazon DevOps Guru pricing>.
--
-- This operation returns paginated results.
module Network.AWS.DevOpsGuru.GetCostEstimation
  ( -- * Creating a Request
    GetCostEstimation (..),
    newGetCostEstimation,

    -- * Request Lenses
    getCostEstimation_nextToken,

    -- * Destructuring the Response
    GetCostEstimationResponse (..),
    newGetCostEstimationResponse,

    -- * Response Lenses
    getCostEstimationResponse_status,
    getCostEstimationResponse_resourceCollection,
    getCostEstimationResponse_timeRange,
    getCostEstimationResponse_costs,
    getCostEstimationResponse_nextToken,
    getCostEstimationResponse_totalCost,
    getCostEstimationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DevOpsGuru.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetCostEstimation' smart constructor.
data GetCostEstimation = GetCostEstimation'
  { -- | The pagination token to use to retrieve the next page of results for
    -- this operation. If this value is null, it retrieves the first page.
    nextToken :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetCostEstimation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getCostEstimation_nextToken' - The pagination token to use to retrieve the next page of results for
-- this operation. If this value is null, it retrieves the first page.
newGetCostEstimation ::
  GetCostEstimation
newGetCostEstimation =
  GetCostEstimation' {nextToken = Prelude.Nothing}

-- | The pagination token to use to retrieve the next page of results for
-- this operation. If this value is null, it retrieves the first page.
getCostEstimation_nextToken :: Lens.Lens' GetCostEstimation (Prelude.Maybe Prelude.Text)
getCostEstimation_nextToken = Lens.lens (\GetCostEstimation' {nextToken} -> nextToken) (\s@GetCostEstimation' {} a -> s {nextToken = a} :: GetCostEstimation)

instance Core.AWSPager GetCostEstimation where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getCostEstimationResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getCostEstimationResponse_costs Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getCostEstimation_nextToken
          Lens..~ rs
          Lens.^? getCostEstimationResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest GetCostEstimation where
  type
    AWSResponse GetCostEstimation =
      GetCostEstimationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetCostEstimationResponse'
            Prelude.<$> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "ResourceCollection")
            Prelude.<*> (x Core..?> "TimeRange")
            Prelude.<*> (x Core..?> "Costs" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "TotalCost")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetCostEstimation

instance Prelude.NFData GetCostEstimation

instance Core.ToHeaders GetCostEstimation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetCostEstimation where
  toPath = Prelude.const "/cost-estimation"

instance Core.ToQuery GetCostEstimation where
  toQuery GetCostEstimation' {..} =
    Prelude.mconcat ["NextToken" Core.=: nextToken]

-- | /See:/ 'newGetCostEstimationResponse' smart constructor.
data GetCostEstimationResponse = GetCostEstimationResponse'
  { -- | The status of creating this cost estimate. If it\'s still in progress,
    -- the status @ONGOING@ is returned. If it is finished, the status
    -- @COMPLETED@ is returned.
    status :: Prelude.Maybe CostEstimationStatus,
    -- | The collection of the AWS resources used to create your monthly DevOps
    -- Guru cost estimate.
    resourceCollection :: Prelude.Maybe CostEstimationResourceCollectionFilter,
    -- | The start and end time of the cost estimation.
    timeRange :: Prelude.Maybe CostEstimationTimeRange,
    -- | An array of @ResourceCost@ objects that each contains details about the
    -- monthly cost estimate to analyze one of your AWS resources.
    costs :: Prelude.Maybe [ServiceResourceCost],
    -- | The pagination token to use to retrieve the next page of results for
    -- this operation. If there are no more pages, this value is null.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The estimated monthly cost to analyze the AWS resources. This value is
    -- the sum of the estimated costs to analyze each resource in the @Costs@
    -- object in this response.
    totalCost :: Prelude.Maybe Prelude.Double,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetCostEstimationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'getCostEstimationResponse_status' - The status of creating this cost estimate. If it\'s still in progress,
-- the status @ONGOING@ is returned. If it is finished, the status
-- @COMPLETED@ is returned.
--
-- 'resourceCollection', 'getCostEstimationResponse_resourceCollection' - The collection of the AWS resources used to create your monthly DevOps
-- Guru cost estimate.
--
-- 'timeRange', 'getCostEstimationResponse_timeRange' - The start and end time of the cost estimation.
--
-- 'costs', 'getCostEstimationResponse_costs' - An array of @ResourceCost@ objects that each contains details about the
-- monthly cost estimate to analyze one of your AWS resources.
--
-- 'nextToken', 'getCostEstimationResponse_nextToken' - The pagination token to use to retrieve the next page of results for
-- this operation. If there are no more pages, this value is null.
--
-- 'totalCost', 'getCostEstimationResponse_totalCost' - The estimated monthly cost to analyze the AWS resources. This value is
-- the sum of the estimated costs to analyze each resource in the @Costs@
-- object in this response.
--
-- 'httpStatus', 'getCostEstimationResponse_httpStatus' - The response's http status code.
newGetCostEstimationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetCostEstimationResponse
newGetCostEstimationResponse pHttpStatus_ =
  GetCostEstimationResponse'
    { status =
        Prelude.Nothing,
      resourceCollection = Prelude.Nothing,
      timeRange = Prelude.Nothing,
      costs = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      totalCost = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The status of creating this cost estimate. If it\'s still in progress,
-- the status @ONGOING@ is returned. If it is finished, the status
-- @COMPLETED@ is returned.
getCostEstimationResponse_status :: Lens.Lens' GetCostEstimationResponse (Prelude.Maybe CostEstimationStatus)
getCostEstimationResponse_status = Lens.lens (\GetCostEstimationResponse' {status} -> status) (\s@GetCostEstimationResponse' {} a -> s {status = a} :: GetCostEstimationResponse)

-- | The collection of the AWS resources used to create your monthly DevOps
-- Guru cost estimate.
getCostEstimationResponse_resourceCollection :: Lens.Lens' GetCostEstimationResponse (Prelude.Maybe CostEstimationResourceCollectionFilter)
getCostEstimationResponse_resourceCollection = Lens.lens (\GetCostEstimationResponse' {resourceCollection} -> resourceCollection) (\s@GetCostEstimationResponse' {} a -> s {resourceCollection = a} :: GetCostEstimationResponse)

-- | The start and end time of the cost estimation.
getCostEstimationResponse_timeRange :: Lens.Lens' GetCostEstimationResponse (Prelude.Maybe CostEstimationTimeRange)
getCostEstimationResponse_timeRange = Lens.lens (\GetCostEstimationResponse' {timeRange} -> timeRange) (\s@GetCostEstimationResponse' {} a -> s {timeRange = a} :: GetCostEstimationResponse)

-- | An array of @ResourceCost@ objects that each contains details about the
-- monthly cost estimate to analyze one of your AWS resources.
getCostEstimationResponse_costs :: Lens.Lens' GetCostEstimationResponse (Prelude.Maybe [ServiceResourceCost])
getCostEstimationResponse_costs = Lens.lens (\GetCostEstimationResponse' {costs} -> costs) (\s@GetCostEstimationResponse' {} a -> s {costs = a} :: GetCostEstimationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The pagination token to use to retrieve the next page of results for
-- this operation. If there are no more pages, this value is null.
getCostEstimationResponse_nextToken :: Lens.Lens' GetCostEstimationResponse (Prelude.Maybe Prelude.Text)
getCostEstimationResponse_nextToken = Lens.lens (\GetCostEstimationResponse' {nextToken} -> nextToken) (\s@GetCostEstimationResponse' {} a -> s {nextToken = a} :: GetCostEstimationResponse)

-- | The estimated monthly cost to analyze the AWS resources. This value is
-- the sum of the estimated costs to analyze each resource in the @Costs@
-- object in this response.
getCostEstimationResponse_totalCost :: Lens.Lens' GetCostEstimationResponse (Prelude.Maybe Prelude.Double)
getCostEstimationResponse_totalCost = Lens.lens (\GetCostEstimationResponse' {totalCost} -> totalCost) (\s@GetCostEstimationResponse' {} a -> s {totalCost = a} :: GetCostEstimationResponse)

-- | The response's http status code.
getCostEstimationResponse_httpStatus :: Lens.Lens' GetCostEstimationResponse Prelude.Int
getCostEstimationResponse_httpStatus = Lens.lens (\GetCostEstimationResponse' {httpStatus} -> httpStatus) (\s@GetCostEstimationResponse' {} a -> s {httpStatus = a} :: GetCostEstimationResponse)

instance Prelude.NFData GetCostEstimationResponse
