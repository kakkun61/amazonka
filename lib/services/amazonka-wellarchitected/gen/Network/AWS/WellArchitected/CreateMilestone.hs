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
-- Module      : Network.AWS.WellArchitected.CreateMilestone
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a milestone for an existing workload.
module Network.AWS.WellArchitected.CreateMilestone
  ( -- * Creating a Request
    CreateMilestone (..),
    newCreateMilestone,

    -- * Request Lenses
    createMilestone_workloadId,
    createMilestone_milestoneName,
    createMilestone_clientRequestToken,

    -- * Destructuring the Response
    CreateMilestoneResponse (..),
    newCreateMilestoneResponse,

    -- * Response Lenses
    createMilestoneResponse_milestoneNumber,
    createMilestoneResponse_workloadId,
    createMilestoneResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WellArchitected.Types

-- | Input for milestone creation.
--
-- /See:/ 'newCreateMilestone' smart constructor.
data CreateMilestone = CreateMilestone'
  { workloadId :: Prelude.Text,
    milestoneName :: Prelude.Text,
    clientRequestToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateMilestone' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workloadId', 'createMilestone_workloadId' - Undocumented member.
--
-- 'milestoneName', 'createMilestone_milestoneName' - Undocumented member.
--
-- 'clientRequestToken', 'createMilestone_clientRequestToken' - Undocumented member.
newCreateMilestone ::
  -- | 'workloadId'
  Prelude.Text ->
  -- | 'milestoneName'
  Prelude.Text ->
  -- | 'clientRequestToken'
  Prelude.Text ->
  CreateMilestone
newCreateMilestone
  pWorkloadId_
  pMilestoneName_
  pClientRequestToken_ =
    CreateMilestone'
      { workloadId = pWorkloadId_,
        milestoneName = pMilestoneName_,
        clientRequestToken = pClientRequestToken_
      }

-- | Undocumented member.
createMilestone_workloadId :: Lens.Lens' CreateMilestone Prelude.Text
createMilestone_workloadId = Lens.lens (\CreateMilestone' {workloadId} -> workloadId) (\s@CreateMilestone' {} a -> s {workloadId = a} :: CreateMilestone)

-- | Undocumented member.
createMilestone_milestoneName :: Lens.Lens' CreateMilestone Prelude.Text
createMilestone_milestoneName = Lens.lens (\CreateMilestone' {milestoneName} -> milestoneName) (\s@CreateMilestone' {} a -> s {milestoneName = a} :: CreateMilestone)

-- | Undocumented member.
createMilestone_clientRequestToken :: Lens.Lens' CreateMilestone Prelude.Text
createMilestone_clientRequestToken = Lens.lens (\CreateMilestone' {clientRequestToken} -> clientRequestToken) (\s@CreateMilestone' {} a -> s {clientRequestToken = a} :: CreateMilestone)

instance Core.AWSRequest CreateMilestone where
  type
    AWSResponse CreateMilestone =
      CreateMilestoneResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateMilestoneResponse'
            Prelude.<$> (x Core..?> "MilestoneNumber")
            Prelude.<*> (x Core..?> "WorkloadId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateMilestone

instance Prelude.NFData CreateMilestone

instance Core.ToHeaders CreateMilestone where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateMilestone where
  toJSON CreateMilestone' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("MilestoneName" Core..= milestoneName),
            Prelude.Just
              ("ClientRequestToken" Core..= clientRequestToken)
          ]
      )

instance Core.ToPath CreateMilestone where
  toPath CreateMilestone' {..} =
    Prelude.mconcat
      ["/workloads/", Core.toBS workloadId, "/milestones"]

instance Core.ToQuery CreateMilestone where
  toQuery = Prelude.const Prelude.mempty

-- | Output of a create milestone call.
--
-- /See:/ 'newCreateMilestoneResponse' smart constructor.
data CreateMilestoneResponse = CreateMilestoneResponse'
  { milestoneNumber :: Prelude.Maybe Prelude.Natural,
    workloadId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateMilestoneResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'milestoneNumber', 'createMilestoneResponse_milestoneNumber' - Undocumented member.
--
-- 'workloadId', 'createMilestoneResponse_workloadId' - Undocumented member.
--
-- 'httpStatus', 'createMilestoneResponse_httpStatus' - The response's http status code.
newCreateMilestoneResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateMilestoneResponse
newCreateMilestoneResponse pHttpStatus_ =
  CreateMilestoneResponse'
    { milestoneNumber =
        Prelude.Nothing,
      workloadId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createMilestoneResponse_milestoneNumber :: Lens.Lens' CreateMilestoneResponse (Prelude.Maybe Prelude.Natural)
createMilestoneResponse_milestoneNumber = Lens.lens (\CreateMilestoneResponse' {milestoneNumber} -> milestoneNumber) (\s@CreateMilestoneResponse' {} a -> s {milestoneNumber = a} :: CreateMilestoneResponse)

-- | Undocumented member.
createMilestoneResponse_workloadId :: Lens.Lens' CreateMilestoneResponse (Prelude.Maybe Prelude.Text)
createMilestoneResponse_workloadId = Lens.lens (\CreateMilestoneResponse' {workloadId} -> workloadId) (\s@CreateMilestoneResponse' {} a -> s {workloadId = a} :: CreateMilestoneResponse)

-- | The response's http status code.
createMilestoneResponse_httpStatus :: Lens.Lens' CreateMilestoneResponse Prelude.Int
createMilestoneResponse_httpStatus = Lens.lens (\CreateMilestoneResponse' {httpStatus} -> httpStatus) (\s@CreateMilestoneResponse' {} a -> s {httpStatus = a} :: CreateMilestoneResponse)

instance Prelude.NFData CreateMilestoneResponse
