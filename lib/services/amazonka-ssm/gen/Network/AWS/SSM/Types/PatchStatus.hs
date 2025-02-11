{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.PatchStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchStatus where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SSM.Types.PatchComplianceLevel
import Network.AWS.SSM.Types.PatchDeploymentStatus

-- | Information about the approval status of a patch.
--
-- /See:/ 'newPatchStatus' smart constructor.
data PatchStatus = PatchStatus'
  { -- | The date the patch was approved (or will be approved if the status is
    -- @PENDING_APPROVAL@).
    approvalDate :: Prelude.Maybe Core.POSIX,
    -- | The approval status of a patch.
    deploymentStatus :: Prelude.Maybe PatchDeploymentStatus,
    -- | The compliance severity level for a patch.
    complianceLevel :: Prelude.Maybe PatchComplianceLevel
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PatchStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'approvalDate', 'patchStatus_approvalDate' - The date the patch was approved (or will be approved if the status is
-- @PENDING_APPROVAL@).
--
-- 'deploymentStatus', 'patchStatus_deploymentStatus' - The approval status of a patch.
--
-- 'complianceLevel', 'patchStatus_complianceLevel' - The compliance severity level for a patch.
newPatchStatus ::
  PatchStatus
newPatchStatus =
  PatchStatus'
    { approvalDate = Prelude.Nothing,
      deploymentStatus = Prelude.Nothing,
      complianceLevel = Prelude.Nothing
    }

-- | The date the patch was approved (or will be approved if the status is
-- @PENDING_APPROVAL@).
patchStatus_approvalDate :: Lens.Lens' PatchStatus (Prelude.Maybe Prelude.UTCTime)
patchStatus_approvalDate = Lens.lens (\PatchStatus' {approvalDate} -> approvalDate) (\s@PatchStatus' {} a -> s {approvalDate = a} :: PatchStatus) Prelude.. Lens.mapping Core._Time

-- | The approval status of a patch.
patchStatus_deploymentStatus :: Lens.Lens' PatchStatus (Prelude.Maybe PatchDeploymentStatus)
patchStatus_deploymentStatus = Lens.lens (\PatchStatus' {deploymentStatus} -> deploymentStatus) (\s@PatchStatus' {} a -> s {deploymentStatus = a} :: PatchStatus)

-- | The compliance severity level for a patch.
patchStatus_complianceLevel :: Lens.Lens' PatchStatus (Prelude.Maybe PatchComplianceLevel)
patchStatus_complianceLevel = Lens.lens (\PatchStatus' {complianceLevel} -> complianceLevel) (\s@PatchStatus' {} a -> s {complianceLevel = a} :: PatchStatus)

instance Core.FromJSON PatchStatus where
  parseJSON =
    Core.withObject
      "PatchStatus"
      ( \x ->
          PatchStatus'
            Prelude.<$> (x Core..:? "ApprovalDate")
            Prelude.<*> (x Core..:? "DeploymentStatus")
            Prelude.<*> (x Core..:? "ComplianceLevel")
      )

instance Prelude.Hashable PatchStatus

instance Prelude.NFData PatchStatus
