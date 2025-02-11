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
-- Module      : Network.AWS.QuickSight.UpdateDashboardPermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates read and write permissions on a dashboard.
module Network.AWS.QuickSight.UpdateDashboardPermissions
  ( -- * Creating a Request
    UpdateDashboardPermissions (..),
    newUpdateDashboardPermissions,

    -- * Request Lenses
    updateDashboardPermissions_revokePermissions,
    updateDashboardPermissions_grantPermissions,
    updateDashboardPermissions_awsAccountId,
    updateDashboardPermissions_dashboardId,

    -- * Destructuring the Response
    UpdateDashboardPermissionsResponse (..),
    newUpdateDashboardPermissionsResponse,

    -- * Response Lenses
    updateDashboardPermissionsResponse_requestId,
    updateDashboardPermissionsResponse_dashboardId,
    updateDashboardPermissionsResponse_permissions,
    updateDashboardPermissionsResponse_dashboardArn,
    updateDashboardPermissionsResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateDashboardPermissions' smart constructor.
data UpdateDashboardPermissions = UpdateDashboardPermissions'
  { -- | The permissions that you want to revoke from this resource.
    revokePermissions :: Prelude.Maybe [ResourcePermission],
    -- | The permissions that you want to grant on this resource.
    grantPermissions :: Prelude.Maybe [ResourcePermission],
    -- | The ID of the Amazon Web Services account that contains the dashboard
    -- whose permissions you\'re updating.
    awsAccountId :: Prelude.Text,
    -- | The ID for the dashboard.
    dashboardId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDashboardPermissions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'revokePermissions', 'updateDashboardPermissions_revokePermissions' - The permissions that you want to revoke from this resource.
--
-- 'grantPermissions', 'updateDashboardPermissions_grantPermissions' - The permissions that you want to grant on this resource.
--
-- 'awsAccountId', 'updateDashboardPermissions_awsAccountId' - The ID of the Amazon Web Services account that contains the dashboard
-- whose permissions you\'re updating.
--
-- 'dashboardId', 'updateDashboardPermissions_dashboardId' - The ID for the dashboard.
newUpdateDashboardPermissions ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'dashboardId'
  Prelude.Text ->
  UpdateDashboardPermissions
newUpdateDashboardPermissions
  pAwsAccountId_
  pDashboardId_ =
    UpdateDashboardPermissions'
      { revokePermissions =
          Prelude.Nothing,
        grantPermissions = Prelude.Nothing,
        awsAccountId = pAwsAccountId_,
        dashboardId = pDashboardId_
      }

-- | The permissions that you want to revoke from this resource.
updateDashboardPermissions_revokePermissions :: Lens.Lens' UpdateDashboardPermissions (Prelude.Maybe [ResourcePermission])
updateDashboardPermissions_revokePermissions = Lens.lens (\UpdateDashboardPermissions' {revokePermissions} -> revokePermissions) (\s@UpdateDashboardPermissions' {} a -> s {revokePermissions = a} :: UpdateDashboardPermissions) Prelude.. Lens.mapping Lens.coerced

-- | The permissions that you want to grant on this resource.
updateDashboardPermissions_grantPermissions :: Lens.Lens' UpdateDashboardPermissions (Prelude.Maybe [ResourcePermission])
updateDashboardPermissions_grantPermissions = Lens.lens (\UpdateDashboardPermissions' {grantPermissions} -> grantPermissions) (\s@UpdateDashboardPermissions' {} a -> s {grantPermissions = a} :: UpdateDashboardPermissions) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the Amazon Web Services account that contains the dashboard
-- whose permissions you\'re updating.
updateDashboardPermissions_awsAccountId :: Lens.Lens' UpdateDashboardPermissions Prelude.Text
updateDashboardPermissions_awsAccountId = Lens.lens (\UpdateDashboardPermissions' {awsAccountId} -> awsAccountId) (\s@UpdateDashboardPermissions' {} a -> s {awsAccountId = a} :: UpdateDashboardPermissions)

-- | The ID for the dashboard.
updateDashboardPermissions_dashboardId :: Lens.Lens' UpdateDashboardPermissions Prelude.Text
updateDashboardPermissions_dashboardId = Lens.lens (\UpdateDashboardPermissions' {dashboardId} -> dashboardId) (\s@UpdateDashboardPermissions' {} a -> s {dashboardId = a} :: UpdateDashboardPermissions)

instance Core.AWSRequest UpdateDashboardPermissions where
  type
    AWSResponse UpdateDashboardPermissions =
      UpdateDashboardPermissionsResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateDashboardPermissionsResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "DashboardId")
            Prelude.<*> (x Core..?> "Permissions")
            Prelude.<*> (x Core..?> "DashboardArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateDashboardPermissions

instance Prelude.NFData UpdateDashboardPermissions

instance Core.ToHeaders UpdateDashboardPermissions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateDashboardPermissions where
  toJSON UpdateDashboardPermissions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RevokePermissions" Core..=)
              Prelude.<$> revokePermissions,
            ("GrantPermissions" Core..=)
              Prelude.<$> grantPermissions
          ]
      )

