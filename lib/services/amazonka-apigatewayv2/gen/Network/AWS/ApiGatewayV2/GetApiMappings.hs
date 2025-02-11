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
-- Module      : Network.AWS.ApiGatewayV2.GetApiMappings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets API mappings.
module Network.AWS.ApiGatewayV2.GetApiMappings
  ( -- * Creating a Request
    GetApiMappings (..),
    newGetApiMappings,

    -- * Request Lenses
    getApiMappings_nextToken,
    getApiMappings_maxResults,
    getApiMappings_domainName,

    -- * Destructuring the Response
    GetApiMappingsResponse (..),
    newGetApiMappingsResponse,

    -- * Response Lenses
    getApiMappingsResponse_items,
    getApiMappingsResponse_nextToken,
    getApiMappingsResponse_httpStatus,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetApiMappings' smart constructor.
data GetApiMappings = GetApiMappings'
  { -- | The next page of elements from this collection. Not valid for the last
    -- element of the collection.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of elements to be returned for this resource.
    maxResults :: Prelude.Maybe Prelude.Text,
    -- | The domain name.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetApiMappings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getApiMappings_nextToken' - The next page of elements from this collection. Not valid for the last
-- element of the collection.
--
-- 'maxResults', 'getApiMappings_maxResults' - The maximum number of elements to be returned for this resource.
--
-- 'domainName', 'getApiMappings_domainName' - The domain name.
newGetApiMappings ::
  -- | 'domainName'
  Prelude.Text ->
  GetApiMappings
newGetApiMappings pDomainName_ =
  GetApiMappings'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      domainName = pDomainName_
    }

-- | The next page of elements from this collection. Not valid for the last
-- element of the collection.
getApiMappings_nextToken :: Lens.Lens' GetApiMappings (Prelude.Maybe Prelude.Text)
getApiMappings_nextToken = Lens.lens (\GetApiMappings' {nextToken} -> nextToken) (\s@GetApiMappings' {} a -> s {nextToken = a} :: GetApiMappings)

-- | The maximum number of elements to be returned for this resource.
getApiMappings_maxResults :: Lens.Lens' GetApiMappings (Prelude.Maybe Prelude.Text)
getApiMappings_maxResults = Lens.lens (\GetApiMappings' {maxResults} -> maxResults) (\s@GetApiMappings' {} a -> s {maxResults = a} :: GetApiMappings)

-- | The domain name.
getApiMappings_domainName :: Lens.Lens' GetApiMappings Prelude.Text
getApiMappings_domainName = Lens.lens (\GetApiMappings' {domainName} -> domainName) (\s@GetApiMappings' {} a -> s {domainName = a} :: GetApiMappings)

instance Core.AWSRequest GetApiMappings where
  type
    AWSResponse GetApiMappings =
      GetApiMappingsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetApiMappingsResponse'
            Prelude.<$> (x Core..?> "items" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetApiMappings

instance Prelude.NFData GetApiMappings

instance Core.ToHeaders GetApiMappings where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetApiMappings where
  toPath GetApiMappings' {..} =
    Prelude.mconcat
      [ "/v2/domainnames/",
        Core.toBS domainName,
        "/apimappings"
      ]

instance Core.ToQuery GetApiMappings where
  toQuery GetApiMappings' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newGetApiMappingsResponse' smart constructor.
data GetApiMappingsResponse = GetApiMappingsResponse'
  { -- | The elements from this collection.
    items :: Prelude.Maybe [ApiMapping],
    -- | The next page of elements from this collection. Not valid for the last
    -- element of the collection.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetApiMappingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'getApiMappingsResponse_items' - The elements from this collection.
--
-- 'nextToken', 'getApiMappingsResponse_nextToken' - The next page of elements from this collection. Not valid for the last
-- element of the collection.
--
-- 'httpStatus', 'getApiMappingsResponse_httpStatus' - The response's http status code.
newGetApiMappingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetApiMappingsResponse
newGetApiMappingsResponse pHttpStatus_ =
  GetApiMappingsResponse'
    { items = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The elements from this collection.
getApiMappingsResponse_items :: Lens.Lens' GetApiMappingsResponse (Prelude.Maybe [ApiMapping])
getApiMappingsResponse_items = Lens.lens (\GetApiMappingsResponse' {items} -> items) (\s@GetApiMappingsResponse' {} a -> s {items = a} :: GetApiMappingsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The next page of elements from this collection. Not valid for the last
-- element of the collection.
getApiMappingsResponse_nextToken :: Lens.Lens' GetApiMappingsResponse (Prelude.Maybe Prelude.Text)
getApiMappingsResponse_nextToken = Lens.lens (\GetApiMappingsResponse' {nextToken} -> nextToken) (\s@GetApiMappingsResponse' {} a -> s {nextToken = a} :: GetApiMappingsResponse)

-- | The response's http status code.
getApiMappingsResponse_httpStatus :: Lens.Lens' GetApiMappingsResponse Prelude.Int
getApiMappingsResponse_httpStatus = Lens.lens (\GetApiMappingsResponse' {httpStatus} -> httpStatus) (\s@GetApiMappingsResponse' {} a -> s {httpStatus = a} :: GetApiMappingsResponse)

instance Prelude.NFData GetApiMappingsResponse
