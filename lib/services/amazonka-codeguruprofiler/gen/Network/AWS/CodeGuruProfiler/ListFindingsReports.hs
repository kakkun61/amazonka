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
-- Module      : Network.AWS.CodeGuruProfiler.ListFindingsReports
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the available reports for a given profiling group and time range.
module Network.AWS.CodeGuruProfiler.ListFindingsReports
  ( -- * Creating a Request
    ListFindingsReports (..),
    newListFindingsReports,

    -- * Request Lenses
    listFindingsReports_nextToken,
    listFindingsReports_dailyReportsOnly,
    listFindingsReports_maxResults,
    listFindingsReports_endTime,
    listFindingsReports_profilingGroupName,
    listFindingsReports_startTime,

    -- * Destructuring the Response
    ListFindingsReportsResponse (..),
    newListFindingsReportsResponse,

    -- * Response Lenses
    listFindingsReportsResponse_nextToken,
    listFindingsReportsResponse_httpStatus,
    listFindingsReportsResponse_findingsReportSummaries,
  )
where

import Network.AWS.CodeGuruProfiler.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The structure representing the ListFindingsReportsRequest.
--
-- /See:/ 'newListFindingsReports' smart constructor.
data ListFindingsReports = ListFindingsReports'
  { -- | The @nextToken@ value returned from a previous paginated
    -- @ListFindingsReportsRequest@ request where @maxResults@ was used and the
    -- results exceeded the value of that parameter. Pagination continues from
    -- the end of the previous results that returned the @nextToken@ value.
    --
    -- This token should be treated as an opaque identifier that is only used
    -- to retrieve the next items in a list and not for other programmatic
    -- purposes.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A @Boolean@ value indicating whether to only return reports from daily
    -- profiles. If set to @True@, only analysis data from daily profiles is
    -- returned. If set to @False@, analysis data is returned from smaller time
    -- windows (for example, one hour).
    dailyReportsOnly :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of report results returned by @ListFindingsReports@
    -- in paginated output. When this parameter is used, @ListFindingsReports@
    -- only returns @maxResults@ results in a single page along with a
    -- @nextToken@ response element. The remaining results of the initial
    -- request can be seen by sending another @ListFindingsReports@ request
    -- with the returned @nextToken@ value.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The end time of the profile to get analysis data about. You must specify
    -- @startTime@ and @endTime@. This is specified using the ISO 8601 format.
    -- For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June
    -- 1, 2020 1:15:02 PM UTC.
    endTime :: Core.POSIX,
    -- | The name of the profiling group from which to search for analysis data.
    profilingGroupName :: Prelude.Text,
    -- | The start time of the profile to get analysis data about. You must
    -- specify @startTime@ and @endTime@. This is specified using the ISO 8601
    -- format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond
    -- past June 1, 2020 1:15:02 PM UTC.
    startTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListFindingsReports' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listFindingsReports_nextToken' - The @nextToken@ value returned from a previous paginated
-- @ListFindingsReportsRequest@ request where @maxResults@ was used and the
-- results exceeded the value of that parameter. Pagination continues from
-- the end of the previous results that returned the @nextToken@ value.
--
-- This token should be treated as an opaque identifier that is only used
-- to retrieve the next items in a list and not for other programmatic
-- purposes.
--
-- 'dailyReportsOnly', 'listFindingsReports_dailyReportsOnly' - A @Boolean@ value indicating whether to only return reports from daily
-- profiles. If set to @True@, only analysis data from daily profiles is
-- returned. If set to @False@, analysis data is returned from smaller time
-- windows (for example, one hour).
--
-- 'maxResults', 'listFindingsReports_maxResults' - The maximum number of report results returned by @ListFindingsReports@
-- in paginated output. When this parameter is used, @ListFindingsReports@
-- only returns @maxResults@ results in a single page along with a
-- @nextToken@ response element. The remaining results of the initial
-- request can be seen by sending another @ListFindingsReports@ request
-- with the returned @nextToken@ value.
--
-- 'endTime', 'listFindingsReports_endTime' - The end time of the profile to get analysis data about. You must specify
-- @startTime@ and @endTime@. This is specified using the ISO 8601 format.
-- For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June
-- 1, 2020 1:15:02 PM UTC.
--
-- 'profilingGroupName', 'listFindingsReports_profilingGroupName' - The name of the profiling group from which to search for analysis data.
--
-- 'startTime', 'listFindingsReports_startTime' - The start time of the profile to get analysis data about. You must
-- specify @startTime@ and @endTime@. This is specified using the ISO 8601
-- format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond
-- past June 1, 2020 1:15:02 PM UTC.
newListFindingsReports ::
  -- | 'endTime'
  Prelude.UTCTime ->
  -- | 'profilingGroupName'
  Prelude.Text ->
  -- | 'startTime'
  Prelude.UTCTime ->
  ListFindingsReports
newListFindingsReports
  pEndTime_
  pProfilingGroupName_
  pStartTime_ =
    ListFindingsReports'
      { nextToken = Prelude.Nothing,
        dailyReportsOnly = Prelude.Nothing,
        maxResults = Prelude.Nothing,
        endTime = Core._Time Lens.# pEndTime_,
        profilingGroupName = pProfilingGroupName_,
        startTime = Core._Time Lens.# pStartTime_
      }

-- | The @nextToken@ value returned from a previous paginated
-- @ListFindingsReportsRequest@ request where @maxResults@ was used and the
-- results exceeded the value of that parameter. Pagination continues from
-- the end of the previous results that returned the @nextToken@ value.
--
-- This token should be treated as an opaque identifier that is only used
-- to retrieve the next items in a list and not for other programmatic
-- purposes.
listFindingsReports_nextToken :: Lens.Lens' ListFindingsReports (Prelude.Maybe Prelude.Text)
listFindingsReports_nextToken = Lens.lens (\ListFindingsReports' {nextToken} -> nextToken) (\s@ListFindingsReports' {} a -> s {nextToken = a} :: ListFindingsReports)

-- | A @Boolean@ value indicating whether to only return reports from daily
-- profiles. If set to @True@, only analysis data from daily profiles is
-- returned. If set to @False@, analysis data is returned from smaller time
-- windows (for example, one hour).
listFindingsReports_dailyReportsOnly :: Lens.Lens' ListFindingsReports (Prelude.Maybe Prelude.Bool)
listFindingsReports_dailyReportsOnly = Lens.lens (\ListFindingsReports' {dailyReportsOnly} -> dailyReportsOnly) (\s@ListFindingsReports' {} a -> s {dailyReportsOnly = a} :: ListFindingsReports)

-- | The maximum number of report results returned by @ListFindingsReports@
-- in paginated output. When this parameter is used, @ListFindingsReports@
-- only returns @maxResults@ results in a single page along with a
-- @nextToken@ response element. The remaining results of the initial
-- request can be seen by sending another @ListFindingsReports@ request
-- with the returned @nextToken@ value.
listFindingsReports_maxResults :: Lens.Lens' ListFindingsReports (Prelude.Maybe Prelude.Natural)
listFindingsReports_maxResults = Lens.lens (\ListFindingsReports' {maxResults} -> maxResults) (\s@ListFindingsReports' {} a -> s {maxResults = a} :: ListFindingsReports)

-- | The end time of the profile to get analysis data about. You must specify
-- @startTime@ and @endTime@. This is specified using the ISO 8601 format.
-- For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June
-- 1, 2020 1:15:02 PM UTC.
listFindingsReports_endTime :: Lens.Lens' ListFindingsReports Prelude.UTCTime
listFindingsReports_endTime = Lens.lens (\ListFindingsReports' {endTime} -> endTime) (\s@ListFindingsReports' {} a -> s {endTime = a} :: ListFindingsReports) Prelude.. Core._Time

-- | The name of the profiling group from which to search for analysis data.
listFindingsReports_profilingGroupName :: Lens.Lens' ListFindingsReports Prelude.Text
listFindingsReports_profilingGroupName = Lens.lens (\ListFindingsReports' {profilingGroupName} -> profilingGroupName) (\s@ListFindingsReports' {} a -> s {profilingGroupName = a} :: ListFindingsReports)

-- | The start time of the profile to get analysis data about. You must
-- specify @startTime@ and @endTime@. This is specified using the ISO 8601
-- format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond
-- past June 1, 2020 1:15:02 PM UTC.
listFindingsReports_startTime :: Lens.Lens' ListFindingsReports Prelude.UTCTime
listFindingsReports_startTime = Lens.lens (\ListFindingsReports' {startTime} -> startTime) (\s@ListFindingsReports' {} a -> s {startTime = a} :: ListFindingsReports) Prelude.. Core._Time

instance Core.AWSRequest ListFindingsReports where
  type
    AWSResponse ListFindingsReports =
      ListFindingsReportsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListFindingsReportsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "findingsReportSummaries"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListFindingsReports

instance Prelude.NFData ListFindingsReports

instance Core.ToHeaders ListFindingsReports where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListFindingsReports where
  toPath ListFindingsReports' {..} =
    Prelude.mconcat
      [ "/internal/profilingGroups/",
        Core.toBS profilingGroupName,
        "/findingsReports"
      ]

instance Core.ToQuery ListFindingsReports where
  toQuery ListFindingsReports' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "dailyReportsOnly" Core.=: dailyReportsOnly,
        "maxResults" Core.=: maxResults,
        "endTime" Core.=: endTime,
        "startTime" Core.=: startTime
      ]

