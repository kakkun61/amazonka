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
-- Module      : Network.AWS.IoTSiteWise.ListPortals
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of IoT SiteWise Monitor portals.
--
-- This operation returns paginated results.
module Network.AWS.IoTSiteWise.ListPortals
  ( -- * Creating a Request
    ListPortals (..),
    newListPortals,

    -- * Request Lenses
    listPortals_nextToken,
    listPortals_maxResults,

    -- * Destructuring the Response
    ListPortalsResponse (..),
    newListPortalsResponse,

    -- * Response Lenses
    listPortalsResponse_portalSummaries,
    listPortalsResponse_nextToken,
    listPortalsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListPortals' smart constructor.
data ListPortals = ListPortals'
  { -- | The token to be used for the next set of paginated results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return for each paginated request.
    --
    -- Default: 50
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPortals' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPortals_nextToken' - The token to be used for the next set of paginated results.
--
-- 'maxResults', 'listPortals_maxResults' - The maximum number of results to return for each paginated request.
--
-- Default: 50
newListPortals ::
  ListPortals
newListPortals =
  ListPortals'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token to be used for the next set of paginated results.
listPortals_nextToken :: Lens.Lens' ListPortals (Prelude.Maybe Prelude.Text)
listPortals_nextToken = Lens.lens (\ListPortals' {nextToken} -> nextToken) (\s@ListPortals' {} a -> s {nextToken = a} :: ListPortals)

-- | The maximum number of results to return for each paginated request.
--
-- Default: 50
listPortals_maxResults :: Lens.Lens' ListPortals (Prelude.Maybe Prelude.Natural)
listPortals_maxResults = Lens.lens (\ListPortals' {maxResults} -> maxResults) (\s@ListPortals' {} a -> s {maxResults = a} :: ListPortals)

instance Core.AWSPager ListPortals where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listPortalsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listPortalsResponse_portalSummaries
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listPortals_nextToken
          Lens..~ rs
          Lens.^? listPortalsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListPortals where
  type AWSResponse ListPortals = ListPortalsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPortalsResponse'
            Prelude.<$> ( x Core..?> "portalSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListPortals

instance Prelude.NFData ListPortals

instance Core.ToHeaders ListPortals where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListPortals where
  toPath = Prelude.const "/portals"

instance Core.ToQuery ListPortals where
  toQuery ListPortals' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListPortalsResponse' smart constructor.
data ListPortalsResponse = ListPortalsResponse'
  { -- | A list that summarizes each portal.
    portalSummaries :: Prelude.Maybe [PortalSummary],
    -- | The token for the next set of results, or null if there are no
    -- additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPortalsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'portalSummaries', 'listPortalsResponse_portalSummaries' - A list that summarizes each portal.
--
-- 'nextToken', 'listPortalsResponse_nextToken' - The token for the next set of results, or null if there are no
-- additional results.
--
-- 'httpStatus', 'listPortalsResponse_httpStatus' - The response's http status code.
newListPortalsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPortalsResponse
newListPortalsResponse pHttpStatus_ =
  ListPortalsResponse'
    { portalSummaries =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list that summarizes each portal.
listPortalsResponse_portalSummaries :: Lens.Lens' ListPortalsResponse (Prelude.Maybe [PortalSummary])
listPortalsResponse_portalSummaries = Lens.lens (\ListPortalsResponse' {portalSummaries} -> portalSummaries) (\s@ListPortalsResponse' {} a -> s {portalSummaries = a} :: ListPortalsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token for the next set of results, or null if there are no
-- additional results.
listPortalsResponse_nextToken :: Lens.Lens' ListPortalsResponse (Prelude.Maybe Prelude.Text)
listPortalsResponse_nextToken = Lens.lens (\ListPortalsResponse' {nextToken} -> nextToken) (\s@ListPortalsResponse' {} a -> s {nextToken = a} :: ListPortalsResponse)

-- | The response's http status code.
listPortalsResponse_httpStatus :: Lens.Lens' ListPortalsResponse Prelude.Int
listPortalsResponse_httpStatus = Lens.lens (\ListPortalsResponse' {httpStatus} -> httpStatus) (\s@ListPortalsResponse' {} a -> s {httpStatus = a} :: ListPortalsResponse)

instance Prelude.NFData ListPortalsResponse
