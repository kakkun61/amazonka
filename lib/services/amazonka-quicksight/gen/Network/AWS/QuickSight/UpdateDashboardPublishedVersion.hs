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
-- Module      : Network.AWS.QuickSight.UpdateDashboardPublishedVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the published version of a dashboard.
module Network.AWS.QuickSight.UpdateDashboardPublishedVersion
  ( -- * Creating a Request
    UpdateDashboardPublishedVersion (..),
    newUpdateDashboardPublishedVersion,

    -- * Request Lenses
    updateDashboardPublishedVersion_awsAccountId,
    updateDashboardPublishedVersion_dashboardId,
    updateDashboardPublishedVersion_versionNumber,

    -- * Destructuring the Response
    UpdateDashboardPublishedVersionResponse (..),
    newUpdateDashboardPublishedVersionResponse,

    -- * Response Lenses
    updateDashboardPublishedVersionResponse_requestId,
    updateDashboardPublishedVersionResponse_dashboardId,
    updateDashboardPublishedVersionResponse_dashboardArn,
    updateDashboardPublishedVersionResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateDashboardPublishedVersion' smart constructor.
data UpdateDashboardPublishedVersion = UpdateDashboardPublishedVersion'
  { -- | The ID of the Amazon Web Services account that contains the dashboard
    -- that you\'re updating.
    awsAccountId :: Prelude.Text,
    -- | The ID for the dashboard.
    dashboardId :: Prelude.Text,
    -- | The version number of the dashboard.
    versionNumber :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDashboardPublishedVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'updateDashboardPublishedVersion_awsAccountId' - The ID of the Amazon Web Services account that contains the dashboard
-- that you\'re updating.
--
-- 'dashboardId', 'updateDashboardPublishedVersion_dashboardId' - The ID for the dashboard.
--
-- 'versionNumber', 'updateDashboardPublishedVersion_versionNumber' - The version number of the dashboard.
newUpdateDashboardPublishedVersion ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'dashboardId'
  Prelude.Text ->
  -- | 'versionNumber'
  Prelude.Natural ->
  UpdateDashboardPublishedVersion
newUpdateDashboardPublishedVersion
  pAwsAccountId_
  pDashboardId_
  pVersionNumber_ =
    UpdateDashboardPublishedVersion'
      { awsAccountId =
          pAwsAccountId_,
        dashboardId = pDashboardId_,
        versionNumber = pVersionNumber_
      }

-- | The ID of the Amazon Web Services account that contains the dashboard
-- that you\'re updating.
updateDashboardPublishedVersion_awsAccountId :: Lens.Lens' UpdateDashboardPublishedVersion Prelude.Text
updateDashboardPublishedVersion_awsAccountId = Lens.lens (\UpdateDashboardPublishedVersion' {awsAccountId} -> awsAccountId) (\s@UpdateDashboardPublishedVersion' {} a -> s {awsAccountId = a} :: UpdateDashboardPublishedVersion)

-- | The ID for the dashboard.
updateDashboardPublishedVersion_dashboardId :: Lens.Lens' UpdateDashboardPublishedVersion Prelude.Text
updateDashboardPublishedVersion_dashboardId = Lens.lens (\UpdateDashboardPublishedVersion' {dashboardId} -> dashboardId) (\s@UpdateDashboardPublishedVersion' {} a -> s {dashboardId = a} :: UpdateDashboardPublishedVersion)

-- | The version number of the dashboard.
updateDashboardPublishedVersion_versionNumber :: Lens.Lens' UpdateDashboardPublishedVersion Prelude.Natural
updateDashboardPublishedVersion_versionNumber = Lens.lens (\UpdateDashboardPublishedVersion' {versionNumber} -> versionNumber) (\s@UpdateDashboardPublishedVersion' {} a -> s {versionNumber = a} :: UpdateDashboardPublishedVersion)

instance
  Core.AWSRequest
    UpdateDashboardPublishedVersion
  where
  type
    AWSResponse UpdateDashboardPublishedVersion =
      UpdateDashboardPublishedVersionResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateDashboardPublishedVersionResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "DashboardId")
            Prelude.<*> (x Core..?> "DashboardArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    UpdateDashboardPublishedVersion

instance
  Prelude.NFData
    UpdateDashboardPublishedVersion

instance
  Core.ToHeaders
    UpdateDashboardPublishedVersion
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateDashboardPublishedVersion where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath UpdateDashboardPublishedVersion where
  toPath UpdateDashboardPublishedVersion' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/dashboards/",
        Core.toBS dashboardId,
        "/versions/",
        Core.toBS versionNumber
      ]

instance Core.ToQuery UpdateDashboardPublishedVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDashboardPublishedVersionResponse' smart constructor.
data UpdateDashboardPublishedVersionResponse = UpdateDashboardPublishedVersionResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The ID for the dashboard.
    dashboardId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the dashboard.
    dashboardArn :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDashboardPublishedVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'updateDashboardPublishedVersionResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'dashboardId', 'updateDashboardPublishedVersionResponse_dashboardId' - The ID for the dashboard.
--
-- 'dashboardArn', 'updateDashboardPublishedVersionResponse_dashboardArn' - The Amazon Resource Name (ARN) of the dashboard.
--
-- 'status', 'updateDashboardPublishedVersionResponse_status' - The HTTP status of the request.
newUpdateDashboardPublishedVersionResponse ::
  -- | 'status'
  Prelude.Int ->
  UpdateDashboardPublishedVersionResponse
newUpdateDashboardPublishedVersionResponse pStatus_ =
  UpdateDashboardPublishedVersionResponse'
    { requestId =
        Prelude.Nothing,
      dashboardId = Prelude.Nothing,
      dashboardArn = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
updateDashboardPublishedVersionResponse_requestId :: Lens.Lens' UpdateDashboardPublishedVersionResponse (Prelude.Maybe Prelude.Text)
updateDashboardPublishedVersionResponse_requestId = Lens.lens (\UpdateDashboardPublishedVersionResponse' {requestId} -> requestId) (\s@UpdateDashboardPublishedVersionResponse' {} a -> s {requestId = a} :: UpdateDashboardPublishedVersionResponse)

-- | The ID for the dashboard.
updateDashboardPublishedVersionResponse_dashboardId :: Lens.Lens' UpdateDashboardPublishedVersionResponse (Prelude.Maybe Prelude.Text)
updateDashboardPublishedVersionResponse_dashboardId = Lens.lens (\UpdateDashboardPublishedVersionResponse' {dashboardId} -> dashboardId) (\s@UpdateDashboardPublishedVersionResponse' {} a -> s {dashboardId = a} :: UpdateDashboardPublishedVersionResponse)

-- | The Amazon Resource Name (ARN) of the dashboard.
updateDashboardPublishedVersionResponse_dashboardArn :: Lens.Lens' UpdateDashboardPublishedVersionResponse (Prelude.Maybe Prelude.Text)
updateDashboardPublishedVersionResponse_dashboardArn = Lens.lens (\UpdateDashboardPublishedVersionResponse' {dashboardArn} -> dashboardArn) (\s@UpdateDashboardPublishedVersionResponse' {} a -> s {dashboardArn = a} :: UpdateDashboardPublishedVersionResponse)

-- | The HTTP status of the request.
updateDashboardPublishedVersionResponse_status :: Lens.Lens' UpdateDashboardPublishedVersionResponse Prelude.Int
updateDashboardPublishedVersionResponse_status = Lens.lens (\UpdateDashboardPublishedVersionResponse' {status} -> status) (\s@UpdateDashboardPublishedVersionResponse' {} a -> s {status = a} :: UpdateDashboardPublishedVersionResponse)

instance
  Prelude.NFData
    UpdateDashboardPublishedVersionResponse
