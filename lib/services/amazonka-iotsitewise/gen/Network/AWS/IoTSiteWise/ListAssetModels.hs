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
-- Module      : Network.AWS.IoTSiteWise.ListAssetModels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of summaries of all asset models.
--
-- This operation returns paginated results.
module Network.AWS.IoTSiteWise.ListAssetModels
  ( -- * Creating a Request
    ListAssetModels (..),
    newListAssetModels,

    -- * Request Lenses
    listAssetModels_nextToken,
    listAssetModels_maxResults,

    -- * Destructuring the Response
    ListAssetModelsResponse (..),
    newListAssetModelsResponse,

    -- * Response Lenses
    listAssetModelsResponse_nextToken,
    listAssetModelsResponse_httpStatus,
    listAssetModelsResponse_assetModelSummaries,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListAssetModels' smart constructor.
data ListAssetModels = ListAssetModels'
  { -- | The token to be used for the next set of paginated results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return for each paginated request.
    --
    -- Default: 50
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAssetModels' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAssetModels_nextToken' - The token to be used for the next set of paginated results.
--
-- 'maxResults', 'listAssetModels_maxResults' - The maximum number of results to return for each paginated request.
--
-- Default: 50
newListAssetModels ::
  ListAssetModels
newListAssetModels =
  ListAssetModels'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token to be used for the next set of paginated results.
listAssetModels_nextToken :: Lens.Lens' ListAssetModels (Prelude.Maybe Prelude.Text)
listAssetModels_nextToken = Lens.lens (\ListAssetModels' {nextToken} -> nextToken) (\s@ListAssetModels' {} a -> s {nextToken = a} :: ListAssetModels)

-- | The maximum number of results to return for each paginated request.
--
-- Default: 50
listAssetModels_maxResults :: Lens.Lens' ListAssetModels (Prelude.Maybe Prelude.Natural)
listAssetModels_maxResults = Lens.lens (\ListAssetModels' {maxResults} -> maxResults) (\s@ListAssetModels' {} a -> s {maxResults = a} :: ListAssetModels)

instance Core.AWSPager ListAssetModels where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listAssetModelsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^. listAssetModelsResponse_assetModelSummaries
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listAssetModels_nextToken
          Lens..~ rs
          Lens.^? listAssetModelsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListAssetModels where
  type
    AWSResponse ListAssetModels =
      ListAssetModelsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAssetModelsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "assetModelSummaries"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListAssetModels

instance Prelude.NFData ListAssetModels

instance Core.ToHeaders ListAssetModels where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListAssetModels where
  toPath = Prelude.const "/asset-models"

instance Core.ToQuery ListAssetModels where
  toQuery ListAssetModels' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListAssetModelsResponse' smart constructor.
data ListAssetModelsResponse = ListAssetModelsResponse'
  { -- | The token for the next set of results, or null if there are no
    -- additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list that summarizes each asset model.
    assetModelSummaries :: [AssetModelSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAssetModelsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAssetModelsResponse_nextToken' - The token for the next set of results, or null if there are no
-- additional results.
--
-- 'httpStatus', 'listAssetModelsResponse_httpStatus' - The response's http status code.
--
-- 'assetModelSummaries', 'listAssetModelsResponse_assetModelSummaries' - A list that summarizes each asset model.
newListAssetModelsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAssetModelsResponse
newListAssetModelsResponse pHttpStatus_ =
  ListAssetModelsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      assetModelSummaries = Prelude.mempty
    }

-- | The token for the next set of results, or null if there are no
-- additional results.
listAssetModelsResponse_nextToken :: Lens.Lens' ListAssetModelsResponse (Prelude.Maybe Prelude.Text)
listAssetModelsResponse_nextToken = Lens.lens (\ListAssetModelsResponse' {nextToken} -> nextToken) (\s@ListAssetModelsResponse' {} a -> s {nextToken = a} :: ListAssetModelsResponse)

-- | The response's http status code.
listAssetModelsResponse_httpStatus :: Lens.Lens' ListAssetModelsResponse Prelude.Int
listAssetModelsResponse_httpStatus = Lens.lens (\ListAssetModelsResponse' {httpStatus} -> httpStatus) (\s@ListAssetModelsResponse' {} a -> s {httpStatus = a} :: ListAssetModelsResponse)

-- | A list that summarizes each asset model.
listAssetModelsResponse_assetModelSummaries :: Lens.Lens' ListAssetModelsResponse [AssetModelSummary]
listAssetModelsResponse_assetModelSummaries = Lens.lens (\ListAssetModelsResponse' {assetModelSummaries} -> assetModelSummaries) (\s@ListAssetModelsResponse' {} a -> s {assetModelSummaries = a} :: ListAssetModelsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListAssetModelsResponse
