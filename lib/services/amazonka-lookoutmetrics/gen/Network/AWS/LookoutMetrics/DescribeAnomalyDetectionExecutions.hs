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
-- Module      : Network.AWS.LookoutMetrics.DescribeAnomalyDetectionExecutions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the status of the specified anomaly detection
-- jobs.
module Network.AWS.LookoutMetrics.DescribeAnomalyDetectionExecutions
  ( -- * Creating a Request
    DescribeAnomalyDetectionExecutions (..),
    newDescribeAnomalyDetectionExecutions,

    -- * Request Lenses
    describeAnomalyDetectionExecutions_nextToken,
    describeAnomalyDetectionExecutions_timestamp,
    describeAnomalyDetectionExecutions_maxResults,
    describeAnomalyDetectionExecutions_anomalyDetectorArn,

    -- * Destructuring the Response
    DescribeAnomalyDetectionExecutionsResponse (..),
    newDescribeAnomalyDetectionExecutionsResponse,

    -- * Response Lenses
    describeAnomalyDetectionExecutionsResponse_nextToken,
    describeAnomalyDetectionExecutionsResponse_executionList,
    describeAnomalyDetectionExecutionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutMetrics.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeAnomalyDetectionExecutions' smart constructor.
data DescribeAnomalyDetectionExecutions = DescribeAnomalyDetectionExecutions'
  { -- | Specify the pagination token that\'s returned by a previous request to
    -- retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The timestamp of the anomaly detection job.
    timestamp :: Prelude.Maybe Prelude.Text,
    -- | The number of items to return in the response.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Resource Name (ARN) of the anomaly detector.
    anomalyDetectorArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAnomalyDetectionExecutions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeAnomalyDetectionExecutions_nextToken' - Specify the pagination token that\'s returned by a previous request to
-- retrieve the next page of results.
--
-- 'timestamp', 'describeAnomalyDetectionExecutions_timestamp' - The timestamp of the anomaly detection job.
--
-- 'maxResults', 'describeAnomalyDetectionExecutions_maxResults' - The number of items to return in the response.
--
-- 'anomalyDetectorArn', 'describeAnomalyDetectionExecutions_anomalyDetectorArn' - The Amazon Resource Name (ARN) of the anomaly detector.
newDescribeAnomalyDetectionExecutions ::
  -- | 'anomalyDetectorArn'
  Prelude.Text ->
  DescribeAnomalyDetectionExecutions
newDescribeAnomalyDetectionExecutions
  pAnomalyDetectorArn_ =
    DescribeAnomalyDetectionExecutions'
      { nextToken =
          Prelude.Nothing,
        timestamp = Prelude.Nothing,
        maxResults = Prelude.Nothing,
        anomalyDetectorArn =
          pAnomalyDetectorArn_
      }

-- | Specify the pagination token that\'s returned by a previous request to
-- retrieve the next page of results.
describeAnomalyDetectionExecutions_nextToken :: Lens.Lens' DescribeAnomalyDetectionExecutions (Prelude.Maybe Prelude.Text)
describeAnomalyDetectionExecutions_nextToken = Lens.lens (\DescribeAnomalyDetectionExecutions' {nextToken} -> nextToken) (\s@DescribeAnomalyDetectionExecutions' {} a -> s {nextToken = a} :: DescribeAnomalyDetectionExecutions)

-- | The timestamp of the anomaly detection job.
describeAnomalyDetectionExecutions_timestamp :: Lens.Lens' DescribeAnomalyDetectionExecutions (Prelude.Maybe Prelude.Text)
describeAnomalyDetectionExecutions_timestamp = Lens.lens (\DescribeAnomalyDetectionExecutions' {timestamp} -> timestamp) (\s@DescribeAnomalyDetectionExecutions' {} a -> s {timestamp = a} :: DescribeAnomalyDetectionExecutions)

-- | The number of items to return in the response.
describeAnomalyDetectionExecutions_maxResults :: Lens.Lens' DescribeAnomalyDetectionExecutions (Prelude.Maybe Prelude.Natural)
describeAnomalyDetectionExecutions_maxResults = Lens.lens (\DescribeAnomalyDetectionExecutions' {maxResults} -> maxResults) (\s@DescribeAnomalyDetectionExecutions' {} a -> s {maxResults = a} :: DescribeAnomalyDetectionExecutions)

-- | The Amazon Resource Name (ARN) of the anomaly detector.
describeAnomalyDetectionExecutions_anomalyDetectorArn :: Lens.Lens' DescribeAnomalyDetectionExecutions Prelude.Text
describeAnomalyDetectionExecutions_anomalyDetectorArn = Lens.lens (\DescribeAnomalyDetectionExecutions' {anomalyDetectorArn} -> anomalyDetectorArn) (\s@DescribeAnomalyDetectionExecutions' {} a -> s {anomalyDetectorArn = a} :: DescribeAnomalyDetectionExecutions)

instance
  Core.AWSRequest
    DescribeAnomalyDetectionExecutions
  where
  type
    AWSResponse DescribeAnomalyDetectionExecutions =
      DescribeAnomalyDetectionExecutionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAnomalyDetectionExecutionsResponse'
            Prelude.<$> (x Core..?> "NextToken")
              Prelude.<*> (x Core..?> "ExecutionList" Core..!@ Prelude.mempty)
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeAnomalyDetectionExecutions

instance
  Prelude.NFData
    DescribeAnomalyDetectionExecutions

instance
  Core.ToHeaders
    DescribeAnomalyDetectionExecutions
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    DescribeAnomalyDetectionExecutions
  where
  toJSON DescribeAnomalyDetectionExecutions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Timestamp" Core..=) Prelude.<$> timestamp,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ("AnomalyDetectorArn" Core..= anomalyDetectorArn)
          ]
      )

