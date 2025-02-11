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
-- Module      : Network.AWS.SSM.StartChangeRequestExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a change request for Change Manager. The Automation runbooks
-- specified in the change request run only after all required approvals
-- for the change request have been received.
module Network.AWS.SSM.StartChangeRequestExecution
  ( -- * Creating a Request
    StartChangeRequestExecution (..),
    newStartChangeRequestExecution,

    -- * Request Lenses
    startChangeRequestExecution_scheduledTime,
    startChangeRequestExecution_changeDetails,
    startChangeRequestExecution_clientToken,
    startChangeRequestExecution_autoApprove,
    startChangeRequestExecution_scheduledEndTime,
    startChangeRequestExecution_parameters,
    startChangeRequestExecution_documentVersion,
    startChangeRequestExecution_changeRequestName,
    startChangeRequestExecution_tags,
    startChangeRequestExecution_documentName,
    startChangeRequestExecution_runbooks,

    -- * Destructuring the Response
    StartChangeRequestExecutionResponse (..),
    newStartChangeRequestExecutionResponse,

    -- * Response Lenses
    startChangeRequestExecutionResponse_automationExecutionId,
    startChangeRequestExecutionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSM.Types

-- | /See:/ 'newStartChangeRequestExecution' smart constructor.
data StartChangeRequestExecution = StartChangeRequestExecution'
  { -- | The date and time specified in the change request to run the Automation
    -- runbooks.
    --
    -- The Automation runbooks specified for the runbook workflow can\'t run
    -- until all required approvals for the change request have been received.
    scheduledTime :: Prelude.Maybe Core.POSIX,
    -- | User-provided details about the change. If no details are provided,
    -- content specified in the __Template information__ section of the
    -- associated change template is added.
    changeDetails :: Prelude.Maybe Prelude.Text,
    -- | The user-provided idempotency token. The token must be unique, is case
    -- insensitive, enforces the UUID format, and can\'t be reused.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether the change request can be approved automatically
    -- without the need for manual approvals.
    --
    -- If @AutoApprovable@ is enabled in a change template, then setting
    -- @AutoApprove@ to @true@ in @StartChangeRequestExecution@ creates a
    -- change request that bypasses approver review.
    --
    -- Change Calendar restrictions are not bypassed in this scenario. If the
    -- state of an associated calendar is @CLOSED@, change freeze approvers
    -- must still grant permission for this change request to run. If they
    -- don\'t, the change won\'t be processed until the calendar state is again
    -- @OPEN@.
    autoApprove :: Prelude.Maybe Prelude.Bool,
    -- | The time that the requester expects the runbook workflow related to the
    -- change request to complete. The time is an estimate only that the
    -- requester provides for reviewers.
    scheduledEndTime :: Prelude.Maybe Core.POSIX,
    -- | A key-value map of parameters that match the declared parameters in the
    -- change template document.
    parameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]),
    -- | The version of the change template document to run during the runbook
    -- workflow.
    documentVersion :: Prelude.Maybe Prelude.Text,
    -- | The name of the change request associated with the runbook workflow to
    -- be run.
    changeRequestName :: Prelude.Maybe Prelude.Text,
    -- | Optional metadata that you assign to a resource. You can specify a
    -- maximum of five tags for a change request. Tags enable you to categorize
    -- a resource in different ways, such as by purpose, owner, or environment.
    -- For example, you might want to tag a change request to identify an
    -- environment or target Amazon Web Services Region. In this case, you
    -- could specify the following key-value pairs:
    --
    -- -   @Key=Environment,Value=Production@
    --
    -- -   @Key=Region,Value=us-east-2@
    tags :: Prelude.Maybe [Tag],
    -- | The name of the change template document to run during the runbook
    -- workflow.
    documentName :: Prelude.Text,
    -- | Information about the Automation runbooks that are run during the
    -- runbook workflow.
    --
    -- The Automation runbooks specified for the runbook workflow can\'t run
    -- until all required approvals for the change request have been received.
    runbooks :: Prelude.NonEmpty Runbook
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartChangeRequestExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'scheduledTime', 'startChangeRequestExecution_scheduledTime' - The date and time specified in the change request to run the Automation
-- runbooks.
--
-- The Automation runbooks specified for the runbook workflow can\'t run
-- until all required approvals for the change request have been received.
--
-- 'changeDetails', 'startChangeRequestExecution_changeDetails' - User-provided details about the change. If no details are provided,
-- content specified in the __Template information__ section of the
-- associated change template is added.
--
-- 'clientToken', 'startChangeRequestExecution_clientToken' - The user-provided idempotency token. The token must be unique, is case
-- insensitive, enforces the UUID format, and can\'t be reused.
--
-- 'autoApprove', 'startChangeRequestExecution_autoApprove' - Indicates whether the change request can be approved automatically
-- without the need for manual approvals.
--
-- If @AutoApprovable@ is enabled in a change template, then setting
-- @AutoApprove@ to @true@ in @StartChangeRequestExecution@ creates a
-- change request that bypasses approver review.
--
-- Change Calendar restrictions are not bypassed in this scenario. If the
-- state of an associated calendar is @CLOSED@, change freeze approvers
-- must still grant permission for this change request to run. If they
-- don\'t, the change won\'t be processed until the calendar state is again
-- @OPEN@.
--
-- 'scheduledEndTime', 'startChangeRequestExecution_scheduledEndTime' - The time that the requester expects the runbook workflow related to the
-- change request to complete. The time is an estimate only that the
-- requester provides for reviewers.
--
-- 'parameters', 'startChangeRequestExecution_parameters' - A key-value map of parameters that match the declared parameters in the
-- change template document.
--
-- 'documentVersion', 'startChangeRequestExecution_documentVersion' - The version of the change template document to run during the runbook
-- workflow.
--
-- 'changeRequestName', 'startChangeRequestExecution_changeRequestName' - The name of the change request associated with the runbook workflow to
-- be run.
--
-- 'tags', 'startChangeRequestExecution_tags' - Optional metadata that you assign to a resource. You can specify a
-- maximum of five tags for a change request. Tags enable you to categorize
-- a resource in different ways, such as by purpose, owner, or environment.
-- For example, you might want to tag a change request to identify an
-- environment or target Amazon Web Services Region. In this case, you
-- could specify the following key-value pairs:
--
-- -   @Key=Environment,Value=Production@
--
-- -   @Key=Region,Value=us-east-2@
--
-- 'documentName', 'startChangeRequestExecution_documentName' - The name of the change template document to run during the runbook
-- workflow.
--
-- 'runbooks', 'startChangeRequestExecution_runbooks' - Information about the Automation runbooks that are run during the
-- runbook workflow.
--
-- The Automation runbooks specified for the runbook workflow can\'t run
-- until all required approvals for the change request have been received.
newStartChangeRequestExecution ::
  -- | 'documentName'
  Prelude.Text ->
  -- | 'runbooks'
  Prelude.NonEmpty Runbook ->
  StartChangeRequestExecution
newStartChangeRequestExecution
  pDocumentName_
  pRunbooks_ =
    StartChangeRequestExecution'
      { scheduledTime =
          Prelude.Nothing,
        changeDetails = Prelude.Nothing,
        clientToken = Prelude.Nothing,
        autoApprove = Prelude.Nothing,
        scheduledEndTime = Prelude.Nothing,
        parameters = Prelude.Nothing,
        documentVersion = Prelude.Nothing,
        changeRequestName = Prelude.Nothing,
        tags = Prelude.Nothing,
        documentName = pDocumentName_,
        runbooks = Lens.coerced Lens.# pRunbooks_
      }

-- | The date and time specified in the change request to run the Automation
-- runbooks.
--
-- The Automation runbooks specified for the runbook workflow can\'t run
-- until all required approvals for the change request have been received.
startChangeRequestExecution_scheduledTime :: Lens.Lens' StartChangeRequestExecution (Prelude.Maybe Prelude.UTCTime)
startChangeRequestExecution_scheduledTime = Lens.lens (\StartChangeRequestExecution' {scheduledTime} -> scheduledTime) (\s@StartChangeRequestExecution' {} a -> s {scheduledTime = a} :: StartChangeRequestExecution) Prelude.. Lens.mapping Core._Time

-- | User-provided details about the change. If no details are provided,
-- content specified in the __Template information__ section of the
-- associated change template is added.
startChangeRequestExecution_changeDetails :: Lens.Lens' StartChangeRequestExecution (Prelude.Maybe Prelude.Text)
startChangeRequestExecution_changeDetails = Lens.lens (\StartChangeRequestExecution' {changeDetails} -> changeDetails) (\s@StartChangeRequestExecution' {} a -> s {changeDetails = a} :: StartChangeRequestExecution)

