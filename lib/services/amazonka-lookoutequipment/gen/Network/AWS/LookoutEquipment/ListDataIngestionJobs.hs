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
-- Module      : Network.AWS.LookoutEquipment.ListDataIngestionJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of all data ingestion jobs, including dataset name and
-- ARN, S3 location of the input data, status, and so on.
module Network.AWS.LookoutEquipment.ListDataIngestionJobs
  ( -- * Creating a Request
    ListDataIngestionJobs (..),
    newListDataIngestionJobs,

    -- * Request Lenses
    listDataIngestionJobs_status,
    listDataIngestionJobs_nextToken,
    listDataIngestionJobs_datasetName,
    listDataIngestionJobs_maxResults,

    -- * Destructuring the Response
    ListDataIngestionJobsResponse (..),
    newListDataIngestionJobsResponse,

    -- * Response Lenses
    listDataIngestionJobsResponse_nextToken,
    listDataIngestionJobsResponse_dataIngestionJobSummaries,
    listDataIngestionJobsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutEquipment.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListDataIngestionJobs' smart constructor.
data ListDataIngestionJobs = ListDataIngestionJobs'
  { -- | Indicates the status of the data ingestion job.
    status :: Prelude.Maybe IngestionJobStatus,
    -- | An opaque pagination token indicating where to continue the listing of
    -- data ingestion jobs.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The name of the dataset being used for the data ingestion job.
    datasetName :: Prelude.Maybe Prelude.Text,
    -- | Specifies the maximum number of data ingestion jobs to list.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDataIngestionJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'listDataIngestionJobs_status' - Indicates the status of the data ingestion job.
--
-- 'nextToken', 'listDataIngestionJobs_nextToken' - An opaque pagination token indicating where to continue the listing of
-- data ingestion jobs.
--
-- 'datasetName', 'listDataIngestionJobs_datasetName' - The name of the dataset being used for the data ingestion job.
--
-- 'maxResults', 'listDataIngestionJobs_maxResults' - Specifies the maximum number of data ingestion jobs to list.
newListDataIngestionJobs ::
  ListDataIngestionJobs
newListDataIngestionJobs =
  ListDataIngestionJobs'
    { status = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      datasetName = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Indicates the status of the data ingestion job.
listDataIngestionJobs_status :: Lens.Lens' ListDataIngestionJobs (Prelude.Maybe IngestionJobStatus)
listDataIngestionJobs_status = Lens.lens (\ListDataIngestionJobs' {status} -> status) (\s@ListDataIngestionJobs' {} a -> s {status = a} :: ListDataIngestionJobs)

-- | An opaque pagination token indicating where to continue the listing of
-- data ingestion jobs.
listDataIngestionJobs_nextToken :: Lens.Lens' ListDataIngestionJobs (Prelude.Maybe Prelude.Text)
listDataIngestionJobs_nextToken = Lens.lens (\ListDataIngestionJobs' {nextToken} -> nextToken) (\s@ListDataIngestionJobs' {} a -> s {nextToken = a} :: ListDataIngestionJobs)

-- | The name of the dataset being used for the data ingestion job.
listDataIngestionJobs_datasetName :: Lens.Lens' ListDataIngestionJobs (Prelude.Maybe Prelude.Text)
listDataIngestionJobs_datasetName = Lens.lens (\ListDataIngestionJobs' {datasetName} -> datasetName) (\s@ListDataIngestionJobs' {} a -> s {datasetName = a} :: ListDataIngestionJobs)

-- | Specifies the maximum number of data ingestion jobs to list.
listDataIngestionJobs_maxResults :: Lens.Lens' ListDataIngestionJobs (Prelude.Maybe Prelude.Natural)
listDataIngestionJobs_maxResults = Lens.lens (\ListDataIngestionJobs' {maxResults} -> maxResults) (\s@ListDataIngestionJobs' {} a -> s {maxResults = a} :: ListDataIngestionJobs)

instance Core.AWSRequest ListDataIngestionJobs where
  type
    AWSResponse ListDataIngestionJobs =
      ListDataIngestionJobsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDataIngestionJobsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "DataIngestionJobSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDataIngestionJobs

instance Prelude.NFData ListDataIngestionJobs

instance Core.ToHeaders ListDataIngestionJobs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLookoutEquipmentFrontendService.ListDataIngestionJobs" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListDataIngestionJobs where
  toJSON ListDataIngestionJobs' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Status" Core..=) Prelude.<$> status,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("DatasetName" Core..=) Prelude.<$> datasetName,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListDataIngestionJobs where
  toPath = Prelude.const "/"

instance Core.ToQuery ListDataIngestionJobs where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListDataIngestionJobsResponse' smart constructor.
data ListDataIngestionJobsResponse = ListDataIngestionJobsResponse'
  { -- | An opaque pagination token indicating where to continue the listing of
    -- data ingestion jobs.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Specifies information about the specific data ingestion job, including
    -- dataset name and status.
    dataIngestionJobSummaries :: Prelude.Maybe [DataIngestionJobSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDataIngestionJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDataIngestionJobsResponse_nextToken' - An opaque pagination token indicating where to continue the listing of
-- data ingestion jobs.
--
-- 'dataIngestionJobSummaries', 'listDataIngestionJobsResponse_dataIngestionJobSummaries' - Specifies information about the specific data ingestion job, including
-- dataset name and status.
--
-- 'httpStatus', 'listDataIngestionJobsResponse_httpStatus' - The response's http status code.
newListDataIngestionJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDataIngestionJobsResponse
newListDataIngestionJobsResponse pHttpStatus_ =
  ListDataIngestionJobsResponse'
    { nextToken =
        Prelude.Nothing,
      dataIngestionJobSummaries = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An opaque pagination token indicating where to continue the listing of
-- data ingestion jobs.
listDataIngestionJobsResponse_nextToken :: Lens.Lens' ListDataIngestionJobsResponse (Prelude.Maybe Prelude.Text)
listDataIngestionJobsResponse_nextToken = Lens.lens (\ListDataIngestionJobsResponse' {nextToken} -> nextToken) (\s@ListDataIngestionJobsResponse' {} a -> s {nextToken = a} :: ListDataIngestionJobsResponse)

-- | Specifies information about the specific data ingestion job, including
-- dataset name and status.
listDataIngestionJobsResponse_dataIngestionJobSummaries :: Lens.Lens' ListDataIngestionJobsResponse (Prelude.Maybe [DataIngestionJobSummary])
listDataIngestionJobsResponse_dataIngestionJobSummaries = Lens.lens (\ListDataIngestionJobsResponse' {dataIngestionJobSummaries} -> dataIngestionJobSummaries) (\s@ListDataIngestionJobsResponse' {} a -> s {dataIngestionJobSummaries = a} :: ListDataIngestionJobsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listDataIngestionJobsResponse_httpStatus :: Lens.Lens' ListDataIngestionJobsResponse Prelude.Int
listDataIngestionJobsResponse_httpStatus = Lens.lens (\ListDataIngestionJobsResponse' {httpStatus} -> httpStatus) (\s@ListDataIngestionJobsResponse' {} a -> s {httpStatus = a} :: ListDataIngestionJobsResponse)

instance Prelude.NFData ListDataIngestionJobsResponse
