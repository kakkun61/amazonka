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
-- Module      : Network.AWS.MediaPackageVOD.ListAssets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a collection of MediaPackage VOD Asset resources.
--
-- This operation returns paginated results.
module Network.AWS.MediaPackageVOD.ListAssets
  ( -- * Creating a Request
    ListAssets (..),
    newListAssets,

    -- * Request Lenses
    listAssets_packagingGroupId,
    listAssets_nextToken,
    listAssets_maxResults,

    -- * Destructuring the Response
    ListAssetsResponse (..),
    newListAssetsResponse,

    -- * Response Lenses
    listAssetsResponse_nextToken,
    listAssetsResponse_assets,
    listAssetsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaPackageVOD.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListAssets' smart constructor.
data ListAssets = ListAssets'
  { -- | Returns Assets associated with the specified PackagingGroup.
    packagingGroupId :: Prelude.Maybe Prelude.Text,
    -- | A token used to resume pagination from the end of a previous request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Upper bound on number of records to return.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAssets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'packagingGroupId', 'listAssets_packagingGroupId' - Returns Assets associated with the specified PackagingGroup.
--
-- 'nextToken', 'listAssets_nextToken' - A token used to resume pagination from the end of a previous request.
--
-- 'maxResults', 'listAssets_maxResults' - Upper bound on number of records to return.
newListAssets ::
  ListAssets
newListAssets =
  ListAssets'
    { packagingGroupId = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Returns Assets associated with the specified PackagingGroup.
listAssets_packagingGroupId :: Lens.Lens' ListAssets (Prelude.Maybe Prelude.Text)
listAssets_packagingGroupId = Lens.lens (\ListAssets' {packagingGroupId} -> packagingGroupId) (\s@ListAssets' {} a -> s {packagingGroupId = a} :: ListAssets)

-- | A token used to resume pagination from the end of a previous request.
listAssets_nextToken :: Lens.Lens' ListAssets (Prelude.Maybe Prelude.Text)
listAssets_nextToken = Lens.lens (\ListAssets' {nextToken} -> nextToken) (\s@ListAssets' {} a -> s {nextToken = a} :: ListAssets)

-- | Upper bound on number of records to return.
listAssets_maxResults :: Lens.Lens' ListAssets (Prelude.Maybe Prelude.Natural)
listAssets_maxResults = Lens.lens (\ListAssets' {maxResults} -> maxResults) (\s@ListAssets' {} a -> s {maxResults = a} :: ListAssets)

instance Core.AWSPager ListAssets where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listAssetsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listAssetsResponse_assets Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listAssets_nextToken
          Lens..~ rs
          Lens.^? listAssetsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListAssets where
  type AWSResponse ListAssets = ListAssetsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAssetsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "assets" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListAssets

instance Prelude.NFData ListAssets

instance Core.ToHeaders ListAssets where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListAssets where
  toPath = Prelude.const "/assets"

instance Core.ToQuery ListAssets where
  toQuery ListAssets' {..} =
    Prelude.mconcat
      [ "packagingGroupId" Core.=: packagingGroupId,
        "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListAssetsResponse' smart constructor.
data ListAssetsResponse = ListAssetsResponse'
  { -- | A token that can be used to resume pagination from the end of the
    -- collection.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of MediaPackage VOD Asset resources.
    assets :: Prelude.Maybe [AssetShallow],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAssetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAssetsResponse_nextToken' - A token that can be used to resume pagination from the end of the
-- collection.
--
-- 'assets', 'listAssetsResponse_assets' - A list of MediaPackage VOD Asset resources.
--
-- 'httpStatus', 'listAssetsResponse_httpStatus' - The response's http status code.
newListAssetsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAssetsResponse
newListAssetsResponse pHttpStatus_ =
  ListAssetsResponse'
    { nextToken = Prelude.Nothing,
      assets = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A token that can be used to resume pagination from the end of the
-- collection.
listAssetsResponse_nextToken :: Lens.Lens' ListAssetsResponse (Prelude.Maybe Prelude.Text)
listAssetsResponse_nextToken = Lens.lens (\ListAssetsResponse' {nextToken} -> nextToken) (\s@ListAssetsResponse' {} a -> s {nextToken = a} :: ListAssetsResponse)

-- | A list of MediaPackage VOD Asset resources.
listAssetsResponse_assets :: Lens.Lens' ListAssetsResponse (Prelude.Maybe [AssetShallow])
listAssetsResponse_assets = Lens.lens (\ListAssetsResponse' {assets} -> assets) (\s@ListAssetsResponse' {} a -> s {assets = a} :: ListAssetsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listAssetsResponse_httpStatus :: Lens.Lens' ListAssetsResponse Prelude.Int
listAssetsResponse_httpStatus = Lens.lens (\ListAssetsResponse' {httpStatus} -> httpStatus) (\s@ListAssetsResponse' {} a -> s {httpStatus = a} :: ListAssetsResponse)

instance Prelude.NFData ListAssetsResponse
