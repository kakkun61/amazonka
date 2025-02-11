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
-- Module      : Network.AWS.WellArchitected.UpdateWorkloadShare
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a workload share.
module Network.AWS.WellArchitected.UpdateWorkloadShare
  ( -- * Creating a Request
    UpdateWorkloadShare (..),
    newUpdateWorkloadShare,

    -- * Request Lenses
    updateWorkloadShare_shareId,
    updateWorkloadShare_workloadId,
    updateWorkloadShare_permissionType,

    -- * Destructuring the Response
    UpdateWorkloadShareResponse (..),
    newUpdateWorkloadShareResponse,

    -- * Response Lenses
    updateWorkloadShareResponse_workloadShare,
    updateWorkloadShareResponse_workloadId,
    updateWorkloadShareResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WellArchitected.Types

-- | Input for Update Workload Share
--
-- /See:/ 'newUpdateWorkloadShare' smart constructor.
data UpdateWorkloadShare = UpdateWorkloadShare'
  { shareId :: Prelude.Text,
    workloadId :: Prelude.Text,
    permissionType :: PermissionType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateWorkloadShare' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'shareId', 'updateWorkloadShare_shareId' - Undocumented member.
--
-- 'workloadId', 'updateWorkloadShare_workloadId' - Undocumented member.
--
-- 'permissionType', 'updateWorkloadShare_permissionType' - Undocumented member.
newUpdateWorkloadShare ::
  -- | 'shareId'
  Prelude.Text ->
  -- | 'workloadId'
  Prelude.Text ->
  -- | 'permissionType'
  PermissionType ->
  UpdateWorkloadShare
newUpdateWorkloadShare
  pShareId_
  pWorkloadId_
  pPermissionType_ =
    UpdateWorkloadShare'
      { shareId = pShareId_,
        workloadId = pWorkloadId_,
        permissionType = pPermissionType_
      }

-- | Undocumented member.
updateWorkloadShare_shareId :: Lens.Lens' UpdateWorkloadShare Prelude.Text
updateWorkloadShare_shareId = Lens.lens (\UpdateWorkloadShare' {shareId} -> shareId) (\s@UpdateWorkloadShare' {} a -> s {shareId = a} :: UpdateWorkloadShare)

-- | Undocumented member.
updateWorkloadShare_workloadId :: Lens.Lens' UpdateWorkloadShare Prelude.Text
updateWorkloadShare_workloadId = Lens.lens (\UpdateWorkloadShare' {workloadId} -> workloadId) (\s@UpdateWorkloadShare' {} a -> s {workloadId = a} :: UpdateWorkloadShare)

-- | Undocumented member.
updateWorkloadShare_permissionType :: Lens.Lens' UpdateWorkloadShare PermissionType
updateWorkloadShare_permissionType = Lens.lens (\UpdateWorkloadShare' {permissionType} -> permissionType) (\s@UpdateWorkloadShare' {} a -> s {permissionType = a} :: UpdateWorkloadShare)

instance Core.AWSRequest UpdateWorkloadShare where
  type
    AWSResponse UpdateWorkloadShare =
      UpdateWorkloadShareResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateWorkloadShareResponse'
            Prelude.<$> (x Core..?> "WorkloadShare")
            Prelude.<*> (x Core..?> "WorkloadId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateWorkloadShare

instance Prelude.NFData UpdateWorkloadShare

instance Core.ToHeaders UpdateWorkloadShare where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateWorkloadShare where
  toJSON UpdateWorkloadShare' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("PermissionType" Core..= permissionType)
          ]
      )

instance Core.ToPath UpdateWorkloadShare where
  toPath UpdateWorkloadShare' {..} =
    Prelude.mconcat
      [ "/workloads/",
        Core.toBS workloadId,
        "/shares/",
        Core.toBS shareId
      ]

instance Core.ToQuery UpdateWorkloadShare where
  toQuery = Prelude.const Prelude.mempty

-- | Input for Update Workload Share
--
-- /See:/ 'newUpdateWorkloadShareResponse' smart constructor.
data UpdateWorkloadShareResponse = UpdateWorkloadShareResponse'
  { workloadShare :: Prelude.Maybe WorkloadShare,
    workloadId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateWorkloadShareResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workloadShare', 'updateWorkloadShareResponse_workloadShare' - Undocumented member.
--
-- 'workloadId', 'updateWorkloadShareResponse_workloadId' - Undocumented member.
--
-- 'httpStatus', 'updateWorkloadShareResponse_httpStatus' - The response's http status code.
newUpdateWorkloadShareResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateWorkloadShareResponse
newUpdateWorkloadShareResponse pHttpStatus_ =
  UpdateWorkloadShareResponse'
    { workloadShare =
        Prelude.Nothing,
      workloadId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
updateWorkloadShareResponse_workloadShare :: Lens.Lens' UpdateWorkloadShareResponse (Prelude.Maybe WorkloadShare)
updateWorkloadShareResponse_workloadShare = Lens.lens (\UpdateWorkloadShareResponse' {workloadShare} -> workloadShare) (\s@UpdateWorkloadShareResponse' {} a -> s {workloadShare = a} :: UpdateWorkloadShareResponse)

-- | Undocumented member.
updateWorkloadShareResponse_workloadId :: Lens.Lens' UpdateWorkloadShareResponse (Prelude.Maybe Prelude.Text)
updateWorkloadShareResponse_workloadId = Lens.lens (\UpdateWorkloadShareResponse' {workloadId} -> workloadId) (\s@UpdateWorkloadShareResponse' {} a -> s {workloadId = a} :: UpdateWorkloadShareResponse)

-- | The response's http status code.
updateWorkloadShareResponse_httpStatus :: Lens.Lens' UpdateWorkloadShareResponse Prelude.Int
updateWorkloadShareResponse_httpStatus = Lens.lens (\UpdateWorkloadShareResponse' {httpStatus} -> httpStatus) (\s@UpdateWorkloadShareResponse' {} a -> s {httpStatus = a} :: UpdateWorkloadShareResponse)

instance Prelude.NFData UpdateWorkloadShareResponse
