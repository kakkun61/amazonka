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
-- Module      : Network.AWS.SSM.UpdateOpsItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Edit or change an OpsItem. You must have permission in Identity and
-- Access Management (IAM) to update an OpsItem. For more information, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html Getting started with OpsCenter>
-- in the /Amazon Web Services Systems Manager User Guide/.
--
-- Operations engineers and IT professionals use Amazon Web Services
-- Systems Manager OpsCenter to view, investigate, and remediate
-- operational issues impacting the performance and health of their Amazon
-- Web Services resources. For more information, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html OpsCenter>
-- in the /Amazon Web Services Systems Manager User Guide/.
module Network.AWS.SSM.UpdateOpsItem
  ( -- * Creating a Request
    UpdateOpsItem (..),
    newUpdateOpsItem,

    -- * Request Lenses
    updateOpsItem_actualEndTime,
    updateOpsItem_status,
    updateOpsItem_operationalDataToDelete,
    updateOpsItem_priority,
    updateOpsItem_category,
    updateOpsItem_severity,
    updateOpsItem_relatedOpsItems,
    updateOpsItem_title,
    updateOpsItem_operationalData,
    updateOpsItem_actualStartTime,
    updateOpsItem_description,
    updateOpsItem_plannedEndTime,
    updateOpsItem_notifications,
    updateOpsItem_plannedStartTime,
    updateOpsItem_opsItemId,

    -- * Destructuring the Response
    UpdateOpsItemResponse (..),
    newUpdateOpsItemResponse,

    -- * Response Lenses
    updateOpsItemResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSM.Types

-- | /See:/ 'newUpdateOpsItem' smart constructor.
data UpdateOpsItem = UpdateOpsItem'
  { -- | The time a runbook workflow ended. Currently reported only for the
    -- OpsItem type @\/aws\/changerequest@.
    actualEndTime :: Prelude.Maybe Core.POSIX,
    -- | The OpsItem status. Status can be @Open@, @In Progress@, or @Resolved@.
    -- For more information, see
    -- <https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems.html#OpsCenter-working-with-OpsItems-editing-details Editing OpsItem details>
    -- in the /Amazon Web Services Systems Manager User Guide/.
    status :: Prelude.Maybe OpsItemStatus,
    -- | Keys that you want to remove from the OperationalData map.
    operationalDataToDelete :: Prelude.Maybe [Prelude.Text],
    -- | The importance of this OpsItem in relation to other OpsItems in the
    -- system.
    priority :: Prelude.Maybe Prelude.Natural,
    -- | Specify a new category for an OpsItem.
    category :: Prelude.Maybe Prelude.Text,
    -- | Specify a new severity for an OpsItem.
    severity :: Prelude.Maybe Prelude.Text,
    -- | One or more OpsItems that share something in common with the current
    -- OpsItems. For example, related OpsItems can include OpsItems with
    -- similar error messages, impacted resources, or statuses for the impacted
    -- resource.
    relatedOpsItems :: Prelude.Maybe [RelatedOpsItem],
    -- | A short heading that describes the nature of the OpsItem and the
    -- impacted resource.
    title :: Prelude.Maybe Prelude.Text,
    -- | Add new keys or edit existing key-value pairs of the OperationalData map
    -- in the OpsItem object.
    --
    -- Operational data is custom data that provides useful reference details
    -- about the OpsItem. For example, you can specify log files, error
    -- strings, license keys, troubleshooting tips, or other relevant data. You
    -- enter operational data as key-value pairs. The key has a maximum length
    -- of 128 characters. The value has a maximum size of 20 KB.
    --
    -- Operational data keys /can\'t/ begin with the following: @amazon@,
    -- @aws@, @amzn@, @ssm@, @\/amazon@, @\/aws@, @\/amzn@, @\/ssm@.
    --
    -- You can choose to make the data searchable by other users in the account
    -- or you can restrict search access. Searchable data means that all users
    -- with access to the OpsItem Overview page (as provided by the
    -- DescribeOpsItems API operation) can view and search on the specified
    -- data. Operational data that isn\'t searchable is only viewable by users
    -- who have access to the OpsItem (as provided by the GetOpsItem API
    -- operation).
    --
    -- Use the @\/aws\/resources@ key in OperationalData to specify a related
    -- resource in the request. Use the @\/aws\/automations@ key in
    -- OperationalData to associate an Automation runbook with the OpsItem. To
    -- view Amazon Web Services CLI example commands that use these keys, see
    -- <https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems Creating OpsItems manually>
    -- in the /Amazon Web Services Systems Manager User Guide/.
    operationalData :: Prelude.Maybe (Prelude.HashMap Prelude.Text OpsItemDataValue),
    -- | The time a runbook workflow started. Currently reported only for the
    -- OpsItem type @\/aws\/changerequest@.
    actualStartTime :: Prelude.Maybe Core.POSIX,
    -- | Update the information about the OpsItem. Provide enough information so
    -- that users reading this OpsItem for the first time understand the issue.
    description :: Prelude.Maybe Prelude.Text,
    -- | The time specified in a change request for a runbook workflow to end.
    -- Currently supported only for the OpsItem type @\/aws\/changerequest@.
    plannedEndTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of an SNS topic where notifications are
    -- sent when this OpsItem is edited or changed.
    notifications :: Prelude.Maybe [OpsItemNotification],
    -- | The time specified in a change request for a runbook workflow to start.
    -- Currently supported only for the OpsItem type @\/aws\/changerequest@.
    plannedStartTime :: Prelude.Maybe Core.POSIX,
    -- | The ID of the OpsItem.
    opsItemId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateOpsItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'actualEndTime', 'updateOpsItem_actualEndTime' - The time a runbook workflow ended. Currently reported only for the
-- OpsItem type @\/aws\/changerequest@.
--
-- 'status', 'updateOpsItem_status' - The OpsItem status. Status can be @Open@, @In Progress@, or @Resolved@.
-- For more information, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems.html#OpsCenter-working-with-OpsItems-editing-details Editing OpsItem details>
-- in the /Amazon Web Services Systems Manager User Guide/.
--
-- 'operationalDataToDelete', 'updateOpsItem_operationalDataToDelete' - Keys that you want to remove from the OperationalData map.
--
-- 'priority', 'updateOpsItem_priority' - The importance of this OpsItem in relation to other OpsItems in the
-- system.
--
-- 'category', 'updateOpsItem_category' - Specify a new category for an OpsItem.
--
-- 'severity', 'updateOpsItem_severity' - Specify a new severity for an OpsItem.
--
-- 'relatedOpsItems', 'updateOpsItem_relatedOpsItems' - One or more OpsItems that share something in common with the current
-- OpsItems. For example, related OpsItems can include OpsItems with
-- similar error messages, impacted resources, or statuses for the impacted
-- resource.
--
-- 'title', 'updateOpsItem_title' - A short heading that describes the nature of the OpsItem and the
-- impacted resource.
--
-- 'operationalData', 'updateOpsItem_operationalData' - Add new keys or edit existing key-value pairs of the OperationalData map
-- in the OpsItem object.
--
-- Operational data is custom data that provides useful reference details
-- about the OpsItem. For example, you can specify log files, error
-- strings, license keys, troubleshooting tips, or other relevant data. You
-- enter operational data as key-value pairs. The key has a maximum length
-- of 128 characters. The value has a maximum size of 20 KB.
--
-- Operational data keys /can\'t/ begin with the following: @amazon@,
-- @aws@, @amzn@, @ssm@, @\/amazon@, @\/aws@, @\/amzn@, @\/ssm@.
--
-- You can choose to make the data searchable by other users in the account
-- or you can restrict search access. Searchable data means that all users
-- with access to the OpsItem Overview page (as provided by the
-- DescribeOpsItems API operation) can view and search on the specified
-- data. Operational data that isn\'t searchable is only viewable by users
-- who have access to the OpsItem (as provided by the GetOpsItem API
-- operation).
--
-- Use the @\/aws\/resources@ key in OperationalData to specify a related
-- resource in the request. Use the @\/aws\/automations@ key in
-- OperationalData to associate an Automation runbook with the OpsItem. To
-- view Amazon Web Services CLI example commands that use these keys, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems Creating OpsItems manually>
-- in the /Amazon Web Services Systems Manager User Guide/.
--
-- 'actualStartTime', 'updateOpsItem_actualStartTime' - The time a runbook workflow started. Currently reported only for the
-- OpsItem type @\/aws\/changerequest@.
--
-- 'description', 'updateOpsItem_description' - Update the information about the OpsItem. Provide enough information so
-- that users reading this OpsItem for the first time understand the issue.
--
-- 'plannedEndTime', 'updateOpsItem_plannedEndTime' - The time specified in a change request for a runbook workflow to end.
-- Currently supported only for the OpsItem type @\/aws\/changerequest@.
--
-- 'notifications', 'updateOpsItem_notifications' - The Amazon Resource Name (ARN) of an SNS topic where notifications are
-- sent when this OpsItem is edited or changed.
--
-- 'plannedStartTime', 'updateOpsItem_plannedStartTime' - The time specified in a change request for a runbook workflow to start.
-- Currently supported only for the OpsItem type @\/aws\/changerequest@.
--
-- 'opsItemId', 'updateOpsItem_opsItemId' - The ID of the OpsItem.
newUpdateOpsItem ::
  -- | 'opsItemId'
  Prelude.Text ->
  UpdateOpsItem
newUpdateOpsItem pOpsItemId_ =
  UpdateOpsItem'
    { actualEndTime = Prelude.Nothing,
      status = Prelude.Nothing,
      operationalDataToDelete = Prelude.Nothing,
      priority = Prelude.Nothing,
      category = Prelude.Nothing,
      severity = Prelude.Nothing,
      relatedOpsItems = Prelude.Nothing,
      title = Prelude.Nothing,
      operationalData = Prelude.Nothing,
      actualStartTime = Prelude.Nothing,
      description = Prelude.Nothing,
      plannedEndTime = Prelude.Nothing,
      notifications = Prelude.Nothing,
      plannedStartTime = Prelude.Nothing,
      opsItemId = pOpsItemId_
    }

-- | The time a runbook workflow ended. Currently reported only for the
-- OpsItem type @\/aws\/changerequest@.
updateOpsItem_actualEndTime :: Lens.Lens' UpdateOpsItem (Prelude.Maybe Prelude.UTCTime)
updateOpsItem_actualEndTime = Lens.lens (\UpdateOpsItem' {actualEndTime} -> actualEndTime) (\s@UpdateOpsItem' {} a -> s {actualEndTime = a} :: UpdateOpsItem) Prelude.. Lens.mapping Core._Time

-- | The OpsItem status. Status can be @Open@, @In Progress@, or @Resolved@.
-- For more information, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems.html#OpsCenter-working-with-OpsItems-editing-details Editing OpsItem details>
-- in the /Amazon Web Services Systems Manager User Guide/.
updateOpsItem_status :: Lens.Lens' UpdateOpsItem (Prelude.Maybe OpsItemStatus)
updateOpsItem_status = Lens.lens (\UpdateOpsItem' {status} -> status) (\s@UpdateOpsItem' {} a -> s {status = a} :: UpdateOpsItem)

-- | Keys that you want to remove from the OperationalData map.
updateOpsItem_operationalDataToDelete :: Lens.Lens' UpdateOpsItem (Prelude.Maybe [Prelude.Text])
updateOpsItem_operationalDataToDelete = Lens.lens (\UpdateOpsItem' {operationalDataToDelete} -> operationalDataToDelete) (\s@UpdateOpsItem' {} a -> s {operationalDataToDelete = a} :: UpdateOpsItem) Prelude.. Lens.mapping Lens.coerced

-- | The importance of this OpsItem in relation to other OpsItems in the
-- system.
updateOpsItem_priority :: Lens.Lens' UpdateOpsItem (Prelude.Maybe Prelude.Natural)
updateOpsItem_priority = Lens.lens (\UpdateOpsItem' {priority} -> priority) (\s@UpdateOpsItem' {} a -> s {priority = a} :: UpdateOpsItem)

-- | Specify a new category for an OpsItem.
updateOpsItem_category :: Lens.Lens' UpdateOpsItem (Prelude.Maybe Prelude.Text)
updateOpsItem_category = Lens.lens (\UpdateOpsItem' {category} -> category) (\s@UpdateOpsItem' {} a -> s {category = a} :: UpdateOpsItem)

-- | Specify a new severity for an OpsItem.
updateOpsItem_severity :: Lens.Lens' UpdateOpsItem (Prelude.Maybe Prelude.Text)
updateOpsItem_severity = Lens.lens (\UpdateOpsItem' {severity} -> severity) (\s@UpdateOpsItem' {} a -> s {severity = a} :: UpdateOpsItem)

-- | One or more OpsItems that share something in common with the current
-- OpsItems. For example, related OpsItems can include OpsItems with
-- similar error messages, impacted resources, or statuses for the impacted
-- resource.
updateOpsItem_relatedOpsItems :: Lens.Lens' UpdateOpsItem (Prelude.Maybe [RelatedOpsItem])
updateOpsItem_relatedOpsItems = Lens.lens (\UpdateOpsItem' {relatedOpsItems} -> relatedOpsItems) (\s@UpdateOpsItem' {} a -> s {relatedOpsItems = a} :: UpdateOpsItem) Prelude.. Lens.mapping Lens.coerced

-- | A short heading that describes the nature of the OpsItem and the
-- impacted resource.
updateOpsItem_title :: Lens.Lens' UpdateOpsItem (Prelude.Maybe Prelude.Text)
updateOpsItem_title = Lens.lens (\UpdateOpsItem' {title} -> title) (\s@UpdateOpsItem' {} a -> s {title = a} :: UpdateOpsItem)

-- | Add new keys or edit existing key-value pairs of the OperationalData map
-- in the OpsItem object.
--
-- Operational data is custom data that provides useful reference details
-- about the OpsItem. For example, you can specify log files, error
-- strings, license keys, troubleshooting tips, or other relevant data. You
-- enter operational data as key-value pairs. The key has a maximum length
-- of 128 characters. The value has a maximum size of 20 KB.
--
-- Operational data keys /can\'t/ begin with the following: @amazon@,
-- @aws@, @amzn@, @ssm@, @\/amazon@, @\/aws@, @\/amzn@, @\/ssm@.
--
-- You can choose to make the data searchable by other users in the account
-- or you can restrict search access. Searchable data means that all users
-- with access to the OpsItem Overview page (as provided by the
-- DescribeOpsItems API operation) can view and search on the specified
-- data. Operational data that isn\'t searchable is only viewable by users
-- who have access to the OpsItem (as provided by the GetOpsItem API
-- operation).
--
-- Use the @\/aws\/resources@ key in OperationalData to specify a related
-- resource in the request. Use the @\/aws\/automations@ key in
-- OperationalData to associate an Automation runbook with the OpsItem. To
-- view Amazon Web Services CLI example commands that use these keys, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems Creating OpsItems manually>
-- in the /Amazon Web Services Systems Manager User Guide/.
updateOpsItem_operationalData :: Lens.Lens' UpdateOpsItem (Prelude.Maybe (Prelude.HashMap Prelude.Text OpsItemDataValue))
updateOpsItem_operationalData = Lens.lens (\UpdateOpsItem' {operationalData} -> operationalData) (\s@UpdateOpsItem' {} a -> s {operationalData = a} :: UpdateOpsItem) Prelude.. Lens.mapping Lens.coerced

-- | The time a runbook workflow started. Currently reported only for the
-- OpsItem type @\/aws\/changerequest@.
updateOpsItem_actualStartTime :: Lens.Lens' UpdateOpsItem (Prelude.Maybe Prelude.UTCTime)
updateOpsItem_actualStartTime = Lens.lens (\UpdateOpsItem' {actualStartTime} -> actualStartTime) (\s@UpdateOpsItem' {} a -> s {actualStartTime = a} :: UpdateOpsItem) Prelude.. Lens.mapping Core._Time

-- | Update the information about the OpsItem. Provide enough information so
-- that users reading this OpsItem for the first time understand the issue.
updateOpsItem_description :: Lens.Lens' UpdateOpsItem (Prelude.Maybe Prelude.Text)
updateOpsItem_description = Lens.lens (\UpdateOpsItem' {description} -> description) (\s@UpdateOpsItem' {} a -> s {description = a} :: UpdateOpsItem)

-- | The time specified in a change request for a runbook workflow to end.
-- Currently supported only for the OpsItem type @\/aws\/changerequest@.
updateOpsItem_plannedEndTime :: Lens.Lens' UpdateOpsItem (Prelude.Maybe Prelude.UTCTime)
updateOpsItem_plannedEndTime = Lens.lens (\UpdateOpsItem' {plannedEndTime} -> plannedEndTime) (\s@UpdateOpsItem' {} a -> s {plannedEndTime = a} :: UpdateOpsItem) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of an SNS topic where notifications are
-- sent when this OpsItem is edited or changed.
updateOpsItem_notifications :: Lens.Lens' UpdateOpsItem (Prelude.Maybe [OpsItemNotification])
updateOpsItem_notifications = Lens.lens (\UpdateOpsItem' {notifications} -> notifications) (\s@UpdateOpsItem' {} a -> s {notifications = a} :: UpdateOpsItem) Prelude.. Lens.mapping Lens.coerced

-- | The time specified in a change request for a runbook workflow to start.
-- Currently supported only for the OpsItem type @\/aws\/changerequest@.
updateOpsItem_plannedStartTime :: Lens.Lens' UpdateOpsItem (Prelude.Maybe Prelude.UTCTime)
updateOpsItem_plannedStartTime = Lens.lens (\UpdateOpsItem' {plannedStartTime} -> plannedStartTime) (\s@UpdateOpsItem' {} a -> s {plannedStartTime = a} :: UpdateOpsItem) Prelude.. Lens.mapping Core._Time

-- | The ID of the OpsItem.
updateOpsItem_opsItemId :: Lens.Lens' UpdateOpsItem Prelude.Text
updateOpsItem_opsItemId = Lens.lens (\UpdateOpsItem' {opsItemId} -> opsItemId) (\s@UpdateOpsItem' {} a -> s {opsItemId = a} :: UpdateOpsItem)

instance Core.AWSRequest UpdateOpsItem where
  type
    AWSResponse UpdateOpsItem =
      UpdateOpsItemResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateOpsItemResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateOpsItem

instance Prelude.NFData UpdateOpsItem

instance Core.ToHeaders UpdateOpsItem where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AmazonSSM.UpdateOpsItem" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateOpsItem where
  toJSON UpdateOpsItem' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ActualEndTime" Core..=) Prelude.<$> actualEndTime,
            ("Status" Core..=) Prelude.<$> status,
            ("OperationalDataToDelete" Core..=)
              Prelude.<$> operationalDataToDelete,
            ("Priority" Core..=) Prelude.<$> priority,
            ("Category" Core..=) Prelude.<$> category,
            ("Severity" Core..=) Prelude.<$> severity,
            ("RelatedOpsItems" Core..=)
              Prelude.<$> relatedOpsItems,
            ("Title" Core..=) Prelude.<$> title,
            ("OperationalData" Core..=)
              Prelude.<$> operationalData,
            ("ActualStartTime" Core..=)
              Prelude.<$> actualStartTime,
            ("Description" Core..=) Prelude.<$> description,
            ("PlannedEndTime" Core..=)
              Prelude.<$> plannedEndTime,
            ("Notifications" Core..=) Prelude.<$> notifications,
            ("PlannedStartTime" Core..=)
              Prelude.<$> plannedStartTime,
            Prelude.Just ("OpsItemId" Core..= opsItemId)
          ]
      )

instance Core.ToPath UpdateOpsItem where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateOpsItem where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateOpsItemResponse' smart constructor.
data UpdateOpsItemResponse = UpdateOpsItemResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateOpsItemResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateOpsItemResponse_httpStatus' - The response's http status code.
newUpdateOpsItemResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateOpsItemResponse
newUpdateOpsItemResponse pHttpStatus_ =
  UpdateOpsItemResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
updateOpsItemResponse_httpStatus :: Lens.Lens' UpdateOpsItemResponse Prelude.Int
updateOpsItemResponse_httpStatus = Lens.lens (\UpdateOpsItemResponse' {httpStatus} -> httpStatus) (\s@UpdateOpsItemResponse' {} a -> s {httpStatus = a} :: UpdateOpsItemResponse)

instance Prelude.NFData UpdateOpsItemResponse
