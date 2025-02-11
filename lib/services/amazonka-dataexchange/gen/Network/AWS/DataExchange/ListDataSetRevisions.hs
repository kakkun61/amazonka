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
-- Module      : Network.AWS.DataExchange.ListDataSetRevisions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation lists a data set\'s revisions sorted by CreatedAt in
-- descending order.
--
-- This operation returns paginated results.
module Network.AWS.DataExchange.ListDataSetRevisions
  ( -- * Creating a Request
    ListDataSetRevisions (..),
    newListDataSetRevisions,

    -- * Request Lenses
    listDataSetRevisions_nextToken,
    listDataSetRevisions_maxResults,
    listDataSetRevisions_dataSetId,

    -- * Destructuring the Response
    ListDataSetRevisionsResponse (..),
    newListDataSetRevisionsResponse,

    -- * Response Lenses
    listDataSetRevisionsResponse_nextToken,
    listDataSetRevisionsResponse_revisions,
    listDataSetRevisionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataExchange.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListDataSetRevisions' smart constructor.
data ListDataSetRevisions = ListDataSetRevisions'
  { -- | The token value retrieved from a previous call to access the next page
    -- of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results returned by a single call.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique identifier for a data set.
    dataSetId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDataSetRevisions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDataSetRevisions_nextToken' - The token value retrieved from a previous call to access the next page
-- of results.
--
-- 'maxResults', 'listDataSetRevisions_maxResults' - The maximum number of results returned by a single call.
--
-- 'dataSetId', 'listDataSetRevisions_dataSetId' - The unique identifier for a data set.
newListDataSetRevisions ::
  -- | 'dataSetId'
  Prelude.Text ->
  ListDataSetRevisions
newListDataSetRevisions pDataSetId_ =
  ListDataSetRevisions'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      dataSetId = pDataSetId_
    }

-- | The token value retrieved from a previous call to access the next page
-- of results.
listDataSetRevisions_nextToken :: Lens.Lens' ListDataSetRevisions (Prelude.Maybe Prelude.Text)
listDataSetRevisions_nextToken = Lens.lens (\ListDataSetRevisions' {nextToken} -> nextToken) (\s@ListDataSetRevisions' {} a -> s {nextToken = a} :: ListDataSetRevisions)

-- | The maximum number of results returned by a single call.
listDataSetRevisions_maxResults :: Lens.Lens' ListDataSetRevisions (Prelude.Maybe Prelude.Natural)
listDataSetRevisions_maxResults = Lens.lens (\ListDataSetRevisions' {maxResults} -> maxResults) (\s@ListDataSetRevisions' {} a -> s {maxResults = a} :: ListDataSetRevisions)

-- | The unique identifier for a data set.
listDataSetRevisions_dataSetId :: Lens.Lens' ListDataSetRevisions Prelude.Text
listDataSetRevisions_dataSetId = Lens.lens (\ListDataSetRevisions' {dataSetId} -> dataSetId) (\s@ListDataSetRevisions' {} a -> s {dataSetId = a} :: ListDataSetRevisions)

instance Core.AWSPager ListDataSetRevisions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listDataSetRevisionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listDataSetRevisionsResponse_revisions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listDataSetRevisions_nextToken
          Lens..~ rs
          Lens.^? listDataSetRevisionsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListDataSetRevisions where
  type
    AWSResponse ListDataSetRevisions =
      ListDataSetRevisionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDataSetRevisionsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Revisions" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDataSetRevisions

instance Prelude.NFData ListDataSetRevisions

instance Core.ToHeaders ListDataSetRevisions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListDataSetRevisions where
  toPath ListDataSetRevisions' {..} =
    Prelude.mconcat
      ["/v1/data-sets/", Core.toBS dataSetId, "/revisions"]

instance Core.ToQuery ListDataSetRevisions where
  toQuery ListDataSetRevisions' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListDataSetRevisionsResponse' smart constructor.
data ListDataSetRevisionsResponse = ListDataSetRevisionsResponse'
  { -- | The token value retrieved from a previous call to access the next page
    -- of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The asset objects listed by the request.
    revisions :: Prelude.Maybe [RevisionEntry],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDataSetRevisionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDataSetRevisionsResponse_nextToken' - The token value retrieved from a previous call to access the next page
-- of results.
--
-- 'revisions', 'listDataSetRevisionsResponse_revisions' - The asset objects listed by the request.
--
-- 'httpStatus', 'listDataSetRevisionsResponse_httpStatus' - The response's http status code.
newListDataSetRevisionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDataSetRevisionsResponse
newListDataSetRevisionsResponse pHttpStatus_ =
  ListDataSetRevisionsResponse'
    { nextToken =
        Prelude.Nothing,
      revisions = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token value retrieved from a previous call to access the next page
-- of results.
listDataSetRevisionsResponse_nextToken :: Lens.Lens' ListDataSetRevisionsResponse (Prelude.Maybe Prelude.Text)
listDataSetRevisionsResponse_nextToken = Lens.lens (\ListDataSetRevisionsResponse' {nextToken} -> nextToken) (\s@ListDataSetRevisionsResponse' {} a -> s {nextToken = a} :: ListDataSetRevisionsResponse)

-- | The asset objects listed by the request.
listDataSetRevisionsResponse_revisions :: Lens.Lens' ListDataSetRevisionsResponse (Prelude.Maybe [RevisionEntry])
listDataSetRevisionsResponse_revisions = Lens.lens (\ListDataSetRevisionsResponse' {revisions} -> revisions) (\s@ListDataSetRevisionsResponse' {} a -> s {revisions = a} :: ListDataSetRevisionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listDataSetRevisionsResponse_httpStatus :: Lens.Lens' ListDataSetRevisionsResponse Prelude.Int
listDataSetRevisionsResponse_httpStatus = Lens.lens (\ListDataSetRevisionsResponse' {httpStatus} -> httpStatus) (\s@ListDataSetRevisionsResponse' {} a -> s {httpStatus = a} :: ListDataSetRevisionsResponse)

instance Prelude.NFData ListDataSetRevisionsResponse
