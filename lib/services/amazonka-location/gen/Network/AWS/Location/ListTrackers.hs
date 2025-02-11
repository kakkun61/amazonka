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
-- Module      : Network.AWS.Location.ListTrackers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists tracker resources in your AWS account.
--
-- This operation returns paginated results.
module Network.AWS.Location.ListTrackers
  ( -- * Creating a Request
    ListTrackers (..),
    newListTrackers,

    -- * Request Lenses
    listTrackers_nextToken,
    listTrackers_maxResults,

    -- * Destructuring the Response
    ListTrackersResponse (..),
    newListTrackersResponse,

    -- * Response Lenses
    listTrackersResponse_nextToken,
    listTrackersResponse_httpStatus,
    listTrackersResponse_entries,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListTrackers' smart constructor.
data ListTrackers = ListTrackers'
  { -- | The pagination token specifying which page of results to return in the
    -- response. If no token is provided, the default page is the first page.
    --
    -- Default value: @null@
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An optional limit for the number of resources returned in a single call.
    --
    -- Default value: @100@
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTrackers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTrackers_nextToken' - The pagination token specifying which page of results to return in the
-- response. If no token is provided, the default page is the first page.
--
-- Default value: @null@
--
-- 'maxResults', 'listTrackers_maxResults' - An optional limit for the number of resources returned in a single call.
--
-- Default value: @100@
newListTrackers ::
  ListTrackers
newListTrackers =
  ListTrackers'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The pagination token specifying which page of results to return in the
-- response. If no token is provided, the default page is the first page.
--
-- Default value: @null@
listTrackers_nextToken :: Lens.Lens' ListTrackers (Prelude.Maybe Prelude.Text)
listTrackers_nextToken = Lens.lens (\ListTrackers' {nextToken} -> nextToken) (\s@ListTrackers' {} a -> s {nextToken = a} :: ListTrackers)

-- | An optional limit for the number of resources returned in a single call.
--
-- Default value: @100@
listTrackers_maxResults :: Lens.Lens' ListTrackers (Prelude.Maybe Prelude.Natural)
listTrackers_maxResults = Lens.lens (\ListTrackers' {maxResults} -> maxResults) (\s@ListTrackers' {} a -> s {maxResults = a} :: ListTrackers)

instance Core.AWSPager ListTrackers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listTrackersResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop (rs Lens.^. listTrackersResponse_entries) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listTrackers_nextToken
          Lens..~ rs
          Lens.^? listTrackersResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListTrackers where
  type AWSResponse ListTrackers = ListTrackersResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTrackersResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Entries" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListTrackers

instance Prelude.NFData ListTrackers

instance Core.ToHeaders ListTrackers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListTrackers where
  toJSON ListTrackers' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListTrackers where
  toPath = Prelude.const "/tracking/v0/list-trackers"

instance Core.ToQuery ListTrackers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListTrackersResponse' smart constructor.
data ListTrackersResponse = ListTrackersResponse'
  { -- | A pagination token indicating there are additional pages available. You
    -- can use the token in a following request to fetch the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Contains tracker resources in your AWS account. Details include tracker
    -- name, description and timestamps for when the tracker was created and
    -- last updated.
    entries :: [ListTrackersResponseEntry]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTrackersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTrackersResponse_nextToken' - A pagination token indicating there are additional pages available. You
-- can use the token in a following request to fetch the next set of
-- results.
--
-- 'httpStatus', 'listTrackersResponse_httpStatus' - The response's http status code.
--
-- 'entries', 'listTrackersResponse_entries' - Contains tracker resources in your AWS account. Details include tracker
-- name, description and timestamps for when the tracker was created and
-- last updated.
newListTrackersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListTrackersResponse
newListTrackersResponse pHttpStatus_ =
  ListTrackersResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      entries = Prelude.mempty
    }

-- | A pagination token indicating there are additional pages available. You
-- can use the token in a following request to fetch the next set of
-- results.
listTrackersResponse_nextToken :: Lens.Lens' ListTrackersResponse (Prelude.Maybe Prelude.Text)
listTrackersResponse_nextToken = Lens.lens (\ListTrackersResponse' {nextToken} -> nextToken) (\s@ListTrackersResponse' {} a -> s {nextToken = a} :: ListTrackersResponse)

-- | The response's http status code.
listTrackersResponse_httpStatus :: Lens.Lens' ListTrackersResponse Prelude.Int
listTrackersResponse_httpStatus = Lens.lens (\ListTrackersResponse' {httpStatus} -> httpStatus) (\s@ListTrackersResponse' {} a -> s {httpStatus = a} :: ListTrackersResponse)

-- | Contains tracker resources in your AWS account. Details include tracker
-- name, description and timestamps for when the tracker was created and
-- last updated.
listTrackersResponse_entries :: Lens.Lens' ListTrackersResponse [ListTrackersResponseEntry]
listTrackersResponse_entries = Lens.lens (\ListTrackersResponse' {entries} -> entries) (\s@ListTrackersResponse' {} a -> s {entries = a} :: ListTrackersResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListTrackersResponse
