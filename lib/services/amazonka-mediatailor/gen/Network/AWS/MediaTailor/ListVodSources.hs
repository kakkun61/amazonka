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
-- Module      : Network.AWS.MediaTailor.ListVodSources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the VOD sources in a source location.
--
-- This operation returns paginated results.
module Network.AWS.MediaTailor.ListVodSources
  ( -- * Creating a Request
    ListVodSources (..),
    newListVodSources,

    -- * Request Lenses
    listVodSources_nextToken,
    listVodSources_maxResults,
    listVodSources_sourceLocationName,

    -- * Destructuring the Response
    ListVodSourcesResponse (..),
    newListVodSourcesResponse,

    -- * Response Lenses
    listVodSourcesResponse_items,
    listVodSourcesResponse_nextToken,
    listVodSourcesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaTailor.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListVodSources' smart constructor.
data ListVodSources = ListVodSources'
  { -- | Pagination token from the GET list request. Use the token to fetch the
    -- next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Upper bound on number of records to return. The maximum number of
    -- results is 100.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The identifier for the source location you are working on.
    sourceLocationName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListVodSources' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listVodSources_nextToken' - Pagination token from the GET list request. Use the token to fetch the
-- next page of results.
--
-- 'maxResults', 'listVodSources_maxResults' - Upper bound on number of records to return. The maximum number of
-- results is 100.
--
-- 'sourceLocationName', 'listVodSources_sourceLocationName' - The identifier for the source location you are working on.
newListVodSources ::
  -- | 'sourceLocationName'
  Prelude.Text ->
  ListVodSources
newListVodSources pSourceLocationName_ =
  ListVodSources'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      sourceLocationName = pSourceLocationName_
    }

-- | Pagination token from the GET list request. Use the token to fetch the
-- next page of results.
listVodSources_nextToken :: Lens.Lens' ListVodSources (Prelude.Maybe Prelude.Text)
listVodSources_nextToken = Lens.lens (\ListVodSources' {nextToken} -> nextToken) (\s@ListVodSources' {} a -> s {nextToken = a} :: ListVodSources)

-- | Upper bound on number of records to return. The maximum number of
-- results is 100.
listVodSources_maxResults :: Lens.Lens' ListVodSources (Prelude.Maybe Prelude.Natural)
listVodSources_maxResults = Lens.lens (\ListVodSources' {maxResults} -> maxResults) (\s@ListVodSources' {} a -> s {maxResults = a} :: ListVodSources)

-- | The identifier for the source location you are working on.
listVodSources_sourceLocationName :: Lens.Lens' ListVodSources Prelude.Text
listVodSources_sourceLocationName = Lens.lens (\ListVodSources' {sourceLocationName} -> sourceLocationName) (\s@ListVodSources' {} a -> s {sourceLocationName = a} :: ListVodSources)

instance Core.AWSPager ListVodSources where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listVodSourcesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listVodSourcesResponse_items Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listVodSources_nextToken
          Lens..~ rs
          Lens.^? listVodSourcesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListVodSources where
  type
    AWSResponse ListVodSources =
      ListVodSourcesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListVodSourcesResponse'
            Prelude.<$> (x Core..?> "Items" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListVodSources

instance Prelude.NFData ListVodSources

instance Core.ToHeaders ListVodSources where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListVodSources where
  toPath ListVodSources' {..} =
    Prelude.mconcat
      [ "/sourceLocation/",
        Core.toBS sourceLocationName,
        "/vodSources"
      ]

instance Core.ToQuery ListVodSources where
  toQuery ListVodSources' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListVodSourcesResponse' smart constructor.
data ListVodSourcesResponse = ListVodSourcesResponse'
  { -- | Lists the VOD sources.
    items :: Prelude.Maybe [VodSource],
    -- | Pagination token from the list request. Use the token to fetch the next
    -- page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListVodSourcesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'listVodSourcesResponse_items' - Lists the VOD sources.
--
-- 'nextToken', 'listVodSourcesResponse_nextToken' - Pagination token from the list request. Use the token to fetch the next
-- page of results.
--
-- 'httpStatus', 'listVodSourcesResponse_httpStatus' - The response's http status code.
newListVodSourcesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListVodSourcesResponse
newListVodSourcesResponse pHttpStatus_ =
  ListVodSourcesResponse'
    { items = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Lists the VOD sources.
listVodSourcesResponse_items :: Lens.Lens' ListVodSourcesResponse (Prelude.Maybe [VodSource])
listVodSourcesResponse_items = Lens.lens (\ListVodSourcesResponse' {items} -> items) (\s@ListVodSourcesResponse' {} a -> s {items = a} :: ListVodSourcesResponse) Prelude.. Lens.mapping Lens.coerced

-- | Pagination token from the list request. Use the token to fetch the next
-- page of results.
listVodSourcesResponse_nextToken :: Lens.Lens' ListVodSourcesResponse (Prelude.Maybe Prelude.Text)
listVodSourcesResponse_nextToken = Lens.lens (\ListVodSourcesResponse' {nextToken} -> nextToken) (\s@ListVodSourcesResponse' {} a -> s {nextToken = a} :: ListVodSourcesResponse)

-- | The response's http status code.
listVodSourcesResponse_httpStatus :: Lens.Lens' ListVodSourcesResponse Prelude.Int
listVodSourcesResponse_httpStatus = Lens.lens (\ListVodSourcesResponse' {httpStatus} -> httpStatus) (\s@ListVodSourcesResponse' {} a -> s {httpStatus = a} :: ListVodSourcesResponse)

instance Prelude.NFData ListVodSourcesResponse
