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
-- Module      : Network.AWS.MemoryDb.DescribeEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns events related to clusters, security groups, and parameter
-- groups. You can obtain events specific to a particular cluster, security
-- group, or parameter group by providing the name as a parameter. By
-- default, only the events occurring within the last hour are returned;
-- however, you can retrieve up to 14 days\' worth of events if necessary.
module Network.AWS.MemoryDb.DescribeEvents
  ( -- * Creating a Request
    DescribeEvents (..),
    newDescribeEvents,

    -- * Request Lenses
    describeEvents_sourceName,
    describeEvents_startTime,
    describeEvents_sourceType,
    describeEvents_nextToken,
    describeEvents_endTime,
    describeEvents_duration,
    describeEvents_maxResults,

    -- * Destructuring the Response
    DescribeEventsResponse (..),
    newDescribeEventsResponse,

    -- * Response Lenses
    describeEventsResponse_nextToken,
    describeEventsResponse_events,
    describeEventsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MemoryDb.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeEvents' smart constructor.
data DescribeEvents = DescribeEvents'
  { -- | The identifier of the event source for which events are returned. If not
    -- specified, all sources are included in the response.
    sourceName :: Prelude.Maybe Prelude.Text,
    -- | The beginning of the time interval to retrieve events for, specified in
    -- ISO 8601 format. Example: 2017-03-30T07:03:49.555Z
    startTime :: Prelude.Maybe Core.POSIX,
    -- | The event source to retrieve events for. If no value is specified, all
    -- events are returned.
    sourceType :: Prelude.Maybe SourceType,
    -- | An optional argument to pass in case the total number of records exceeds
    -- the value of MaxResults. If nextToken is returned, there are more
    -- results available. The value of nextToken is a unique pagination token
    -- for each page. Make the call again using the returned token to retrieve
    -- the next page. Keep all other arguments unchanged.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The end of the time interval for which to retrieve events, specified in
    -- ISO 8601 format. Example: 2017-03-30T07:03:49.555Z
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The number of minutes worth of events to retrieve.
    duration :: Prelude.Maybe Prelude.Int,
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified MaxResults value, a token is included
    -- in the response so that the remaining results can be retrieved.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEvents' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceName', 'describeEvents_sourceName' - The identifier of the event source for which events are returned. If not
-- specified, all sources are included in the response.
--
-- 'startTime', 'describeEvents_startTime' - The beginning of the time interval to retrieve events for, specified in
-- ISO 8601 format. Example: 2017-03-30T07:03:49.555Z
--
-- 'sourceType', 'describeEvents_sourceType' - The event source to retrieve events for. If no value is specified, all
-- events are returned.
--
-- 'nextToken', 'describeEvents_nextToken' - An optional argument to pass in case the total number of records exceeds
-- the value of MaxResults. If nextToken is returned, there are more
-- results available. The value of nextToken is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
--
-- 'endTime', 'describeEvents_endTime' - The end of the time interval for which to retrieve events, specified in
-- ISO 8601 format. Example: 2017-03-30T07:03:49.555Z
--
-- 'duration', 'describeEvents_duration' - The number of minutes worth of events to retrieve.
--
-- 'maxResults', 'describeEvents_maxResults' - The maximum number of records to include in the response. If more
-- records exist than the specified MaxResults value, a token is included
-- in the response so that the remaining results can be retrieved.
newDescribeEvents ::
  DescribeEvents
newDescribeEvents =
  DescribeEvents'
    { sourceName = Prelude.Nothing,
      startTime = Prelude.Nothing,
      sourceType = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      endTime = Prelude.Nothing,
      duration = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The identifier of the event source for which events are returned. If not
-- specified, all sources are included in the response.
describeEvents_sourceName :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.Text)
describeEvents_sourceName = Lens.lens (\DescribeEvents' {sourceName} -> sourceName) (\s@DescribeEvents' {} a -> s {sourceName = a} :: DescribeEvents)

-- | The beginning of the time interval to retrieve events for, specified in
-- ISO 8601 format. Example: 2017-03-30T07:03:49.555Z
describeEvents_startTime :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.UTCTime)
describeEvents_startTime = Lens.lens (\DescribeEvents' {startTime} -> startTime) (\s@DescribeEvents' {} a -> s {startTime = a} :: DescribeEvents) Prelude.. Lens.mapping Core._Time

-- | The event source to retrieve events for. If no value is specified, all
-- events are returned.
describeEvents_sourceType :: Lens.Lens' DescribeEvents (Prelude.Maybe SourceType)
describeEvents_sourceType = Lens.lens (\DescribeEvents' {sourceType} -> sourceType) (\s@DescribeEvents' {} a -> s {sourceType = a} :: DescribeEvents)

-- | An optional argument to pass in case the total number of records exceeds
-- the value of MaxResults. If nextToken is returned, there are more
-- results available. The value of nextToken is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
describeEvents_nextToken :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.Text)
describeEvents_nextToken = Lens.lens (\DescribeEvents' {nextToken} -> nextToken) (\s@DescribeEvents' {} a -> s {nextToken = a} :: DescribeEvents)