instance Core.ToPath UpdateDashboardPermissions where
  toPath UpdateDashboardPermissions' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/dashboards/",
        Core.toBS dashboardId,
        "/permissions"
      ]

instance Core.ToQuery UpdateDashboardPermissions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDashboardPermissionsResponse' smart constructor.
data UpdateDashboardPermissionsResponse = UpdateDashboardPermissionsResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The ID for the dashboard.
    dashboardId :: Prelude.Maybe Prelude.Text,
    -- | Information about the permissions on the dashboard.
    permissions :: Prelude.Maybe (Prelude.NonEmpty ResourcePermission),
    -- | The Amazon Resource Name (ARN) of the dashboard.
    dashboardArn :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDashboardPermissionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'updateDashboardPermissionsResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'dashboardId', 'updateDashboardPermissionsResponse_dashboardId' - The ID for the dashboard.
--
-- 'permissions', 'updateDashboardPermissionsResponse_permissions' - Information about the permissions on the dashboard.
--
-- 'dashboardArn', 'updateDashboardPermissionsResponse_dashboardArn' - The Amazon Resource Name (ARN) of the dashboard.
--
-- 'status', 'updateDashboardPermissionsResponse_status' - The HTTP status of the request.
newUpdateDashboardPermissionsResponse ::
  -- | 'status'
  Prelude.Int ->
  UpdateDashboardPermissionsResponse
newUpdateDashboardPermissionsResponse pStatus_ =
  UpdateDashboardPermissionsResponse'
    { requestId =
        Prelude.Nothing,
      dashboardId = Prelude.Nothing,
      permissions = Prelude.Nothing,
      dashboardArn = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
updateDashboardPermissionsResponse_requestId :: Lens.Lens' UpdateDashboardPermissionsResponse (Prelude.Maybe Prelude.Text)
updateDashboardPermissionsResponse_requestId = Lens.lens (\UpdateDashboardPermissionsResponse' {requestId} -> requestId) (\s@UpdateDashboardPermissionsResponse' {} a -> s {requestId = a} :: UpdateDashboardPermissionsResponse)

-- | The ID for the dashboard.
updateDashboardPermissionsResponse_dashboardId :: Lens.Lens' UpdateDashboardPermissionsResponse (Prelude.Maybe Prelude.Text)
updateDashboardPermissionsResponse_dashboardId = Lens.lens (\UpdateDashboardPermissionsResponse' {dashboardId} -> dashboardId) (\s@UpdateDashboardPermissionsResponse' {} a -> s {dashboardId = a} :: UpdateDashboardPermissionsResponse)

-- | Information about the permissions on the dashboard.
updateDashboardPermissionsResponse_permissions :: Lens.Lens' UpdateDashboardPermissionsResponse (Prelude.Maybe (Prelude.NonEmpty ResourcePermission))
updateDashboardPermissionsResponse_permissions = Lens.lens (\UpdateDashboardPermissionsResponse' {permissions} -> permissions) (\s@UpdateDashboardPermissionsResponse' {} a -> s {permissions = a} :: UpdateDashboardPermissionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the dashboard.
updateDashboardPermissionsResponse_dashboardArn :: Lens.Lens' UpdateDashboardPermissionsResponse (Prelude.Maybe Prelude.Text)
updateDashboardPermissionsResponse_dashboardArn = Lens.lens (\UpdateDashboardPermissionsResponse' {dashboardArn} -> dashboardArn) (\s@UpdateDashboardPermissionsResponse' {} a -> s {dashboardArn = a} :: UpdateDashboardPermissionsResponse)

-- | The HTTP status of the request.
updateDashboardPermissionsResponse_status :: Lens.Lens' UpdateDashboardPermissionsResponse Prelude.Int
updateDashboardPermissionsResponse_status = Lens.lens (\UpdateDashboardPermissionsResponse' {status} -> status) (\s@UpdateDashboardPermissionsResponse' {} a -> s {status = a} :: UpdateDashboardPermissionsResponse)

instance
  Prelude.NFData
    UpdateDashboardPermissionsResponse
