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
-- Module      : Network.AWS.Amplify.ListJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the jobs for a branch of an Amplify app.
--
-- This operation returns paginated results.
module Network.AWS.Amplify.ListJobs
  ( -- * Creating a Request
    ListJobs (..),
    newListJobs,

    -- * Request Lenses
    listJobs_nextToken,
    listJobs_maxResults,
    listJobs_appId,
    listJobs_branchName,

    -- * Destructuring the Response
    ListJobsResponse (..),
    newListJobsResponse,

    -- * Response Lenses
    listJobsResponse_nextToken,
    listJobsResponse_httpStatus,
    listJobsResponse_jobSummaries,
  )
where

import Network.AWS.Amplify.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request structure for the list jobs request.
--
-- /See:/ 'newListJobs' smart constructor.
data ListJobs = ListJobs'
  { -- | A pagination token. Set to null to start listing steps from the start.
    -- If a non-null pagination token is returned in a result, pass its value
    -- in here to list more steps.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of records to list in a single response.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique ID for an Amplify app.
    appId :: Prelude.Text,
    -- | The name for a branch.
    branchName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listJobs_nextToken' - A pagination token. Set to null to start listing steps from the start.
-- If a non-null pagination token is returned in a result, pass its value
-- in here to list more steps.
--
-- 'maxResults', 'listJobs_maxResults' - The maximum number of records to list in a single response.
--
-- 'appId', 'listJobs_appId' - The unique ID for an Amplify app.
--
-- 'branchName', 'listJobs_branchName' - The name for a branch.
newListJobs ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'branchName'
  Prelude.Text ->
  ListJobs
newListJobs pAppId_ pBranchName_ =
  ListJobs'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      appId = pAppId_,
      branchName = pBranchName_
    }

-- | A pagination token. Set to null to start listing steps from the start.
-- If a non-null pagination token is returned in a result, pass its value
-- in here to list more steps.
listJobs_nextToken :: Lens.Lens' ListJobs (Prelude.Maybe Prelude.Text)
listJobs_nextToken = Lens.lens (\ListJobs' {nextToken} -> nextToken) (\s@ListJobs' {} a -> s {nextToken = a} :: ListJobs)

-- | The maximum number of records to list in a single response.
listJobs_maxResults :: Lens.Lens' ListJobs (Prelude.Maybe Prelude.Natural)
listJobs_maxResults = Lens.lens (\ListJobs' {maxResults} -> maxResults) (\s@ListJobs' {} a -> s {maxResults = a} :: ListJobs)

-- | The unique ID for an Amplify app.
listJobs_appId :: Lens.Lens' ListJobs Prelude.Text
listJobs_appId = Lens.lens (\ListJobs' {appId} -> appId) (\s@ListJobs' {} a -> s {appId = a} :: ListJobs)

-- | The name for a branch.
listJobs_branchName :: Lens.Lens' ListJobs Prelude.Text
listJobs_branchName = Lens.lens (\ListJobs' {branchName} -> branchName) (\s@ListJobs' {} a -> s {branchName = a} :: ListJobs)

instance Core.AWSPager ListJobs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listJobsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listJobsResponse_jobSummaries) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listJobs_nextToken
          Lens..~ rs
          Lens.^? listJobsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListJobs where
  type AWSResponse ListJobs = ListJobsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListJobsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "jobSummaries" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListJobs

instance Prelude.NFData ListJobs

instance Core.ToHeaders ListJobs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListJobs where
  toPath ListJobs' {..} =
    Prelude.mconcat
      [ "/apps/",
        Core.toBS appId,
        "/branches/",
        Core.toBS branchName,
        "/jobs"
      ]

instance Core.ToQuery ListJobs where
  toQuery ListJobs' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | The maximum number of records to list in a single response.
--
-- /See:/ 'newListJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse'
  { -- | A pagination token. If non-null the pagination token is returned in a
    -- result. Pass its value in another request to retrieve more entries.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The result structure for the list job result request.
    jobSummaries :: [JobSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listJobsResponse_nextToken' - A pagination token. If non-null the pagination token is returned in a
-- result. Pass its value in another request to retrieve more entries.
--
-- 'httpStatus', 'listJobsResponse_httpStatus' - The response's http status code.
--
-- 'jobSummaries', 'listJobsResponse_jobSummaries' - The result structure for the list job result request.
newListJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListJobsResponse
newListJobsResponse pHttpStatus_ =
  ListJobsResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      jobSummaries = Prelude.mempty
    }

-- | A pagination token. If non-null the pagination token is returned in a
-- result. Pass its value in another request to retrieve more entries.
listJobsResponse_nextToken :: Lens.Lens' ListJobsResponse (Prelude.Maybe Prelude.Text)
listJobsResponse_nextToken = Lens.lens (\ListJobsResponse' {nextToken} -> nextToken) (\s@ListJobsResponse' {} a -> s {nextToken = a} :: ListJobsResponse)

-- | The response's http status code.
listJobsResponse_httpStatus :: Lens.Lens' ListJobsResponse Prelude.Int
listJobsResponse_httpStatus = Lens.lens (\ListJobsResponse' {httpStatus} -> httpStatus) (\s@ListJobsResponse' {} a -> s {httpStatus = a} :: ListJobsResponse)

-- | The result structure for the list job result request.
listJobsResponse_jobSummaries :: Lens.Lens' ListJobsResponse [JobSummary]
listJobsResponse_jobSummaries = Lens.lens (\ListJobsResponse' {jobSummaries} -> jobSummaries) (\s@ListJobsResponse' {} a -> s {jobSummaries = a} :: ListJobsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListJobsResponse
