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
-- Module      : Network.AWS.DataExchange.ListRevisionAssets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation lists a revision\'s assets sorted alphabetically in
-- descending order.
--
-- This operation returns paginated results.
module Network.AWS.DataExchange.ListRevisionAssets
  ( -- * Creating a Request
    ListRevisionAssets (..),
    newListRevisionAssets,

    -- * Request Lenses
    listRevisionAssets_nextToken,
    listRevisionAssets_maxResults,
    listRevisionAssets_revisionId,
    listRevisionAssets_dataSetId,

    -- * Destructuring the Response
    ListRevisionAssetsResponse (..),
    newListRevisionAssetsResponse,

    -- * Response Lenses
    listRevisionAssetsResponse_nextToken,
    listRevisionAssetsResponse_assets,
    listRevisionAssetsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataExchange.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListRevisionAssets' smart constructor.
data ListRevisionAssets = ListRevisionAssets'
  { -- | The token value retrieved from a previous call to access the next page
    -- of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results returned by a single call.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique identifier for a revision.
    revisionId :: Prelude.Text,
    -- | The unique identifier for a data set.
    dataSetId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRevisionAssets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRevisionAssets_nextToken' - The token value retrieved from a previous call to access the next page
-- of results.
--
-- 'maxResults', 'listRevisionAssets_maxResults' - The maximum number of results returned by a single call.
--
-- 'revisionId', 'listRevisionAssets_revisionId' - The unique identifier for a revision.
--
-- 'dataSetId', 'listRevisionAssets_dataSetId' - The unique identifier for a data set.
newListRevisionAssets ::
  -- | 'revisionId'
  Prelude.Text ->
  -- | 'dataSetId'
  Prelude.Text ->
  ListRevisionAssets
newListRevisionAssets pRevisionId_ pDataSetId_ =
  ListRevisionAssets'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      revisionId = pRevisionId_,
      dataSetId = pDataSetId_
    }

-- | The token value retrieved from a previous call to access the next page
-- of results.
listRevisionAssets_nextToken :: Lens.Lens' ListRevisionAssets (Prelude.Maybe Prelude.Text)
listRevisionAssets_nextToken = Lens.lens (\ListRevisionAssets' {nextToken} -> nextToken) (\s@ListRevisionAssets' {} a -> s {nextToken = a} :: ListRevisionAssets)

-- | The maximum number of results returned by a single call.
listRevisionAssets_maxResults :: Lens.Lens' ListRevisionAssets (Prelude.Maybe Prelude.Natural)
listRevisionAssets_maxResults = Lens.lens (\ListRevisionAssets' {maxResults} -> maxResults) (\s@ListRevisionAssets' {} a -> s {maxResults = a} :: ListRevisionAssets)

-- | The unique identifier for a revision.
listRevisionAssets_revisionId :: Lens.Lens' ListRevisionAssets Prelude.Text
listRevisionAssets_revisionId = Lens.lens (\ListRevisionAssets' {revisionId} -> revisionId) (\s@ListRevisionAssets' {} a -> s {revisionId = a} :: ListRevisionAssets)

-- | The unique identifier for a data set.
listRevisionAssets_dataSetId :: Lens.Lens' ListRevisionAssets Prelude.Text
listRevisionAssets_dataSetId = Lens.lens (\ListRevisionAssets' {dataSetId} -> dataSetId) (\s@ListRevisionAssets' {} a -> s {dataSetId = a} :: ListRevisionAssets)

instance Core.AWSPager ListRevisionAssets where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listRevisionAssetsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listRevisionAssetsResponse_assets
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listRevisionAssets_nextToken
          Lens..~ rs
          Lens.^? listRevisionAssetsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListRevisionAssets where
  type
    AWSResponse ListRevisionAssets =
      ListRevisionAssetsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListRevisionAssetsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Assets" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListRevisionAssets

instance Prelude.NFData ListRevisionAssets

instance Core.ToHeaders ListRevisionAssets where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListRevisionAssets where
  toPath ListRevisionAssets' {..} =
    Prelude.mconcat
      [ "/v1/data-sets/",
        Core.toBS dataSetId,
        "/revisions/",
        Core.toBS revisionId,
        "/assets"
      ]

instance Core.ToQuery ListRevisionAssets where
  toQuery ListRevisionAssets' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListRevisionAssetsResponse' smart constructor.
data ListRevisionAssetsResponse = ListRevisionAssetsResponse'
  { -- | The token value retrieved from a previous call to access the next page
    -- of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The asset objects listed by the request.
    assets :: Prelude.Maybe [AssetEntry],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRevisionAssetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRevisionAssetsResponse_nextToken' - The token value retrieved from a previous call to access the next page
-- of results.
--
-- 'assets', 'listRevisionAssetsResponse_assets' - The asset objects listed by the request.
--
-- 'httpStatus', 'listRevisionAssetsResponse_httpStatus' - The response's http status code.
newListRevisionAssetsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListRevisionAssetsResponse
newListRevisionAssetsResponse pHttpStatus_ =
  ListRevisionAssetsResponse'
    { nextToken =
        Prelude.Nothing,
      assets = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token value retrieved from a previous call to access the next page
-- of results.
listRevisionAssetsResponse_nextToken :: Lens.Lens' ListRevisionAssetsResponse (Prelude.Maybe Prelude.Text)
listRevisionAssetsResponse_nextToken = Lens.lens (\ListRevisionAssetsResponse' {nextToken} -> nextToken) (\s@ListRevisionAssetsResponse' {} a -> s {nextToken = a} :: ListRevisionAssetsResponse)

-- | The asset objects listed by the request.
listRevisionAssetsResponse_assets :: Lens.Lens' ListRevisionAssetsResponse (Prelude.Maybe [AssetEntry])
listRevisionAssetsResponse_assets = Lens.lens (\ListRevisionAssetsResponse' {assets} -> assets) (\s@ListRevisionAssetsResponse' {} a -> s {assets = a} :: ListRevisionAssetsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listRevisionAssetsResponse_httpStatus :: Lens.Lens' ListRevisionAssetsResponse Prelude.Int
listRevisionAssetsResponse_httpStatus = Lens.lens (\ListRevisionAssetsResponse' {httpStatus} -> httpStatus) (\s@ListRevisionAssetsResponse' {} a -> s {httpStatus = a} :: ListRevisionAssetsResponse)

instance Prelude.NFData ListRevisionAssetsResponse
