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
-- Module      : Network.AWS.ApiGatewayV2.GetAuthorizers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Authorizers for an API.
--
-- This operation returns paginated results.
module Network.AWS.ApiGatewayV2.GetAuthorizers
  ( -- * Creating a Request
    GetAuthorizers (..),
    newGetAuthorizers,

    -- * Request Lenses
    getAuthorizers_nextToken,
    getAuthorizers_maxResults,
    getAuthorizers_apiId,

    -- * Destructuring the Response
    GetAuthorizersResponse (..),
    newGetAuthorizersResponse,

    -- * Response Lenses
    getAuthorizersResponse_items,
    getAuthorizersResponse_nextToken,
    getAuthorizersResponse_httpStatus,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAuthorizers' smart constructor.
data GetAuthorizers = GetAuthorizers'
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
-- Create a value of 'GetAuthorizers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getAuthorizers_nextToken' - The next page of elements from this collection. Not valid for the last
-- element of the collection.
--
-- 'maxResults', 'getAuthorizers_maxResults' - The maximum number of elements to be returned for this resource.
--
-- 'apiId', 'getAuthorizers_apiId' - The API identifier.
newGetAuthorizers ::
  -- | 'apiId'
  Prelude.Text ->
  GetAuthorizers
newGetAuthorizers pApiId_ =
  GetAuthorizers'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      apiId = pApiId_
    }

-- | The next page of elements from this collection. Not valid for the last
-- element of the collection.
getAuthorizers_nextToken :: Lens.Lens' GetAuthorizers (Prelude.Maybe Prelude.Text)
getAuthorizers_nextToken = Lens.lens (\GetAuthorizers' {nextToken} -> nextToken) (\s@GetAuthorizers' {} a -> s {nextToken = a} :: GetAuthorizers)

-- | The maximum number of elements to be returned for this resource.
getAuthorizers_maxResults :: Lens.Lens' GetAuthorizers (Prelude.Maybe Prelude.Text)
getAuthorizers_maxResults = Lens.lens (\GetAuthorizers' {maxResults} -> maxResults) (\s@GetAuthorizers' {} a -> s {maxResults = a} :: GetAuthorizers)

-- | The API identifier.
getAuthorizers_apiId :: Lens.Lens' GetAuthorizers Prelude.Text
getAuthorizers_apiId = Lens.lens (\GetAuthorizers' {apiId} -> apiId) (\s@GetAuthorizers' {} a -> s {apiId = a} :: GetAuthorizers)

instance Core.AWSPager GetAuthorizers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getAuthorizersResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getAuthorizersResponse_items Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getAuthorizers_nextToken
          Lens..~ rs
          Lens.^? getAuthorizersResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest GetAuthorizers where
  type
    AWSResponse GetAuthorizers =
      GetAuthorizersResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAuthorizersResponse'
            Prelude.<$> (x Core..?> "items" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAuthorizers

instance Prelude.NFData GetAuthorizers

instance Core.ToHeaders GetAuthorizers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetAuthorizers where
  toPath GetAuthorizers' {..} =
    Prelude.mconcat
      ["/v2/apis/", Core.toBS apiId, "/authorizers"]

instance Core.ToQuery GetAuthorizers where
  toQuery GetAuthorizers' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newGetAuthorizersResponse' smart constructor.
data GetAuthorizersResponse = GetAuthorizersResponse'
  { -- | The elements from this collection.
    items :: Prelude.Maybe [Authorizer],
    -- | The next page of elements from this collection. Not valid for the last
    -- element of the collection.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAuthorizersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'getAuthorizersResponse_items' - The elements from this collection.
--
-- 'nextToken', 'getAuthorizersResponse_nextToken' - The next page of elements from this collection. Not valid for the last
-- element of the collection.
--
-- 'httpStatus', 'getAuthorizersResponse_httpStatus' - The response's http status code.
newGetAuthorizersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAuthorizersResponse
newGetAuthorizersResponse pHttpStatus_ =
  GetAuthorizersResponse'
    { items = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The elements from this collection.
getAuthorizersResponse_items :: Lens.Lens' GetAuthorizersResponse (Prelude.Maybe [Authorizer])
getAuthorizersResponse_items = Lens.lens (\GetAuthorizersResponse' {items} -> items) (\s@GetAuthorizersResponse' {} a -> s {items = a} :: GetAuthorizersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The next page of elements from this collection. Not valid for the last
-- element of the collection.
getAuthorizersResponse_nextToken :: Lens.Lens' GetAuthorizersResponse (Prelude.Maybe Prelude.Text)
getAuthorizersResponse_nextToken = Lens.lens (\GetAuthorizersResponse' {nextToken} -> nextToken) (\s@GetAuthorizersResponse' {} a -> s {nextToken = a} :: GetAuthorizersResponse)

-- | The response's http status code.
getAuthorizersResponse_httpStatus :: Lens.Lens' GetAuthorizersResponse Prelude.Int
getAuthorizersResponse_httpStatus = Lens.lens (\GetAuthorizersResponse' {httpStatus} -> httpStatus) (\s@GetAuthorizersResponse' {} a -> s {httpStatus = a} :: GetAuthorizersResponse)

instance Prelude.NFData GetAuthorizersResponse