instance
  Core.ToPath
    DescribeAnomalyDetectionExecutions
  where
  toPath =
    Prelude.const "/DescribeAnomalyDetectionExecutions"

instance
  Core.ToQuery
    DescribeAnomalyDetectionExecutions
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAnomalyDetectionExecutionsResponse' smart constructor.
data DescribeAnomalyDetectionExecutionsResponse = DescribeAnomalyDetectionExecutionsResponse'
  { -- | The pagination token that\'s included if more results are available.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of detection jobs.
    executionList :: Prelude.Maybe [ExecutionStatus],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAnomalyDetectionExecutionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeAnomalyDetectionExecutionsResponse_nextToken' - The pagination token that\'s included if more results are available.
--
-- 'executionList', 'describeAnomalyDetectionExecutionsResponse_executionList' - A list of detection jobs.
--
-- 'httpStatus', 'describeAnomalyDetectionExecutionsResponse_httpStatus' - The response's http status code.
newDescribeAnomalyDetectionExecutionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAnomalyDetectionExecutionsResponse
newDescribeAnomalyDetectionExecutionsResponse
  pHttpStatus_ =
    DescribeAnomalyDetectionExecutionsResponse'
      { nextToken =
          Prelude.Nothing,
        executionList = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The pagination token that\'s included if more results are available.
describeAnomalyDetectionExecutionsResponse_nextToken :: Lens.Lens' DescribeAnomalyDetectionExecutionsResponse (Prelude.Maybe Prelude.Text)
describeAnomalyDetectionExecutionsResponse_nextToken = Lens.lens (\DescribeAnomalyDetectionExecutionsResponse' {nextToken} -> nextToken) (\s@DescribeAnomalyDetectionExecutionsResponse' {} a -> s {nextToken = a} :: DescribeAnomalyDetectionExecutionsResponse)

-- | A list of detection jobs.
describeAnomalyDetectionExecutionsResponse_executionList :: Lens.Lens' DescribeAnomalyDetectionExecutionsResponse (Prelude.Maybe [ExecutionStatus])
describeAnomalyDetectionExecutionsResponse_executionList = Lens.lens (\DescribeAnomalyDetectionExecutionsResponse' {executionList} -> executionList) (\s@DescribeAnomalyDetectionExecutionsResponse' {} a -> s {executionList = a} :: DescribeAnomalyDetectionExecutionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeAnomalyDetectionExecutionsResponse_httpStatus :: Lens.Lens' DescribeAnomalyDetectionExecutionsResponse Prelude.Int
describeAnomalyDetectionExecutionsResponse_httpStatus = Lens.lens (\DescribeAnomalyDetectionExecutionsResponse' {httpStatus} -> httpStatus) (\s@DescribeAnomalyDetectionExecutionsResponse' {} a -> s {httpStatus = a} :: DescribeAnomalyDetectionExecutionsResponse)

instance
  Prelude.NFData
    DescribeAnomalyDetectionExecutionsResponse