-- | The user-provided idempotency token. The token must be unique, is case
-- insensitive, enforces the UUID format, and can\'t be reused.
startChangeRequestExecution_clientToken :: Lens.Lens' StartChangeRequestExecution (Prelude.Maybe Prelude.Text)
startChangeRequestExecution_clientToken = Lens.lens (\StartChangeRequestExecution' {clientToken} -> clientToken) (\s@StartChangeRequestExecution' {} a -> s {clientToken = a} :: StartChangeRequestExecution)

-- | Indicates whether the change request can be approved automatically
-- without the need for manual approvals.
--
-- If @AutoApprovable@ is enabled in a change template, then setting
-- @AutoApprove@ to @true@ in @StartChangeRequestExecution@ creates a
-- change request that bypasses approver review.
--
-- Change Calendar restrictions are not bypassed in this scenario. If the
-- state of an associated calendar is @CLOSED@, change freeze approvers
-- must still grant permission for this change request to run. If they
-- don\'t, the change won\'t be processed until the calendar state is again
-- @OPEN@.
startChangeRequestExecution_autoApprove :: Lens.Lens' StartChangeRequestExecution (Prelude.Maybe Prelude.Bool)
startChangeRequestExecution_autoApprove = Lens.lens (\StartChangeRequestExecution' {autoApprove} -> autoApprove) (\s@StartChangeRequestExecution' {} a -> s {autoApprove = a} :: StartChangeRequestExecution)

-- | The time that the requester expects the runbook workflow related to the
-- change request to complete. The time is an estimate only that the
-- requester provides for reviewers.
startChangeRequestExecution_scheduledEndTime :: Lens.Lens' StartChangeRequestExecution (Prelude.Maybe Prelude.UTCTime)
startChangeRequestExecution_scheduledEndTime = Lens.lens (\StartChangeRequestExecution' {scheduledEndTime} -> scheduledEndTime) (\s@StartChangeRequestExecution' {} a -> s {scheduledEndTime = a} :: StartChangeRequestExecution) Prelude.. Lens.mapping Core._Time

-- | A key-value map of parameters that match the declared parameters in the
-- change template document.
startChangeRequestExecution_parameters :: Lens.Lens' StartChangeRequestExecution (Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]))
startChangeRequestExecution_parameters = Lens.lens (\StartChangeRequestExecution' {parameters} -> parameters) (\s@StartChangeRequestExecution' {} a -> s {parameters = a} :: StartChangeRequestExecution) Prelude.. Lens.mapping Lens.coerced

-- | The version of the change template document to run during the runbook
-- workflow.
startChangeRequestExecution_documentVersion :: Lens.Lens' StartChangeRequestExecution (Prelude.Maybe Prelude.Text)
startChangeRequestExecution_documentVersion = Lens.lens (\StartChangeRequestExecution' {documentVersion} -> documentVersion) (\s@StartChangeRequestExecution' {} a -> s {documentVersion = a} :: StartChangeRequestExecution)

-- | The name of the change request associated with the runbook workflow to
-- be run.
startChangeRequestExecution_changeRequestName :: Lens.Lens' StartChangeRequestExecution (Prelude.Maybe Prelude.Text)
startChangeRequestExecution_changeRequestName = Lens.lens (\StartChangeRequestExecution' {changeRequestName} -> changeRequestName) (\s@StartChangeRequestExecution' {} a -> s {changeRequestName = a} :: StartChangeRequestExecution)

-- | Optional metadata that you assign to a resource. You can specify a
-- maximum of five tags for a change request. Tags enable you to categorize
-- a resource in different ways, such as by purpose, owner, or environment.
-- For example, you might want to tag a change request to identify an
-- environment or target Amazon Web Services Region. In this case, you
-- could specify the following key-value pairs:
--
-- -   @Key=Environment,Value=Production@
--
-- -   @Key=Region,Value=us-east-2@
startChangeRequestExecution_tags :: Lens.Lens' StartChangeRequestExecution (Prelude.Maybe [Tag])
startChangeRequestExecution_tags = Lens.lens (\StartChangeRequestExecution' {tags} -> tags) (\s@StartChangeRequestExecution' {} a -> s {tags = a} :: StartChangeRequestExecution) Prelude.. Lens.mapping Lens.coerced

