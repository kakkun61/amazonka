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
-- Module      : Network.AWS.AppFlow.DescribeFlow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a description of the specified flow.
module Network.AWS.AppFlow.DescribeFlow
  ( -- * Creating a Request
    DescribeFlow (..),
    newDescribeFlow,

    -- * Request Lenses
    describeFlow_flowName,

    -- * Destructuring the Response
    DescribeFlowResponse (..),
    newDescribeFlowResponse,

    -- * Response Lenses
    describeFlowResponse_lastUpdatedBy,
    describeFlowResponse_flowArn,
    describeFlowResponse_lastUpdatedAt,
    describeFlowResponse_createdAt,
    describeFlowResponse_createdBy,
    describeFlowResponse_tasks,
    describeFlowResponse_triggerConfig,
    describeFlowResponse_flowName,
    describeFlowResponse_sourceFlowConfig,
    describeFlowResponse_flowStatusMessage,
    describeFlowResponse_kmsArn,
    describeFlowResponse_lastRunExecutionDetails,
    describeFlowResponse_flowStatus,
    describeFlowResponse_destinationFlowConfigList,
    describeFlowResponse_description,
    describeFlowResponse_tags,
    describeFlowResponse_httpStatus,
  )
where

import Network.AWS.AppFlow.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeFlow' smart constructor.
data DescribeFlow = DescribeFlow'
  { -- | The specified name of the flow. Spaces are not allowed. Use underscores
    -- (_) or hyphens (-) only.
    flowName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFlow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'flowName', 'describeFlow_flowName' - The specified name of the flow. Spaces are not allowed. Use underscores
-- (_) or hyphens (-) only.
newDescribeFlow ::
  -- | 'flowName'
  Prelude.Text ->
  DescribeFlow
newDescribeFlow pFlowName_ =
  DescribeFlow' {flowName = pFlowName_}

-- | The specified name of the flow. Spaces are not allowed. Use underscores
-- (_) or hyphens (-) only.
describeFlow_flowName :: Lens.Lens' DescribeFlow Prelude.Text
describeFlow_flowName = Lens.lens (\DescribeFlow' {flowName} -> flowName) (\s@DescribeFlow' {} a -> s {flowName = a} :: DescribeFlow)

instance Core.AWSRequest DescribeFlow where
  type AWSResponse DescribeFlow = DescribeFlowResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeFlowResponse'
            Prelude.<$> (x Core..?> "lastUpdatedBy")
            Prelude.<*> (x Core..?> "flowArn")
            Prelude.<*> (x Core..?> "lastUpdatedAt")
            Prelude.<*> (x Core..?> "createdAt")
            Prelude.<*> (x Core..?> "createdBy")
            Prelude.<*> (x Core..?> "tasks" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "triggerConfig")
            Prelude.<*> (x Core..?> "flowName")
            Prelude.<*> (x Core..?> "sourceFlowConfig")
            Prelude.<*> (x Core..?> "flowStatusMessage")
            Prelude.<*> (x Core..?> "kmsArn")
            Prelude.<*> (x Core..?> "lastRunExecutionDetails")
            Prelude.<*> (x Core..?> "flowStatus")
            Prelude.<*> ( x Core..?> "destinationFlowConfigList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeFlow

instance Prelude.NFData DescribeFlow

instance Core.ToHeaders DescribeFlow where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeFlow where
  toJSON DescribeFlow' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("flowName" Core..= flowName)]
      )

instance Core.ToPath DescribeFlow where
  toPath = Prelude.const "/describe-flow"

instance Core.ToQuery DescribeFlow where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeFlowResponse' smart constructor.
data DescribeFlowResponse = DescribeFlowResponse'
  { -- | Specifies the user name of the account that performed the most recent
    -- update.
    lastUpdatedBy :: Prelude.Maybe Prelude.Text,
    -- | The flow\'s Amazon Resource Name (ARN).
    flowArn :: Prelude.Maybe Prelude.Text,
    -- | Specifies when the flow was last updated.
    lastUpdatedAt :: Prelude.Maybe Core.POSIX,
    -- | Specifies when the flow was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The ARN of the user who created the flow.
    createdBy :: Prelude.Maybe Prelude.Text,
    -- | A list of tasks that Amazon AppFlow performs while transferring the data
    -- in the flow run.
    tasks :: Prelude.Maybe [Task],
    -- | The trigger settings that determine how and when the flow runs.
    triggerConfig :: Prelude.Maybe TriggerConfig,
    -- | The specified name of the flow. Spaces are not allowed. Use underscores
    -- (_) or hyphens (-) only.
    flowName :: Prelude.Maybe Prelude.Text,
    -- | The configuration that controls how Amazon AppFlow retrieves data from
    -- the source connector.
    sourceFlowConfig :: Prelude.Maybe SourceFlowConfig,
    -- | Contains an error message if the flow status is in a suspended or error
    -- state. This applies only to scheduled or event-triggered flows.
    flowStatusMessage :: Prelude.Maybe Prelude.Text,
    -- | The ARN (Amazon Resource Name) of the Key Management Service (KMS) key
    -- you provide for encryption. This is required if you do not want to use
    -- the Amazon AppFlow-managed KMS key. If you don\'t provide anything here,
    -- Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
    kmsArn :: Prelude.Maybe Prelude.Text,
    -- | Describes the details of the most recent flow run.
    lastRunExecutionDetails :: Prelude.Maybe ExecutionDetails,
    -- | Indicates the current status of the flow.
    flowStatus :: Prelude.Maybe FlowStatus,
    -- | The configuration that controls how Amazon AppFlow transfers data to the
    -- destination connector.
    destinationFlowConfigList :: Prelude.Maybe [DestinationFlowConfig],
    -- | A description of the flow.
    description :: Prelude.Maybe Prelude.Text,
    -- | The tags used to organize, track, or control access for your flow.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFlowResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdatedBy', 'describeFlowResponse_lastUpdatedBy' - Specifies the user name of the account that performed the most recent
-- update.
--
-- 'flowArn', 'describeFlowResponse_flowArn' - The flow\'s Amazon Resource Name (ARN).
--
-- 'lastUpdatedAt', 'describeFlowResponse_lastUpdatedAt' - Specifies when the flow was last updated.
--
-- 'createdAt', 'describeFlowResponse_createdAt' - Specifies when the flow was created.
--
-- 'createdBy', 'describeFlowResponse_createdBy' - The ARN of the user who created the flow.
--
-- 'tasks', 'describeFlowResponse_tasks' - A list of tasks that Amazon AppFlow performs while transferring the data
-- in the flow run.
--
-- 'triggerConfig', 'describeFlowResponse_triggerConfig' - The trigger settings that determine how and when the flow runs.
--
-- 'flowName', 'describeFlowResponse_flowName' - The specified name of the flow. Spaces are not allowed. Use underscores
-- (_) or hyphens (-) only.
--
-- 'sourceFlowConfig', 'describeFlowResponse_sourceFlowConfig' - The configuration that controls how Amazon AppFlow retrieves data from
-- the source connector.
--
-- 'flowStatusMessage', 'describeFlowResponse_flowStatusMessage' - Contains an error message if the flow status is in a suspended or error
-- state. This applies only to scheduled or event-triggered flows.
--
-- 'kmsArn', 'describeFlowResponse_kmsArn' - The ARN (Amazon Resource Name) of the Key Management Service (KMS) key
-- you provide for encryption. This is required if you do not want to use
-- the Amazon AppFlow-managed KMS key. If you don\'t provide anything here,
-- Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
--
-- 'lastRunExecutionDetails', 'describeFlowResponse_lastRunExecutionDetails' - Describes the details of the most recent flow run.
--
-- 'flowStatus', 'describeFlowResponse_flowStatus' - Indicates the current status of the flow.
--
-- 'destinationFlowConfigList', 'describeFlowResponse_destinationFlowConfigList' - The configuration that controls how Amazon AppFlow transfers data to the
-- destination connector.
--
-- 'description', 'describeFlowResponse_description' - A description of the flow.
--
-- 'tags', 'describeFlowResponse_tags' - The tags used to organize, track, or control access for your flow.
--
-- 'httpStatus', 'describeFlowResponse_httpStatus' - The response's http status code.
newDescribeFlowResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeFlowResponse
newDescribeFlowResponse pHttpStatus_ =
  DescribeFlowResponse'
    { lastUpdatedBy =
        Prelude.Nothing,
      flowArn = Prelude.Nothing,
      lastUpdatedAt = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      createdBy = Prelude.Nothing,
      tasks = Prelude.Nothing,
      triggerConfig = Prelude.Nothing,
      flowName = Prelude.Nothing,
      sourceFlowConfig = Prelude.Nothing,
      flowStatusMessage = Prelude.Nothing,
      kmsArn = Prelude.Nothing,
      lastRunExecutionDetails = Prelude.Nothing,
      flowStatus = Prelude.Nothing,
      destinationFlowConfigList = Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Specifies the user name of the account that performed the most recent
-- update.
describeFlowResponse_lastUpdatedBy :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe Prelude.Text)
describeFlowResponse_lastUpdatedBy = Lens.lens (\DescribeFlowResponse' {lastUpdatedBy} -> lastUpdatedBy) (\s@DescribeFlowResponse' {} a -> s {lastUpdatedBy = a} :: DescribeFlowResponse)

-- | The flow\'s Amazon Resource Name (ARN).
describeFlowResponse_flowArn :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe Prelude.Text)
describeFlowResponse_flowArn = Lens.lens (\DescribeFlowResponse' {flowArn} -> flowArn) (\s@DescribeFlowResponse' {} a -> s {flowArn = a} :: DescribeFlowResponse)

-- | Specifies when the flow was last updated.
describeFlowResponse_lastUpdatedAt :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe Prelude.UTCTime)
describeFlowResponse_lastUpdatedAt = Lens.lens (\DescribeFlowResponse' {lastUpdatedAt} -> lastUpdatedAt) (\s@DescribeFlowResponse' {} a -> s {lastUpdatedAt = a} :: DescribeFlowResponse) Prelude.. Lens.mapping Core._Time

-- | Specifies when the flow was created.
describeFlowResponse_createdAt :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe Prelude.UTCTime)
describeFlowResponse_createdAt = Lens.lens (\DescribeFlowResponse' {createdAt} -> createdAt) (\s@DescribeFlowResponse' {} a -> s {createdAt = a} :: DescribeFlowResponse) Prelude.. Lens.mapping Core._Time

-- | The ARN of the user who created the flow.
describeFlowResponse_createdBy :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe Prelude.Text)
describeFlowResponse_createdBy = Lens.lens (\DescribeFlowResponse' {createdBy} -> createdBy) (\s@DescribeFlowResponse' {} a -> s {createdBy = a} :: DescribeFlowResponse)

-- | A list of tasks that Amazon AppFlow performs while transferring the data
-- in the flow run.
describeFlowResponse_tasks :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe [Task])
describeFlowResponse_tasks = Lens.lens (\DescribeFlowResponse' {tasks} -> tasks) (\s@DescribeFlowResponse' {} a -> s {tasks = a} :: DescribeFlowResponse) Prelude.. Lens.mapping Lens.coerced

-- | The trigger settings that determine how and when the flow runs.
describeFlowResponse_triggerConfig :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe TriggerConfig)
describeFlowResponse_triggerConfig = Lens.lens (\DescribeFlowResponse' {triggerConfig} -> triggerConfig) (\s@DescribeFlowResponse' {} a -> s {triggerConfig = a} :: DescribeFlowResponse)