-- | The end of the time interval for which to retrieve events, specified in
-- ISO 8601 format. Example: 2017-03-30T07:03:49.555Z
describeEvents_endTime :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.UTCTime)
describeEvents_endTime = Lens.lens (\DescribeEvents' {endTime} -> endTime) (\s@DescribeEvents' {} a -> s {endTime = a} :: DescribeEvents) Prelude.. Lens.mapping Core._Time

-- | The number of minutes worth of events to retrieve.
describeEvents_duration :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.Int)
describeEvents_duration = Lens.lens (\DescribeEvents' {duration} -> duration) (\s@DescribeEvents' {} a -> s {duration = a} :: DescribeEvents)

-- | The maximum number of records to include in the response. If more
-- records exist than the specified MaxResults value, a token is included
-- in the response so that the remaining results can be retrieved.
describeEvents_maxResults :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.Int)
describeEvents_maxResults = Lens.lens (\DescribeEvents' {maxResults} -> maxResults) (\s@DescribeEvents' {} a -> s {maxResults = a} :: DescribeEvents)

instance Core.AWSRequest DescribeEvents where
  type
    AWSResponse DescribeEvents =
      DescribeEventsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeEventsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Events" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeEvents

instance Prelude.NFData DescribeEvents

instance Core.ToHeaders DescribeEvents where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonMemoryDB.DescribeEvents" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeEvents where
  toJSON DescribeEvents' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SourceName" Core..=) Prelude.<$> sourceName,
            ("StartTime" Core..=) Prelude.<$> startTime,
            ("SourceType" Core..=) Prelude.<$> sourceType,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("EndTime" Core..=) Prelude.<$> endTime,
            ("Duration" Core..=) Prelude.<$> duration,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath DescribeEvents where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeEvents where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeEventsResponse' smart constructor.
data DescribeEventsResponse = DescribeEventsResponse'
  { -- | An optional argument to pass in case the total number of records exceeds
    -- the value of MaxResults. If nextToken is returned, there are more
    -- results available. The value of nextToken is a unique pagination token
    -- for each page. Make the call again using the returned token to retrieve
    -- the next page. Keep all other arguments unchanged.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of events. Each element in the list contains detailed information
    -- about one event.
    events :: Prelude.Maybe [Event],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEventsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeEventsResponse_nextToken' - An optional argument to pass in case the total number of records exceeds
-- the value of MaxResults. If nextToken is returned, there are more
-- results available. The value of nextToken is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
--
-- 'events', 'describeEventsResponse_events' - A list of events. Each element in the list contains detailed information
-- about one event.
--
-- 'httpStatus', 'describeEventsResponse_httpStatus' - The response's http status code.
newDescribeEventsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeEventsResponse
newDescribeEventsResponse pHttpStatus_ =
  DescribeEventsResponse'
    { nextToken =
        Prelude.Nothing,
      events = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An optional argument to pass in case the total number of records exceeds
-- the value of MaxResults. If nextToken is returned, there are more
-- results available. The value of nextToken is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
describeEventsResponse_nextToken :: Lens.Lens' DescribeEventsResponse (Prelude.Maybe Prelude.Text)
describeEventsResponse_nextToken = Lens.lens (\DescribeEventsResponse' {nextToken} -> nextToken) (\s@DescribeEventsResponse' {} a -> s {nextToken = a} :: DescribeEventsResponse)

-- | A list of events. Each element in the list contains detailed information
-- about one event.
describeEventsResponse_events :: Lens.Lens' DescribeEventsResponse (Prelude.Maybe [Event])
describeEventsResponse_events = Lens.lens (\DescribeEventsResponse' {events} -> events) (\s@DescribeEventsResponse' {} a -> s {events = a} :: DescribeEventsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeEventsResponse_httpStatus :: Lens.Lens' DescribeEventsResponse Prelude.Int
describeEventsResponse_httpStatus = Lens.lens (\DescribeEventsResponse' {httpStatus} -> httpStatus) (\s@DescribeEventsResponse' {} a -> s {httpStatus = a} :: DescribeEventsResponse)

instance Prelude.NFData DescribeEventsResponse
