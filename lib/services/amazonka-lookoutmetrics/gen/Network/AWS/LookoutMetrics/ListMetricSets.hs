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
-- Module      : Network.AWS.LookoutMetrics.ListMetricSets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the datasets in the current AWS Region.
--
-- Amazon Lookout for Metrics API actions are eventually consistent. If you
-- do a read operation on a resource immediately after creating or
-- modifying it, use retries to allow time for the write operation to
-- complete.
module Network.AWS.LookoutMetrics.ListMetricSets
  ( -- * Creating a Request
    ListMetricSets (..),
    newListMetricSets,

    -- * Request Lenses
    listMetricSets_anomalyDetectorArn,
    listMetricSets_nextToken,
    listMetricSets_maxResults,

    -- * Destructuring the Response
    ListMetricSetsResponse (..),
    newListMetricSetsResponse,

    -- * Response Lenses
    listMetricSetsResponse_nextToken,
    listMetricSetsResponse_metricSetSummaryList,
    listMetricSetsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutMetrics.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListMetricSets' smart constructor.
data ListMetricSets = ListMetricSets'
  { -- | The ARN of the anomaly detector containing the metrics sets to list.
    anomalyDetectorArn :: Prelude.Maybe Prelude.Text,
    -- | If the result of the previous request was truncated, the response
    -- includes a @NextToken@. To retrieve the next set of results, use the
    -- token in the next request. Tokens expire after 24 hours.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListMetricSets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'anomalyDetectorArn', 'listMetricSets_anomalyDetectorArn' - The ARN of the anomaly detector containing the metrics sets to list.
--
-- 'nextToken', 'listMetricSets_nextToken' - If the result of the previous request was truncated, the response
-- includes a @NextToken@. To retrieve the next set of results, use the
-- token in the next request. Tokens expire after 24 hours.
--
-- 'maxResults', 'listMetricSets_maxResults' - The maximum number of results to return.
newListMetricSets ::
  ListMetricSets
newListMetricSets =
  ListMetricSets'
    { anomalyDetectorArn =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The ARN of the anomaly detector containing the metrics sets to list.
listMetricSets_anomalyDetectorArn :: Lens.Lens' ListMetricSets (Prelude.Maybe Prelude.Text)
listMetricSets_anomalyDetectorArn = Lens.lens (\ListMetricSets' {anomalyDetectorArn} -> anomalyDetectorArn) (\s@ListMetricSets' {} a -> s {anomalyDetectorArn = a} :: ListMetricSets)

-- | If the result of the previous request was truncated, the response
-- includes a @NextToken@. To retrieve the next set of results, use the
-- token in the next request. Tokens expire after 24 hours.
listMetricSets_nextToken :: Lens.Lens' ListMetricSets (Prelude.Maybe Prelude.Text)
listMetricSets_nextToken = Lens.lens (\ListMetricSets' {nextToken} -> nextToken) (\s@ListMetricSets' {} a -> s {nextToken = a} :: ListMetricSets)

-- | The maximum number of results to return.
listMetricSets_maxResults :: Lens.Lens' ListMetricSets (Prelude.Maybe Prelude.Natural)
listMetricSets_maxResults = Lens.lens (\ListMetricSets' {maxResults} -> maxResults) (\s@ListMetricSets' {} a -> s {maxResults = a} :: ListMetricSets)

instance Core.AWSRequest ListMetricSets where
  type
    AWSResponse ListMetricSets =
      ListMetricSetsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListMetricSetsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "MetricSetSummaryList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListMetricSets

instance Prelude.NFData ListMetricSets

instance Core.ToHeaders ListMetricSets where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListMetricSets where
  toJSON ListMetricSets' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AnomalyDetectorArn" Core..=)
              Prelude.<$> anomalyDetectorArn,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListMetricSets where
  toPath = Prelude.const "/ListMetricSets"

instance Core.ToQuery ListMetricSets where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListMetricSetsResponse' smart constructor.
data ListMetricSetsResponse = ListMetricSetsResponse'
  { -- | If the response is truncated, the list call returns this token. To
    -- retrieve the next set of results, use the token in the next list
    -- request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of the datasets in the AWS Region, with configuration details for
    -- each.
    metricSetSummaryList :: Prelude.Maybe [MetricSetSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListMetricSetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listMetricSetsResponse_nextToken' - If the response is truncated, the list call returns this token. To
-- retrieve the next set of results, use the token in the next list
-- request.
--
-- 'metricSetSummaryList', 'listMetricSetsResponse_metricSetSummaryList' - A list of the datasets in the AWS Region, with configuration details for
-- each.
--
-- 'httpStatus', 'listMetricSetsResponse_httpStatus' - The response's http status code.
newListMetricSetsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListMetricSetsResponse
newListMetricSetsResponse pHttpStatus_ =
  ListMetricSetsResponse'
    { nextToken =
        Prelude.Nothing,
      metricSetSummaryList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the response is truncated, the list call returns this token. To
-- retrieve the next set of results, use the token in the next list
-- request.
listMetricSetsResponse_nextToken :: Lens.Lens' ListMetricSetsResponse (Prelude.Maybe Prelude.Text)
listMetricSetsResponse_nextToken = Lens.lens (\ListMetricSetsResponse' {nextToken} -> nextToken) (\s@ListMetricSetsResponse' {} a -> s {nextToken = a} :: ListMetricSetsResponse)

-- | A list of the datasets in the AWS Region, with configuration details for
-- each.
listMetricSetsResponse_metricSetSummaryList :: Lens.Lens' ListMetricSetsResponse (Prelude.Maybe [MetricSetSummary])
listMetricSetsResponse_metricSetSummaryList = Lens.lens (\ListMetricSetsResponse' {metricSetSummaryList} -> metricSetSummaryList) (\s@ListMetricSetsResponse' {} a -> s {metricSetSummaryList = a} :: ListMetricSetsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listMetricSetsResponse_httpStatus :: Lens.Lens' ListMetricSetsResponse Prelude.Int
listMetricSetsResponse_httpStatus = Lens.lens (\ListMetricSetsResponse' {httpStatus} -> httpStatus) (\s@ListMetricSetsResponse' {} a -> s {httpStatus = a} :: ListMetricSetsResponse)

instance Prelude.NFData ListMetricSetsResponse
