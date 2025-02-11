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
-- Module      : Network.AWS.MediaConnect.ListReservations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays a list of all reservations that have been purchased by this
-- account in the current AWS Region. This list includes all reservations
-- in all states (such as active and expired).
--
-- This operation returns paginated results.
module Network.AWS.MediaConnect.ListReservations
  ( -- * Creating a Request
    ListReservations (..),
    newListReservations,

    -- * Request Lenses
    listReservations_nextToken,
    listReservations_maxResults,

    -- * Destructuring the Response
    ListReservationsResponse (..),
    newListReservationsResponse,

    -- * Response Lenses
    listReservationsResponse_nextToken,
    listReservationsResponse_reservations,
    listReservationsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConnect.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListReservations' smart constructor.
data ListReservations = ListReservations'
  { -- | The token that identifies which batch of results that you want to see.
    -- For example, you submit a ListReservations request with MaxResults set
    -- at 5. The service returns the first batch of results (up to 5) and a
    -- NextToken value. To see the next batch of results, you can submit the
    -- ListOfferings request a second time and specify the NextToken value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return per API request. For example,
    -- you submit a ListReservations request with MaxResults set at 5. Although
    -- 20 items match your request, the service returns no more than the first
    -- 5 items. (The service also returns a NextToken value that you can use to
    -- fetch the next batch of results.) The service might return fewer results
    -- than the MaxResults value. If MaxResults is not included in the request,
    -- the service defaults to pagination with a maximum of 10 results per
    -- page.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListReservations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listReservations_nextToken' - The token that identifies which batch of results that you want to see.
-- For example, you submit a ListReservations request with MaxResults set
-- at 5. The service returns the first batch of results (up to 5) and a
-- NextToken value. To see the next batch of results, you can submit the
-- ListOfferings request a second time and specify the NextToken value.
--
-- 'maxResults', 'listReservations_maxResults' - The maximum number of results to return per API request. For example,
-- you submit a ListReservations request with MaxResults set at 5. Although
-- 20 items match your request, the service returns no more than the first
-- 5 items. (The service also returns a NextToken value that you can use to
-- fetch the next batch of results.) The service might return fewer results
-- than the MaxResults value. If MaxResults is not included in the request,
-- the service defaults to pagination with a maximum of 10 results per
-- page.
newListReservations ::
  ListReservations
newListReservations =
  ListReservations'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token that identifies which batch of results that you want to see.
-- For example, you submit a ListReservations request with MaxResults set
-- at 5. The service returns the first batch of results (up to 5) and a
-- NextToken value. To see the next batch of results, you can submit the
-- ListOfferings request a second time and specify the NextToken value.
listReservations_nextToken :: Lens.Lens' ListReservations (Prelude.Maybe Prelude.Text)
listReservations_nextToken = Lens.lens (\ListReservations' {nextToken} -> nextToken) (\s@ListReservations' {} a -> s {nextToken = a} :: ListReservations)

-- | The maximum number of results to return per API request. For example,
-- you submit a ListReservations request with MaxResults set at 5. Although
-- 20 items match your request, the service returns no more than the first
-- 5 items. (The service also returns a NextToken value that you can use to
-- fetch the next batch of results.) The service might return fewer results
-- than the MaxResults value. If MaxResults is not included in the request,
-- the service defaults to pagination with a maximum of 10 results per
-- page.
listReservations_maxResults :: Lens.Lens' ListReservations (Prelude.Maybe Prelude.Natural)
listReservations_maxResults = Lens.lens (\ListReservations' {maxResults} -> maxResults) (\s@ListReservations' {} a -> s {maxResults = a} :: ListReservations)

instance Core.AWSPager ListReservations where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listReservationsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listReservationsResponse_reservations
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listReservations_nextToken
          Lens..~ rs
          Lens.^? listReservationsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListReservations where
  type
    AWSResponse ListReservations =
      ListReservationsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListReservationsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "reservations" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListReservations

instance Prelude.NFData ListReservations

instance Core.ToHeaders ListReservations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListReservations where
  toPath = Prelude.const "/v1/reservations"

instance Core.ToQuery ListReservations where
  toQuery ListReservations' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListReservationsResponse' smart constructor.
data ListReservationsResponse = ListReservationsResponse'
  { -- | The token that identifies which batch of results that you want to see.
    -- For example, you submit a ListReservations request with MaxResults set
    -- at 5. The service returns the first batch of results (up to 5) and a
    -- NextToken value. To see the next batch of results, you can submit the
    -- ListReservations request a second time and specify the NextToken value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of all reservations that have been purchased by this account in
    -- the current AWS Region.
    reservations :: Prelude.Maybe [Reservation],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListReservationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listReservationsResponse_nextToken' - The token that identifies which batch of results that you want to see.
-- For example, you submit a ListReservations request with MaxResults set
-- at 5. The service returns the first batch of results (up to 5) and a
-- NextToken value. To see the next batch of results, you can submit the
-- ListReservations request a second time and specify the NextToken value.
--
-- 'reservations', 'listReservationsResponse_reservations' - A list of all reservations that have been purchased by this account in
-- the current AWS Region.
--
-- 'httpStatus', 'listReservationsResponse_httpStatus' - The response's http status code.
newListReservationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListReservationsResponse
newListReservationsResponse pHttpStatus_ =
  ListReservationsResponse'
    { nextToken =
        Prelude.Nothing,
      reservations = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token that identifies which batch of results that you want to see.
-- For example, you submit a ListReservations request with MaxResults set
-- at 5. The service returns the first batch of results (up to 5) and a
-- NextToken value. To see the next batch of results, you can submit the
-- ListReservations request a second time and specify the NextToken value.
listReservationsResponse_nextToken :: Lens.Lens' ListReservationsResponse (Prelude.Maybe Prelude.Text)
listReservationsResponse_nextToken = Lens.lens (\ListReservationsResponse' {nextToken} -> nextToken) (\s@ListReservationsResponse' {} a -> s {nextToken = a} :: ListReservationsResponse)

-- | A list of all reservations that have been purchased by this account in
-- the current AWS Region.
listReservationsResponse_reservations :: Lens.Lens' ListReservationsResponse (Prelude.Maybe [Reservation])
listReservationsResponse_reservations = Lens.lens (\ListReservationsResponse' {reservations} -> reservations) (\s@ListReservationsResponse' {} a -> s {reservations = a} :: ListReservationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listReservationsResponse_httpStatus :: Lens.Lens' ListReservationsResponse Prelude.Int
listReservationsResponse_httpStatus = Lens.lens (\ListReservationsResponse' {httpStatus} -> httpStatus) (\s@ListReservationsResponse' {} a -> s {httpStatus = a} :: ListReservationsResponse)

instance Prelude.NFData ListReservationsResponse
