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
-- Module      : Network.AWS.ServiceCatalog.ListTagOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the specified TagOptions or all TagOptions.
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListTagOptions
  ( -- * Creating a Request
    ListTagOptions (..),
    newListTagOptions,

    -- * Request Lenses
    listTagOptions_filters,
    listTagOptions_pageToken,
    listTagOptions_pageSize,

    -- * Destructuring the Response
    ListTagOptionsResponse (..),
    newListTagOptionsResponse,

    -- * Response Lenses
    listTagOptionsResponse_pageToken,
    listTagOptionsResponse_tagOptionDetails,
    listTagOptionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'newListTagOptions' smart constructor.
data ListTagOptions = ListTagOptions'
  { -- | The search filters. If no search filters are specified, the output
    -- includes all TagOptions.
    filters :: Prelude.Maybe ListTagOptionsFilters,
    -- | The page token for the next set of results. To retrieve the first set of
    -- results, use null.
    pageToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to return with this call.
    pageSize :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTagOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'listTagOptions_filters' - The search filters. If no search filters are specified, the output
-- includes all TagOptions.
--
-- 'pageToken', 'listTagOptions_pageToken' - The page token for the next set of results. To retrieve the first set of
-- results, use null.
--
-- 'pageSize', 'listTagOptions_pageSize' - The maximum number of items to return with this call.
newListTagOptions ::
  ListTagOptions
newListTagOptions =
  ListTagOptions'
    { filters = Prelude.Nothing,
      pageToken = Prelude.Nothing,
      pageSize = Prelude.Nothing
    }

-- | The search filters. If no search filters are specified, the output
-- includes all TagOptions.
listTagOptions_filters :: Lens.Lens' ListTagOptions (Prelude.Maybe ListTagOptionsFilters)
listTagOptions_filters = Lens.lens (\ListTagOptions' {filters} -> filters) (\s@ListTagOptions' {} a -> s {filters = a} :: ListTagOptions)

-- | The page token for the next set of results. To retrieve the first set of
-- results, use null.
listTagOptions_pageToken :: Lens.Lens' ListTagOptions (Prelude.Maybe Prelude.Text)
listTagOptions_pageToken = Lens.lens (\ListTagOptions' {pageToken} -> pageToken) (\s@ListTagOptions' {} a -> s {pageToken = a} :: ListTagOptions)

-- | The maximum number of items to return with this call.
listTagOptions_pageSize :: Lens.Lens' ListTagOptions (Prelude.Maybe Prelude.Natural)
listTagOptions_pageSize = Lens.lens (\ListTagOptions' {pageSize} -> pageSize) (\s@ListTagOptions' {} a -> s {pageSize = a} :: ListTagOptions)

instance Core.AWSPager ListTagOptions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listTagOptionsResponse_pageToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listTagOptionsResponse_tagOptionDetails
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listTagOptions_pageToken
          Lens..~ rs
          Lens.^? listTagOptionsResponse_pageToken Prelude.. Lens._Just

instance Core.AWSRequest ListTagOptions where
  type
    AWSResponse ListTagOptions =
      ListTagOptionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTagOptionsResponse'
            Prelude.<$> (x Core..?> "PageToken")
            Prelude.<*> ( x Core..?> "TagOptionDetails"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListTagOptions

instance Prelude.NFData ListTagOptions

instance Core.ToHeaders ListTagOptions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWS242ServiceCatalogService.ListTagOptions" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListTagOptions where
  toJSON ListTagOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Filters" Core..=) Prelude.<$> filters,
            ("PageToken" Core..=) Prelude.<$> pageToken,
            ("PageSize" Core..=) Prelude.<$> pageSize
          ]
      )

instance Core.ToPath ListTagOptions where
  toPath = Prelude.const "/"

instance Core.ToQuery ListTagOptions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListTagOptionsResponse' smart constructor.
data ListTagOptionsResponse = ListTagOptionsResponse'
  { -- | The page token for the next set of results. To retrieve the first set of
    -- results, use null.
    pageToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the TagOptions.
    tagOptionDetails :: Prelude.Maybe [TagOptionDetail],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTagOptionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pageToken', 'listTagOptionsResponse_pageToken' - The page token for the next set of results. To retrieve the first set of
-- results, use null.
--
-- 'tagOptionDetails', 'listTagOptionsResponse_tagOptionDetails' - Information about the TagOptions.
--
-- 'httpStatus', 'listTagOptionsResponse_httpStatus' - The response's http status code.
newListTagOptionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListTagOptionsResponse
newListTagOptionsResponse pHttpStatus_ =
  ListTagOptionsResponse'
    { pageToken =
        Prelude.Nothing,
      tagOptionDetails = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The page token for the next set of results. To retrieve the first set of
-- results, use null.
listTagOptionsResponse_pageToken :: Lens.Lens' ListTagOptionsResponse (Prelude.Maybe Prelude.Text)
listTagOptionsResponse_pageToken = Lens.lens (\ListTagOptionsResponse' {pageToken} -> pageToken) (\s@ListTagOptionsResponse' {} a -> s {pageToken = a} :: ListTagOptionsResponse)

-- | Information about the TagOptions.
listTagOptionsResponse_tagOptionDetails :: Lens.Lens' ListTagOptionsResponse (Prelude.Maybe [TagOptionDetail])
listTagOptionsResponse_tagOptionDetails = Lens.lens (\ListTagOptionsResponse' {tagOptionDetails} -> tagOptionDetails) (\s@ListTagOptionsResponse' {} a -> s {tagOptionDetails = a} :: ListTagOptionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listTagOptionsResponse_httpStatus :: Lens.Lens' ListTagOptionsResponse Prelude.Int
listTagOptionsResponse_httpStatus = Lens.lens (\ListTagOptionsResponse' {httpStatus} -> httpStatus) (\s@ListTagOptionsResponse' {} a -> s {httpStatus = a} :: ListTagOptionsResponse)

instance Prelude.NFData ListTagOptionsResponse
