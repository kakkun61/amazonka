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
-- Module      : Network.AWS.WellArchitected.GetMilestone
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a milestone for an existing workload.
module Network.AWS.WellArchitected.GetMilestone
  ( -- * Creating a Request
    GetMilestone (..),
    newGetMilestone,

    -- * Request Lenses
    getMilestone_workloadId,
    getMilestone_milestoneNumber,

    -- * Destructuring the Response
    GetMilestoneResponse (..),
    newGetMilestoneResponse,

    -- * Response Lenses
    getMilestoneResponse_milestone,
    getMilestoneResponse_workloadId,
    getMilestoneResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WellArchitected.Types

-- | Input to get a milestone.
--
-- /See:/ 'newGetMilestone' smart constructor.
data GetMilestone = GetMilestone'
  { workloadId :: Prelude.Text,
    milestoneNumber :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMilestone' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workloadId', 'getMilestone_workloadId' - Undocumented member.
--
-- 'milestoneNumber', 'getMilestone_milestoneNumber' - Undocumented member.
newGetMilestone ::
  -- | 'workloadId'
  Prelude.Text ->
  -- | 'milestoneNumber'
  Prelude.Natural ->
  GetMilestone
newGetMilestone pWorkloadId_ pMilestoneNumber_ =
  GetMilestone'
    { workloadId = pWorkloadId_,
      milestoneNumber = pMilestoneNumber_
    }

-- | Undocumented member.
getMilestone_workloadId :: Lens.Lens' GetMilestone Prelude.Text
getMilestone_workloadId = Lens.lens (\GetMilestone' {workloadId} -> workloadId) (\s@GetMilestone' {} a -> s {workloadId = a} :: GetMilestone)

-- | Undocumented member.
getMilestone_milestoneNumber :: Lens.Lens' GetMilestone Prelude.Natural
getMilestone_milestoneNumber = Lens.lens (\GetMilestone' {milestoneNumber} -> milestoneNumber) (\s@GetMilestone' {} a -> s {milestoneNumber = a} :: GetMilestone)

instance Core.AWSRequest GetMilestone where
  type AWSResponse GetMilestone = GetMilestoneResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetMilestoneResponse'
            Prelude.<$> (x Core..?> "Milestone")
            Prelude.<*> (x Core..?> "WorkloadId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetMilestone

instance Prelude.NFData GetMilestone

instance Core.ToHeaders GetMilestone where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetMilestone where
  toPath GetMilestone' {..} =
    Prelude.mconcat
      [ "/workloads/",
        Core.toBS workloadId,
        "/milestones/",
        Core.toBS milestoneNumber
      ]

instance Core.ToQuery GetMilestone where
  toQuery = Prelude.const Prelude.mempty

-- | Output of a get milestone call.
--
-- /See:/ 'newGetMilestoneResponse' smart constructor.
data GetMilestoneResponse = GetMilestoneResponse'
  { milestone :: Prelude.Maybe Milestone,
    workloadId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMilestoneResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'milestone', 'getMilestoneResponse_milestone' - Undocumented member.
--
-- 'workloadId', 'getMilestoneResponse_workloadId' - Undocumented member.
--
-- 'httpStatus', 'getMilestoneResponse_httpStatus' - The response's http status code.
newGetMilestoneResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMilestoneResponse
newGetMilestoneResponse pHttpStatus_ =
  GetMilestoneResponse'
    { milestone = Prelude.Nothing,
      workloadId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
getMilestoneResponse_milestone :: Lens.Lens' GetMilestoneResponse (Prelude.Maybe Milestone)
getMilestoneResponse_milestone = Lens.lens (\GetMilestoneResponse' {milestone} -> milestone) (\s@GetMilestoneResponse' {} a -> s {milestone = a} :: GetMilestoneResponse)

-- | Undocumented member.
getMilestoneResponse_workloadId :: Lens.Lens' GetMilestoneResponse (Prelude.Maybe Prelude.Text)
getMilestoneResponse_workloadId = Lens.lens (\GetMilestoneResponse' {workloadId} -> workloadId) (\s@GetMilestoneResponse' {} a -> s {workloadId = a} :: GetMilestoneResponse)

-- | The response's http status code.
getMilestoneResponse_httpStatus :: Lens.Lens' GetMilestoneResponse Prelude.Int
getMilestoneResponse_httpStatus = Lens.lens (\GetMilestoneResponse' {httpStatus} -> httpStatus) (\s@GetMilestoneResponse' {} a -> s {httpStatus = a} :: GetMilestoneResponse)

instance Prelude.NFData GetMilestoneResponse
