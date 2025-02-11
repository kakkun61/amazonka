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
-- Module      : Network.AWS.Backup.CreateReportPlan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a report plan. A report plan is a document that contains
-- information about the contents of the report and where Backup will
-- deliver it.
--
-- If you call @CreateReportPlan@ with a plan that already exists, you
-- receive an @AlreadyExistsException@ exception.
module Network.AWS.Backup.CreateReportPlan
  ( -- * Creating a Request
    CreateReportPlan (..),
    newCreateReportPlan,

    -- * Request Lenses
    createReportPlan_idempotencyToken,
    createReportPlan_reportPlanTags,
    createReportPlan_reportPlanDescription,
    createReportPlan_reportPlanName,
    createReportPlan_reportDeliveryChannel,
    createReportPlan_reportSetting,

    -- * Destructuring the Response
    CreateReportPlanResponse (..),
    newCreateReportPlanResponse,

    -- * Response Lenses
    createReportPlanResponse_creationTime,
    createReportPlanResponse_reportPlanName,
    createReportPlanResponse_reportPlanArn,
    createReportPlanResponse_httpStatus,
  )
where

import Network.AWS.Backup.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateReportPlan' smart constructor.
data CreateReportPlan = CreateReportPlan'
  { -- | A customer-chosen string that you can use to distinguish between
    -- otherwise identical calls to @CreateReportPlanInput@. Retrying a
    -- successful request with the same idempotency token results in a success
    -- message with no action taken.
    idempotencyToken :: Prelude.Maybe Prelude.Text,
    -- | Metadata that you can assign to help organize the report plans that you
    -- create. Each tag is a key-value pair.
    reportPlanTags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | An optional description of the report plan with a maximum of 1,024
    -- characters.
    reportPlanDescription :: Prelude.Maybe Prelude.Text,
    -- | The unique name of the report plan. The name must be between 1 and 256
    -- characters, starting with a letter, and consisting of letters (a-z,
    -- A-Z), numbers (0-9), and underscores (_).
    reportPlanName :: Prelude.Text,
    -- | A structure that contains information about where and how to deliver
    -- your reports, specifically your Amazon S3 bucket name, S3 key prefix,
    -- and the formats of your reports.
    reportDeliveryChannel :: ReportDeliveryChannel,
    -- | Identifies the report template for the report. Reports are built using a
    -- report template. The report templates are:
    --
    -- @RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT@
    --
    -- If the report template is @RESOURCE_COMPLIANCE_REPORT@ or
    -- @CONTROL_COMPLIANCE_REPORT@, this API resource also describes the report
    -- coverage by Amazon Web Services Regions and frameworks.
    reportSetting :: ReportSetting
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateReportPlan' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'idempotencyToken', 'createReportPlan_idempotencyToken' - A customer-chosen string that you can use to distinguish between
-- otherwise identical calls to @CreateReportPlanInput@. Retrying a
-- successful request with the same idempotency token results in a success
-- message with no action taken.
--
-- 'reportPlanTags', 'createReportPlan_reportPlanTags' - Metadata that you can assign to help organize the report plans that you
-- create. Each tag is a key-value pair.
--
-- 'reportPlanDescription', 'createReportPlan_reportPlanDescription' - An optional description of the report plan with a maximum of 1,024
-- characters.
--
-- 'reportPlanName', 'createReportPlan_reportPlanName' - The unique name of the report plan. The name must be between 1 and 256
-- characters, starting with a letter, and consisting of letters (a-z,
-- A-Z), numbers (0-9), and underscores (_).
--
-- 'reportDeliveryChannel', 'createReportPlan_reportDeliveryChannel' - A structure that contains information about where and how to deliver
-- your reports, specifically your Amazon S3 bucket name, S3 key prefix,
-- and the formats of your reports.
--
-- 'reportSetting', 'createReportPlan_reportSetting' - Identifies the report template for the report. Reports are built using a
-- report template. The report templates are:
--
-- @RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT@
--
-- If the report template is @RESOURCE_COMPLIANCE_REPORT@ or
-- @CONTROL_COMPLIANCE_REPORT@, this API resource also describes the report
-- coverage by Amazon Web Services Regions and frameworks.
newCreateReportPlan ::
  -- | 'reportPlanName'
  Prelude.Text ->
  -- | 'reportDeliveryChannel'
  ReportDeliveryChannel ->
  -- | 'reportSetting'
  ReportSetting ->
  CreateReportPlan
newCreateReportPlan
  pReportPlanName_
  pReportDeliveryChannel_
  pReportSetting_ =
    CreateReportPlan'
      { idempotencyToken =
          Prelude.Nothing,
        reportPlanTags = Prelude.Nothing,
        reportPlanDescription = Prelude.Nothing,
        reportPlanName = pReportPlanName_,
        reportDeliveryChannel = pReportDeliveryChannel_,
        reportSetting = pReportSetting_
      }

-- | A customer-chosen string that you can use to distinguish between
-- otherwise identical calls to @CreateReportPlanInput@. Retrying a
-- successful request with the same idempotency token results in a success
-- message with no action taken.
createReportPlan_idempotencyToken :: Lens.Lens' CreateReportPlan (Prelude.Maybe Prelude.Text)
createReportPlan_idempotencyToken = Lens.lens (\CreateReportPlan' {idempotencyToken} -> idempotencyToken) (\s@CreateReportPlan' {} a -> s {idempotencyToken = a} :: CreateReportPlan)

-- | Metadata that you can assign to help organize the report plans that you
-- create. Each tag is a key-value pair.
createReportPlan_reportPlanTags :: Lens.Lens' CreateReportPlan (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createReportPlan_reportPlanTags = Lens.lens (\CreateReportPlan' {reportPlanTags} -> reportPlanTags) (\s@CreateReportPlan' {} a -> s {reportPlanTags = a} :: CreateReportPlan) Prelude.. Lens.mapping Lens.coerced

-- | An optional description of the report plan with a maximum of 1,024
-- characters.
createReportPlan_reportPlanDescription :: Lens.Lens' CreateReportPlan (Prelude.Maybe Prelude.Text)
createReportPlan_reportPlanDescription = Lens.lens (\CreateReportPlan' {reportPlanDescription} -> reportPlanDescription) (\s@CreateReportPlan' {} a -> s {reportPlanDescription = a} :: CreateReportPlan)

-- | The unique name of the report plan. The name must be between 1 and 256
-- characters, starting with a letter, and consisting of letters (a-z,
-- A-Z), numbers (0-9), and underscores (_).
createReportPlan_reportPlanName :: Lens.Lens' CreateReportPlan Prelude.Text
createReportPlan_reportPlanName = Lens.lens (\CreateReportPlan' {reportPlanName} -> reportPlanName) (\s@CreateReportPlan' {} a -> s {reportPlanName = a} :: CreateReportPlan)

-- | A structure that contains information about where and how to deliver
-- your reports, specifically your Amazon S3 bucket name, S3 key prefix,
-- and the formats of your reports.
createReportPlan_reportDeliveryChannel :: Lens.Lens' CreateReportPlan ReportDeliveryChannel
createReportPlan_reportDeliveryChannel = Lens.lens (\CreateReportPlan' {reportDeliveryChannel} -> reportDeliveryChannel) (\s@CreateReportPlan' {} a -> s {reportDeliveryChannel = a} :: CreateReportPlan)

-- | Identifies the report template for the report. Reports are built using a
-- report template. The report templates are:
--
-- @RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT@
--
-- If the report template is @RESOURCE_COMPLIANCE_REPORT@ or
-- @CONTROL_COMPLIANCE_REPORT@, this API resource also describes the report
-- coverage by Amazon Web Services Regions and frameworks.
createReportPlan_reportSetting :: Lens.Lens' CreateReportPlan ReportSetting
createReportPlan_reportSetting = Lens.lens (\CreateReportPlan' {reportSetting} -> reportSetting) (\s@CreateReportPlan' {} a -> s {reportSetting = a} :: CreateReportPlan)

instance Core.AWSRequest CreateReportPlan where
  type
    AWSResponse CreateReportPlan =
      CreateReportPlanResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateReportPlanResponse'
            Prelude.<$> (x Core..?> "CreationTime")
            Prelude.<*> (x Core..?> "ReportPlanName")
            Prelude.<*> (x Core..?> "ReportPlanArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateReportPlan

instance Prelude.NFData CreateReportPlan

instance Core.ToHeaders CreateReportPlan where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateReportPlan where
  toJSON CreateReportPlan' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("IdempotencyToken" Core..=)
              Prelude.<$> idempotencyToken,
            ("ReportPlanTags" Core..=)
              Prelude.<$> reportPlanTags,
            ("ReportPlanDescription" Core..=)
              Prelude.<$> reportPlanDescription,
            Prelude.Just
              ("ReportPlanName" Core..= reportPlanName),
            Prelude.Just
              ( "ReportDeliveryChannel"
                  Core..= reportDeliveryChannel
              ),
            Prelude.Just
              ("ReportSetting" Core..= reportSetting)
          ]
      )

instance Core.ToPath CreateReportPlan where
  toPath = Prelude.const "/audit/report-plans"

instance Core.ToQuery CreateReportPlan where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateReportPlanResponse' smart constructor.
data CreateReportPlanResponse = CreateReportPlanResponse'
  { -- | The date and time a backup vault is created, in Unix format and
    -- Coordinated Universal Time (UTC). The value of @CreationTime@ is
    -- accurate to milliseconds. For example, the value 1516925490.087
    -- represents Friday, January 26, 2018 12:11:30.087 AM.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The unique name of the report plan.
    reportPlanName :: Prelude.Maybe Prelude.Text,
    -- | An Amazon Resource Name (ARN) that uniquely identifies a resource. The
    -- format of the ARN depends on the resource type.
    reportPlanArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateReportPlanResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'createReportPlanResponse_creationTime' - The date and time a backup vault is created, in Unix format and
-- Coordinated Universal Time (UTC). The value of @CreationTime@ is
-- accurate to milliseconds. For example, the value 1516925490.087
-- represents Friday, January 26, 2018 12:11:30.087 AM.
--
-- 'reportPlanName', 'createReportPlanResponse_reportPlanName' - The unique name of the report plan.
--
-- 'reportPlanArn', 'createReportPlanResponse_reportPlanArn' - An Amazon Resource Name (ARN) that uniquely identifies a resource. The
-- format of the ARN depends on the resource type.
--
-- 'httpStatus', 'createReportPlanResponse_httpStatus' - The response's http status code.
newCreateReportPlanResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateReportPlanResponse
newCreateReportPlanResponse pHttpStatus_ =
  CreateReportPlanResponse'
    { creationTime =
        Prelude.Nothing,
      reportPlanName = Prelude.Nothing,
      reportPlanArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The date and time a backup vault is created, in Unix format and
-- Coordinated Universal Time (UTC). The value of @CreationTime@ is
-- accurate to milliseconds. For example, the value 1516925490.087
-- represents Friday, January 26, 2018 12:11:30.087 AM.
createReportPlanResponse_creationTime :: Lens.Lens' CreateReportPlanResponse (Prelude.Maybe Prelude.UTCTime)
createReportPlanResponse_creationTime = Lens.lens (\CreateReportPlanResponse' {creationTime} -> creationTime) (\s@CreateReportPlanResponse' {} a -> s {creationTime = a} :: CreateReportPlanResponse) Prelude.. Lens.mapping Core._Time

-- | The unique name of the report plan.
createReportPlanResponse_reportPlanName :: Lens.Lens' CreateReportPlanResponse (Prelude.Maybe Prelude.Text)
createReportPlanResponse_reportPlanName = Lens.lens (\CreateReportPlanResponse' {reportPlanName} -> reportPlanName) (\s@CreateReportPlanResponse' {} a -> s {reportPlanName = a} :: CreateReportPlanResponse)

-- | An Amazon Resource Name (ARN) that uniquely identifies a resource. The
-- format of the ARN depends on the resource type.
createReportPlanResponse_reportPlanArn :: Lens.Lens' CreateReportPlanResponse (Prelude.Maybe Prelude.Text)
createReportPlanResponse_reportPlanArn = Lens.lens (\CreateReportPlanResponse' {reportPlanArn} -> reportPlanArn) (\s@CreateReportPlanResponse' {} a -> s {reportPlanArn = a} :: CreateReportPlanResponse)

-- | The response's http status code.
createReportPlanResponse_httpStatus :: Lens.Lens' CreateReportPlanResponse Prelude.Int
createReportPlanResponse_httpStatus = Lens.lens (\CreateReportPlanResponse' {httpStatus} -> httpStatus) (\s@CreateReportPlanResponse' {} a -> s {httpStatus = a} :: CreateReportPlanResponse)

instance Prelude.NFData CreateReportPlanResponse
