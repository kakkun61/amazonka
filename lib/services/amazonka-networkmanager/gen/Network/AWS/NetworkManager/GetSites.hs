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
-- Module      : Network.AWS.NetworkManager.GetSites
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about one or more of your sites in a global network.
--
-- This operation returns paginated results.
module Network.AWS.NetworkManager.GetSites
  ( -- * Creating a Request
    GetSites (..),
    newGetSites,

    -- * Request Lenses
    getSites_nextToken,
    getSites_siteIds,
    getSites_maxResults,
    getSites_globalNetworkId,

    -- * Destructuring the Response
    GetSitesResponse (..),
    newGetSitesResponse,

    -- * Response Lenses
    getSitesResponse_nextToken,
    getSitesResponse_sites,
    getSitesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetSites' smart constructor.
data GetSites = GetSites'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | One or more site IDs. The maximum is 10.
    siteIds :: Prelude.Maybe [Prelude.Text],
    -- | The maximum number of results to return.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the global network.
    globalNetworkId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSites' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getSites_nextToken' - The token for the next page of results.
--
-- 'siteIds', 'getSites_siteIds' - One or more site IDs. The maximum is 10.
--
-- 'maxResults', 'getSites_maxResults' - The maximum number of results to return.
--
-- 'globalNetworkId', 'getSites_globalNetworkId' - The ID of the global network.
newGetSites ::
  -- | 'globalNetworkId'
  Prelude.Text ->
  GetSites
newGetSites pGlobalNetworkId_ =
  GetSites'
    { nextToken = Prelude.Nothing,
      siteIds = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      globalNetworkId = pGlobalNetworkId_
    }

-- | The token for the next page of results.
getSites_nextToken :: Lens.Lens' GetSites (Prelude.Maybe Prelude.Text)
getSites_nextToken = Lens.lens (\GetSites' {nextToken} -> nextToken) (\s@GetSites' {} a -> s {nextToken = a} :: GetSites)

-- | One or more site IDs. The maximum is 10.
getSites_siteIds :: Lens.Lens' GetSites (Prelude.Maybe [Prelude.Text])
getSites_siteIds = Lens.lens (\GetSites' {siteIds} -> siteIds) (\s@GetSites' {} a -> s {siteIds = a} :: GetSites) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to return.
getSites_maxResults :: Lens.Lens' GetSites (Prelude.Maybe Prelude.Natural)
getSites_maxResults = Lens.lens (\GetSites' {maxResults} -> maxResults) (\s@GetSites' {} a -> s {maxResults = a} :: GetSites)

-- | The ID of the global network.
getSites_globalNetworkId :: Lens.Lens' GetSites Prelude.Text
getSites_globalNetworkId = Lens.lens (\GetSites' {globalNetworkId} -> globalNetworkId) (\s@GetSites' {} a -> s {globalNetworkId = a} :: GetSites)

instance Core.AWSPager GetSites where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getSitesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getSitesResponse_sites Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getSites_nextToken
          Lens..~ rs
          Lens.^? getSitesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest GetSites where
  type AWSResponse GetSites = GetSitesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetSitesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Sites" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetSites

instance Prelude.NFData GetSites

instance Core.ToHeaders GetSites where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetSites where
  toPath GetSites' {..} =
    Prelude.mconcat
      [ "/global-networks/",
        Core.toBS globalNetworkId,
        "/sites"
      ]

instance Core.ToQuery GetSites where
  toQuery GetSites' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "siteIds"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> siteIds),
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newGetSitesResponse' smart constructor.
data GetSitesResponse = GetSitesResponse'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The sites.
    sites :: Prelude.Maybe [Site],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSitesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getSitesResponse_nextToken' - The token for the next page of results.
--
-- 'sites', 'getSitesResponse_sites' - The sites.
--
-- 'httpStatus', 'getSitesResponse_httpStatus' - The response's http status code.
newGetSitesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetSitesResponse
newGetSitesResponse pHttpStatus_ =
  GetSitesResponse'
    { nextToken = Prelude.Nothing,
      sites = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token for the next page of results.
getSitesResponse_nextToken :: Lens.Lens' GetSitesResponse (Prelude.Maybe Prelude.Text)
getSitesResponse_nextToken = Lens.lens (\GetSitesResponse' {nextToken} -> nextToken) (\s@GetSitesResponse' {} a -> s {nextToken = a} :: GetSitesResponse)

-- | The sites.
getSitesResponse_sites :: Lens.Lens' GetSitesResponse (Prelude.Maybe [Site])
getSitesResponse_sites = Lens.lens (\GetSitesResponse' {sites} -> sites) (\s@GetSitesResponse' {} a -> s {sites = a} :: GetSitesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getSitesResponse_httpStatus :: Lens.Lens' GetSitesResponse Prelude.Int
getSitesResponse_httpStatus = Lens.lens (\GetSitesResponse' {httpStatus} -> httpStatus) (\s@GetSitesResponse' {} a -> s {httpStatus = a} :: GetSitesResponse)

instance Prelude.NFData GetSitesResponse
