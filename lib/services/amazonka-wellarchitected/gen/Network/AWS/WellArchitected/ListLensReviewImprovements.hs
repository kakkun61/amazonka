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
-- Module      : Network.AWS.WellArchitected.ListLensReviewImprovements
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List lens review improvements.
module Network.AWS.WellArchitected.ListLensReviewImprovements
  ( -- * Creating a Request
    ListLensReviewImprovements (..),
    newListLensReviewImprovements,

    -- * Request Lenses
    listLensReviewImprovements_pillarId,
    listLensReviewImprovements_milestoneNumber,
    listLensReviewImprovements_nextToken,
    listLensReviewImprovements_maxResults,
    listLensReviewImprovements_workloadId,
    listLensReviewImprovements_lensAlias,

    -- * Destructuring the Response
    ListLensReviewImprovementsResponse (..),
    newListLensReviewImprovementsResponse,

    -- * Response Lenses
    listLensReviewImprovementsResponse_improvementSummaries,
    listLensReviewImprovementsResponse_lensAlias,
    listLensReviewImprovementsResponse_milestoneNumber,
    listLensReviewImprovementsResponse_nextToken,
    listLensReviewImprovementsResponse_workloadId,
    listLensReviewImprovementsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WellArchitected.Types

-- | Input to list lens review improvements.
--
-- /See:/ 'newListLensReviewImprovements' smart constructor.
data ListLensReviewImprovements = ListLensReviewImprovements'
  { pillarId :: Prelude.Maybe Prelude.Text,
    milestoneNumber :: Prelude.Maybe Prelude.Natural,
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return for this request.
    maxResults :: Prelude.Maybe Prelude.Natural,
    workloadId :: Prelude.Text,
    lensAlias :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLensReviewImprovements' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pillarId', 'listLensReviewImprovements_pillarId' - Undocumented member.
--
-- 'milestoneNumber', 'listLensReviewImprovements_milestoneNumber' - Undocumented member.
--
-- 'nextToken', 'listLensReviewImprovements_nextToken' - Undocumented member.
--
-- 'maxResults', 'listLensReviewImprovements_maxResults' - The maximum number of results to return for this request.
--
-- 'workloadId', 'listLensReviewImprovements_workloadId' - Undocumented member.
--
-- 'lensAlias', 'listLensReviewImprovements_lensAlias' - Undocumented member.
newListLensReviewImprovements ::
  -- | 'workloadId'
  Prelude.Text ->
  -- | 'lensAlias'
  Prelude.Text ->
  ListLensReviewImprovements
newListLensReviewImprovements
  pWorkloadId_
  pLensAlias_ =
    ListLensReviewImprovements'
      { pillarId =
          Prelude.Nothing,
        milestoneNumber = Prelude.Nothing,
        nextToken = Prelude.Nothing,
        maxResults = Prelude.Nothing,
        workloadId = pWorkloadId_,
        lensAlias = pLensAlias_
      }

-- | Undocumented member.
listLensReviewImprovements_pillarId :: Lens.Lens' ListLensReviewImprovements (Prelude.Maybe Prelude.Text)
listLensReviewImprovements_pillarId = Lens.lens (\ListLensReviewImprovements' {pillarId} -> pillarId) (\s@ListLensReviewImprovements' {} a -> s {pillarId = a} :: ListLensReviewImprovements)

-- | Undocumented member.
listLensReviewImprovements_milestoneNumber :: Lens.Lens' ListLensReviewImprovements (Prelude.Maybe Prelude.Natural)
listLensReviewImprovements_milestoneNumber = Lens.lens (\ListLensReviewImprovements' {milestoneNumber} -> milestoneNumber) (\s@ListLensReviewImprovements' {} a -> s {milestoneNumber = a} :: ListLensReviewImprovements)

-- | Undocumented member.
listLensReviewImprovements_nextToken :: Lens.Lens' ListLensReviewImprovements (Prelude.Maybe Prelude.Text)
listLensReviewImprovements_nextToken = Lens.lens (\ListLensReviewImprovements' {nextToken} -> nextToken) (\s@ListLensReviewImprovements' {} a -> s {nextToken = a} :: ListLensReviewImprovements)

-- | The maximum number of results to return for this request.
listLensReviewImprovements_maxResults :: Lens.Lens' ListLensReviewImprovements (Prelude.Maybe Prelude.Natural)
listLensReviewImprovements_maxResults = Lens.lens (\ListLensReviewImprovements' {maxResults} -> maxResults) (\s@ListLensReviewImprovements' {} a -> s {maxResults = a} :: ListLensReviewImprovements)

-- | Undocumented member.
listLensReviewImprovements_workloadId :: Lens.Lens' ListLensReviewImprovements Prelude.Text
listLensReviewImprovements_workloadId = Lens.lens (\ListLensReviewImprovements' {workloadId} -> workloadId) (\s@ListLensReviewImprovements' {} a -> s {workloadId = a} :: ListLensReviewImprovements)

-- | Undocumented member.
listLensReviewImprovements_lensAlias :: Lens.Lens' ListLensReviewImprovements Prelude.Text
listLensReviewImprovements_lensAlias = Lens.lens (\ListLensReviewImprovements' {lensAlias} -> lensAlias) (\s@ListLensReviewImprovements' {} a -> s {lensAlias = a} :: ListLensReviewImprovements)

instance Core.AWSRequest ListLensReviewImprovements where
  type
    AWSResponse ListLensReviewImprovements =
      ListLensReviewImprovementsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListLensReviewImprovementsResponse'
            Prelude.<$> ( x Core..?> "ImprovementSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "LensAlias")
            Prelude.<*> (x Core..?> "MilestoneNumber")
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "WorkloadId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListLensReviewImprovements

instance Prelude.NFData ListLensReviewImprovements

instance Core.ToHeaders ListLensReviewImprovements where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListLensReviewImprovements where
  toPath ListLensReviewImprovements' {..} =
    Prelude.mconcat
      [ "/workloads/",
        Core.toBS workloadId,
        "/lensReviews/",
        Core.toBS lensAlias,
        "/improvements"
      ]

instance Core.ToQuery ListLensReviewImprovements where
  toQuery ListLensReviewImprovements' {..} =
    Prelude.mconcat
      [ "PillarId" Core.=: pillarId,
        "MilestoneNumber" Core.=: milestoneNumber,
        "NextToken" Core.=: nextToken,
        "MaxResults" Core.=: maxResults
      ]

-- | Output of a list lens review improvements call.
--
-- /See:/ 'newListLensReviewImprovementsResponse' smart constructor.
data ListLensReviewImprovementsResponse = ListLensReviewImprovementsResponse'
  { improvementSummaries :: Prelude.Maybe [ImprovementSummary],
    lensAlias :: Prelude.Maybe Prelude.Text,
    milestoneNumber :: Prelude.Maybe Prelude.Natural,
    nextToken :: Prelude.Maybe Prelude.Text,
    workloadId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLensReviewImprovementsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'improvementSummaries', 'listLensReviewImprovementsResponse_improvementSummaries' - Undocumented member.
--
-- 'lensAlias', 'listLensReviewImprovementsResponse_lensAlias' - Undocumented member.
--
-- 'milestoneNumber', 'listLensReviewImprovementsResponse_milestoneNumber' - Undocumented member.
--
-- 'nextToken', 'listLensReviewImprovementsResponse_nextToken' - Undocumented member.
--
-- 'workloadId', 'listLensReviewImprovementsResponse_workloadId' - Undocumented member.
--
-- 'httpStatus', 'listLensReviewImprovementsResponse_httpStatus' - The response's http status code.
newListLensReviewImprovementsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListLensReviewImprovementsResponse
newListLensReviewImprovementsResponse pHttpStatus_ =
  ListLensReviewImprovementsResponse'
    { improvementSummaries =
        Prelude.Nothing,
      lensAlias = Prelude.Nothing,
      milestoneNumber = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      workloadId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
listLensReviewImprovementsResponse_improvementSummaries :: Lens.Lens' ListLensReviewImprovementsResponse (Prelude.Maybe [ImprovementSummary])
listLensReviewImprovementsResponse_improvementSummaries = Lens.lens (\ListLensReviewImprovementsResponse' {improvementSummaries} -> improvementSummaries) (\s@ListLensReviewImprovementsResponse' {} a -> s {improvementSummaries = a} :: ListLensReviewImprovementsResponse) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
listLensReviewImprovementsResponse_lensAlias :: Lens.Lens' ListLensReviewImprovementsResponse (Prelude.Maybe Prelude.Text)
listLensReviewImprovementsResponse_lensAlias = Lens.lens (\ListLensReviewImprovementsResponse' {lensAlias} -> lensAlias) (\s@ListLensReviewImprovementsResponse' {} a -> s {lensAlias = a} :: ListLensReviewImprovementsResponse)

-- | Undocumented member.
listLensReviewImprovementsResponse_milestoneNumber :: Lens.Lens' ListLensReviewImprovementsResponse (Prelude.Maybe Prelude.Natural)
listLensReviewImprovementsResponse_milestoneNumber = Lens.lens (\ListLensReviewImprovementsResponse' {milestoneNumber} -> milestoneNumber) (\s@ListLensReviewImprovementsResponse' {} a -> s {milestoneNumber = a} :: ListLensReviewImprovementsResponse)

-- | Undocumented member.
listLensReviewImprovementsResponse_nextToken :: Lens.Lens' ListLensReviewImprovementsResponse (Prelude.Maybe Prelude.Text)
listLensReviewImprovementsResponse_nextToken = Lens.lens (\ListLensReviewImprovementsResponse' {nextToken} -> nextToken) (\s@ListLensReviewImprovementsResponse' {} a -> s {nextToken = a} :: ListLensReviewImprovementsResponse)

-- | Undocumented member.
listLensReviewImprovementsResponse_workloadId :: Lens.Lens' ListLensReviewImprovementsResponse (Prelude.Maybe Prelude.Text)
listLensReviewImprovementsResponse_workloadId = Lens.lens (\ListLensReviewImprovementsResponse' {workloadId} -> workloadId) (\s@ListLensReviewImprovementsResponse' {} a -> s {workloadId = a} :: ListLensReviewImprovementsResponse)

-- | The response's http status code.
listLensReviewImprovementsResponse_httpStatus :: Lens.Lens' ListLensReviewImprovementsResponse Prelude.Int
listLensReviewImprovementsResponse_httpStatus = Lens.lens (\ListLensReviewImprovementsResponse' {httpStatus} -> httpStatus) (\s@ListLensReviewImprovementsResponse' {} a -> s {httpStatus = a} :: ListLensReviewImprovementsResponse)

instance
  Prelude.NFData
    ListLensReviewImprovementsResponse
