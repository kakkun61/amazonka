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
-- Module      : Network.AWS.QuickSight.DescribeDashboard
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a summary for a dashboard.
module Network.AWS.QuickSight.DescribeDashboard
  ( -- * Creating a Request
    DescribeDashboard (..),
    newDescribeDashboard,

    -- * Request Lenses
    describeDashboard_aliasName,
    describeDashboard_versionNumber,
    describeDashboard_awsAccountId,
    describeDashboard_dashboardId,

    -- * Destructuring the Response
    DescribeDashboardResponse (..),
    newDescribeDashboardResponse,

    -- * Response Lenses
    describeDashboardResponse_requestId,
    describeDashboardResponse_dashboard,
    describeDashboardResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeDashboard' smart constructor.
data DescribeDashboard = DescribeDashboard'
  { -- | The alias name.
    aliasName :: Prelude.Maybe Prelude.Text,
    -- | The version number for the dashboard. If a version number isn\'t passed,
    -- the latest published dashboard version is described.
    versionNumber :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the Amazon Web Services account that contains the dashboard
    -- that you\'re describing.
    awsAccountId :: Prelude.Text,
    -- | The ID for the dashboard.
    dashboardId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDashboard' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'aliasName', 'describeDashboard_aliasName' - The alias name.
--
-- 'versionNumber', 'describeDashboard_versionNumber' - The version number for the dashboard. If a version number isn\'t passed,
-- the latest published dashboard version is described.
--
-- 'awsAccountId', 'describeDashboard_awsAccountId' - The ID of the Amazon Web Services account that contains the dashboard
-- that you\'re describing.
--
-- 'dashboardId', 'describeDashboard_dashboardId' - The ID for the dashboard.
newDescribeDashboard ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'dashboardId'
  Prelude.Text ->
  DescribeDashboard
newDescribeDashboard pAwsAccountId_ pDashboardId_ =
  DescribeDashboard'
    { aliasName = Prelude.Nothing,
      versionNumber = Prelude.Nothing,
      awsAccountId = pAwsAccountId_,
      dashboardId = pDashboardId_
    }

-- | The alias name.
describeDashboard_aliasName :: Lens.Lens' DescribeDashboard (Prelude.Maybe Prelude.Text)
describeDashboard_aliasName = Lens.lens (\DescribeDashboard' {aliasName} -> aliasName) (\s@DescribeDashboard' {} a -> s {aliasName = a} :: DescribeDashboard)

-- | The version number for the dashboard. If a version number isn\'t passed,
-- the latest published dashboard version is described.
describeDashboard_versionNumber :: Lens.Lens' DescribeDashboard (Prelude.Maybe Prelude.Natural)
describeDashboard_versionNumber = Lens.lens (\DescribeDashboard' {versionNumber} -> versionNumber) (\s@DescribeDashboard' {} a -> s {versionNumber = a} :: DescribeDashboard)

-- | The ID of the Amazon Web Services account that contains the dashboard
-- that you\'re describing.
describeDashboard_awsAccountId :: Lens.Lens' DescribeDashboard Prelude.Text
describeDashboard_awsAccountId = Lens.lens (\DescribeDashboard' {awsAccountId} -> awsAccountId) (\s@DescribeDashboard' {} a -> s {awsAccountId = a} :: DescribeDashboard)

-- | The ID for the dashboard.
describeDashboard_dashboardId :: Lens.Lens' DescribeDashboard Prelude.Text
describeDashboard_dashboardId = Lens.lens (\DescribeDashboard' {dashboardId} -> dashboardId) (\s@DescribeDashboard' {} a -> s {dashboardId = a} :: DescribeDashboard)

instance Core.AWSRequest DescribeDashboard where
  type
    AWSResponse DescribeDashboard =
      DescribeDashboardResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDashboardResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Dashboard")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDashboard

instance Prelude.NFData DescribeDashboard

instance Core.ToHeaders DescribeDashboard where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeDashboard where
  toPath DescribeDashboard' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/dashboards/",
        Core.toBS dashboardId
      ]

instance Core.ToQuery DescribeDashboard where
  toQuery DescribeDashboard' {..} =
    Prelude.mconcat
      [ "alias-name" Core.=: aliasName,
        "version-number" Core.=: versionNumber
      ]

-- | /See:/ 'newDescribeDashboardResponse' smart constructor.
data DescribeDashboardResponse = DescribeDashboardResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | Information about the dashboard.
    dashboard :: Prelude.Maybe Dashboard,
    -- | The HTTP status of this request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDashboardResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'describeDashboardResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'dashboard', 'describeDashboardResponse_dashboard' - Information about the dashboard.
--
-- 'status', 'describeDashboardResponse_status' - The HTTP status of this request.
newDescribeDashboardResponse ::
  -- | 'status'
  Prelude.Int ->
  DescribeDashboardResponse
newDescribeDashboardResponse pStatus_ =
  DescribeDashboardResponse'
    { requestId =
        Prelude.Nothing,
      dashboard = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
describeDashboardResponse_requestId :: Lens.Lens' DescribeDashboardResponse (Prelude.Maybe Prelude.Text)
describeDashboardResponse_requestId = Lens.lens (\DescribeDashboardResponse' {requestId} -> requestId) (\s@DescribeDashboardResponse' {} a -> s {requestId = a} :: DescribeDashboardResponse)

-- | Information about the dashboard.
describeDashboardResponse_dashboard :: Lens.Lens' DescribeDashboardResponse (Prelude.Maybe Dashboard)
describeDashboardResponse_dashboard = Lens.lens (\DescribeDashboardResponse' {dashboard} -> dashboard) (\s@DescribeDashboardResponse' {} a -> s {dashboard = a} :: DescribeDashboardResponse)

-- | The HTTP status of this request.
describeDashboardResponse_status :: Lens.Lens' DescribeDashboardResponse Prelude.Int
describeDashboardResponse_status = Lens.lens (\DescribeDashboardResponse' {status} -> status) (\s@DescribeDashboardResponse' {} a -> s {status = a} :: DescribeDashboardResponse)

instance Prelude.NFData DescribeDashboardResponse
