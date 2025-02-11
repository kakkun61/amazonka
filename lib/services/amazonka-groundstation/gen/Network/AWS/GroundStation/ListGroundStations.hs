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
-- Module      : Network.AWS.GroundStation.ListGroundStations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of ground stations.
--
-- This operation returns paginated results.
module Network.AWS.GroundStation.ListGroundStations
  ( -- * Creating a Request
    ListGroundStations (..),
    newListGroundStations,

    -- * Request Lenses
    listGroundStations_satelliteId,
    listGroundStations_nextToken,
    listGroundStations_maxResults,

    -- * Destructuring the Response
    ListGroundStationsResponse (..),
    newListGroundStationsResponse,

    -- * Response Lenses
    listGroundStationsResponse_nextToken,
    listGroundStationsResponse_groundStationList,
    listGroundStationsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GroundStation.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newListGroundStations' smart constructor.
data ListGroundStations = ListGroundStations'
  { -- | Satellite ID to retrieve on-boarded ground stations.
    satelliteId :: Prelude.Maybe Prelude.Text,
    -- | Next token that can be supplied in the next call to get the next page of
    -- ground stations.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Maximum number of ground stations returned.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGroundStations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'satelliteId', 'listGroundStations_satelliteId' - Satellite ID to retrieve on-boarded ground stations.
--
-- 'nextToken', 'listGroundStations_nextToken' - Next token that can be supplied in the next call to get the next page of
-- ground stations.
--
-- 'maxResults', 'listGroundStations_maxResults' - Maximum number of ground stations returned.
newListGroundStations ::
  ListGroundStations
newListGroundStations =
  ListGroundStations'
    { satelliteId = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Satellite ID to retrieve on-boarded ground stations.
listGroundStations_satelliteId :: Lens.Lens' ListGroundStations (Prelude.Maybe Prelude.Text)
listGroundStations_satelliteId = Lens.lens (\ListGroundStations' {satelliteId} -> satelliteId) (\s@ListGroundStations' {} a -> s {satelliteId = a} :: ListGroundStations)

-- | Next token that can be supplied in the next call to get the next page of
-- ground stations.
listGroundStations_nextToken :: Lens.Lens' ListGroundStations (Prelude.Maybe Prelude.Text)
listGroundStations_nextToken = Lens.lens (\ListGroundStations' {nextToken} -> nextToken) (\s@ListGroundStations' {} a -> s {nextToken = a} :: ListGroundStations)

-- | Maximum number of ground stations returned.
listGroundStations_maxResults :: Lens.Lens' ListGroundStations (Prelude.Maybe Prelude.Int)
listGroundStations_maxResults = Lens.lens (\ListGroundStations' {maxResults} -> maxResults) (\s@ListGroundStations' {} a -> s {maxResults = a} :: ListGroundStations)

instance Core.AWSPager ListGroundStations where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listGroundStationsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listGroundStationsResponse_groundStationList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listGroundStations_nextToken
          Lens..~ rs
          Lens.^? listGroundStationsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListGroundStations where
  type
    AWSResponse ListGroundStations =
      ListGroundStationsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListGroundStationsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> ( x Core..?> "groundStationList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListGroundStations

instance Prelude.NFData ListGroundStations

instance Core.ToHeaders ListGroundStations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListGroundStations where
  toPath = Prelude.const "/groundstation"

instance Core.ToQuery ListGroundStations where
  toQuery ListGroundStations' {..} =
    Prelude.mconcat
      [ "satelliteId" Core.=: satelliteId,
        "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- |
--
-- /See:/ 'newListGroundStationsResponse' smart constructor.
data ListGroundStationsResponse = ListGroundStationsResponse'
  { -- | Next token that can be supplied in the next call to get the next page of
    -- ground stations.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | List of ground stations.
    groundStationList :: Prelude.Maybe [GroundStationData],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListGroundStationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listGroundStationsResponse_nextToken' - Next token that can be supplied in the next call to get the next page of
-- ground stations.
--
-- 'groundStationList', 'listGroundStationsResponse_groundStationList' - List of ground stations.
--
-- 'httpStatus', 'listGroundStationsResponse_httpStatus' - The response's http status code.
newListGroundStationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListGroundStationsResponse
newListGroundStationsResponse pHttpStatus_ =
  ListGroundStationsResponse'
    { nextToken =
        Prelude.Nothing,
      groundStationList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Next token that can be supplied in the next call to get the next page of
-- ground stations.
listGroundStationsResponse_nextToken :: Lens.Lens' ListGroundStationsResponse (Prelude.Maybe Prelude.Text)
listGroundStationsResponse_nextToken = Lens.lens (\ListGroundStationsResponse' {nextToken} -> nextToken) (\s@ListGroundStationsResponse' {} a -> s {nextToken = a} :: ListGroundStationsResponse)

-- | List of ground stations.
listGroundStationsResponse_groundStationList :: Lens.Lens' ListGroundStationsResponse (Prelude.Maybe [GroundStationData])
listGroundStationsResponse_groundStationList = Lens.lens (\ListGroundStationsResponse' {groundStationList} -> groundStationList) (\s@ListGroundStationsResponse' {} a -> s {groundStationList = a} :: ListGroundStationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listGroundStationsResponse_httpStatus :: Lens.Lens' ListGroundStationsResponse Prelude.Int
listGroundStationsResponse_httpStatus = Lens.lens (\ListGroundStationsResponse' {httpStatus} -> httpStatus) (\s@ListGroundStationsResponse' {} a -> s {httpStatus = a} :: ListGroundStationsResponse)

instance Prelude.NFData ListGroundStationsResponse
