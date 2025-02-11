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
-- Module      : Network.AWS.ApiGatewayV2.GetRoutes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Routes for an API.
--
-- This operation returns paginated results.
module Network.AWS.ApiGatewayV2.GetRoutes
  ( -- * Creating a Request
    GetRoutes (..),
    newGetRoutes,

    -- * Request Lenses
    getRoutes_nextToken,
    getRoutes_maxResults,
    getRoutes_apiId,

    -- * Destructuring the Response
    GetRoutesResponse (..),
    newGetRoutesResponse,

    -- * Response Lenses
    getRoutesResponse_items,
    getRoutesResponse_nextToken,
    getRoutesResponse_httpStatus,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetRoutes' smart constructor.
data GetRoutes = GetRoutes'
  { -- | The next page of elements from this collection. Not valid for the last
    -- element of the collection.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of elements to be returned for this resource.
    maxResults :: Prelude.Maybe Prelude.Text,
    -- | The API identifier.
    apiId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRoutes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getRoutes_nextToken' - The next page of elements from this collection. Not valid for the last
-- element of the collection.
--
-- 'maxResults', 'getRoutes_maxResults' - The maximum number of elements to be returned for this resource.
--
-- 'apiId', 'getRoutes_apiId' - The API identifier.
newGetRoutes ::
  -- | 'apiId'
  Prelude.Text ->
  GetRoutes
newGetRoutes pApiId_ =
  GetRoutes'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      apiId = pApiId_
    }

-- | The next page of elements from this collection. Not valid for the last
-- element of the collection.
getRoutes_nextToken :: Lens.Lens' GetRoutes (Prelude.Maybe Prelude.Text)
getRoutes_nextToken = Lens.lens (\GetRoutes' {nextToken} -> nextToken) (\s@GetRoutes' {} a -> s {nextToken = a} :: GetRoutes)

-- | The maximum number of elements to be returned for this resource.
getRoutes_maxResults :: Lens.Lens' GetRoutes (Prelude.Maybe Prelude.Text)
getRoutes_maxResults = Lens.lens (\GetRoutes' {maxResults} -> maxResults) (\s@GetRoutes' {} a -> s {maxResults = a} :: GetRoutes)

-- | The API identifier.
getRoutes_apiId :: Lens.Lens' GetRoutes Prelude.Text
getRoutes_apiId = Lens.lens (\GetRoutes' {apiId} -> apiId) (\s@GetRoutes' {} a -> s {apiId = a} :: GetRoutes)

instance Core.AWSPager GetRoutes where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getRoutesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getRoutesResponse_items Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getRoutes_nextToken
          Lens..~ rs
          Lens.^? getRoutesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest GetRoutes where
  type AWSResponse GetRoutes = GetRoutesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRoutesResponse'
            Prelude.<$> (x Core..?> "items" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetRoutes

instance Prelude.NFData GetRoutes

instance Core.ToHeaders GetRoutes where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetRoutes where
  toPath GetRoutes' {..} =
    Prelude.mconcat
      ["/v2/apis/", Core.toBS apiId, "/routes"]

instance Core.ToQuery GetRoutes where
  toQuery GetRoutes' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newGetRoutesResponse' smart constructor.
data GetRoutesResponse = GetRoutesResponse'
  { -- | The elements from this collection.
    items :: Prelude.Maybe [Route],
    -- | The next page of elements from this collection. Not valid for the last
    -- element of the collection.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRoutesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'getRoutesResponse_items' - The elements from this collection.
--
-- 'nextToken', 'getRoutesResponse_nextToken' - The next page of elements from this collection. Not valid for the last
-- element of the collection.
--
-- 'httpStatus', 'getRoutesResponse_httpStatus' - The response's http status code.
newGetRoutesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetRoutesResponse
newGetRoutesResponse pHttpStatus_ =
  GetRoutesResponse'
    { items = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The elements from this collection.
getRoutesResponse_items :: Lens.Lens' GetRoutesResponse (Prelude.Maybe [Route])
getRoutesResponse_items = Lens.lens (\GetRoutesResponse' {items} -> items) (\s@GetRoutesResponse' {} a -> s {items = a} :: GetRoutesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The next page of elements from this collection. Not valid for the last
-- element of the collection.
getRoutesResponse_nextToken :: Lens.Lens' GetRoutesResponse (Prelude.Maybe Prelude.Text)
getRoutesResponse_nextToken = Lens.lens (\GetRoutesResponse' {nextToken} -> nextToken) (\s@GetRoutesResponse' {} a -> s {nextToken = a} :: GetRoutesResponse)

-- | The response's http status code.
getRoutesResponse_httpStatus :: Lens.Lens' GetRoutesResponse Prelude.Int
getRoutesResponse_httpStatus = Lens.lens (\GetRoutesResponse' {httpStatus} -> httpStatus) (\s@GetRoutesResponse' {} a -> s {httpStatus = a} :: GetRoutesResponse)

instance Prelude.NFData GetRoutesResponse