-- | The name of the change template document to run during the runbook
-- workflow.
startChangeRequestExecution_documentName :: Lens.Lens' StartChangeRequestExecution Prelude.Text
startChangeRequestExecution_documentName = Lens.lens (\StartChangeRequestExecution' {documentName} -> documentName) (\s@StartChangeRequestExecution' {} a -> s {documentName = a} :: StartChangeRequestExecution)

-- | Information about the Automation runbooks that are run during the
-- runbook workflow.
--
-- The Automation runbooks specified for the runbook workflow can\'t run
-- until all required approvals for the change request have been received.
startChangeRequestExecution_runbooks :: Lens.Lens' StartChangeRequestExecution (Prelude.NonEmpty Runbook)
startChangeRequestExecution_runbooks = Lens.lens (\StartChangeRequestExecution' {runbooks} -> runbooks) (\s@StartChangeRequestExecution' {} a -> s {runbooks = a} :: StartChangeRequestExecution) Prelude.. Lens.coerced

instance Core.AWSRequest StartChangeRequestExecution where
  type
    AWSResponse StartChangeRequestExecution =
      StartChangeRequestExecutionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StartChangeRequestExecutionResponse'
            Prelude.<$> (x Core..?> "AutomationExecutionId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartChangeRequestExecution

instance Prelude.NFData StartChangeRequestExecution

instance Core.ToHeaders StartChangeRequestExecution where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonSSM.StartChangeRequestExecution" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartChangeRequestExecution where
  toJSON StartChangeRequestExecution' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ScheduledTime" Core..=) Prelude.<$> scheduledTime,
            ("ChangeDetails" Core..=) Prelude.<$> changeDetails,
            ("ClientToken" Core..=) Prelude.<$> clientToken,
            ("AutoApprove" Core..=) Prelude.<$> autoApprove,
            ("ScheduledEndTime" Core..=)
              Prelude.<$> scheduledEndTime,
            ("Parameters" Core..=) Prelude.<$> parameters,
            ("DocumentVersion" Core..=)
              Prelude.<$> documentVersion,
            ("ChangeRequestName" Core..=)
              Prelude.<$> changeRequestName,
            ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("DocumentName" Core..= documentName),
            Prelude.Just ("Runbooks" Core..= runbooks)
          ]
      )

instance Core.ToPath StartChangeRequestExecution where
  toPath = Prelude.const "/"

instance Core.ToQuery StartChangeRequestExecution where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartChangeRequestExecutionResponse' smart constructor.
data StartChangeRequestExecutionResponse = StartChangeRequestExecutionResponse'
  { -- | The unique ID of a runbook workflow operation. (A runbook workflow is a
    -- type of Automation operation.)
    automationExecutionId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartChangeRequestExecutionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'automationExecutionId', 'startChangeRequestExecutionResponse_automationExecutionId' - The unique ID of a runbook workflow operation. (A runbook workflow is a
-- type of Automation operation.)
--
-- 'httpStatus', 'startChangeRequestExecutionResponse_httpStatus' - The response's http status code.
newStartChangeRequestExecutionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartChangeRequestExecutionResponse
newStartChangeRequestExecutionResponse pHttpStatus_ =
  StartChangeRequestExecutionResponse'
    { automationExecutionId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The unique ID of a runbook workflow operation. (A runbook workflow is a
-- type of Automation operation.)
startChangeRequestExecutionResponse_automationExecutionId :: Lens.Lens' StartChangeRequestExecutionResponse (Prelude.Maybe Prelude.Text)
startChangeRequestExecutionResponse_automationExecutionId = Lens.lens (\StartChangeRequestExecutionResponse' {automationExecutionId} -> automationExecutionId) (\s@StartChangeRequestExecutionResponse' {} a -> s {automationExecutionId = a} :: StartChangeRequestExecutionResponse)

-- | The response's http status code.
startChangeRequestExecutionResponse_httpStatus :: Lens.Lens' StartChangeRequestExecutionResponse Prelude.Int
startChangeRequestExecutionResponse_httpStatus = Lens.lens (\StartChangeRequestExecutionResponse' {httpStatus} -> httpStatus) (\s@StartChangeRequestExecutionResponse' {} a -> s {httpStatus = a} :: StartChangeRequestExecutionResponse)

instance
  Prelude.NFData
    StartChangeRequestExecutionResponse
