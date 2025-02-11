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
-- Module      : Network.AWS.CodeStarNotifications.ListEventTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the event types available for configuring
-- notifications.
--
-- This operation returns paginated results.
module Network.AWS.CodeStarNotifications.ListEventTypes
  ( -- * Creating a Request
    ListEventTypes (..),
    newListEventTypes,

    -- * Request Lenses
    listEventTypes_filters,
    listEventTypes_nextToken,
    listEventTypes_maxResults,

    -- * Destructuring the Response
    ListEventTypesResponse (..),
    newListEventTypesResponse,

    -- * Response Lenses
    listEventTypesResponse_eventTypes,
    listEventTypesResponse_nextToken,
    listEventTypesResponse_httpStatus,
  )
where

import Network.AWS.CodeStarNotifications.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListEventTypes' smart constructor.
data ListEventTypes = ListEventTypes'
  { -- | The filters to use to return information by service or resource type.
    filters :: Prelude.Maybe [ListEventTypesFilter],
    -- | An enumeration token that, when provided in a request, returns the next
    -- batch of the results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A non-negative integer used to limit the number of returned results. The
    -- default number is 50. The maximum number of results that can be returned
    -- is 100.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListEventTypes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'listEventTypes_filters' - The filters to use to return information by service or resource type.
--
-- 'nextToken', 'listEventTypes_nextToken' - An enumeration token that, when provided in a request, returns the next
-- batch of the results.
--
-- 'maxResults', 'listEventTypes_maxResults' - A non-negative integer used to limit the number of returned results. The
-- default number is 50. The maximum number of results that can be returned
-- is 100.
newListEventTypes ::
  ListEventTypes
newListEventTypes =
  ListEventTypes'
    { filters = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The filters to use to return information by service or resource type.
listEventTypes_filters :: Lens.Lens' ListEventTypes (Prelude.Maybe [ListEventTypesFilter])
listEventTypes_filters = Lens.lens (\ListEventTypes' {filters} -> filters) (\s@ListEventTypes' {} a -> s {filters = a} :: ListEventTypes) Prelude.. Lens.mapping Lens.coerced

-- | An enumeration token that, when provided in a request, returns the next
-- batch of the results.
listEventTypes_nextToken :: Lens.Lens' ListEventTypes (Prelude.Maybe Prelude.Text)
listEventTypes_nextToken = Lens.lens (\ListEventTypes' {nextToken} -> nextToken) (\s@ListEventTypes' {} a -> s {nextToken = a} :: ListEventTypes)

-- | A non-negative integer used to limit the number of returned results. The
-- default number is 50. The maximum number of results that can be returned
-- is 100.
listEventTypes_maxResults :: Lens.Lens' ListEventTypes (Prelude.Maybe Prelude.Natural)
listEventTypes_maxResults = Lens.lens (\ListEventTypes' {maxResults} -> maxResults) (\s@ListEventTypes' {} a -> s {maxResults = a} :: ListEventTypes)

instance Core.AWSPager ListEventTypes where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listEventTypesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listEventTypesResponse_eventTypes
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listEventTypes_nextToken
          Lens..~ rs
          Lens.^? listEventTypesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListEventTypes where
  type
    AWSResponse ListEventTypes =
      ListEventTypesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListEventTypesResponse'
            Prelude.<$> (x Core..?> "EventTypes" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListEventTypes

instance Prelude.NFData ListEventTypes

instance Core.ToHeaders ListEventTypes where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListEventTypes where
  toJSON ListEventTypes' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Filters" Core..=) Prelude.<$> filters,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListEventTypes where
  toPath = Prelude.const "/listEventTypes"

instance Core.ToQuery ListEventTypes where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListEventTypesResponse' smart constructor.
data ListEventTypesResponse = ListEventTypesResponse'
  { -- | Information about each event, including service name, resource type,
    -- event ID, and event name.
    eventTypes :: Prelude.Maybe [EventTypeSummary],
    -- | An enumeration token that can be used in a request to return the next
    -- batch of the results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListEventTypesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventTypes', 'listEventTypesResponse_eventTypes' - Information about each event, including service name, resource type,
-- event ID, and event name.
--
-- 'nextToken', 'listEventTypesResponse_nextToken' - An enumeration token that can be used in a request to return the next
-- batch of the results.
--
-- 'httpStatus', 'listEventTypesResponse_httpStatus' - The response's http status code.
newListEventTypesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListEventTypesResponse
newListEventTypesResponse pHttpStatus_ =
  ListEventTypesResponse'
    { eventTypes =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about each event, including service name, resource type,
-- event ID, and event name.
listEventTypesResponse_eventTypes :: Lens.Lens' ListEventTypesResponse (Prelude.Maybe [EventTypeSummary])
listEventTypesResponse_eventTypes = Lens.lens (\ListEventTypesResponse' {eventTypes} -> eventTypes) (\s@ListEventTypesResponse' {} a -> s {eventTypes = a} :: ListEventTypesResponse) Prelude.. Lens.mapping Lens.coerced

-- | An enumeration token that can be used in a request to return the next
-- batch of the results.
listEventTypesResponse_nextToken :: Lens.Lens' ListEventTypesResponse (Prelude.Maybe Prelude.Text)
listEventTypesResponse_nextToken = Lens.lens (\ListEventTypesResponse' {nextToken} -> nextToken) (\s@ListEventTypesResponse' {} a -> s {nextToken = a} :: ListEventTypesResponse)

-- | The response's http status code.
listEventTypesResponse_httpStatus :: Lens.Lens' ListEventTypesResponse Prelude.Int
listEventTypesResponse_httpStatus = Lens.lens (\ListEventTypesResponse' {httpStatus} -> httpStatus) (\s@ListEventTypesResponse' {} a -> s {httpStatus = a} :: ListEventTypesResponse)

instance Prelude.NFData ListEventTypesResponse
