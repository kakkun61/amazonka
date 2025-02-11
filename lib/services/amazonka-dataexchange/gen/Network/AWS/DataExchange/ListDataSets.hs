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
-- Module      : Network.AWS.DataExchange.ListDataSets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation lists your data sets. When listing by origin OWNED,
-- results are sorted by CreatedAt in descending order. When listing by
-- origin ENTITLED, there is no order and the maxResults parameter is
-- ignored.
--
-- This operation returns paginated results.
module Network.AWS.DataExchange.ListDataSets
  ( -- * Creating a Request
    ListDataSets (..),
    newListDataSets,

    -- * Request Lenses
    listDataSets_origin,
    listDataSets_nextToken,
    listDataSets_maxResults,

    -- * Destructuring the Response
    ListDataSetsResponse (..),
    newListDataSetsResponse,

    -- * Response Lenses
    listDataSetsResponse_nextToken,
    listDataSetsResponse_dataSets,
    listDataSetsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataExchange.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListDataSets' smart constructor.
data ListDataSets = ListDataSets'
  { -- | A property that defines the data set as OWNED by the account (for
    -- providers) or ENTITLED to the account (for subscribers).
    origin :: Prelude.Maybe Prelude.Text,
    -- | The token value retrieved from a previous call to access the next page
    -- of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results returned by a single call.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDataSets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'origin', 'listDataSets_origin' - A property that defines the data set as OWNED by the account (for
-- providers) or ENTITLED to the account (for subscribers).
--
-- 'nextToken', 'listDataSets_nextToken' - The token value retrieved from a previous call to access the next page
-- of results.
--
-- 'maxResults', 'listDataSets_maxResults' - The maximum number of results returned by a single call.
newListDataSets ::
  ListDataSets
newListDataSets =
  ListDataSets'
    { origin = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | A property that defines the data set as OWNED by the account (for
-- providers) or ENTITLED to the account (for subscribers).
listDataSets_origin :: Lens.Lens' ListDataSets (Prelude.Maybe Prelude.Text)
listDataSets_origin = Lens.lens (\ListDataSets' {origin} -> origin) (\s@ListDataSets' {} a -> s {origin = a} :: ListDataSets)

-- | The token value retrieved from a previous call to access the next page
-- of results.
listDataSets_nextToken :: Lens.Lens' ListDataSets (Prelude.Maybe Prelude.Text)
listDataSets_nextToken = Lens.lens (\ListDataSets' {nextToken} -> nextToken) (\s@ListDataSets' {} a -> s {nextToken = a} :: ListDataSets)

-- | The maximum number of results returned by a single call.
listDataSets_maxResults :: Lens.Lens' ListDataSets (Prelude.Maybe Prelude.Natural)
listDataSets_maxResults = Lens.lens (\ListDataSets' {maxResults} -> maxResults) (\s@ListDataSets' {} a -> s {maxResults = a} :: ListDataSets)

instance Core.AWSPager ListDataSets where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listDataSetsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listDataSetsResponse_dataSets Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listDataSets_nextToken
          Lens..~ rs
          Lens.^? listDataSetsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListDataSets where
  type AWSResponse ListDataSets = ListDataSetsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDataSetsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "DataSets" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDataSets

instance Prelude.NFData ListDataSets

instance Core.ToHeaders ListDataSets where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListDataSets where
  toPath = Prelude.const "/v1/data-sets"

instance Core.ToQuery ListDataSets where
  toQuery ListDataSets' {..} =
    Prelude.mconcat
      [ "origin" Core.=: origin,
        "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListDataSetsResponse' smart constructor.
data ListDataSetsResponse = ListDataSetsResponse'
  { -- | The token value retrieved from a previous call to access the next page
    -- of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The data set objects listed by the request.
    dataSets :: Prelude.Maybe [DataSetEntry],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDataSetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDataSetsResponse_nextToken' - The token value retrieved from a previous call to access the next page
-- of results.
--
-- 'dataSets', 'listDataSetsResponse_dataSets' - The data set objects listed by the request.
--
-- 'httpStatus', 'listDataSetsResponse_httpStatus' - The response's http status code.
newListDataSetsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDataSetsResponse
newListDataSetsResponse pHttpStatus_ =
  ListDataSetsResponse'
    { nextToken = Prelude.Nothing,
      dataSets = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token value retrieved from a previous call to access the next page
-- of results.
listDataSetsResponse_nextToken :: Lens.Lens' ListDataSetsResponse (Prelude.Maybe Prelude.Text)
listDataSetsResponse_nextToken = Lens.lens (\ListDataSetsResponse' {nextToken} -> nextToken) (\s@ListDataSetsResponse' {} a -> s {nextToken = a} :: ListDataSetsResponse)

-- | The data set objects listed by the request.
listDataSetsResponse_dataSets :: Lens.Lens' ListDataSetsResponse (Prelude.Maybe [DataSetEntry])
listDataSetsResponse_dataSets = Lens.lens (\ListDataSetsResponse' {dataSets} -> dataSets) (\s@ListDataSetsResponse' {} a -> s {dataSets = a} :: ListDataSetsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listDataSetsResponse_httpStatus :: Lens.Lens' ListDataSetsResponse Prelude.Int
listDataSetsResponse_httpStatus = Lens.lens (\ListDataSetsResponse' {httpStatus} -> httpStatus) (\s@ListDataSetsResponse' {} a -> s {httpStatus = a} :: ListDataSetsResponse)

instance Prelude.NFData ListDataSetsResponse