-- | The specified name of the flow. Spaces are not allowed. Use underscores
-- (_) or hyphens (-) only.
describeFlowResponse_flowName :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe Prelude.Text)
describeFlowResponse_flowName = Lens.lens (\DescribeFlowResponse' {flowName} -> flowName) (\s@DescribeFlowResponse' {} a -> s {flowName = a} :: DescribeFlowResponse)

-- | The configuration that controls how Amazon AppFlow retrieves data from
-- the source connector.
describeFlowResponse_sourceFlowConfig :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe SourceFlowConfig)
describeFlowResponse_sourceFlowConfig = Lens.lens (\DescribeFlowResponse' {sourceFlowConfig} -> sourceFlowConfig) (\s@DescribeFlowResponse' {} a -> s {sourceFlowConfig = a} :: DescribeFlowResponse)

-- | Contains an error message if the flow status is in a suspended or error
-- state. This applies only to scheduled or event-triggered flows.
describeFlowResponse_flowStatusMessage :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe Prelude.Text)
describeFlowResponse_flowStatusMessage = Lens.lens (\DescribeFlowResponse' {flowStatusMessage} -> flowStatusMessage) (\s@DescribeFlowResponse' {} a -> s {flowStatusMessage = a} :: DescribeFlowResponse)

-- | The ARN (Amazon Resource Name) of the Key Management Service (KMS) key
-- you provide for encryption. This is required if you do not want to use
-- the Amazon AppFlow-managed KMS key. If you don\'t provide anything here,
-- Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
describeFlowResponse_kmsArn :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe Prelude.Text)
describeFlowResponse_kmsArn = Lens.lens (\DescribeFlowResponse' {kmsArn} -> kmsArn) (\s@DescribeFlowResponse' {} a -> s {kmsArn = a} :: DescribeFlowResponse)

