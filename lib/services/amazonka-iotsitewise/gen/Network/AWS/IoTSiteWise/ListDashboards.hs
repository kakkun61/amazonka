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
-- Module      : Network.AWS.IoTSiteWise.ListDashboards
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of dashboards for an IoT SiteWise Monitor
-- project.
--
-- This operation returns paginated results.
module Network.AWS.IoTSiteWise.ListDashboards
  ( -- * Creating a Request
    ListDashboards (..),
    newListDashboards,

    -- * Request Lenses
    listDashboards_nextToken,
    listDashboards_maxResults,
    listDashboards_projectId,

    -- * Destructuring the Response
    ListDashboardsResponse (..),
    newListDashboardsResponse,

    -- * Response Lenses
    listDashboardsResponse_nextToken,
    listDashboardsResponse_httpStatus,
    listDashboardsResponse_dashboardSummaries,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListDashboards' smart constructor.
data ListDashboards = ListDashboards'
  { -- | The token to be used for the next set of paginated results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return for each paginated request.
    --
    -- Default: 50
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the project.
    projectId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDashboards' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDashboards_nextToken' - The token to be used for the next set of paginated results.
--
-- 'maxResults', 'listDashboards_maxResults' - The maximum number of results to return for each paginated request.
--
-- Default: 50
--
-- 'projectId', 'listDashboards_projectId' - The ID of the project.
newListDashboards ::
  -- | 'projectId'
  Prelude.Text ->
  ListDashboards
newListDashboards pProjectId_ =
  ListDashboards'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      projectId = pProjectId_
    }

-- | The token to be used for the next set of paginated results.
listDashboards_nextToken :: Lens.Lens' ListDashboards (Prelude.Maybe Prelude.Text)
listDashboards_nextToken = Lens.lens (\ListDashboards' {nextToken} -> nextToken) (\s@ListDashboards' {} a -> s {nextToken = a} :: ListDashboards)

-- | The maximum number of results to return for each paginated request.
--
-- Default: 50
listDashboards_maxResults :: Lens.Lens' ListDashboards (Prelude.Maybe Prelude.Natural)
listDashboards_maxResults = Lens.lens (\ListDashboards' {maxResults} -> maxResults) (\s@ListDashboards' {} a -> s {maxResults = a} :: ListDashboards)

-- | The ID of the project.
listDashboards_projectId :: Lens.Lens' ListDashboards Prelude.Text
listDashboards_projectId = Lens.lens (\ListDashboards' {projectId} -> projectId) (\s@ListDashboards' {} a -> s {projectId = a} :: ListDashboards)

instance Core.AWSPager ListDashboards where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listDashboardsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^. listDashboardsResponse_dashboardSummaries
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listDashboards_nextToken
          Lens..~ rs
          Lens.^? listDashboardsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListDashboards where
  type
    AWSResponse ListDashboards =
      ListDashboardsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDashboardsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "dashboardSummaries"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListDashboards

instance Prelude.NFData ListDashboards

instance Core.ToHeaders ListDashboards where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListDashboards where
  toPath = Prelude.const "/dashboards"

instance Core.ToQuery ListDashboards where
  toQuery ListDashboards' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults,
        "projectId" Core.=: projectId
      ]

-- | /See:/ 'newListDashboardsResponse' smart constructor.
data ListDashboardsResponse = ListDashboardsResponse'
  { -- | The token for the next set of results, or null if there are no
    -- additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list that summarizes each dashboard in the project.
    dashboardSummaries :: [DashboardSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDashboardsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDashboardsResponse_nextToken' - The token for the next set of results, or null if there are no
-- additional results.
--
-- 'httpStatus', 'listDashboardsResponse_httpStatus' - The response's http status code.
--
-- 'dashboardSummaries', 'listDashboardsResponse_dashboardSummaries' - A list that summarizes each dashboard in the project.
newListDashboardsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDashboardsResponse
newListDashboardsResponse pHttpStatus_ =
  ListDashboardsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      dashboardSummaries = Prelude.mempty
    }

-- | The token for the next set of results, or null if there are no
-- additional results.
listDashboardsResponse_nextToken :: Lens.Lens' ListDashboardsResponse (Prelude.Maybe Prelude.Text)
listDashboardsResponse_nextToken = Lens.lens (\ListDashboardsResponse' {nextToken} -> nextToken) (\s@ListDashboardsResponse' {} a -> s {nextToken = a} :: ListDashboardsResponse)

-- | The response's http status code.
listDashboardsResponse_httpStatus :: Lens.Lens' ListDashboardsResponse Prelude.Int
listDashboardsResponse_httpStatus = Lens.lens (\ListDashboardsResponse' {httpStatus} -> httpStatus) (\s@ListDashboardsResponse' {} a -> s {httpStatus = a} :: ListDashboardsResponse)

-- | A list that summarizes each dashboard in the project.
listDashboardsResponse_dashboardSummaries :: Lens.Lens' ListDashboardsResponse [DashboardSummary]
listDashboardsResponse_dashboardSummaries = Lens.lens (\ListDashboardsResponse' {dashboardSummaries} -> dashboardSummaries) (\s@ListDashboardsResponse' {} a -> s {dashboardSummaries = a} :: ListDashboardsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListDashboardsResponse
