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
-- Module      : Network.AWS.QuickSight.ListAnalyses
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Amazon QuickSight analyses that exist in the specified Amazon Web
-- Services account.
--
-- This operation returns paginated results.
module Network.AWS.QuickSight.ListAnalyses
  ( -- * Creating a Request
    ListAnalyses (..),
    newListAnalyses,

    -- * Request Lenses
    listAnalyses_nextToken,
    listAnalyses_maxResults,
    listAnalyses_awsAccountId,

    -- * Destructuring the Response
    ListAnalysesResponse (..),
    newListAnalysesResponse,

    -- * Response Lenses
    listAnalysesResponse_requestId,
    listAnalysesResponse_nextToken,
    listAnalysesResponse_analysisSummaryList,
    listAnalysesResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListAnalyses' smart constructor.
data ListAnalyses = ListAnalyses'
  { -- | A pagination token that can be used in a subsequent request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the Amazon Web Services account that contains the analyses.
    awsAccountId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAnalyses' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAnalyses_nextToken' - A pagination token that can be used in a subsequent request.
--
-- 'maxResults', 'listAnalyses_maxResults' - The maximum number of results to return.
--
-- 'awsAccountId', 'listAnalyses_awsAccountId' - The ID of the Amazon Web Services account that contains the analyses.
newListAnalyses ::
  -- | 'awsAccountId'
  Prelude.Text ->
  ListAnalyses
newListAnalyses pAwsAccountId_ =
  ListAnalyses'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      awsAccountId = pAwsAccountId_
    }

-- | A pagination token that can be used in a subsequent request.
listAnalyses_nextToken :: Lens.Lens' ListAnalyses (Prelude.Maybe Prelude.Text)
listAnalyses_nextToken = Lens.lens (\ListAnalyses' {nextToken} -> nextToken) (\s@ListAnalyses' {} a -> s {nextToken = a} :: ListAnalyses)

-- | The maximum number of results to return.
listAnalyses_maxResults :: Lens.Lens' ListAnalyses (Prelude.Maybe Prelude.Natural)
listAnalyses_maxResults = Lens.lens (\ListAnalyses' {maxResults} -> maxResults) (\s@ListAnalyses' {} a -> s {maxResults = a} :: ListAnalyses)

-- | The ID of the Amazon Web Services account that contains the analyses.
listAnalyses_awsAccountId :: Lens.Lens' ListAnalyses Prelude.Text
listAnalyses_awsAccountId = Lens.lens (\ListAnalyses' {awsAccountId} -> awsAccountId) (\s@ListAnalyses' {} a -> s {awsAccountId = a} :: ListAnalyses)

instance Core.AWSPager ListAnalyses where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listAnalysesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listAnalysesResponse_analysisSummaryList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listAnalyses_nextToken
          Lens..~ rs
          Lens.^? listAnalysesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListAnalyses where
  type AWSResponse ListAnalyses = ListAnalysesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAnalysesResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "AnalysisSummaryList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListAnalyses

instance Prelude.NFData ListAnalyses

instance Core.ToHeaders ListAnalyses where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListAnalyses where
  toPath ListAnalyses' {..} =
    Prelude.mconcat
      ["/accounts/", Core.toBS awsAccountId, "/analyses"]

instance Core.ToQuery ListAnalyses where
  toQuery ListAnalyses' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListAnalysesResponse' smart constructor.
data ListAnalysesResponse = ListAnalysesResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | A pagination token that can be used in a subsequent request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Metadata describing each of the analyses that are listed.
    analysisSummaryList :: Prelude.Maybe [AnalysisSummary],
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAnalysesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'listAnalysesResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'nextToken', 'listAnalysesResponse_nextToken' - A pagination token that can be used in a subsequent request.
--
-- 'analysisSummaryList', 'listAnalysesResponse_analysisSummaryList' - Metadata describing each of the analyses that are listed.
--
-- 'status', 'listAnalysesResponse_status' - The HTTP status of the request.
newListAnalysesResponse ::
  -- | 'status'
  Prelude.Int ->
  ListAnalysesResponse
newListAnalysesResponse pStatus_ =
  ListAnalysesResponse'
    { requestId = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      analysisSummaryList = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
listAnalysesResponse_requestId :: Lens.Lens' ListAnalysesResponse (Prelude.Maybe Prelude.Text)
listAnalysesResponse_requestId = Lens.lens (\ListAnalysesResponse' {requestId} -> requestId) (\s@ListAnalysesResponse' {} a -> s {requestId = a} :: ListAnalysesResponse)

-- | A pagination token that can be used in a subsequent request.
listAnalysesResponse_nextToken :: Lens.Lens' ListAnalysesResponse (Prelude.Maybe Prelude.Text)
listAnalysesResponse_nextToken = Lens.lens (\ListAnalysesResponse' {nextToken} -> nextToken) (\s@ListAnalysesResponse' {} a -> s {nextToken = a} :: ListAnalysesResponse)

-- | Metadata describing each of the analyses that are listed.
listAnalysesResponse_analysisSummaryList :: Lens.Lens' ListAnalysesResponse (Prelude.Maybe [AnalysisSummary])
listAnalysesResponse_analysisSummaryList = Lens.lens (\ListAnalysesResponse' {analysisSummaryList} -> analysisSummaryList) (\s@ListAnalysesResponse' {} a -> s {analysisSummaryList = a} :: ListAnalysesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The HTTP status of the request.
listAnalysesResponse_status :: Lens.Lens' ListAnalysesResponse Prelude.Int
listAnalysesResponse_status = Lens.lens (\ListAnalysesResponse' {status} -> status) (\s@ListAnalysesResponse' {} a -> s {status = a} :: ListAnalysesResponse)

instance Prelude.NFData ListAnalysesResponse
