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
-- Module      : Network.AWS.CustomerProfiles.ListIntegrations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the integrations in your domain.
module Network.AWS.CustomerProfiles.ListIntegrations
  ( -- * Creating a Request
    ListIntegrations (..),
    newListIntegrations,

    -- * Request Lenses
    listIntegrations_nextToken,
    listIntegrations_maxResults,
    listIntegrations_domainName,

    -- * Destructuring the Response
    ListIntegrationsResponse (..),
    newListIntegrationsResponse,

    -- * Response Lenses
    listIntegrationsResponse_items,
    listIntegrationsResponse_nextToken,
    listIntegrationsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.CustomerProfiles.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListIntegrations' smart constructor.
data ListIntegrations = ListIntegrations'
  { -- | The pagination token from the previous ListIntegrations API call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of objects returned per page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique name of the domain.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListIntegrations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listIntegrations_nextToken' - The pagination token from the previous ListIntegrations API call.
--
-- 'maxResults', 'listIntegrations_maxResults' - The maximum number of objects returned per page.
--
-- 'domainName', 'listIntegrations_domainName' - The unique name of the domain.
newListIntegrations ::
  -- | 'domainName'
  Prelude.Text ->
  ListIntegrations
newListIntegrations pDomainName_ =
  ListIntegrations'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      domainName = pDomainName_
    }

-- | The pagination token from the previous ListIntegrations API call.
listIntegrations_nextToken :: Lens.Lens' ListIntegrations (Prelude.Maybe Prelude.Text)
listIntegrations_nextToken = Lens.lens (\ListIntegrations' {nextToken} -> nextToken) (\s@ListIntegrations' {} a -> s {nextToken = a} :: ListIntegrations)

-- | The maximum number of objects returned per page.
listIntegrations_maxResults :: Lens.Lens' ListIntegrations (Prelude.Maybe Prelude.Natural)
listIntegrations_maxResults = Lens.lens (\ListIntegrations' {maxResults} -> maxResults) (\s@ListIntegrations' {} a -> s {maxResults = a} :: ListIntegrations)

-- | The unique name of the domain.
listIntegrations_domainName :: Lens.Lens' ListIntegrations Prelude.Text
listIntegrations_domainName = Lens.lens (\ListIntegrations' {domainName} -> domainName) (\s@ListIntegrations' {} a -> s {domainName = a} :: ListIntegrations)

instance Core.AWSRequest ListIntegrations where
  type
    AWSResponse ListIntegrations =
      ListIntegrationsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListIntegrationsResponse'
            Prelude.<$> (x Core..?> "Items" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListIntegrations

instance Prelude.NFData ListIntegrations

instance Core.ToHeaders ListIntegrations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListIntegrations where
  toPath ListIntegrations' {..} =
    Prelude.mconcat
      ["/domains/", Core.toBS domainName, "/integrations"]

instance Core.ToQuery ListIntegrations where
  toQuery ListIntegrations' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListIntegrationsResponse' smart constructor.
data ListIntegrationsResponse = ListIntegrationsResponse'
  { -- | The list of ListIntegrations instances.
    items :: Prelude.Maybe [ListIntegrationItem],
    -- | The pagination token from the previous ListIntegrations API call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListIntegrationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'listIntegrationsResponse_items' - The list of ListIntegrations instances.
--
-- 'nextToken', 'listIntegrationsResponse_nextToken' - The pagination token from the previous ListIntegrations API call.
--
-- 'httpStatus', 'listIntegrationsResponse_httpStatus' - The response's http status code.
newListIntegrationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListIntegrationsResponse
newListIntegrationsResponse pHttpStatus_ =
  ListIntegrationsResponse'
    { items = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of ListIntegrations instances.
listIntegrationsResponse_items :: Lens.Lens' ListIntegrationsResponse (Prelude.Maybe [ListIntegrationItem])
listIntegrationsResponse_items = Lens.lens (\ListIntegrationsResponse' {items} -> items) (\s@ListIntegrationsResponse' {} a -> s {items = a} :: ListIntegrationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The pagination token from the previous ListIntegrations API call.
listIntegrationsResponse_nextToken :: Lens.Lens' ListIntegrationsResponse (Prelude.Maybe Prelude.Text)
listIntegrationsResponse_nextToken = Lens.lens (\ListIntegrationsResponse' {nextToken} -> nextToken) (\s@ListIntegrationsResponse' {} a -> s {nextToken = a} :: ListIntegrationsResponse)

-- | The response's http status code.
listIntegrationsResponse_httpStatus :: Lens.Lens' ListIntegrationsResponse Prelude.Int
listIntegrationsResponse_httpStatus = Lens.lens (\ListIntegrationsResponse' {httpStatus} -> httpStatus) (\s@ListIntegrationsResponse' {} a -> s {httpStatus = a} :: ListIntegrationsResponse)

instance Prelude.NFData ListIntegrationsResponse
