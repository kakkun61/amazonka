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
-- Module      : Network.AWS.FraudDetector.GetBatchPredictionJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets all batch prediction jobs or a specific job if you specify a job
-- ID. This is a paginated API. If you provide a null maxResults, this
-- action retrieves a maximum of 50 records per page. If you provide a
-- maxResults, the value must be between 1 and 50. To get the next page
-- results, provide the pagination token from the
-- GetBatchPredictionJobsResponse as part of your request. A null
-- pagination token fetches the records from the beginning.
module Network.AWS.FraudDetector.GetBatchPredictionJobs
  ( -- * Creating a Request
    GetBatchPredictionJobs (..),
    newGetBatchPredictionJobs,

    -- * Request Lenses
    getBatchPredictionJobs_jobId,
    getBatchPredictionJobs_nextToken,
    getBatchPredictionJobs_maxResults,

    -- * Destructuring the Response
    GetBatchPredictionJobsResponse (..),
    newGetBatchPredictionJobsResponse,

    -- * Response Lenses
    getBatchPredictionJobsResponse_batchPredictions,
    getBatchPredictionJobsResponse_nextToken,
    getBatchPredictionJobsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetBatchPredictionJobs' smart constructor.
data GetBatchPredictionJobs = GetBatchPredictionJobs'
  { -- | The batch prediction job for which to get the details.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | The next token from the previous request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of objects to return for the request.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetBatchPredictionJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'getBatchPredictionJobs_jobId' - The batch prediction job for which to get the details.
--
-- 'nextToken', 'getBatchPredictionJobs_nextToken' - The next token from the previous request.
--
-- 'maxResults', 'getBatchPredictionJobs_maxResults' - The maximum number of objects to return for the request.
newGetBatchPredictionJobs ::
  GetBatchPredictionJobs
newGetBatchPredictionJobs =
  GetBatchPredictionJobs'
    { jobId = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The batch prediction job for which to get the details.
getBatchPredictionJobs_jobId :: Lens.Lens' GetBatchPredictionJobs (Prelude.Maybe Prelude.Text)
getBatchPredictionJobs_jobId = Lens.lens (\GetBatchPredictionJobs' {jobId} -> jobId) (\s@GetBatchPredictionJobs' {} a -> s {jobId = a} :: GetBatchPredictionJobs)

-- | The next token from the previous request.
getBatchPredictionJobs_nextToken :: Lens.Lens' GetBatchPredictionJobs (Prelude.Maybe Prelude.Text)
getBatchPredictionJobs_nextToken = Lens.lens (\GetBatchPredictionJobs' {nextToken} -> nextToken) (\s@GetBatchPredictionJobs' {} a -> s {nextToken = a} :: GetBatchPredictionJobs)

-- | The maximum number of objects to return for the request.
getBatchPredictionJobs_maxResults :: Lens.Lens' GetBatchPredictionJobs (Prelude.Maybe Prelude.Natural)
getBatchPredictionJobs_maxResults = Lens.lens (\GetBatchPredictionJobs' {maxResults} -> maxResults) (\s@GetBatchPredictionJobs' {} a -> s {maxResults = a} :: GetBatchPredictionJobs)

instance Core.AWSRequest GetBatchPredictionJobs where
  type
    AWSResponse GetBatchPredictionJobs =
      GetBatchPredictionJobsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetBatchPredictionJobsResponse'
            Prelude.<$> ( x Core..?> "batchPredictions"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetBatchPredictionJobs

instance Prelude.NFData GetBatchPredictionJobs

instance Core.ToHeaders GetBatchPredictionJobs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.GetBatchPredictionJobs" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetBatchPredictionJobs where
  toJSON GetBatchPredictionJobs' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("jobId" Core..=) Prelude.<$> jobId,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath GetBatchPredictionJobs where
  toPath = Prelude.const "/"

instance Core.ToQuery GetBatchPredictionJobs where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetBatchPredictionJobsResponse' smart constructor.
data GetBatchPredictionJobsResponse = GetBatchPredictionJobsResponse'
  { -- | An array containing the details of each batch prediction job.
    batchPredictions :: Prelude.Maybe [BatchPrediction],
    -- | The next token for the subsequent request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetBatchPredictionJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'batchPredictions', 'getBatchPredictionJobsResponse_batchPredictions' - An array containing the details of each batch prediction job.
--
-- 'nextToken', 'getBatchPredictionJobsResponse_nextToken' - The next token for the subsequent request.
--
-- 'httpStatus', 'getBatchPredictionJobsResponse_httpStatus' - The response's http status code.
newGetBatchPredictionJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetBatchPredictionJobsResponse
newGetBatchPredictionJobsResponse pHttpStatus_ =
  GetBatchPredictionJobsResponse'
    { batchPredictions =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array containing the details of each batch prediction job.
getBatchPredictionJobsResponse_batchPredictions :: Lens.Lens' GetBatchPredictionJobsResponse (Prelude.Maybe [BatchPrediction])
getBatchPredictionJobsResponse_batchPredictions = Lens.lens (\GetBatchPredictionJobsResponse' {batchPredictions} -> batchPredictions) (\s@GetBatchPredictionJobsResponse' {} a -> s {batchPredictions = a} :: GetBatchPredictionJobsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The next token for the subsequent request.
getBatchPredictionJobsResponse_nextToken :: Lens.Lens' GetBatchPredictionJobsResponse (Prelude.Maybe Prelude.Text)
getBatchPredictionJobsResponse_nextToken = Lens.lens (\GetBatchPredictionJobsResponse' {nextToken} -> nextToken) (\s@GetBatchPredictionJobsResponse' {} a -> s {nextToken = a} :: GetBatchPredictionJobsResponse)

-- | The response's http status code.
getBatchPredictionJobsResponse_httpStatus :: Lens.Lens' GetBatchPredictionJobsResponse Prelude.Int
getBatchPredictionJobsResponse_httpStatus = Lens.lens (\GetBatchPredictionJobsResponse' {httpStatus} -> httpStatus) (\s@GetBatchPredictionJobsResponse' {} a -> s {httpStatus = a} :: GetBatchPredictionJobsResponse)

instance
  Prelude.NFData
    GetBatchPredictionJobsResponse
