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
-- Module      : Network.AWS.Comprehend.ListSentimentDetectionJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of sentiment detection jobs that you have submitted.
--
-- This operation returns paginated results.
module Network.AWS.Comprehend.ListSentimentDetectionJobs
  ( -- * Creating a Request
    ListSentimentDetectionJobs (..),
    newListSentimentDetectionJobs,

    -- * Request Lenses
    listSentimentDetectionJobs_nextToken,
    listSentimentDetectionJobs_filter,
    listSentimentDetectionJobs_maxResults,

    -- * Destructuring the Response
    ListSentimentDetectionJobsResponse (..),
    newListSentimentDetectionJobsResponse,

    -- * Response Lenses
    listSentimentDetectionJobsResponse_nextToken,
    listSentimentDetectionJobsResponse_sentimentDetectionJobPropertiesList,
    listSentimentDetectionJobsResponse_httpStatus,
  )
where

import Network.AWS.Comprehend.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListSentimentDetectionJobs' smart constructor.
data ListSentimentDetectionJobs = ListSentimentDetectionJobs'
  { -- | Identifies the next page of results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Filters the jobs that are returned. You can filter jobs on their name,
    -- status, or the date and time that they were submitted. You can only set
    -- one filter at a time.
    filter' :: Prelude.Maybe SentimentDetectionJobFilter,
    -- | The maximum number of results to return in each page. The default is
    -- 100.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSentimentDetectionJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSentimentDetectionJobs_nextToken' - Identifies the next page of results to return.
--
-- 'filter'', 'listSentimentDetectionJobs_filter' - Filters the jobs that are returned. You can filter jobs on their name,
-- status, or the date and time that they were submitted. You can only set
-- one filter at a time.
--
-- 'maxResults', 'listSentimentDetectionJobs_maxResults' - The maximum number of results to return in each page. The default is
-- 100.
newListSentimentDetectionJobs ::
  ListSentimentDetectionJobs
newListSentimentDetectionJobs =
  ListSentimentDetectionJobs'
    { nextToken =
        Prelude.Nothing,
      filter' = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Identifies the next page of results to return.
listSentimentDetectionJobs_nextToken :: Lens.Lens' ListSentimentDetectionJobs (Prelude.Maybe Prelude.Text)
listSentimentDetectionJobs_nextToken = Lens.lens (\ListSentimentDetectionJobs' {nextToken} -> nextToken) (\s@ListSentimentDetectionJobs' {} a -> s {nextToken = a} :: ListSentimentDetectionJobs)

-- | Filters the jobs that are returned. You can filter jobs on their name,
-- status, or the date and time that they were submitted. You can only set
-- one filter at a time.
listSentimentDetectionJobs_filter :: Lens.Lens' ListSentimentDetectionJobs (Prelude.Maybe SentimentDetectionJobFilter)
listSentimentDetectionJobs_filter = Lens.lens (\ListSentimentDetectionJobs' {filter'} -> filter') (\s@ListSentimentDetectionJobs' {} a -> s {filter' = a} :: ListSentimentDetectionJobs)

-- | The maximum number of results to return in each page. The default is
-- 100.
listSentimentDetectionJobs_maxResults :: Lens.Lens' ListSentimentDetectionJobs (Prelude.Maybe Prelude.Natural)
listSentimentDetectionJobs_maxResults = Lens.lens (\ListSentimentDetectionJobs' {maxResults} -> maxResults) (\s@ListSentimentDetectionJobs' {} a -> s {maxResults = a} :: ListSentimentDetectionJobs)

instance Core.AWSPager ListSentimentDetectionJobs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listSentimentDetectionJobsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listSentimentDetectionJobsResponse_sentimentDetectionJobPropertiesList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listSentimentDetectionJobs_nextToken
          Lens..~ rs
          Lens.^? listSentimentDetectionJobsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListSentimentDetectionJobs where
  type
    AWSResponse ListSentimentDetectionJobs =
      ListSentimentDetectionJobsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSentimentDetectionJobsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "SentimentDetectionJobPropertiesList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListSentimentDetectionJobs

instance Prelude.NFData ListSentimentDetectionJobs

instance Core.ToHeaders ListSentimentDetectionJobs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Comprehend_20171127.ListSentimentDetectionJobs" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListSentimentDetectionJobs where
  toJSON ListSentimentDetectionJobs' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filter" Core..=) Prelude.<$> filter',
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListSentimentDetectionJobs where
  toPath = Prelude.const "/"

instance Core.ToQuery ListSentimentDetectionJobs where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListSentimentDetectionJobsResponse' smart constructor.
data ListSentimentDetectionJobsResponse = ListSentimentDetectionJobsResponse'
  { -- | Identifies the next page of results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list containing the properties of each job that is returned.
    sentimentDetectionJobPropertiesList :: Prelude.Maybe [SentimentDetectionJobProperties],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSentimentDetectionJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSentimentDetectionJobsResponse_nextToken' - Identifies the next page of results to return.
--
-- 'sentimentDetectionJobPropertiesList', 'listSentimentDetectionJobsResponse_sentimentDetectionJobPropertiesList' - A list containing the properties of each job that is returned.
--
-- 'httpStatus', 'listSentimentDetectionJobsResponse_httpStatus' - The response's http status code.
newListSentimentDetectionJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSentimentDetectionJobsResponse
newListSentimentDetectionJobsResponse pHttpStatus_ =
  ListSentimentDetectionJobsResponse'
    { nextToken =
        Prelude.Nothing,
      sentimentDetectionJobPropertiesList =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Identifies the next page of results to return.
listSentimentDetectionJobsResponse_nextToken :: Lens.Lens' ListSentimentDetectionJobsResponse (Prelude.Maybe Prelude.Text)
listSentimentDetectionJobsResponse_nextToken = Lens.lens (\ListSentimentDetectionJobsResponse' {nextToken} -> nextToken) (\s@ListSentimentDetectionJobsResponse' {} a -> s {nextToken = a} :: ListSentimentDetectionJobsResponse)

-- | A list containing the properties of each job that is returned.
listSentimentDetectionJobsResponse_sentimentDetectionJobPropertiesList :: Lens.Lens' ListSentimentDetectionJobsResponse (Prelude.Maybe [SentimentDetectionJobProperties])
listSentimentDetectionJobsResponse_sentimentDetectionJobPropertiesList = Lens.lens (\ListSentimentDetectionJobsResponse' {sentimentDetectionJobPropertiesList} -> sentimentDetectionJobPropertiesList) (\s@ListSentimentDetectionJobsResponse' {} a -> s {sentimentDetectionJobPropertiesList = a} :: ListSentimentDetectionJobsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listSentimentDetectionJobsResponse_httpStatus :: Lens.Lens' ListSentimentDetectionJobsResponse Prelude.Int
listSentimentDetectionJobsResponse_httpStatus = Lens.lens (\ListSentimentDetectionJobsResponse' {httpStatus} -> httpStatus) (\s@ListSentimentDetectionJobsResponse' {} a -> s {httpStatus = a} :: ListSentimentDetectionJobsResponse)

instance
  Prelude.NFData
    ListSentimentDetectionJobsResponse
