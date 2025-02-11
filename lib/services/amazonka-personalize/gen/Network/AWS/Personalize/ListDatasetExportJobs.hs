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
-- Module      : Network.AWS.Personalize.ListDatasetExportJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of dataset export jobs that use the given dataset. When a
-- dataset is not specified, all the dataset export jobs associated with
-- the account are listed. The response provides the properties for each
-- dataset export job, including the Amazon Resource Name (ARN). For more
-- information on dataset export jobs, see CreateDatasetExportJob. For more
-- information on datasets, see CreateDataset.
--
-- This operation returns paginated results.
module Network.AWS.Personalize.ListDatasetExportJobs
  ( -- * Creating a Request
    ListDatasetExportJobs (..),
    newListDatasetExportJobs,

    -- * Request Lenses
    listDatasetExportJobs_datasetArn,
    listDatasetExportJobs_nextToken,
    listDatasetExportJobs_maxResults,

    -- * Destructuring the Response
    ListDatasetExportJobsResponse (..),
    newListDatasetExportJobsResponse,

    -- * Response Lenses
    listDatasetExportJobsResponse_nextToken,
    listDatasetExportJobsResponse_datasetExportJobs,
    listDatasetExportJobsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Personalize.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListDatasetExportJobs' smart constructor.
data ListDatasetExportJobs = ListDatasetExportJobs'
  { -- | The Amazon Resource Name (ARN) of the dataset to list the dataset export
    -- jobs for.
    datasetArn :: Prelude.Maybe Prelude.Text,
    -- | A token returned from the previous call to @ListDatasetExportJobs@ for
    -- getting the next set of dataset export jobs (if they exist).
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of dataset export jobs to return.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDatasetExportJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datasetArn', 'listDatasetExportJobs_datasetArn' - The Amazon Resource Name (ARN) of the dataset to list the dataset export
-- jobs for.
--
-- 'nextToken', 'listDatasetExportJobs_nextToken' - A token returned from the previous call to @ListDatasetExportJobs@ for
-- getting the next set of dataset export jobs (if they exist).
--
-- 'maxResults', 'listDatasetExportJobs_maxResults' - The maximum number of dataset export jobs to return.
newListDatasetExportJobs ::
  ListDatasetExportJobs
newListDatasetExportJobs =
  ListDatasetExportJobs'
    { datasetArn =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the dataset to list the dataset export
-- jobs for.
listDatasetExportJobs_datasetArn :: Lens.Lens' ListDatasetExportJobs (Prelude.Maybe Prelude.Text)
listDatasetExportJobs_datasetArn = Lens.lens (\ListDatasetExportJobs' {datasetArn} -> datasetArn) (\s@ListDatasetExportJobs' {} a -> s {datasetArn = a} :: ListDatasetExportJobs)

-- | A token returned from the previous call to @ListDatasetExportJobs@ for
-- getting the next set of dataset export jobs (if they exist).
listDatasetExportJobs_nextToken :: Lens.Lens' ListDatasetExportJobs (Prelude.Maybe Prelude.Text)
listDatasetExportJobs_nextToken = Lens.lens (\ListDatasetExportJobs' {nextToken} -> nextToken) (\s@ListDatasetExportJobs' {} a -> s {nextToken = a} :: ListDatasetExportJobs)

-- | The maximum number of dataset export jobs to return.
listDatasetExportJobs_maxResults :: Lens.Lens' ListDatasetExportJobs (Prelude.Maybe Prelude.Natural)
listDatasetExportJobs_maxResults = Lens.lens (\ListDatasetExportJobs' {maxResults} -> maxResults) (\s@ListDatasetExportJobs' {} a -> s {maxResults = a} :: ListDatasetExportJobs)

instance Core.AWSPager ListDatasetExportJobs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listDatasetExportJobsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listDatasetExportJobsResponse_datasetExportJobs
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listDatasetExportJobs_nextToken
          Lens..~ rs
          Lens.^? listDatasetExportJobsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListDatasetExportJobs where
  type
    AWSResponse ListDatasetExportJobs =
      ListDatasetExportJobsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDatasetExportJobsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> ( x Core..?> "datasetExportJobs"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDatasetExportJobs

instance Prelude.NFData ListDatasetExportJobs

instance Core.ToHeaders ListDatasetExportJobs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonPersonalize.ListDatasetExportJobs" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListDatasetExportJobs where
  toJSON ListDatasetExportJobs' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("datasetArn" Core..=) Prelude.<$> datasetArn,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListDatasetExportJobs where
  toPath = Prelude.const "/"

instance Core.ToQuery ListDatasetExportJobs where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListDatasetExportJobsResponse' smart constructor.
data ListDatasetExportJobsResponse = ListDatasetExportJobsResponse'
  { -- | A token for getting the next set of dataset export jobs (if they exist).
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of dataset export jobs.
    datasetExportJobs :: Prelude.Maybe [DatasetExportJobSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDatasetExportJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDatasetExportJobsResponse_nextToken' - A token for getting the next set of dataset export jobs (if they exist).
--
-- 'datasetExportJobs', 'listDatasetExportJobsResponse_datasetExportJobs' - The list of dataset export jobs.
--
-- 'httpStatus', 'listDatasetExportJobsResponse_httpStatus' - The response's http status code.
newListDatasetExportJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDatasetExportJobsResponse
newListDatasetExportJobsResponse pHttpStatus_ =
  ListDatasetExportJobsResponse'
    { nextToken =
        Prelude.Nothing,
      datasetExportJobs = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A token for getting the next set of dataset export jobs (if they exist).
listDatasetExportJobsResponse_nextToken :: Lens.Lens' ListDatasetExportJobsResponse (Prelude.Maybe Prelude.Text)
listDatasetExportJobsResponse_nextToken = Lens.lens (\ListDatasetExportJobsResponse' {nextToken} -> nextToken) (\s@ListDatasetExportJobsResponse' {} a -> s {nextToken = a} :: ListDatasetExportJobsResponse)

-- | The list of dataset export jobs.
listDatasetExportJobsResponse_datasetExportJobs :: Lens.Lens' ListDatasetExportJobsResponse (Prelude.Maybe [DatasetExportJobSummary])
listDatasetExportJobsResponse_datasetExportJobs = Lens.lens (\ListDatasetExportJobsResponse' {datasetExportJobs} -> datasetExportJobs) (\s@ListDatasetExportJobsResponse' {} a -> s {datasetExportJobs = a} :: ListDatasetExportJobsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listDatasetExportJobsResponse_httpStatus :: Lens.Lens' ListDatasetExportJobsResponse Prelude.Int
listDatasetExportJobsResponse_httpStatus = Lens.lens (\ListDatasetExportJobsResponse' {httpStatus} -> httpStatus) (\s@ListDatasetExportJobsResponse' {} a -> s {httpStatus = a} :: ListDatasetExportJobsResponse)

instance Prelude.NFData ListDatasetExportJobsResponse
