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
-- Module      : Network.AWS.Location.ListRouteCalculators
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists route calculator resources in your AWS account.
--
-- This operation returns paginated results.
module Network.AWS.Location.ListRouteCalculators
  ( -- * Creating a Request
    ListRouteCalculators (..),
    newListRouteCalculators,

    -- * Request Lenses
    listRouteCalculators_nextToken,
    listRouteCalculators_maxResults,

    -- * Destructuring the Response
    ListRouteCalculatorsResponse (..),
    newListRouteCalculatorsResponse,

    -- * Response Lenses
    listRouteCalculatorsResponse_nextToken,
    listRouteCalculatorsResponse_httpStatus,
    listRouteCalculatorsResponse_entries,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListRouteCalculators' smart constructor.
data ListRouteCalculators = ListRouteCalculators'
  { -- | The pagination token specifying which page of results to return in the
    -- response. If no token is provided, the default page is the first page.
    --
    -- Default Value: @null@
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An optional maximum number of results returned in a single call.
    --
    -- Default Value: @100@
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRouteCalculators' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRouteCalculators_nextToken' - The pagination token specifying which page of results to return in the
-- response. If no token is provided, the default page is the first page.
--
-- Default Value: @null@
--
-- 'maxResults', 'listRouteCalculators_maxResults' - An optional maximum number of results returned in a single call.
--
-- Default Value: @100@
newListRouteCalculators ::
  ListRouteCalculators
newListRouteCalculators =
  ListRouteCalculators'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The pagination token specifying which page of results to return in the
-- response. If no token is provided, the default page is the first page.
--
-- Default Value: @null@
listRouteCalculators_nextToken :: Lens.Lens' ListRouteCalculators (Prelude.Maybe Prelude.Text)
listRouteCalculators_nextToken = Lens.lens (\ListRouteCalculators' {nextToken} -> nextToken) (\s@ListRouteCalculators' {} a -> s {nextToken = a} :: ListRouteCalculators)

-- | An optional maximum number of results returned in a single call.
--
-- Default Value: @100@
listRouteCalculators_maxResults :: Lens.Lens' ListRouteCalculators (Prelude.Maybe Prelude.Natural)
listRouteCalculators_maxResults = Lens.lens (\ListRouteCalculators' {maxResults} -> maxResults) (\s@ListRouteCalculators' {} a -> s {maxResults = a} :: ListRouteCalculators)

instance Core.AWSPager ListRouteCalculators where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listRouteCalculatorsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listRouteCalculatorsResponse_entries) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listRouteCalculators_nextToken
          Lens..~ rs
          Lens.^? listRouteCalculatorsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListRouteCalculators where
  type
    AWSResponse ListRouteCalculators =
      ListRouteCalculatorsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListRouteCalculatorsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Entries" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListRouteCalculators

instance Prelude.NFData ListRouteCalculators

instance Core.ToHeaders ListRouteCalculators where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListRouteCalculators where
  toJSON ListRouteCalculators' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListRouteCalculators where
  toPath = Prelude.const "/routes/v0/list-calculators"

instance Core.ToQuery ListRouteCalculators where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListRouteCalculatorsResponse' smart constructor.
data ListRouteCalculatorsResponse = ListRouteCalculatorsResponse'
  { -- | A pagination token indicating there are additional pages available. You
    -- can use the token in a subsequent request to fetch the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Lists the route calculator resources that exist in your AWS account
    entries :: [ListRouteCalculatorsResponseEntry]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRouteCalculatorsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRouteCalculatorsResponse_nextToken' - A pagination token indicating there are additional pages available. You
-- can use the token in a subsequent request to fetch the next set of
-- results.
--
-- 'httpStatus', 'listRouteCalculatorsResponse_httpStatus' - The response's http status code.
--
-- 'entries', 'listRouteCalculatorsResponse_entries' - Lists the route calculator resources that exist in your AWS account
newListRouteCalculatorsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListRouteCalculatorsResponse
newListRouteCalculatorsResponse pHttpStatus_ =
  ListRouteCalculatorsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      entries = Prelude.mempty
    }

-- | A pagination token indicating there are additional pages available. You
-- can use the token in a subsequent request to fetch the next set of
-- results.
listRouteCalculatorsResponse_nextToken :: Lens.Lens' ListRouteCalculatorsResponse (Prelude.Maybe Prelude.Text)
listRouteCalculatorsResponse_nextToken = Lens.lens (\ListRouteCalculatorsResponse' {nextToken} -> nextToken) (\s@ListRouteCalculatorsResponse' {} a -> s {nextToken = a} :: ListRouteCalculatorsResponse)

-- | The response's http status code.
listRouteCalculatorsResponse_httpStatus :: Lens.Lens' ListRouteCalculatorsResponse Prelude.Int
listRouteCalculatorsResponse_httpStatus = Lens.lens (\ListRouteCalculatorsResponse' {httpStatus} -> httpStatus) (\s@ListRouteCalculatorsResponse' {} a -> s {httpStatus = a} :: ListRouteCalculatorsResponse)

-- | Lists the route calculator resources that exist in your AWS account
listRouteCalculatorsResponse_entries :: Lens.Lens' ListRouteCalculatorsResponse [ListRouteCalculatorsResponseEntry]
listRouteCalculatorsResponse_entries = Lens.lens (\ListRouteCalculatorsResponse' {entries} -> entries) (\s@ListRouteCalculatorsResponse' {} a -> s {entries = a} :: ListRouteCalculatorsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListRouteCalculatorsResponse
