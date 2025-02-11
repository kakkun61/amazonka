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
-- Module      : Network.AWS.IoTSiteWise.DescribeDashboard
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a dashboard.
module Network.AWS.IoTSiteWise.DescribeDashboard
  ( -- * Creating a Request
    DescribeDashboard (..),
    newDescribeDashboard,

    -- * Request Lenses
    describeDashboard_dashboardId,

    -- * Destructuring the Response
    DescribeDashboardResponse (..),
    newDescribeDashboardResponse,

    -- * Response Lenses
    describeDashboardResponse_dashboardDescription,
    describeDashboardResponse_httpStatus,
    describeDashboardResponse_dashboardId,
    describeDashboardResponse_dashboardArn,
    describeDashboardResponse_dashboardName,
    describeDashboardResponse_projectId,
    describeDashboardResponse_dashboardDefinition,
    describeDashboardResponse_dashboardCreationDate,
    describeDashboardResponse_dashboardLastUpdateDate,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeDashboard' smart constructor.
data DescribeDashboard = DescribeDashboard'
  { -- | The ID of the dashboard.
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
-- 'dashboardId', 'describeDashboard_dashboardId' - The ID of the dashboard.
newDescribeDashboard ::
  -- | 'dashboardId'
  Prelude.Text ->
  DescribeDashboard
newDescribeDashboard pDashboardId_ =
  DescribeDashboard' {dashboardId = pDashboardId_}

-- | The ID of the dashboard.
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
            Prelude.<$> (x Core..?> "dashboardDescription")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "dashboardId")
            Prelude.<*> (x Core..:> "dashboardArn")
            Prelude.<*> (x Core..:> "dashboardName")
            Prelude.<*> (x Core..:> "projectId")
            Prelude.<*> (x Core..:> "dashboardDefinition")
            Prelude.<*> (x Core..:> "dashboardCreationDate")
            Prelude.<*> (x Core..:> "dashboardLastUpdateDate")
      )

instance Prelude.Hashable DescribeDashboard

instance Prelude.NFData DescribeDashboard

instance Core.ToHeaders DescribeDashboard where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeDashboard where
  toPath DescribeDashboard' {..} =
    Prelude.mconcat
      ["/dashboards/", Core.toBS dashboardId]

