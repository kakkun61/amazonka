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
-- Module      : Network.AWS.ServiceCatalog.SearchProductsAsAdmin
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the products for the specified portfolio or all
-- products.
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.SearchProductsAsAdmin
  ( -- * Creating a Request
    SearchProductsAsAdmin (..),
    newSearchProductsAsAdmin,

    -- * Request Lenses
    searchProductsAsAdmin_portfolioId,
    searchProductsAsAdmin_filters,
    searchProductsAsAdmin_sortOrder,
    searchProductsAsAdmin_acceptLanguage,
    searchProductsAsAdmin_pageToken,
    searchProductsAsAdmin_pageSize,
    searchProductsAsAdmin_productSource,
    searchProductsAsAdmin_sortBy,

    -- * Destructuring the Response
    SearchProductsAsAdminResponse (..),
    newSearchProductsAsAdminResponse,

    -- * Response Lenses
    searchProductsAsAdminResponse_nextPageToken,
    searchProductsAsAdminResponse_productViewDetails,
    searchProductsAsAdminResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'newSearchProductsAsAdmin' smart constructor.
data SearchProductsAsAdmin = SearchProductsAsAdmin'
  { -- | The portfolio identifier.
    portfolioId :: Prelude.Maybe Prelude.Text,
    -- | The search filters. If no search filters are specified, the output
    -- includes all products to which the administrator has access.
    filters :: Prelude.Maybe (Prelude.HashMap ProductViewFilterBy [Prelude.Text]),
    -- | The sort order. If no value is specified, the results are not sorted.
    sortOrder :: Prelude.Maybe SortOrder,
    -- | The language code.
    --
    -- -   @en@ - English (default)
    --
    -- -   @jp@ - Japanese
    --
    -- -   @zh@ - Chinese
    acceptLanguage :: Prelude.Maybe Prelude.Text,
    -- | The page token for the next set of results. To retrieve the first set of
    -- results, use null.
    pageToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to return with this call.
    pageSize :: Prelude.Maybe Prelude.Natural,
    -- | Access level of the source of the product.
    productSource :: Prelude.Maybe ProductSource,
    -- | The sort field. If no value is specified, the results are not sorted.
    sortBy :: Prelude.Maybe ProductViewSortBy
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchProductsAsAdmin' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'portfolioId', 'searchProductsAsAdmin_portfolioId' - The portfolio identifier.
--
-- 'filters', 'searchProductsAsAdmin_filters' - The search filters. If no search filters are specified, the output
-- includes all products to which the administrator has access.
--
-- 'sortOrder', 'searchProductsAsAdmin_sortOrder' - The sort order. If no value is specified, the results are not sorted.
--
-- 'acceptLanguage', 'searchProductsAsAdmin_acceptLanguage' - The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
--
-- 'pageToken', 'searchProductsAsAdmin_pageToken' - The page token for the next set of results. To retrieve the first set of
-- results, use null.
--
-- 'pageSize', 'searchProductsAsAdmin_pageSize' - The maximum number of items to return with this call.
--
-- 'productSource', 'searchProductsAsAdmin_productSource' - Access level of the source of the product.
--
-- 'sortBy', 'searchProductsAsAdmin_sortBy' - The sort field. If no value is specified, the results are not sorted.
newSearchProductsAsAdmin ::
  SearchProductsAsAdmin
newSearchProductsAsAdmin =
  SearchProductsAsAdmin'
    { portfolioId =
        Prelude.Nothing,
      filters = Prelude.Nothing,
      sortOrder = Prelude.Nothing,
      acceptLanguage = Prelude.Nothing,
      pageToken = Prelude.Nothing,
      pageSize = Prelude.Nothing,
      productSource = Prelude.Nothing,
      sortBy = Prelude.Nothing
    }

-- | The portfolio identifier.
searchProductsAsAdmin_portfolioId :: Lens.Lens' SearchProductsAsAdmin (Prelude.Maybe Prelude.Text)
searchProductsAsAdmin_portfolioId = Lens.lens (\SearchProductsAsAdmin' {portfolioId} -> portfolioId) (\s@SearchProductsAsAdmin' {} a -> s {portfolioId = a} :: SearchProductsAsAdmin)

-- | The search filters. If no search filters are specified, the output
-- includes all products to which the administrator has access.
searchProductsAsAdmin_filters :: Lens.Lens' SearchProductsAsAdmin (Prelude.Maybe (Prelude.HashMap ProductViewFilterBy [Prelude.Text]))
searchProductsAsAdmin_filters = Lens.lens (\SearchProductsAsAdmin' {filters} -> filters) (\s@SearchProductsAsAdmin' {} a -> s {filters = a} :: SearchProductsAsAdmin) Prelude.. Lens.mapping Lens.coerced

-- | The sort order. If no value is specified, the results are not sorted.
searchProductsAsAdmin_sortOrder :: Lens.Lens' SearchProductsAsAdmin (Prelude.Maybe SortOrder)
searchProductsAsAdmin_sortOrder = Lens.lens (\SearchProductsAsAdmin' {sortOrder} -> sortOrder) (\s@SearchProductsAsAdmin' {} a -> s {sortOrder = a} :: SearchProductsAsAdmin)

-- | The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
searchProductsAsAdmin_acceptLanguage :: Lens.Lens' SearchProductsAsAdmin (Prelude.Maybe Prelude.Text)
searchProductsAsAdmin_acceptLanguage = Lens.lens (\SearchProductsAsAdmin' {acceptLanguage} -> acceptLanguage) (\s@SearchProductsAsAdmin' {} a -> s {acceptLanguage = a} :: SearchProductsAsAdmin)

-- | The page token for the next set of results. To retrieve the first set of
-- results, use null.
searchProductsAsAdmin_pageToken :: Lens.Lens' SearchProductsAsAdmin (Prelude.Maybe Prelude.Text)
searchProductsAsAdmin_pageToken = Lens.lens (\SearchProductsAsAdmin' {pageToken} -> pageToken) (\s@SearchProductsAsAdmin' {} a -> s {pageToken = a} :: SearchProductsAsAdmin)

-- | The maximum number of items to return with this call.
searchProductsAsAdmin_pageSize :: Lens.Lens' SearchProductsAsAdmin (Prelude.Maybe Prelude.Natural)
searchProductsAsAdmin_pageSize = Lens.lens (\SearchProductsAsAdmin' {pageSize} -> pageSize) (\s@SearchProductsAsAdmin' {} a -> s {pageSize = a} :: SearchProductsAsAdmin)

-- | Access level of the source of the product.
searchProductsAsAdmin_productSource :: Lens.Lens' SearchProductsAsAdmin (Prelude.Maybe ProductSource)
searchProductsAsAdmin_productSource = Lens.lens (\SearchProductsAsAdmin' {productSource} -> productSource) (\s@SearchProductsAsAdmin' {} a -> s {productSource = a} :: SearchProductsAsAdmin)

-- | The sort field. If no value is specified, the results are not sorted.
searchProductsAsAdmin_sortBy :: Lens.Lens' SearchProductsAsAdmin (Prelude.Maybe ProductViewSortBy)
searchProductsAsAdmin_sortBy = Lens.lens (\SearchProductsAsAdmin' {sortBy} -> sortBy) (\s@SearchProductsAsAdmin' {} a -> s {sortBy = a} :: SearchProductsAsAdmin)

instance Core.AWSPager SearchProductsAsAdmin where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? searchProductsAsAdminResponse_nextPageToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? searchProductsAsAdminResponse_productViewDetails
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& searchProductsAsAdmin_pageToken
          Lens..~ rs
          Lens.^? searchProductsAsAdminResponse_nextPageToken
            Prelude.. Lens._Just

instance Core.AWSRequest SearchProductsAsAdmin where
  type
    AWSResponse SearchProductsAsAdmin =
      SearchProductsAsAdminResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          SearchProductsAsAdminResponse'
            Prelude.<$> (x Core..?> "NextPageToken")
            Prelude.<*> ( x Core..?> "ProductViewDetails"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable SearchProductsAsAdmin

instance Prelude.NFData SearchProductsAsAdmin

instance Core.ToHeaders SearchProductsAsAdmin where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWS242ServiceCatalogService.SearchProductsAsAdmin" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON SearchProductsAsAdmin where
  toJSON SearchProductsAsAdmin' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("PortfolioId" Core..=) Prelude.<$> portfolioId,
            ("Filters" Core..=) Prelude.<$> filters,
            ("SortOrder" Core..=) Prelude.<$> sortOrder,
            ("AcceptLanguage" Core..=)
              Prelude.<$> acceptLanguage,
            ("PageToken" Core..=) Prelude.<$> pageToken,
            ("PageSize" Core..=) Prelude.<$> pageSize,
            ("ProductSource" Core..=) Prelude.<$> productSource,
            ("SortBy" Core..=) Prelude.<$> sortBy
          ]
      )

instance Core.ToPath SearchProductsAsAdmin where
  toPath = Prelude.const "/"

instance Core.ToQuery SearchProductsAsAdmin where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newSearchProductsAsAdminResponse' smart constructor.
data SearchProductsAsAdminResponse = SearchProductsAsAdminResponse'
  { -- | The page token to use to retrieve the next set of results. If there are
    -- no additional results, this value is null.
    nextPageToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the product views.
    productViewDetails :: Prelude.Maybe [ProductViewDetail],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchProductsAsAdminResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextPageToken', 'searchProductsAsAdminResponse_nextPageToken' - The page token to use to retrieve the next set of results. If there are
-- no additional results, this value is null.
--
-- 'productViewDetails', 'searchProductsAsAdminResponse_productViewDetails' - Information about the product views.
--
-- 'httpStatus', 'searchProductsAsAdminResponse_httpStatus' - The response's http status code.
newSearchProductsAsAdminResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  SearchProductsAsAdminResponse
newSearchProductsAsAdminResponse pHttpStatus_ =
  SearchProductsAsAdminResponse'
    { nextPageToken =
        Prelude.Nothing,
      productViewDetails = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The page token to use to retrieve the next set of results. If there are
-- no additional results, this value is null.
searchProductsAsAdminResponse_nextPageToken :: Lens.Lens' SearchProductsAsAdminResponse (Prelude.Maybe Prelude.Text)
searchProductsAsAdminResponse_nextPageToken = Lens.lens (\SearchProductsAsAdminResponse' {nextPageToken} -> nextPageToken) (\s@SearchProductsAsAdminResponse' {} a -> s {nextPageToken = a} :: SearchProductsAsAdminResponse)

-- | Information about the product views.
searchProductsAsAdminResponse_productViewDetails :: Lens.Lens' SearchProductsAsAdminResponse (Prelude.Maybe [ProductViewDetail])
searchProductsAsAdminResponse_productViewDetails = Lens.lens (\SearchProductsAsAdminResponse' {productViewDetails} -> productViewDetails) (\s@SearchProductsAsAdminResponse' {} a -> s {productViewDetails = a} :: SearchProductsAsAdminResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
searchProductsAsAdminResponse_httpStatus :: Lens.Lens' SearchProductsAsAdminResponse Prelude.Int
searchProductsAsAdminResponse_httpStatus = Lens.lens (\SearchProductsAsAdminResponse' {httpStatus} -> httpStatus) (\s@SearchProductsAsAdminResponse' {} a -> s {httpStatus = a} :: SearchProductsAsAdminResponse)

instance Prelude.NFData SearchProductsAsAdminResponse