-- | The structure representing the ListFindingsReportsResponse.
--
-- /See:/ 'newListFindingsReportsResponse' smart constructor.
data ListFindingsReportsResponse = ListFindingsReportsResponse'
  { -- | The @nextToken@ value to include in a future @ListFindingsReports@
    -- request. When the results of a @ListFindingsReports@ request exceed
    -- @maxResults@, this value can be used to retrieve the next page of
    -- results. This value is @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The list of analysis results summaries.
    findingsReportSummaries :: [FindingsReportSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListFindingsReportsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listFindingsReportsResponse_nextToken' - The @nextToken@ value to include in a future @ListFindingsReports@
-- request. When the results of a @ListFindingsReports@ request exceed
-- @maxResults@, this value can be used to retrieve the next page of
-- results. This value is @null@ when there are no more results to return.
--
-- 'httpStatus', 'listFindingsReportsResponse_httpStatus' - The response's http status code.
--
-- 'findingsReportSummaries', 'listFindingsReportsResponse_findingsReportSummaries' - The list of analysis results summaries.
newListFindingsReportsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListFindingsReportsResponse
newListFindingsReportsResponse pHttpStatus_ =
  ListFindingsReportsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      findingsReportSummaries = Prelude.mempty
    }

-- | The @nextToken@ value to include in a future @ListFindingsReports@
-- request. When the results of a @ListFindingsReports@ request exceed
-- @maxResults@, this value can be used to retrieve the next page of
-- results. This value is @null@ when there are no more results to return.
listFindingsReportsResponse_nextToken :: Lens.Lens' ListFindingsReportsResponse (Prelude.Maybe Prelude.Text)
listFindingsReportsResponse_nextToken = Lens.lens (\ListFindingsReportsResponse' {nextToken} -> nextToken) (\s@ListFindingsReportsResponse' {} a -> s {nextToken = a} :: ListFindingsReportsResponse)

-- | The response's http status code.
listFindingsReportsResponse_httpStatus :: Lens.Lens' ListFindingsReportsResponse Prelude.Int
listFindingsReportsResponse_httpStatus = Lens.lens (\ListFindingsReportsResponse' {httpStatus} -> httpStatus) (\s@ListFindingsReportsResponse' {} a -> s {httpStatus = a} :: ListFindingsReportsResponse)

-- | The list of analysis results summaries.
listFindingsReportsResponse_findingsReportSummaries :: Lens.Lens' ListFindingsReportsResponse [FindingsReportSummary]
listFindingsReportsResponse_findingsReportSummaries = Lens.lens (\ListFindingsReportsResponse' {findingsReportSummaries} -> findingsReportSummaries) (\s@ListFindingsReportsResponse' {} a -> s {findingsReportSummaries = a} :: ListFindingsReportsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListFindingsReportsResponse
