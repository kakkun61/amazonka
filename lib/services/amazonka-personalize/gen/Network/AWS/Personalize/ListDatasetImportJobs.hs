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
-- Module      : Network.AWS.Personalize.ListDatasetImportJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of dataset import jobs that use the given dataset. When a
-- dataset is not specified, all the dataset import jobs associated with
-- the account are listed. The response provides the properties for each
-- dataset import job, including the Amazon Resource Name (ARN). For more
-- information on dataset import jobs, see CreateDatasetImportJob. For more
-- information on datasets, see CreateDataset.
--
-- This operation returns paginated results.
module Network.AWS.Personalize.ListDatasetImportJobs
  ( -- * Creating a Request
    ListDatasetImportJobs (..),
    newListDatasetImportJobs,

    -- * Request Lenses
    listDatasetImportJobs_datasetArn,
    listDatasetImportJobs_nextToken,
    listDatasetImportJobs_maxResults,

    -- * Destructuring the Response
    ListDatasetImportJobsResponse (..),
    newListDatasetImportJobsResponse,

    -- * Response Lenses
    listDatasetImportJobsResponse_datasetImportJobs,
    listDatasetImportJobsResponse_nextToken,
    listDatasetImportJobsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Personalize.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListDatasetImportJobs' smart constructor.
data ListDatasetImportJobs = ListDatasetImportJobs'
  { -- | The Amazon Resource Name (ARN) of the dataset to list the dataset import
    -- jobs for.
    datasetArn :: Prelude.Maybe Prelude.Text,
    -- | A token returned from the previous call to @ListDatasetImportJobs@ for
    -- getting the next set of dataset import jobs (if they exist).
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of dataset import jobs to return.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDatasetImportJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datasetArn', 'listDatasetImportJobs_datasetArn' - The Amazon Resource Name (ARN) of the dataset to list the dataset import
-- jobs for.
--
-- 'nextToken', 'listDatasetImportJobs_nextToken' - A token returned from the previous call to @ListDatasetImportJobs@ for
-- getting the next set of dataset import jobs (if they exist).
--
-- 'maxResults', 'listDatasetImportJobs_maxResults' - The maximum number of dataset import jobs to return.
newListDatasetImportJobs ::
  ListDatasetImportJobs
newListDatasetImportJobs =
  ListDatasetImportJobs'
    { datasetArn =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the dataset to list the dataset import
-- jobs for.
listDatasetImportJobs_datasetArn :: Lens.Lens' ListDatasetImportJobs (Prelude.Maybe Prelude.Text)
listDatasetImportJobs_datasetArn = Lens.lens (\ListDatasetImportJobs' {datasetArn} -> datasetArn) (\s@ListDatasetImportJobs' {} a -> s {datasetArn = a} :: ListDatasetImportJobs)

-- | A token returned from the previous call to @ListDatasetImportJobs@ for
-- getting the next set of dataset import jobs (if they exist).
listDatasetImportJobs_nextToken :: Lens.Lens' ListDatasetImportJobs (Prelude.Maybe Prelude.Text)
listDatasetImportJobs_nextToken = Lens.lens (\ListDatasetImportJobs' {nextToken} -> nextToken) (\s@ListDatasetImportJobs' {} a -> s {nextToken = a} :: ListDatasetImportJobs)

-- | The maximum number of dataset import jobs to return.
listDatasetImportJobs_maxResults :: Lens.Lens' ListDatasetImportJobs (Prelude.Maybe Prelude.Natural)
listDatasetImportJobs_maxResults = Lens.lens (\ListDatasetImportJobs' {maxResults} -> maxResults) (\s@ListDatasetImportJobs' {} a -> s {maxResults = a} :: ListDatasetImportJobs)

instance Core.AWSPager ListDatasetImportJobs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listDatasetImportJobsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listDatasetImportJobsResponse_datasetImportJobs
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listDatasetImportJobs_nextToken
          Lens..~ rs
          Lens.^? listDatasetImportJobsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListDatasetImportJobs where
  type
    AWSResponse ListDatasetImportJobs =
      ListDatasetImportJobsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDatasetImportJobsResponse'
            Prelude.<$> ( x Core..?> "datasetImportJobs"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDatasetImportJobs

instance Prelude.NFData ListDatasetImportJobs

instance Core.ToHeaders ListDatasetImportJobs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonPersonalize.ListDatasetImportJobs" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListDatasetImportJobs where
  toJSON ListDatasetImportJobs' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("datasetArn" Core..=) Prelude.<$> datasetArn,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListDatasetImportJobs where
  toPath = Prelude.const "/"

instance Core.ToQuery ListDatasetImportJobs where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListDatasetImportJobsResponse' smart constructor.
data ListDatasetImportJobsResponse = ListDatasetImportJobsResponse'
  { -- | The list of dataset import jobs.
    datasetImportJobs :: Prelude.Maybe [DatasetImportJobSummary],
    -- | A token for getting the next set of dataset import jobs (if they exist).
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDatasetImportJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datasetImportJobs', 'listDatasetImportJobsResponse_datasetImportJobs' - The list of dataset import jobs.
--
-- 'nextToken', 'listDatasetImportJobsResponse_nextToken' - A token for getting the next set of dataset import jobs (if they exist).
--
-- 'httpStatus', 'listDatasetImportJobsResponse_httpStatus' - The response's http status code.
newListDatasetImportJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDatasetImportJobsResponse
newListDatasetImportJobsResponse pHttpStatus_ =
  ListDatasetImportJobsResponse'
    { datasetImportJobs =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of dataset import jobs.
listDatasetImportJobsResponse_datasetImportJobs :: Lens.Lens' ListDatasetImportJobsResponse (Prelude.Maybe [DatasetImportJobSummary])
listDatasetImportJobsResponse_datasetImportJobs = Lens.lens (\ListDatasetImportJobsResponse' {datasetImportJobs} -> datasetImportJobs) (\s@ListDatasetImportJobsResponse' {} a -> s {datasetImportJobs = a} :: ListDatasetImportJobsResponse) Prelude.. Lens.mapping Lens.coerced

-- | A token for getting the next set of dataset import jobs (if they exist).
listDatasetImportJobsResponse_nextToken :: Lens.Lens' ListDatasetImportJobsResponse (Prelude.Maybe Prelude.Text)
listDatasetImportJobsResponse_nextToken = Lens.lens (\ListDatasetImportJobsResponse' {nextToken} -> nextToken) (\s@ListDatasetImportJobsResponse' {} a -> s {nextToken = a} :: ListDatasetImportJobsResponse)

-- | The response's http status code.
listDatasetImportJobsResponse_httpStatus :: Lens.Lens' ListDatasetImportJobsResponse Prelude.Int
listDatasetImportJobsResponse_httpStatus = Lens.lens (\ListDatasetImportJobsResponse' {httpStatus} -> httpStatus) (\s@ListDatasetImportJobsResponse' {} a -> s {httpStatus = a} :: ListDatasetImportJobsResponse)

instance Prelude.NFData ListDatasetImportJobsResponse