instance Core.ToQuery DescribeDashboard where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeDashboardResponse' smart constructor.
data DescribeDashboardResponse = DescribeDashboardResponse'
  { -- | The dashboard\'s description.
    dashboardDescription :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ID of the dashboard.
    dashboardId :: Prelude.Text,
    -- | The
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
    -- of the dashboard, which has the following format.
    --
    -- @arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard\/${DashboardId}@
    dashboardArn :: Prelude.Text,
    -- | The name of the dashboard.
    dashboardName :: Prelude.Text,
    -- | The ID of the project that the dashboard is in.
    projectId :: Prelude.Text,
    -- | The dashboard\'s definition JSON literal. For detailed information, see
    -- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html Creating dashboards (CLI)>
    -- in the /IoT SiteWise User Guide/.
    dashboardDefinition :: Prelude.Text,
    -- | The date the dashboard was created, in Unix epoch time.
    dashboardCreationDate :: Core.POSIX,
    -- | The date the dashboard was last updated, in Unix epoch time.
    dashboardLastUpdateDate :: Core.POSIX
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
-- 'dashboardDescription', 'describeDashboardResponse_dashboardDescription' - The dashboard\'s description.
--
-- 'httpStatus', 'describeDashboardResponse_httpStatus' - The response's http status code.
--
-- 'dashboardId', 'describeDashboardResponse_dashboardId' - The ID of the dashboard.
--
-- 'dashboardArn', 'describeDashboardResponse_dashboardArn' - The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the dashboard, which has the following format.
--
-- @arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard\/${DashboardId}@
--
-- 'dashboardName', 'describeDashboardResponse_dashboardName' - The name of the dashboard.
--
-- 'projectId', 'describeDashboardResponse_projectId' - The ID of the project that the dashboard is in.
--
-- 'dashboardDefinition', 'describeDashboardResponse_dashboardDefinition' - The dashboard\'s definition JSON literal. For detailed information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html Creating dashboards (CLI)>
-- in the /IoT SiteWise User Guide/.
--
-- 'dashboardCreationDate', 'describeDashboardResponse_dashboardCreationDate' - The date the dashboard was created, in Unix epoch time.
--
-- 'dashboardLastUpdateDate', 'describeDashboardResponse_dashboardLastUpdateDate' - The date the dashboard was last updated, in Unix epoch time.
newDescribeDashboardResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'dashboardId'
  Prelude.Text ->
  -- | 'dashboardArn'
  Prelude.Text ->
  -- | 'dashboardName'
  Prelude.Text ->
  -- | 'projectId'
  Prelude.Text ->
  -- | 'dashboardDefinition'
  Prelude.Text ->
  -- | 'dashboardCreationDate'
  Prelude.UTCTime ->
  -- | 'dashboardLastUpdateDate'
  Prelude.UTCTime ->
  DescribeDashboardResponse
newDescribeDashboardResponse
  pHttpStatus_
  pDashboardId_
  pDashboardArn_
  pDashboardName_
  pProjectId_
  pDashboardDefinition_
  pDashboardCreationDate_
  pDashboardLastUpdateDate_ =
    DescribeDashboardResponse'
      { dashboardDescription =
          Prelude.Nothing,
        httpStatus = pHttpStatus_,
        dashboardId = pDashboardId_,
        dashboardArn = pDashboardArn_,
        dashboardName = pDashboardName_,
        projectId = pProjectId_,
        dashboardDefinition = pDashboardDefinition_,
        dashboardCreationDate =
          Core._Time Lens.# pDashboardCreationDate_,
        dashboardLastUpdateDate =
          Core._Time Lens.# pDashboardLastUpdateDate_
      }

-- | The dashboard\'s description.
describeDashboardResponse_dashboardDescription :: Lens.Lens' DescribeDashboardResponse (Prelude.Maybe Prelude.Text)
describeDashboardResponse_dashboardDescription = Lens.lens (\DescribeDashboardResponse' {dashboardDescription} -> dashboardDescription) (\s@DescribeDashboardResponse' {} a -> s {dashboardDescription = a} :: DescribeDashboardResponse)

-- | The response's http status code.
describeDashboardResponse_httpStatus :: Lens.Lens' DescribeDashboardResponse Prelude.Int
describeDashboardResponse_httpStatus = Lens.lens (\DescribeDashboardResponse' {httpStatus} -> httpStatus) (\s@DescribeDashboardResponse' {} a -> s {httpStatus = a} :: DescribeDashboardResponse)

-- | The ID of the dashboard.
describeDashboardResponse_dashboardId :: Lens.Lens' DescribeDashboardResponse Prelude.Text
describeDashboardResponse_dashboardId = Lens.lens (\DescribeDashboardResponse' {dashboardId} -> dashboardId) (\s@DescribeDashboardResponse' {} a -> s {dashboardId = a} :: DescribeDashboardResponse)

-- | The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the dashboard, which has the following format.
--
-- @arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard\/${DashboardId}@
describeDashboardResponse_dashboardArn :: Lens.Lens' DescribeDashboardResponse Prelude.Text
describeDashboardResponse_dashboardArn = Lens.lens (\DescribeDashboardResponse' {dashboardArn} -> dashboardArn) (\s@DescribeDashboardResponse' {} a -> s {dashboardArn = a} :: DescribeDashboardResponse)

-- | The name of the dashboard.
describeDashboardResponse_dashboardName :: Lens.Lens' DescribeDashboardResponse Prelude.Text
describeDashboardResponse_dashboardName = Lens.lens (\DescribeDashboardResponse' {dashboardName} -> dashboardName) (\s@DescribeDashboardResponse' {} a -> s {dashboardName = a} :: DescribeDashboardResponse)

-- | The ID of the project that the dashboard is in.
describeDashboardResponse_projectId :: Lens.Lens' DescribeDashboardResponse Prelude.Text
describeDashboardResponse_projectId = Lens.lens (\DescribeDashboardResponse' {projectId} -> projectId) (\s@DescribeDashboardResponse' {} a -> s {projectId = a} :: DescribeDashboardResponse)

-- | The dashboard\'s definition JSON literal. For detailed information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html Creating dashboards (CLI)>
-- in the /IoT SiteWise User Guide/.
describeDashboardResponse_dashboardDefinition :: Lens.Lens' DescribeDashboardResponse Prelude.Text
describeDashboardResponse_dashboardDefinition = Lens.lens (\DescribeDashboardResponse' {dashboardDefinition} -> dashboardDefinition) (\s@DescribeDashboardResponse' {} a -> s {dashboardDefinition = a} :: DescribeDashboardResponse)

-- | The date the dashboard was created, in Unix epoch time.
describeDashboardResponse_dashboardCreationDate :: Lens.Lens' DescribeDashboardResponse Prelude.UTCTime
describeDashboardResponse_dashboardCreationDate = Lens.lens (\DescribeDashboardResponse' {dashboardCreationDate} -> dashboardCreationDate) (\s@DescribeDashboardResponse' {} a -> s {dashboardCreationDate = a} :: DescribeDashboardResponse) Prelude.. Core._Time

-- | The date the dashboard was last updated, in Unix epoch time.
describeDashboardResponse_dashboardLastUpdateDate :: Lens.Lens' DescribeDashboardResponse Prelude.UTCTime
describeDashboardResponse_dashboardLastUpdateDate = Lens.lens (\DescribeDashboardResponse' {dashboardLastUpdateDate} -> dashboardLastUpdateDate) (\s@DescribeDashboardResponse' {} a -> s {dashboardLastUpdateDate = a} :: DescribeDashboardResponse) Prelude.. Core._Time

instance Prelude.NFData DescribeDashboardResponse
