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
-- Module      : Network.AWS.RobOMaker.ListSimulationJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of simulation jobs. You can optionally provide filters to
-- retrieve specific simulation jobs.
--
-- This operation returns paginated results.
module Network.AWS.RobOMaker.ListSimulationJobs
  ( -- * Creating a Request
    ListSimulationJobs (..),
    newListSimulationJobs,

    -- * Request Lenses
    listSimulationJobs_filters,
    listSimulationJobs_nextToken,
    listSimulationJobs_maxResults,

    -- * Destructuring the Response
    ListSimulationJobsResponse (..),
    newListSimulationJobsResponse,

    -- * Response Lenses
    listSimulationJobsResponse_nextToken,
    listSimulationJobsResponse_httpStatus,
    listSimulationJobsResponse_simulationJobSummaries,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.RobOMaker.Types

-- | /See:/ 'newListSimulationJobs' smart constructor.
data ListSimulationJobs = ListSimulationJobs'
  { -- | Optional filters to limit results.
    --
    -- The filter names @status@ and @simulationApplicationName@ and
    -- @robotApplicationName@ are supported. When filtering, you must use the
    -- complete value of the filtered item. You can use up to three filters,
    -- but they must be for the same named item. For example, if you are
    -- looking for items with the status @Preparing@ or the status @Running@.
    filters :: Prelude.Maybe (Prelude.NonEmpty Filter),
    -- | If the previous paginated request did not return all of the remaining
    -- results, the response object\'s @nextToken@ parameter value is set to a
    -- token. To retrieve the next set of results, call @ListSimulationJobs@
    -- again and assign that token to the request object\'s @nextToken@
    -- parameter. If there are no remaining results, the previous response
    -- object\'s NextToken parameter is set to null.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | When this parameter is used, @ListSimulationJobs@ only returns
    -- @maxResults@ results in a single page along with a @nextToken@ response
    -- element. The remaining results of the initial request can be seen by
    -- sending another @ListSimulationJobs@ request with the returned
    -- @nextToken@ value. This value can be between 1 and 1000. If this
    -- parameter is not used, then @ListSimulationJobs@ returns up to 1000
    -- results and a @nextToken@ value if applicable.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSimulationJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'listSimulationJobs_filters' - Optional filters to limit results.
--
-- The filter names @status@ and @simulationApplicationName@ and
-- @robotApplicationName@ are supported. When filtering, you must use the
-- complete value of the filtered item. You can use up to three filters,
-- but they must be for the same named item. For example, if you are
-- looking for items with the status @Preparing@ or the status @Running@.
--
-- 'nextToken', 'listSimulationJobs_nextToken' - If the previous paginated request did not return all of the remaining
-- results, the response object\'s @nextToken@ parameter value is set to a
-- token. To retrieve the next set of results, call @ListSimulationJobs@
-- again and assign that token to the request object\'s @nextToken@
-- parameter. If there are no remaining results, the previous response
-- object\'s NextToken parameter is set to null.
--
-- 'maxResults', 'listSimulationJobs_maxResults' - When this parameter is used, @ListSimulationJobs@ only returns
-- @maxResults@ results in a single page along with a @nextToken@ response
-- element. The remaining results of the initial request can be seen by
-- sending another @ListSimulationJobs@ request with the returned
-- @nextToken@ value. This value can be between 1 and 1000. If this
-- parameter is not used, then @ListSimulationJobs@ returns up to 1000
-- results and a @nextToken@ value if applicable.
newListSimulationJobs ::
  ListSimulationJobs
newListSimulationJobs =
  ListSimulationJobs'
    { filters = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Optional filters to limit results.
--
-- The filter names @status@ and @simulationApplicationName@ and
-- @robotApplicationName@ are supported. When filtering, you must use the
-- complete value of the filtered item. You can use up to three filters,
-- but they must be for the same named item. For example, if you are
-- looking for items with the status @Preparing@ or the status @Running@.
listSimulationJobs_filters :: Lens.Lens' ListSimulationJobs (Prelude.Maybe (Prelude.NonEmpty Filter))
listSimulationJobs_filters = Lens.lens (\ListSimulationJobs' {filters} -> filters) (\s@ListSimulationJobs' {} a -> s {filters = a} :: ListSimulationJobs) Prelude.. Lens.mapping Lens.coerced

-- | If the previous paginated request did not return all of the remaining
-- results, the response object\'s @nextToken@ parameter value is set to a
-- token. To retrieve the next set of results, call @ListSimulationJobs@
-- again and assign that token to the request object\'s @nextToken@
-- parameter. If there are no remaining results, the previous response
-- object\'s NextToken parameter is set to null.
listSimulationJobs_nextToken :: Lens.Lens' ListSimulationJobs (Prelude.Maybe Prelude.Text)
listSimulationJobs_nextToken = Lens.lens (\ListSimulationJobs' {nextToken} -> nextToken) (\s@ListSimulationJobs' {} a -> s {nextToken = a} :: ListSimulationJobs)

-- | When this parameter is used, @ListSimulationJobs@ only returns
-- @maxResults@ results in a single page along with a @nextToken@ response
-- element. The remaining results of the initial request can be seen by
-- sending another @ListSimulationJobs@ request with the returned
-- @nextToken@ value. This value can be between 1 and 1000. If this
-- parameter is not used, then @ListSimulationJobs@ returns up to 1000
-- results and a @nextToken@ value if applicable.
listSimulationJobs_maxResults :: Lens.Lens' ListSimulationJobs (Prelude.Maybe Prelude.Int)
listSimulationJobs_maxResults = Lens.lens (\ListSimulationJobs' {maxResults} -> maxResults) (\s@ListSimulationJobs' {} a -> s {maxResults = a} :: ListSimulationJobs)

instance Core.AWSPager ListSimulationJobs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listSimulationJobsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^. listSimulationJobsResponse_simulationJobSummaries
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listSimulationJobs_nextToken
          Lens..~ rs
          Lens.^? listSimulationJobsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListSimulationJobs where
  type
    AWSResponse ListSimulationJobs =
      ListSimulationJobsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSimulationJobsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "simulationJobSummaries"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListSimulationJobs

instance Prelude.NFData ListSimulationJobs

instance Core.ToHeaders ListSimulationJobs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListSimulationJobs where
  toJSON ListSimulationJobs' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("filters" Core..=) Prelude.<$> filters,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListSimulationJobs where
  toPath = Prelude.const "/listSimulationJobs"

instance Core.ToQuery ListSimulationJobs where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListSimulationJobsResponse' smart constructor.
data ListSimulationJobsResponse = ListSimulationJobsResponse'
  { -- | If the previous paginated request did not return all of the remaining
    -- results, the response object\'s @nextToken@ parameter value is set to a
    -- token. To retrieve the next set of results, call @ListSimulationJobs@
    -- again and assign that token to the request object\'s @nextToken@
    -- parameter. If there are no remaining results, the previous response
    -- object\'s NextToken parameter is set to null.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of simulation job summaries that meet the criteria of the
    -- request.
    simulationJobSummaries :: [SimulationJobSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSimulationJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSimulationJobsResponse_nextToken' - If the previous paginated request did not return all of the remaining
-- results, the response object\'s @nextToken@ parameter value is set to a
-- token. To retrieve the next set of results, call @ListSimulationJobs@
-- again and assign that token to the request object\'s @nextToken@
-- parameter. If there are no remaining results, the previous response
-- object\'s NextToken parameter is set to null.
--
-- 'httpStatus', 'listSimulationJobsResponse_httpStatus' - The response's http status code.
--
-- 'simulationJobSummaries', 'listSimulationJobsResponse_simulationJobSummaries' - A list of simulation job summaries that meet the criteria of the
-- request.
newListSimulationJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSimulationJobsResponse
newListSimulationJobsResponse pHttpStatus_ =
  ListSimulationJobsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      simulationJobSummaries = Prelude.mempty
    }

-- | If the previous paginated request did not return all of the remaining
-- results, the response object\'s @nextToken@ parameter value is set to a
-- token. To retrieve the next set of results, call @ListSimulationJobs@
-- again and assign that token to the request object\'s @nextToken@
-- parameter. If there are no remaining results, the previous response
-- object\'s NextToken parameter is set to null.
listSimulationJobsResponse_nextToken :: Lens.Lens' ListSimulationJobsResponse (Prelude.Maybe Prelude.Text)
listSimulationJobsResponse_nextToken = Lens.lens (\ListSimulationJobsResponse' {nextToken} -> nextToken) (\s@ListSimulationJobsResponse' {} a -> s {nextToken = a} :: ListSimulationJobsResponse)

-- | The response's http status code.
listSimulationJobsResponse_httpStatus :: Lens.Lens' ListSimulationJobsResponse Prelude.Int
listSimulationJobsResponse_httpStatus = Lens.lens (\ListSimulationJobsResponse' {httpStatus} -> httpStatus) (\s@ListSimulationJobsResponse' {} a -> s {httpStatus = a} :: ListSimulationJobsResponse)

-- | A list of simulation job summaries that meet the criteria of the
-- request.
listSimulationJobsResponse_simulationJobSummaries :: Lens.Lens' ListSimulationJobsResponse [SimulationJobSummary]
listSimulationJobsResponse_simulationJobSummaries = Lens.lens (\ListSimulationJobsResponse' {simulationJobSummaries} -> simulationJobSummaries) (\s@ListSimulationJobsResponse' {} a -> s {simulationJobSummaries = a} :: ListSimulationJobsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListSimulationJobsResponse
