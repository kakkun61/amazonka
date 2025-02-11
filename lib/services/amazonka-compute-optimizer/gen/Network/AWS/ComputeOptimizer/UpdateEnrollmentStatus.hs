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
-- Module      : Network.AWS.ComputeOptimizer.UpdateEnrollmentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the enrollment (opt in and opt out) status of an account to the
-- Compute Optimizer service.
--
-- If the account is a management account of an organization, this action
-- can also be used to enroll member accounts of the organization.
--
-- You must have the appropriate permissions to opt in to Compute
-- Optimizer, to view its recommendations, and to opt out. For more
-- information, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html Controlling access with Amazon Web Services Identity and Access Management>
-- in the /Compute Optimizer User Guide/.
--
-- When you opt in, Compute Optimizer automatically creates a
-- service-linked role in your account to access its data. For more
-- information, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/using-service-linked-roles.html Using Service-Linked Roles for Compute Optimizer>
-- in the /Compute Optimizer User Guide/.
module Network.AWS.ComputeOptimizer.UpdateEnrollmentStatus
  ( -- * Creating a Request
    UpdateEnrollmentStatus (..),
    newUpdateEnrollmentStatus,

    -- * Request Lenses
    updateEnrollmentStatus_includeMemberAccounts,
    updateEnrollmentStatus_status,

    -- * Destructuring the Response
    UpdateEnrollmentStatusResponse (..),
    newUpdateEnrollmentStatusResponse,

    -- * Response Lenses
    updateEnrollmentStatusResponse_status,
    updateEnrollmentStatusResponse_statusReason,
    updateEnrollmentStatusResponse_httpStatus,
  )
where

import Network.AWS.ComputeOptimizer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateEnrollmentStatus' smart constructor.
data UpdateEnrollmentStatus = UpdateEnrollmentStatus'
  { -- | Indicates whether to enroll member accounts of the organization if the
    -- account is the management account of an organization.
    includeMemberAccounts :: Prelude.Maybe Prelude.Bool,
    -- | The new enrollment status of the account.
    --
    -- The following status options are available:
    --
    -- -   @Active@ - Opts in your account to the Compute Optimizer service.
    --     Compute Optimizer begins analyzing the configuration and utilization
    --     metrics of your Amazon Web Services resources after you opt in. For
    --     more information, see
    --     <https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html Metrics analyzed by Compute Optimizer>
    --     in the /Compute Optimizer User Guide/.
    --
    -- -   @Inactive@ - Opts out your account from the Compute Optimizer
    --     service. Your account\'s recommendations and related metrics data
    --     will be deleted from Compute Optimizer after you opt out.
    --
    -- The @Pending@ and @Failed@ options cannot be used to update the
    -- enrollment status of an account. They are returned in the response of a
    -- request to update the enrollment status of an account.
    status :: Status
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEnrollmentStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'includeMemberAccounts', 'updateEnrollmentStatus_includeMemberAccounts' - Indicates whether to enroll member accounts of the organization if the
-- account is the management account of an organization.
--
-- 'status', 'updateEnrollmentStatus_status' - The new enrollment status of the account.
--
-- The following status options are available:
--
-- -   @Active@ - Opts in your account to the Compute Optimizer service.
--     Compute Optimizer begins analyzing the configuration and utilization
--     metrics of your Amazon Web Services resources after you opt in. For
--     more information, see
--     <https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html Metrics analyzed by Compute Optimizer>
--     in the /Compute Optimizer User Guide/.
--
-- -   @Inactive@ - Opts out your account from the Compute Optimizer
--     service. Your account\'s recommendations and related metrics data
--     will be deleted from Compute Optimizer after you opt out.
--
-- The @Pending@ and @Failed@ options cannot be used to update the
-- enrollment status of an account. They are returned in the response of a
-- request to update the enrollment status of an account.
newUpdateEnrollmentStatus ::
  -- | 'status'
  Status ->
  UpdateEnrollmentStatus
newUpdateEnrollmentStatus pStatus_ =
  UpdateEnrollmentStatus'
    { includeMemberAccounts =
        Prelude.Nothing,
      status = pStatus_
    }

-- | Indicates whether to enroll member accounts of the organization if the
-- account is the management account of an organization.
updateEnrollmentStatus_includeMemberAccounts :: Lens.Lens' UpdateEnrollmentStatus (Prelude.Maybe Prelude.Bool)
updateEnrollmentStatus_includeMemberAccounts = Lens.lens (\UpdateEnrollmentStatus' {includeMemberAccounts} -> includeMemberAccounts) (\s@UpdateEnrollmentStatus' {} a -> s {includeMemberAccounts = a} :: UpdateEnrollmentStatus)

-- | The new enrollment status of the account.
--
-- The following status options are available:
--
-- -   @Active@ - Opts in your account to the Compute Optimizer service.
--     Compute Optimizer begins analyzing the configuration and utilization
--     metrics of your Amazon Web Services resources after you opt in. For
--     more information, see
--     <https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html Metrics analyzed by Compute Optimizer>
--     in the /Compute Optimizer User Guide/.
--
-- -   @Inactive@ - Opts out your account from the Compute Optimizer
--     service. Your account\'s recommendations and related metrics data
--     will be deleted from Compute Optimizer after you opt out.
--
-- The @Pending@ and @Failed@ options cannot be used to update the
-- enrollment status of an account. They are returned in the response of a
-- request to update the enrollment status of an account.
updateEnrollmentStatus_status :: Lens.Lens' UpdateEnrollmentStatus Status
updateEnrollmentStatus_status = Lens.lens (\UpdateEnrollmentStatus' {status} -> status) (\s@UpdateEnrollmentStatus' {} a -> s {status = a} :: UpdateEnrollmentStatus)

instance Core.AWSRequest UpdateEnrollmentStatus where
  type
    AWSResponse UpdateEnrollmentStatus =
      UpdateEnrollmentStatusResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateEnrollmentStatusResponse'
            Prelude.<$> (x Core..?> "status")
            Prelude.<*> (x Core..?> "statusReason")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateEnrollmentStatus

instance Prelude.NFData UpdateEnrollmentStatus

instance Core.ToHeaders UpdateEnrollmentStatus where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ComputeOptimizerService.UpdateEnrollmentStatus" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateEnrollmentStatus where
  toJSON UpdateEnrollmentStatus' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("includeMemberAccounts" Core..=)
              Prelude.<$> includeMemberAccounts,
            Prelude.Just ("status" Core..= status)
          ]
      )

instance Core.ToPath UpdateEnrollmentStatus where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateEnrollmentStatus where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateEnrollmentStatusResponse' smart constructor.
data UpdateEnrollmentStatusResponse = UpdateEnrollmentStatusResponse'
  { -- | The enrollment status of the account.
    status :: Prelude.Maybe Status,
    -- | The reason for the enrollment status of the account. For example, an
    -- account might show a status of @Pending@ because member accounts of an
    -- organization require more time to be enrolled in the service.
    statusReason :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEnrollmentStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'updateEnrollmentStatusResponse_status' - The enrollment status of the account.
--
-- 'statusReason', 'updateEnrollmentStatusResponse_statusReason' - The reason for the enrollment status of the account. For example, an
-- account might show a status of @Pending@ because member accounts of an
-- organization require more time to be enrolled in the service.
--
-- 'httpStatus', 'updateEnrollmentStatusResponse_httpStatus' - The response's http status code.
newUpdateEnrollmentStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateEnrollmentStatusResponse
newUpdateEnrollmentStatusResponse pHttpStatus_ =
  UpdateEnrollmentStatusResponse'
    { status =
        Prelude.Nothing,
      statusReason = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The enrollment status of the account.
updateEnrollmentStatusResponse_status :: Lens.Lens' UpdateEnrollmentStatusResponse (Prelude.Maybe Status)
updateEnrollmentStatusResponse_status = Lens.lens (\UpdateEnrollmentStatusResponse' {status} -> status) (\s@UpdateEnrollmentStatusResponse' {} a -> s {status = a} :: UpdateEnrollmentStatusResponse)

-- | The reason for the enrollment status of the account. For example, an
-- account might show a status of @Pending@ because member accounts of an
-- organization require more time to be enrolled in the service.
updateEnrollmentStatusResponse_statusReason :: Lens.Lens' UpdateEnrollmentStatusResponse (Prelude.Maybe Prelude.Text)
updateEnrollmentStatusResponse_statusReason = Lens.lens (\UpdateEnrollmentStatusResponse' {statusReason} -> statusReason) (\s@UpdateEnrollmentStatusResponse' {} a -> s {statusReason = a} :: UpdateEnrollmentStatusResponse)

-- | The response's http status code.
updateEnrollmentStatusResponse_httpStatus :: Lens.Lens' UpdateEnrollmentStatusResponse Prelude.Int
updateEnrollmentStatusResponse_httpStatus = Lens.lens (\UpdateEnrollmentStatusResponse' {httpStatus} -> httpStatus) (\s@UpdateEnrollmentStatusResponse' {} a -> s {httpStatus = a} :: UpdateEnrollmentStatusResponse)

instance
  Prelude.NFData
    UpdateEnrollmentStatusResponse
