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
-- Module      : Network.AWS.Location.ListMaps
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists map resources in your AWS account.
--
-- This operation returns paginated results.
module Network.AWS.Location.ListMaps
  ( -- * Creating a Request
    ListMaps (..),
    newListMaps,

    -- * Request Lenses
    listMaps_nextToken,
    listMaps_maxResults,

    -- * Destructuring the Response
    ListMapsResponse (..),
    newListMapsResponse,

    -- * Response Lenses
    listMapsResponse_nextToken,
    listMapsResponse_httpStatus,
    listMapsResponse_entries,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListMaps' smart constructor.
data ListMaps = ListMaps'
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
-- Create a value of 'ListMaps' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listMaps_nextToken' - The pagination token specifying which page of results to return in the
-- response. If no token is provided, the default page is the first page.
--
-- Default value: @null@
--
-- 'maxResults', 'listMaps_maxResults' - An optional limit for the number of resources returned in a single call.
--
-- Default value: @100@
newListMaps ::
  ListMaps
newListMaps =
  ListMaps'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The pagination token specifying which page of results to return in the
-- response. If no token is provided, the default page is the first page.
--
-- Default value: @null@
listMaps_nextToken :: Lens.Lens' ListMaps (Prelude.Maybe Prelude.Text)
listMaps_nextToken = Lens.lens (\ListMaps' {nextToken} -> nextToken) (\s@ListMaps' {} a -> s {nextToken = a} :: ListMaps)

-- | An optional limit for the number of resources returned in a single call.
--
-- Default value: @100@
listMaps_maxResults :: Lens.Lens' ListMaps (Prelude.Maybe Prelude.Natural)
listMaps_maxResults = Lens.lens (\ListMaps' {maxResults} -> maxResults) (\s@ListMaps' {} a -> s {maxResults = a} :: ListMaps)

instance Core.AWSPager ListMaps where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listMapsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop (rs Lens.^. listMapsResponse_entries) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listMaps_nextToken
          Lens..~ rs
          Lens.^? listMapsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListMaps where
  type AWSResponse ListMaps = ListMapsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListMapsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Entries" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListMaps

instance Prelude.NFData ListMaps

instance Core.ToHeaders ListMaps where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListMaps where
  toJSON ListMaps' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListMaps where
  toPath = Prelude.const "/maps/v0/list-maps"

instance Core.ToQuery ListMaps where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListMapsResponse' smart constructor.
data ListMapsResponse = ListMapsResponse'
  { -- | A pagination token indicating there are additional pages available. You
    -- can use the token in a following request to fetch the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Contains a list of maps in your AWS account
    entries :: [ListMapsResponseEntry]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListMapsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listMapsResponse_nextToken' - A pagination token indicating there are additional pages available. You
-- can use the token in a following request to fetch the next set of
-- results.
--
-- 'httpStatus', 'listMapsResponse_httpStatus' - The response's http status code.
--
-- 'entries', 'listMapsResponse_entries' - Contains a list of maps in your AWS account
newListMapsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListMapsResponse
newListMapsResponse pHttpStatus_ =
  ListMapsResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      entries = Prelude.mempty
    }

-- | A pagination token indicating there are additional pages available. You
-- can use the token in a following request to fetch the next set of
-- results.
listMapsResponse_nextToken :: Lens.Lens' ListMapsResponse (Prelude.Maybe Prelude.Text)
listMapsResponse_nextToken = Lens.lens (\ListMapsResponse' {nextToken} -> nextToken) (\s@ListMapsResponse' {} a -> s {nextToken = a} :: ListMapsResponse)

-- | The response's http status code.
listMapsResponse_httpStatus :: Lens.Lens' ListMapsResponse Prelude.Int
listMapsResponse_httpStatus = Lens.lens (\ListMapsResponse' {httpStatus} -> httpStatus) (\s@ListMapsResponse' {} a -> s {httpStatus = a} :: ListMapsResponse)

-- | Contains a list of maps in your AWS account
listMapsResponse_entries :: Lens.Lens' ListMapsResponse [ListMapsResponseEntry]
listMapsResponse_entries = Lens.lens (\ListMapsResponse' {entries} -> entries) (\s@ListMapsResponse' {} a -> s {entries = a} :: ListMapsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListMapsResponse
