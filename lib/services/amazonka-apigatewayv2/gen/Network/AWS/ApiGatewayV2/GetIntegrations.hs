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
-- Module      : Network.AWS.ApiGatewayV2.GetIntegrations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Integrations for an API.
--
-- This operation returns paginated results.
module Network.AWS.ApiGatewayV2.GetIntegrations
  ( -- * Creating a Request
    GetIntegrations (..),
    newGetIntegrations,

    -- * Request Lenses
    getIntegrations_nextToken,
    getIntegrations_maxResults,
    getIntegrations_apiId,

    -- * Destructuring the Response
    GetIntegrationsResponse (..),
    newGetIntegrationsResponse,

    -- * Response Lenses
    getIntegrationsResponse_items,
    getIntegrationsResponse_nextToken,
    getIntegrationsResponse_httpStatus,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetIntegrations' smart constructor.
data GetIntegrations = GetIntegrations'
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
-- Create a value of 'GetIntegrations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getIntegrations_nextToken' - The next page of elements from this collection. Not valid for the last
-- element of the collection.
--
-- 'maxResults', 'getIntegrations_maxResults' - The maximum number of elements to be returned for this resource.
--
-- 'apiId', 'getIntegrations_apiId' - The API identifier.
newGetIntegrations ::
  -- | 'apiId'
  Prelude.Text ->
  GetIntegrations
newGetIntegrations pApiId_ =
  GetIntegrations'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      apiId = pApiId_
    }

-- | The next page of elements from this collection. Not valid for the last
-- element of the collection.
getIntegrations_nextToken :: Lens.Lens' GetIntegrations (Prelude.Maybe Prelude.Text)
getIntegrations_nextToken = Lens.lens (\GetIntegrations' {nextToken} -> nextToken) (\s@GetIntegrations' {} a -> s {nextToken = a} :: GetIntegrations)

-- | The maximum number of elements to be returned for this resource.
getIntegrations_maxResults :: Lens.Lens' GetIntegrations (Prelude.Maybe Prelude.Text)
getIntegrations_maxResults = Lens.lens (\GetIntegrations' {maxResults} -> maxResults) (\s@GetIntegrations' {} a -> s {maxResults = a} :: GetIntegrations)

-- | The API identifier.
getIntegrations_apiId :: Lens.Lens' GetIntegrations Prelude.Text
getIntegrations_apiId = Lens.lens (\GetIntegrations' {apiId} -> apiId) (\s@GetIntegrations' {} a -> s {apiId = a} :: GetIntegrations)

instance Core.AWSPager GetIntegrations where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getIntegrationsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getIntegrationsResponse_items Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getIntegrations_nextToken
          Lens..~ rs
          Lens.^? getIntegrationsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest GetIntegrations where
  type
    AWSResponse GetIntegrations =
      GetIntegrationsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetIntegrationsResponse'
            Prelude.<$> (x Core..?> "items" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetIntegrations

instance Prelude.NFData GetIntegrations

instance Core.ToHeaders GetIntegrations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetIntegrations where
  toPath GetIntegrations' {..} =
    Prelude.mconcat
      ["/v2/apis/", Core.toBS apiId, "/integrations"]

instance Core.ToQuery GetIntegrations where
  toQuery GetIntegrations' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newGetIntegrationsResponse' smart constructor.
data GetIntegrationsResponse = GetIntegrationsResponse'
  { -- | The elements from this collection.
    items :: Prelude.Maybe [Integration],
    -- | The next page of elements from this collection. Not valid for the last
    -- element of the collection.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetIntegrationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'getIntegrationsResponse_items' - The elements from this collection.
--
-- 'nextToken', 'getIntegrationsResponse_nextToken' - The next page of elements from this collection. Not valid for the last
-- element of the collection.
--
-- 'httpStatus', 'getIntegrationsResponse_httpStatus' - The response's http status code.
newGetIntegrationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetIntegrationsResponse
newGetIntegrationsResponse pHttpStatus_ =
  GetIntegrationsResponse'
    { items = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The elements from this collection.
getIntegrationsResponse_items :: Lens.Lens' GetIntegrationsResponse (Prelude.Maybe [Integration])
getIntegrationsResponse_items = Lens.lens (\GetIntegrationsResponse' {items} -> items) (\s@GetIntegrationsResponse' {} a -> s {items = a} :: GetIntegrationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The next page of elements from this collection. Not valid for the last
-- element of the collection.
getIntegrationsResponse_nextToken :: Lens.Lens' GetIntegrationsResponse (Prelude.Maybe Prelude.Text)
getIntegrationsResponse_nextToken = Lens.lens (\GetIntegrationsResponse' {nextToken} -> nextToken) (\s@GetIntegrationsResponse' {} a -> s {nextToken = a} :: GetIntegrationsResponse)

-- | The response's http status code.
getIntegrationsResponse_httpStatus :: Lens.Lens' GetIntegrationsResponse Prelude.Int
getIntegrationsResponse_httpStatus = Lens.lens (\GetIntegrationsResponse' {httpStatus} -> httpStatus) (\s@GetIntegrationsResponse' {} a -> s {httpStatus = a} :: GetIntegrationsResponse)

instance Prelude.NFData GetIntegrationsResponse