-- | Describes the details of the most recent flow run.
describeFlowResponse_lastRunExecutionDetails :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe ExecutionDetails)
describeFlowResponse_lastRunExecutionDetails = Lens.lens (\DescribeFlowResponse' {lastRunExecutionDetails} -> lastRunExecutionDetails) (\s@DescribeFlowResponse' {} a -> s {lastRunExecutionDetails = a} :: DescribeFlowResponse)

-- | Indicates the current status of the flow.
describeFlowResponse_flowStatus :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe FlowStatus)
describeFlowResponse_flowStatus = Lens.lens (\DescribeFlowResponse' {flowStatus} -> flowStatus) (\s@DescribeFlowResponse' {} a -> s {flowStatus = a} :: DescribeFlowResponse)

-- | The configuration that controls how Amazon AppFlow transfers data to the
-- destination connector.
describeFlowResponse_destinationFlowConfigList :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe [DestinationFlowConfig])
describeFlowResponse_destinationFlowConfigList = Lens.lens (\DescribeFlowResponse' {destinationFlowConfigList} -> destinationFlowConfigList) (\s@DescribeFlowResponse' {} a -> s {destinationFlowConfigList = a} :: DescribeFlowResponse) Prelude.. Lens.mapping Lens.coerced

-- | A description of the flow.
describeFlowResponse_description :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe Prelude.Text)
describeFlowResponse_description = Lens.lens (\DescribeFlowResponse' {description} -> description) (\s@DescribeFlowResponse' {} a -> s {description = a} :: DescribeFlowResponse)

-- | The tags used to organize, track, or control access for your flow.
describeFlowResponse_tags :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeFlowResponse_tags = Lens.lens (\DescribeFlowResponse' {tags} -> tags) (\s@DescribeFlowResponse' {} a -> s {tags = a} :: DescribeFlowResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeFlowResponse_httpStatus :: Lens.Lens' DescribeFlowResponse Prelude.Int
describeFlowResponse_httpStatus = Lens.lens (\DescribeFlowResponse' {httpStatus} -> httpStatus) (\s@DescribeFlowResponse' {} a -> s {httpStatus = a} :: DescribeFlowResponse)

instance Prelude.NFData DescribeFlowResponse
