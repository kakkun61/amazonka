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
-- Module      : Network.AWS.ApiGatewayV2.GetIntegrationResponses
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the IntegrationResponses for an Integration.
--
-- This operation returns paginated results.
module Network.AWS.ApiGatewayV2.GetIntegrationResponses
  ( -- * Creating a Request
    GetIntegrationResponses (..),
    newGetIntegrationResponses,

    -- * Request Lenses
    getIntegrationResponses_nextToken,
    getIntegrationResponses_maxResults,
    getIntegrationResponses_integrationId,
    getIntegrationResponses_apiId,

    -- * Destructuring the Response
    GetIntegrationResponsesResponse (..),
    newGetIntegrationResponsesResponse,

    -- * Response Lenses
    getIntegrationResponsesResponse_items,
    getIntegrationResponsesResponse_nextToken,
    getIntegrationResponsesResponse_httpStatus,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetIntegrationResponses' smart constructor.
data GetIntegrationResponses = GetIntegrationResponses'
  { -- | The next page of elements from this collection. Not valid for the last
    -- element of the collection.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of elements to be returned for this resource.
    maxResults :: Prelude.Maybe Prelude.Text,
    -- | The integration ID.
    integrationId :: Prelude.Text,
    -- | The API identifier.
    apiId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetIntegrationResponses' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getIntegrationResponses_nextToken' - The next page of elements from this collection. Not valid for the last
-- element of the collection.
--
-- 'maxResults', 'getIntegrationResponses_maxResults' - The maximum number of elements to be returned for this resource.
--
-- 'integrationId', 'getIntegrationResponses_integrationId' - The integration ID.
--
-- 'apiId', 'getIntegrationResponses_apiId' - The API identifier.
newGetIntegrationResponses ::
  -- | 'integrationId'
  Prelude.Text ->
  -- | 'apiId'
  Prelude.Text ->
  GetIntegrationResponses
newGetIntegrationResponses pIntegrationId_ pApiId_ =
  GetIntegrationResponses'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      integrationId = pIntegrationId_,
      apiId = pApiId_
    }

-- | The next page of elements from this collection. Not valid for the last
-- element of the collection.
getIntegrationResponses_nextToken :: Lens.Lens' GetIntegrationResponses (Prelude.Maybe Prelude.Text)
getIntegrationResponses_nextToken = Lens.lens (\GetIntegrationResponses' {nextToken} -> nextToken) (\s@GetIntegrationResponses' {} a -> s {nextToken = a} :: GetIntegrationResponses)

-- | The maximum number of elements to be returned for this resource.
getIntegrationResponses_maxResults :: Lens.Lens' GetIntegrationResponses (Prelude.Maybe Prelude.Text)
getIntegrationResponses_maxResults = Lens.lens (\GetIntegrationResponses' {maxResults} -> maxResults) (\s@GetIntegrationResponses' {} a -> s {maxResults = a} :: GetIntegrationResponses)

-- | The integration ID.
getIntegrationResponses_integrationId :: Lens.Lens' GetIntegrationResponses Prelude.Text
getIntegrationResponses_integrationId = Lens.lens (\GetIntegrationResponses' {integrationId} -> integrationId) (\s@GetIntegrationResponses' {} a -> s {integrationId = a} :: GetIntegrationResponses)

-- | The API identifier.
getIntegrationResponses_apiId :: Lens.Lens' GetIntegrationResponses Prelude.Text
getIntegrationResponses_apiId = Lens.lens (\GetIntegrationResponses' {apiId} -> apiId) (\s@GetIntegrationResponses' {} a -> s {apiId = a} :: GetIntegrationResponses)

instance Core.AWSPager GetIntegrationResponses where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getIntegrationResponsesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getIntegrationResponsesResponse_items
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getIntegrationResponses_nextToken
          Lens..~ rs
          Lens.^? getIntegrationResponsesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest GetIntegrationResponses where
  type
    AWSResponse GetIntegrationResponses =
      GetIntegrationResponsesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetIntegrationResponsesResponse'
            Prelude.<$> (x Core..?> "items" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetIntegrationResponses

instance Prelude.NFData GetIntegrationResponses

instance Core.ToHeaders GetIntegrationResponses where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetIntegrationResponses where
  toPath GetIntegrationResponses' {..} =
    Prelude.mconcat
      [ "/v2/apis/",
        Core.toBS apiId,
        "/integrations/",
        Core.toBS integrationId,
        "/integrationresponses"
      ]

instance Core.ToQuery GetIntegrationResponses where
  toQuery GetIntegrationResponses' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newGetIntegrationResponsesResponse' smart constructor.
data GetIntegrationResponsesResponse = GetIntegrationResponsesResponse'
  { -- | The elements from this collection.
    items :: Prelude.Maybe [IntegrationResponse],
    -- | The next page of elements from this collection. Not valid for the last
    -- element of the collection.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetIntegrationResponsesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'getIntegrationResponsesResponse_items' - The elements from this collection.
--
-- 'nextToken', 'getIntegrationResponsesResponse_nextToken' - The next page of elements from this collection. Not valid for the last
-- element of the collection.
--
-- 'httpStatus', 'getIntegrationResponsesResponse_httpStatus' - The response's http status code.
newGetIntegrationResponsesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetIntegrationResponsesResponse
newGetIntegrationResponsesResponse pHttpStatus_ =
  GetIntegrationResponsesResponse'
    { items =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The elements from this collection.
getIntegrationResponsesResponse_items :: Lens.Lens' GetIntegrationResponsesResponse (Prelude.Maybe [IntegrationResponse])
getIntegrationResponsesResponse_items = Lens.lens (\GetIntegrationResponsesResponse' {items} -> items) (\s@GetIntegrationResponsesResponse' {} a -> s {items = a} :: GetIntegrationResponsesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The next page of elements from this collection. Not valid for the last
-- element of the collection.
getIntegrationResponsesResponse_nextToken :: Lens.Lens' GetIntegrationResponsesResponse (Prelude.Maybe Prelude.Text)
getIntegrationResponsesResponse_nextToken = Lens.lens (\GetIntegrationResponsesResponse' {nextToken} -> nextToken) (\s@GetIntegrationResponsesResponse' {} a -> s {nextToken = a} :: GetIntegrationResponsesResponse)

-- | The response's http status code.
getIntegrationResponsesResponse_httpStatus :: Lens.Lens' GetIntegrationResponsesResponse Prelude.Int
getIntegrationResponsesResponse_httpStatus = Lens.lens (\GetIntegrationResponsesResponse' {httpStatus} -> httpStatus) (\s@GetIntegrationResponsesResponse' {} a -> s {httpStatus = a} :: GetIntegrationResponsesResponse)

instance
  Prelude.NFData
    GetIntegrationResponsesResponse
