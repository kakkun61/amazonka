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
-- Module      : Network.AWS.IoTSiteWise.ListGateways
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of gateways.
--
-- This operation returns paginated results.
module Network.AWS.IoTSiteWise.ListGateways
  ( -- * Creating a Request
    ListGateways (..),
    newListGateways,

    -- * Request Lenses
    listGateways_nextToken,
    listGateways_maxResults,

    -- * Destructuring the Response
    ListGatewaysResponse (..),
    newListGatewaysResponse,

    -- * Response Lenses
    listGatewaysResponse_nextToken,
    listGatewaysResponse_httpStatus,
    listGatewaysResponse_gatewaySummaries,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListGateways' smart constructor.
data ListGateways = ListGateways'
  { -- | The token to be used for the next set of paginated results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return for each paginated request.
    --
    -- Default: 50
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGateways' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listGateways_nextToken' - The token to be used for the next set of paginated results.
--
-- 'maxResults', 'listGateways_maxResults' - The maximum number of results to return for each paginated request.
--
-- Default: 50
newListGateways ::
  ListGateways
newListGateways =
  ListGateways'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token to be used for the next set of paginated results.
listGateways_nextToken :: Lens.Lens' ListGateways (Prelude.Maybe Prelude.Text)
listGateways_nextToken = Lens.lens (\ListGateways' {nextToken} -> nextToken) (\s@ListGateways' {} a -> s {nextToken = a} :: ListGateways)

-- | The maximum number of results to return for each paginated request.
--
-- Default: 50
listGateways_maxResults :: Lens.Lens' ListGateways (Prelude.Maybe Prelude.Natural)
listGateways_maxResults = Lens.lens (\ListGateways' {maxResults} -> maxResults) (\s@ListGateways' {} a -> s {maxResults = a} :: ListGateways)

instance Core.AWSPager ListGateways where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listGatewaysResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listGatewaysResponse_gatewaySummaries) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listGateways_nextToken
          Lens..~ rs
          Lens.^? listGatewaysResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListGateways where
  type AWSResponse ListGateways = ListGatewaysResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListGatewaysResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "gatewaySummaries"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListGateways

instance Prelude.NFData ListGateways

instance Core.ToHeaders ListGateways where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListGateways where
  toPath = Prelude.const "/20200301/gateways"

instance Core.ToQuery ListGateways where
  toQuery ListGateways' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListGatewaysResponse' smart constructor.
data ListGatewaysResponse = ListGatewaysResponse'
  { -- | The token for the next set of results, or null if there are no
    -- additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list that summarizes each gateway.
    gatewaySummaries :: [GatewaySummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGatewaysResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listGatewaysResponse_nextToken' - The token for the next set of results, or null if there are no
-- additional results.
--
-- 'httpStatus', 'listGatewaysResponse_httpStatus' - The response's http status code.
--
-- 'gatewaySummaries', 'listGatewaysResponse_gatewaySummaries' - A list that summarizes each gateway.
newListGatewaysResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListGatewaysResponse
newListGatewaysResponse pHttpStatus_ =
  ListGatewaysResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      gatewaySummaries = Prelude.mempty
    }

-- | The token for the next set of results, or null if there are no
-- additional results.
listGatewaysResponse_nextToken :: Lens.Lens' ListGatewaysResponse (Prelude.Maybe Prelude.Text)
listGatewaysResponse_nextToken = Lens.lens (\ListGatewaysResponse' {nextToken} -> nextToken) (\s@ListGatewaysResponse' {} a -> s {nextToken = a} :: ListGatewaysResponse)

-- | The response's http status code.
listGatewaysResponse_httpStatus :: Lens.Lens' ListGatewaysResponse Prelude.Int
listGatewaysResponse_httpStatus = Lens.lens (\ListGatewaysResponse' {httpStatus} -> httpStatus) (\s@ListGatewaysResponse' {} a -> s {httpStatus = a} :: ListGatewaysResponse)

-- | A list that summarizes each gateway.
listGatewaysResponse_gatewaySummaries :: Lens.Lens' ListGatewaysResponse [GatewaySummary]
listGatewaysResponse_gatewaySummaries = Lens.lens (\ListGatewaysResponse' {gatewaySummaries} -> gatewaySummaries) (\s@ListGatewaysResponse' {} a -> s {gatewaySummaries = a} :: ListGatewaysResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListGatewaysResponse
