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
-- Module      : Network.AWS.WellArchitected.ListMilestones
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all milestones for an existing workload.
module Network.AWS.WellArchitected.ListMilestones
  ( -- * Creating a Request
    ListMilestones (..),
    newListMilestones,

    -- * Request Lenses
    listMilestones_nextToken,
    listMilestones_maxResults,
    listMilestones_workloadId,

    -- * Destructuring the Response
    ListMilestonesResponse (..),
    newListMilestonesResponse,

    -- * Response Lenses
    listMilestonesResponse_milestoneSummaries,
    listMilestonesResponse_nextToken,
    listMilestonesResponse_workloadId,
    listMilestonesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WellArchitected.Types

-- | Input to list all milestones for a workload.
--
-- /See:/ 'newListMilestones' smart constructor.
data ListMilestones = ListMilestones'
  { nextToken :: Prelude.Maybe Prelude.Text,
    maxResults :: Prelude.Maybe Prelude.Natural,
    workloadId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListMilestones' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listMilestones_nextToken' - Undocumented member.
--
-- 'maxResults', 'listMilestones_maxResults' - Undocumented member.
--
-- 'workloadId', 'listMilestones_workloadId' - Undocumented member.
newListMilestones ::
  -- | 'workloadId'
  Prelude.Text ->
  ListMilestones
newListMilestones pWorkloadId_ =
  ListMilestones'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      workloadId = pWorkloadId_
    }

-- | Undocumented member.
listMilestones_nextToken :: Lens.Lens' ListMilestones (Prelude.Maybe Prelude.Text)
listMilestones_nextToken = Lens.lens (\ListMilestones' {nextToken} -> nextToken) (\s@ListMilestones' {} a -> s {nextToken = a} :: ListMilestones)

-- | Undocumented member.
listMilestones_maxResults :: Lens.Lens' ListMilestones (Prelude.Maybe Prelude.Natural)
listMilestones_maxResults = Lens.lens (\ListMilestones' {maxResults} -> maxResults) (\s@ListMilestones' {} a -> s {maxResults = a} :: ListMilestones)

-- | Undocumented member.
listMilestones_workloadId :: Lens.Lens' ListMilestones Prelude.Text
listMilestones_workloadId = Lens.lens (\ListMilestones' {workloadId} -> workloadId) (\s@ListMilestones' {} a -> s {workloadId = a} :: ListMilestones)

instance Core.AWSRequest ListMilestones where
  type
    AWSResponse ListMilestones =
      ListMilestonesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListMilestonesResponse'
            Prelude.<$> ( x Core..?> "MilestoneSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "WorkloadId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListMilestones

instance Prelude.NFData ListMilestones

instance Core.ToHeaders ListMilestones where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListMilestones where
  toJSON ListMilestones' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListMilestones where
  toPath ListMilestones' {..} =
    Prelude.mconcat
      [ "/workloads/",
        Core.toBS workloadId,
        "/milestonesSummaries"
      ]

instance Core.ToQuery ListMilestones where
  toQuery = Prelude.const Prelude.mempty

-- | Output of a list milestones call.
--
-- /See:/ 'newListMilestonesResponse' smart constructor.
data ListMilestonesResponse = ListMilestonesResponse'
  { milestoneSummaries :: Prelude.Maybe [MilestoneSummary],
    nextToken :: Prelude.Maybe Prelude.Text,
    workloadId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListMilestonesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'milestoneSummaries', 'listMilestonesResponse_milestoneSummaries' - Undocumented member.
--
-- 'nextToken', 'listMilestonesResponse_nextToken' - Undocumented member.
--
-- 'workloadId', 'listMilestonesResponse_workloadId' - Undocumented member.
--
-- 'httpStatus', 'listMilestonesResponse_httpStatus' - The response's http status code.
newListMilestonesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListMilestonesResponse
newListMilestonesResponse pHttpStatus_ =
  ListMilestonesResponse'
    { milestoneSummaries =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      workloadId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
listMilestonesResponse_milestoneSummaries :: Lens.Lens' ListMilestonesResponse (Prelude.Maybe [MilestoneSummary])
listMilestonesResponse_milestoneSummaries = Lens.lens (\ListMilestonesResponse' {milestoneSummaries} -> milestoneSummaries) (\s@ListMilestonesResponse' {} a -> s {milestoneSummaries = a} :: ListMilestonesResponse) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
listMilestonesResponse_nextToken :: Lens.Lens' ListMilestonesResponse (Prelude.Maybe Prelude.Text)
listMilestonesResponse_nextToken = Lens.lens (\ListMilestonesResponse' {nextToken} -> nextToken) (\s@ListMilestonesResponse' {} a -> s {nextToken = a} :: ListMilestonesResponse)

-- | Undocumented member.
listMilestonesResponse_workloadId :: Lens.Lens' ListMilestonesResponse (Prelude.Maybe Prelude.Text)
listMilestonesResponse_workloadId = Lens.lens (\ListMilestonesResponse' {workloadId} -> workloadId) (\s@ListMilestonesResponse' {} a -> s {workloadId = a} :: ListMilestonesResponse)

-- | The response's http status code.
listMilestonesResponse_httpStatus :: Lens.Lens' ListMilestonesResponse Prelude.Int
listMilestonesResponse_httpStatus = Lens.lens (\ListMilestonesResponse' {httpStatus} -> httpStatus) (\s@ListMilestonesResponse' {} a -> s {httpStatus = a} :: ListMilestonesResponse)

instance Prelude.NFData ListMilestonesResponse
