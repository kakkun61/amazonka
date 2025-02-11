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
-- Module      : Network.AWS.CloudWatchLogs.DescribeQueries
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of CloudWatch Logs Insights queries that are scheduled,
-- executing, or have been executed recently in this account. You can
-- request all queries or limit it to queries of a specific log group or
-- queries with a certain status.
--
-- This operation returns paginated results.
module Network.AWS.CloudWatchLogs.DescribeQueries
  ( -- * Creating a Request
    DescribeQueries (..),
    newDescribeQueries,

    -- * Request Lenses
    describeQueries_status,
    describeQueries_logGroupName,
    describeQueries_nextToken,
    describeQueries_maxResults,

    -- * Destructuring the Response
    DescribeQueriesResponse (..),
    newDescribeQueriesResponse,

    -- * Response Lenses
    describeQueriesResponse_queries,
    describeQueriesResponse_nextToken,
    describeQueriesResponse_httpStatus,
  )
where

import Network.AWS.CloudWatchLogs.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeQueries' smart constructor.
data DescribeQueries = DescribeQueries'
  { -- | Limits the returned queries to only those that have the specified
    -- status. Valid values are @Cancelled@, @Complete@, @Failed@, @Running@,
    -- and @Scheduled@.
    status :: Prelude.Maybe QueryStatus,
    -- | Limits the returned queries to only those for the specified log group.
    logGroupName :: Prelude.Maybe Prelude.Text,
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Limits the number of returned queries to the specified number.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeQueries' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'describeQueries_status' - Limits the returned queries to only those that have the specified
-- status. Valid values are @Cancelled@, @Complete@, @Failed@, @Running@,
-- and @Scheduled@.
--
-- 'logGroupName', 'describeQueries_logGroupName' - Limits the returned queries to only those for the specified log group.
--
-- 'nextToken', 'describeQueries_nextToken' - Undocumented member.
--
-- 'maxResults', 'describeQueries_maxResults' - Limits the number of returned queries to the specified number.
newDescribeQueries ::
  DescribeQueries
newDescribeQueries =
  DescribeQueries'
    { status = Prelude.Nothing,
      logGroupName = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Limits the returned queries to only those that have the specified
-- status. Valid values are @Cancelled@, @Complete@, @Failed@, @Running@,
-- and @Scheduled@.
describeQueries_status :: Lens.Lens' DescribeQueries (Prelude.Maybe QueryStatus)
describeQueries_status = Lens.lens (\DescribeQueries' {status} -> status) (\s@DescribeQueries' {} a -> s {status = a} :: DescribeQueries)

-- | Limits the returned queries to only those for the specified log group.
describeQueries_logGroupName :: Lens.Lens' DescribeQueries (Prelude.Maybe Prelude.Text)
describeQueries_logGroupName = Lens.lens (\DescribeQueries' {logGroupName} -> logGroupName) (\s@DescribeQueries' {} a -> s {logGroupName = a} :: DescribeQueries)

-- | Undocumented member.
describeQueries_nextToken :: Lens.Lens' DescribeQueries (Prelude.Maybe Prelude.Text)
describeQueries_nextToken = Lens.lens (\DescribeQueries' {nextToken} -> nextToken) (\s@DescribeQueries' {} a -> s {nextToken = a} :: DescribeQueries)

-- | Limits the number of returned queries to the specified number.
describeQueries_maxResults :: Lens.Lens' DescribeQueries (Prelude.Maybe Prelude.Natural)
describeQueries_maxResults = Lens.lens (\DescribeQueries' {maxResults} -> maxResults) (\s@DescribeQueries' {} a -> s {maxResults = a} :: DescribeQueries)

instance Core.AWSPager DescribeQueries where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeQueriesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeQueriesResponse_queries Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeQueries_nextToken
          Lens..~ rs
          Lens.^? describeQueriesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeQueries where
  type
    AWSResponse DescribeQueries =
      DescribeQueriesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeQueriesResponse'
            Prelude.<$> (x Core..?> "queries" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeQueries

instance Prelude.NFData DescribeQueries

instance Core.ToHeaders DescribeQueries where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Logs_20140328.DescribeQueries" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeQueries where
  toJSON DescribeQueries' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("status" Core..=) Prelude.<$> status,
            ("logGroupName" Core..=) Prelude.<$> logGroupName,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath DescribeQueries where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeQueries where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeQueriesResponse' smart constructor.
data DescribeQueriesResponse = DescribeQueriesResponse'
  { -- | The list of queries that match the request.
    queries :: Prelude.Maybe [QueryInfo],
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeQueriesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'queries', 'describeQueriesResponse_queries' - The list of queries that match the request.
--
-- 'nextToken', 'describeQueriesResponse_nextToken' - Undocumented member.
--
-- 'httpStatus', 'describeQueriesResponse_httpStatus' - The response's http status code.
newDescribeQueriesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeQueriesResponse
newDescribeQueriesResponse pHttpStatus_ =
  DescribeQueriesResponse'
    { queries = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of queries that match the request.
describeQueriesResponse_queries :: Lens.Lens' DescribeQueriesResponse (Prelude.Maybe [QueryInfo])
describeQueriesResponse_queries = Lens.lens (\DescribeQueriesResponse' {queries} -> queries) (\s@DescribeQueriesResponse' {} a -> s {queries = a} :: DescribeQueriesResponse) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
describeQueriesResponse_nextToken :: Lens.Lens' DescribeQueriesResponse (Prelude.Maybe Prelude.Text)
describeQueriesResponse_nextToken = Lens.lens (\DescribeQueriesResponse' {nextToken} -> nextToken) (\s@DescribeQueriesResponse' {} a -> s {nextToken = a} :: DescribeQueriesResponse)

-- | The response's http status code.
describeQueriesResponse_httpStatus :: Lens.Lens' DescribeQueriesResponse Prelude.Int
describeQueriesResponse_httpStatus = Lens.lens (\DescribeQueriesResponse' {httpStatus} -> httpStatus) (\s@DescribeQueriesResponse' {} a -> s {httpStatus = a} :: DescribeQueriesResponse)

instance Prelude.NFData DescribeQueriesResponse
