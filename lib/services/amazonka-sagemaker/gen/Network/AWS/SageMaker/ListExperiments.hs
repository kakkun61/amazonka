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
-- Module      : Network.AWS.SageMaker.ListExperiments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the experiments in your account. The list can be filtered to
-- show only experiments that were created in a specific time range. The
-- list can be sorted by experiment name or creation time.
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListExperiments
  ( -- * Creating a Request
    ListExperiments (..),
    newListExperiments,

    -- * Request Lenses
    listExperiments_createdAfter,
    listExperiments_nextToken,
    listExperiments_sortOrder,
    listExperiments_maxResults,
    listExperiments_createdBefore,
    listExperiments_sortBy,

    -- * Destructuring the Response
    ListExperimentsResponse (..),
    newListExperimentsResponse,

    -- * Response Lenses
    listExperimentsResponse_experimentSummaries,
    listExperimentsResponse_nextToken,
    listExperimentsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newListExperiments' smart constructor.
data ListExperiments = ListExperiments'
  { -- | A filter that returns only experiments created after the specified time.
    createdAfter :: Prelude.Maybe Core.POSIX,
    -- | If the previous call to @ListExperiments@ didn\'t return the full set of
    -- experiments, the call returns a token for getting the next set of
    -- experiments.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The sort order. The default value is @Descending@.
    sortOrder :: Prelude.Maybe SortOrder,
    -- | The maximum number of experiments to return in the response. The default
    -- value is 10.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | A filter that returns only experiments created before the specified
    -- time.
    createdBefore :: Prelude.Maybe Core.POSIX,
    -- | The property used to sort results. The default value is @CreationTime@.
    sortBy :: Prelude.Maybe SortExperimentsBy
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListExperiments' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createdAfter', 'listExperiments_createdAfter' - A filter that returns only experiments created after the specified time.
--
-- 'nextToken', 'listExperiments_nextToken' - If the previous call to @ListExperiments@ didn\'t return the full set of
-- experiments, the call returns a token for getting the next set of
-- experiments.
--
-- 'sortOrder', 'listExperiments_sortOrder' - The sort order. The default value is @Descending@.
--
-- 'maxResults', 'listExperiments_maxResults' - The maximum number of experiments to return in the response. The default
-- value is 10.
--
-- 'createdBefore', 'listExperiments_createdBefore' - A filter that returns only experiments created before the specified
-- time.
--
-- 'sortBy', 'listExperiments_sortBy' - The property used to sort results. The default value is @CreationTime@.
newListExperiments ::
  ListExperiments
newListExperiments =
  ListExperiments'
    { createdAfter = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      sortOrder = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      createdBefore = Prelude.Nothing,
      sortBy = Prelude.Nothing
    }

-- | A filter that returns only experiments created after the specified time.
listExperiments_createdAfter :: Lens.Lens' ListExperiments (Prelude.Maybe Prelude.UTCTime)
listExperiments_createdAfter = Lens.lens (\ListExperiments' {createdAfter} -> createdAfter) (\s@ListExperiments' {} a -> s {createdAfter = a} :: ListExperiments) Prelude.. Lens.mapping Core._Time

-- | If the previous call to @ListExperiments@ didn\'t return the full set of
-- experiments, the call returns a token for getting the next set of
-- experiments.
listExperiments_nextToken :: Lens.Lens' ListExperiments (Prelude.Maybe Prelude.Text)
listExperiments_nextToken = Lens.lens (\ListExperiments' {nextToken} -> nextToken) (\s@ListExperiments' {} a -> s {nextToken = a} :: ListExperiments)

-- | The sort order. The default value is @Descending@.
listExperiments_sortOrder :: Lens.Lens' ListExperiments (Prelude.Maybe SortOrder)
listExperiments_sortOrder = Lens.lens (\ListExperiments' {sortOrder} -> sortOrder) (\s@ListExperiments' {} a -> s {sortOrder = a} :: ListExperiments)

-- | The maximum number of experiments to return in the response. The default
-- value is 10.
listExperiments_maxResults :: Lens.Lens' ListExperiments (Prelude.Maybe Prelude.Natural)
listExperiments_maxResults = Lens.lens (\ListExperiments' {maxResults} -> maxResults) (\s@ListExperiments' {} a -> s {maxResults = a} :: ListExperiments)

-- | A filter that returns only experiments created before the specified
-- time.
listExperiments_createdBefore :: Lens.Lens' ListExperiments (Prelude.Maybe Prelude.UTCTime)
listExperiments_createdBefore = Lens.lens (\ListExperiments' {createdBefore} -> createdBefore) (\s@ListExperiments' {} a -> s {createdBefore = a} :: ListExperiments) Prelude.. Lens.mapping Core._Time

-- | The property used to sort results. The default value is @CreationTime@.
listExperiments_sortBy :: Lens.Lens' ListExperiments (Prelude.Maybe SortExperimentsBy)
listExperiments_sortBy = Lens.lens (\ListExperiments' {sortBy} -> sortBy) (\s@ListExperiments' {} a -> s {sortBy = a} :: ListExperiments)

instance Core.AWSPager ListExperiments where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listExperimentsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listExperimentsResponse_experimentSummaries
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listExperiments_nextToken
          Lens..~ rs
          Lens.^? listExperimentsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListExperiments where
  type
    AWSResponse ListExperiments =
      ListExperimentsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListExperimentsResponse'
            Prelude.<$> ( x Core..?> "ExperimentSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListExperiments

instance Prelude.NFData ListExperiments

instance Core.ToHeaders ListExperiments where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.ListExperiments" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListExperiments where
  toJSON ListExperiments' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CreatedAfter" Core..=) Prelude.<$> createdAfter,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("SortOrder" Core..=) Prelude.<$> sortOrder,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("CreatedBefore" Core..=) Prelude.<$> createdBefore,
            ("SortBy" Core..=) Prelude.<$> sortBy
          ]
      )

instance Core.ToPath ListExperiments where
  toPath = Prelude.const "/"

instance Core.ToQuery ListExperiments where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListExperimentsResponse' smart constructor.
data ListExperimentsResponse = ListExperimentsResponse'
  { -- | A list of the summaries of your experiments.
    experimentSummaries :: Prelude.Maybe [ExperimentSummary],
    -- | A token for getting the next set of experiments, if there are any.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListExperimentsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'experimentSummaries', 'listExperimentsResponse_experimentSummaries' - A list of the summaries of your experiments.
--
-- 'nextToken', 'listExperimentsResponse_nextToken' - A token for getting the next set of experiments, if there are any.
--
-- 'httpStatus', 'listExperimentsResponse_httpStatus' - The response's http status code.
newListExperimentsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListExperimentsResponse
newListExperimentsResponse pHttpStatus_ =
  ListExperimentsResponse'
    { experimentSummaries =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of the summaries of your experiments.
listExperimentsResponse_experimentSummaries :: Lens.Lens' ListExperimentsResponse (Prelude.Maybe [ExperimentSummary])
listExperimentsResponse_experimentSummaries = Lens.lens (\ListExperimentsResponse' {experimentSummaries} -> experimentSummaries) (\s@ListExperimentsResponse' {} a -> s {experimentSummaries = a} :: ListExperimentsResponse) Prelude.. Lens.mapping Lens.coerced

-- | A token for getting the next set of experiments, if there are any.
listExperimentsResponse_nextToken :: Lens.Lens' ListExperimentsResponse (Prelude.Maybe Prelude.Text)
listExperimentsResponse_nextToken = Lens.lens (\ListExperimentsResponse' {nextToken} -> nextToken) (\s@ListExperimentsResponse' {} a -> s {nextToken = a} :: ListExperimentsResponse)

-- | The response's http status code.
listExperimentsResponse_httpStatus :: Lens.Lens' ListExperimentsResponse Prelude.Int
listExperimentsResponse_httpStatus = Lens.lens (\ListExperimentsResponse' {httpStatus} -> httpStatus) (\s@ListExperimentsResponse' {} a -> s {httpStatus = a} :: ListExperimentsResponse)

instance Prelude.NFData ListExperimentsResponse
