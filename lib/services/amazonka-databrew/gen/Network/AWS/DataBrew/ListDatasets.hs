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
-- Module      : Network.AWS.DataBrew.ListDatasets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the DataBrew datasets.
--
-- This operation returns paginated results.
module Network.AWS.DataBrew.ListDatasets
  ( -- * Creating a Request
    ListDatasets (..),
    newListDatasets,

    -- * Request Lenses
    listDatasets_nextToken,
    listDatasets_maxResults,

    -- * Destructuring the Response
    ListDatasetsResponse (..),
    newListDatasetsResponse,

    -- * Response Lenses
    listDatasetsResponse_nextToken,
    listDatasetsResponse_httpStatus,
    listDatasetsResponse_datasets,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataBrew.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListDatasets' smart constructor.
data ListDatasets = ListDatasets'
  { -- | The token returned by a previous call to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in this request.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDatasets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDatasets_nextToken' - The token returned by a previous call to retrieve the next set of
-- results.
--
-- 'maxResults', 'listDatasets_maxResults' - The maximum number of results to return in this request.
newListDatasets ::
  ListDatasets
newListDatasets =
  ListDatasets'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token returned by a previous call to retrieve the next set of
-- results.
listDatasets_nextToken :: Lens.Lens' ListDatasets (Prelude.Maybe Prelude.Text)
listDatasets_nextToken = Lens.lens (\ListDatasets' {nextToken} -> nextToken) (\s@ListDatasets' {} a -> s {nextToken = a} :: ListDatasets)

-- | The maximum number of results to return in this request.
listDatasets_maxResults :: Lens.Lens' ListDatasets (Prelude.Maybe Prelude.Natural)
listDatasets_maxResults = Lens.lens (\ListDatasets' {maxResults} -> maxResults) (\s@ListDatasets' {} a -> s {maxResults = a} :: ListDatasets)

instance Core.AWSPager ListDatasets where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listDatasetsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listDatasetsResponse_datasets) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listDatasets_nextToken
          Lens..~ rs
          Lens.^? listDatasetsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListDatasets where
  type AWSResponse ListDatasets = ListDatasetsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDatasetsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Datasets" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListDatasets

instance Prelude.NFData ListDatasets

instance Core.ToHeaders ListDatasets where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListDatasets where
  toPath = Prelude.const "/datasets"

instance Core.ToQuery ListDatasets where
  toQuery ListDatasets' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListDatasetsResponse' smart constructor.
data ListDatasetsResponse = ListDatasetsResponse'
  { -- | A token that you can use in a subsequent call to retrieve the next set
    -- of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of datasets that are defined.
    datasets :: [Dataset]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDatasetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDatasetsResponse_nextToken' - A token that you can use in a subsequent call to retrieve the next set
-- of results.
--
-- 'httpStatus', 'listDatasetsResponse_httpStatus' - The response's http status code.
--
-- 'datasets', 'listDatasetsResponse_datasets' - A list of datasets that are defined.
newListDatasetsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDatasetsResponse
newListDatasetsResponse pHttpStatus_ =
  ListDatasetsResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      datasets = Prelude.mempty
    }

-- | A token that you can use in a subsequent call to retrieve the next set
-- of results.
listDatasetsResponse_nextToken :: Lens.Lens' ListDatasetsResponse (Prelude.Maybe Prelude.Text)
listDatasetsResponse_nextToken = Lens.lens (\ListDatasetsResponse' {nextToken} -> nextToken) (\s@ListDatasetsResponse' {} a -> s {nextToken = a} :: ListDatasetsResponse)

-- | The response's http status code.
listDatasetsResponse_httpStatus :: Lens.Lens' ListDatasetsResponse Prelude.Int
listDatasetsResponse_httpStatus = Lens.lens (\ListDatasetsResponse' {httpStatus} -> httpStatus) (\s@ListDatasetsResponse' {} a -> s {httpStatus = a} :: ListDatasetsResponse)

-- | A list of datasets that are defined.
listDatasetsResponse_datasets :: Lens.Lens' ListDatasetsResponse [Dataset]
listDatasetsResponse_datasets = Lens.lens (\ListDatasetsResponse' {datasets} -> datasets) (\s@ListDatasetsResponse' {} a -> s {datasets = a} :: ListDatasetsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListDatasetsResponse
