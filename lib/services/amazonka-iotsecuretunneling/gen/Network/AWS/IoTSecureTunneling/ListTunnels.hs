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
-- Module      : Network.AWS.IoTSecureTunneling.ListTunnels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all tunnels for an AWS account. Tunnels are listed by creation time
-- in descending order, newer tunnels will be listed before older tunnels.
module Network.AWS.IoTSecureTunneling.ListTunnels
  ( -- * Creating a Request
    ListTunnels (..),
    newListTunnels,

    -- * Request Lenses
    listTunnels_nextToken,
    listTunnels_thingName,
    listTunnels_maxResults,

    -- * Destructuring the Response
    ListTunnelsResponse (..),
    newListTunnelsResponse,

    -- * Response Lenses
    listTunnelsResponse_nextToken,
    listTunnelsResponse_tunnelSummaries,
    listTunnelsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSecureTunneling.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListTunnels' smart constructor.
data ListTunnels = ListTunnels'
  { -- | A token to retrieve the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The name of the IoT thing associated with the destination device.
    thingName :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return at once.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTunnels' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTunnels_nextToken' - A token to retrieve the next set of results.
--
-- 'thingName', 'listTunnels_thingName' - The name of the IoT thing associated with the destination device.
--
-- 'maxResults', 'listTunnels_maxResults' - The maximum number of results to return at once.
newListTunnels ::
  ListTunnels
newListTunnels =
  ListTunnels'
    { nextToken = Prelude.Nothing,
      thingName = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | A token to retrieve the next set of results.
listTunnels_nextToken :: Lens.Lens' ListTunnels (Prelude.Maybe Prelude.Text)
listTunnels_nextToken = Lens.lens (\ListTunnels' {nextToken} -> nextToken) (\s@ListTunnels' {} a -> s {nextToken = a} :: ListTunnels)

-- | The name of the IoT thing associated with the destination device.
listTunnels_thingName :: Lens.Lens' ListTunnels (Prelude.Maybe Prelude.Text)
listTunnels_thingName = Lens.lens (\ListTunnels' {thingName} -> thingName) (\s@ListTunnels' {} a -> s {thingName = a} :: ListTunnels)

-- | The maximum number of results to return at once.
listTunnels_maxResults :: Lens.Lens' ListTunnels (Prelude.Maybe Prelude.Natural)
listTunnels_maxResults = Lens.lens (\ListTunnels' {maxResults} -> maxResults) (\s@ListTunnels' {} a -> s {maxResults = a} :: ListTunnels)

instance Core.AWSRequest ListTunnels where
  type AWSResponse ListTunnels = ListTunnelsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTunnelsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> ( x Core..?> "tunnelSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListTunnels

instance Prelude.NFData ListTunnels

instance Core.ToHeaders ListTunnels where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "IoTSecuredTunneling.ListTunnels" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListTunnels where
  toJSON ListTunnels' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("thingName" Core..=) Prelude.<$> thingName,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListTunnels where
  toPath = Prelude.const "/"

instance Core.ToQuery ListTunnels where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListTunnelsResponse' smart constructor.
data ListTunnelsResponse = ListTunnelsResponse'
  { -- | A token to used to retrieve the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A short description of the tunnels in an AWS account.
    tunnelSummaries :: Prelude.Maybe [TunnelSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTunnelsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTunnelsResponse_nextToken' - A token to used to retrieve the next set of results.
--
-- 'tunnelSummaries', 'listTunnelsResponse_tunnelSummaries' - A short description of the tunnels in an AWS account.
--
-- 'httpStatus', 'listTunnelsResponse_httpStatus' - The response's http status code.
newListTunnelsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListTunnelsResponse
newListTunnelsResponse pHttpStatus_ =
  ListTunnelsResponse'
    { nextToken = Prelude.Nothing,
      tunnelSummaries = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A token to used to retrieve the next set of results.
listTunnelsResponse_nextToken :: Lens.Lens' ListTunnelsResponse (Prelude.Maybe Prelude.Text)
listTunnelsResponse_nextToken = Lens.lens (\ListTunnelsResponse' {nextToken} -> nextToken) (\s@ListTunnelsResponse' {} a -> s {nextToken = a} :: ListTunnelsResponse)

-- | A short description of the tunnels in an AWS account.
listTunnelsResponse_tunnelSummaries :: Lens.Lens' ListTunnelsResponse (Prelude.Maybe [TunnelSummary])
listTunnelsResponse_tunnelSummaries = Lens.lens (\ListTunnelsResponse' {tunnelSummaries} -> tunnelSummaries) (\s@ListTunnelsResponse' {} a -> s {tunnelSummaries = a} :: ListTunnelsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listTunnelsResponse_httpStatus :: Lens.Lens' ListTunnelsResponse Prelude.Int
listTunnelsResponse_httpStatus = Lens.lens (\ListTunnelsResponse' {httpStatus} -> httpStatus) (\s@ListTunnelsResponse' {} a -> s {httpStatus = a} :: ListTunnelsResponse)

instance Prelude.NFData ListTunnelsResponse
