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
-- Module      : Network.AWS.MGN.DescribeJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of Jobs. Use the JobsID and fromDate and toData filters
-- to limit which jobs are returned. The response is sorted by
-- creationDataTime - latest date first. Jobs are normaly created by the
-- StartTest, StartCutover, and TerminateTargetInstances APIs. Jobs are
-- also created by DiagnosticLaunch and TerminateDiagnosticInstances, which
-- are APIs available only to *Support* and only used in response to
-- relevant support tickets.
--
-- This operation returns paginated results.
module Network.AWS.MGN.DescribeJobs
  ( -- * Creating a Request
    DescribeJobs (..),
    newDescribeJobs,

    -- * Request Lenses
    describeJobs_nextToken,
    describeJobs_maxResults,
    describeJobs_filters,

    -- * Destructuring the Response
    DescribeJobsResponse (..),
    newDescribeJobsResponse,

    -- * Response Lenses
    describeJobsResponse_items,
    describeJobsResponse_nextToken,
    describeJobsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MGN.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeJobs' smart constructor.
data DescribeJobs = DescribeJobs'
  { -- | Request to describe Job logby next token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Request to describe Job log by max results.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Request to describe Job log filters.
    filters :: DescribeJobsRequestFilters
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeJobs_nextToken' - Request to describe Job logby next token.
--
-- 'maxResults', 'describeJobs_maxResults' - Request to describe Job log by max results.
--
-- 'filters', 'describeJobs_filters' - Request to describe Job log filters.
newDescribeJobs ::
  -- | 'filters'
  DescribeJobsRequestFilters ->
  DescribeJobs
newDescribeJobs pFilters_ =
  DescribeJobs'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      filters = pFilters_
    }

-- | Request to describe Job logby next token.
describeJobs_nextToken :: Lens.Lens' DescribeJobs (Prelude.Maybe Prelude.Text)
describeJobs_nextToken = Lens.lens (\DescribeJobs' {nextToken} -> nextToken) (\s@DescribeJobs' {} a -> s {nextToken = a} :: DescribeJobs)

-- | Request to describe Job log by max results.
describeJobs_maxResults :: Lens.Lens' DescribeJobs (Prelude.Maybe Prelude.Natural)
describeJobs_maxResults = Lens.lens (\DescribeJobs' {maxResults} -> maxResults) (\s@DescribeJobs' {} a -> s {maxResults = a} :: DescribeJobs)

-- | Request to describe Job log filters.
describeJobs_filters :: Lens.Lens' DescribeJobs DescribeJobsRequestFilters
describeJobs_filters = Lens.lens (\DescribeJobs' {filters} -> filters) (\s@DescribeJobs' {} a -> s {filters = a} :: DescribeJobs)

instance Core.AWSPager DescribeJobs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeJobsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeJobsResponse_items Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeJobs_nextToken
          Lens..~ rs
          Lens.^? describeJobsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest DescribeJobs where
  type AWSResponse DescribeJobs = DescribeJobsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeJobsResponse'
            Prelude.<$> (x Core..?> "items" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeJobs

instance Prelude.NFData DescribeJobs

instance Core.ToHeaders DescribeJobs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeJobs where
  toJSON DescribeJobs' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("filters" Core..= filters)
          ]
      )

instance Core.ToPath DescribeJobs where
  toPath = Prelude.const "/DescribeJobs"

instance Core.ToQuery DescribeJobs where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeJobsResponse' smart constructor.
data DescribeJobsResponse = DescribeJobsResponse'
  { -- | Request to describe Job log items.
    items :: Prelude.Maybe [Job],
    -- | Request to describe Job response by next token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'describeJobsResponse_items' - Request to describe Job log items.
--
-- 'nextToken', 'describeJobsResponse_nextToken' - Request to describe Job response by next token.
--
-- 'httpStatus', 'describeJobsResponse_httpStatus' - The response's http status code.
newDescribeJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeJobsResponse
newDescribeJobsResponse pHttpStatus_ =
  DescribeJobsResponse'
    { items = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Request to describe Job log items.
describeJobsResponse_items :: Lens.Lens' DescribeJobsResponse (Prelude.Maybe [Job])
describeJobsResponse_items = Lens.lens (\DescribeJobsResponse' {items} -> items) (\s@DescribeJobsResponse' {} a -> s {items = a} :: DescribeJobsResponse) Prelude.. Lens.mapping Lens.coerced

-- | Request to describe Job response by next token.
describeJobsResponse_nextToken :: Lens.Lens' DescribeJobsResponse (Prelude.Maybe Prelude.Text)
describeJobsResponse_nextToken = Lens.lens (\DescribeJobsResponse' {nextToken} -> nextToken) (\s@DescribeJobsResponse' {} a -> s {nextToken = a} :: DescribeJobsResponse)

-- | The response's http status code.
describeJobsResponse_httpStatus :: Lens.Lens' DescribeJobsResponse Prelude.Int
describeJobsResponse_httpStatus = Lens.lens (\DescribeJobsResponse' {httpStatus} -> httpStatus) (\s@DescribeJobsResponse' {} a -> s {httpStatus = a} :: DescribeJobsResponse)

instance Prelude.NFData DescribeJobsResponse
