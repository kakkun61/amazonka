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
-- Module      : Network.AWS.SecurityHub.BatchUpdateFindings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used by Security Hub customers to update information about their
-- investigation into a finding. Requested by administrator accounts or
-- member accounts. Administrator accounts can update findings for their
-- account and their member accounts. Member accounts can update findings
-- for their account.
--
-- Updates from @BatchUpdateFindings@ do not affect the value of
-- @UpdatedAt@ for a finding.
--
-- Administrator and member accounts can use @BatchUpdateFindings@ to
-- update the following finding fields and objects.
--
-- -   @Confidence@
--
-- -   @Criticality@
--
-- -   @Note@
--
-- -   @RelatedFindings@
--
-- -   @Severity@
--
-- -   @Types@
--
-- -   @UserDefinedFields@
--
-- -   @VerificationState@
--
-- -   @Workflow@
--
-- You can configure IAM policies to restrict access to fields and field
-- values. For example, you might not want member accounts to be able to
-- suppress findings or change the finding severity. See
-- <https://docs.aws.amazon.com/securityhub/latest/userguide/finding-update-batchupdatefindings.html#batchupdatefindings-configure-access Configuring access to BatchUpdateFindings>
-- in the /Security Hub User Guide/.
module Network.AWS.SecurityHub.BatchUpdateFindings
  ( -- * Creating a Request
    BatchUpdateFindings (..),
    newBatchUpdateFindings,

    -- * Request Lenses
    batchUpdateFindings_criticality,
    batchUpdateFindings_note,
    batchUpdateFindings_severity,
    batchUpdateFindings_types,
    batchUpdateFindings_relatedFindings,
    batchUpdateFindings_confidence,
    batchUpdateFindings_workflow,
    batchUpdateFindings_verificationState,
    batchUpdateFindings_userDefinedFields,
    batchUpdateFindings_findingIdentifiers,

    -- * Destructuring the Response
    BatchUpdateFindingsResponse (..),
    newBatchUpdateFindingsResponse,

    -- * Response Lenses
    batchUpdateFindingsResponse_httpStatus,
    batchUpdateFindingsResponse_processedFindings,
    batchUpdateFindingsResponse_unprocessedFindings,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newBatchUpdateFindings' smart constructor.
data BatchUpdateFindings = BatchUpdateFindings'
  { -- | The updated value for the level of importance assigned to the resources
    -- associated with the findings.
    --
    -- A score of 0 means that the underlying resources have no criticality,
    -- and a score of 100 is reserved for the most critical resources.
    criticality :: Prelude.Maybe Prelude.Natural,
    note :: Prelude.Maybe NoteUpdate,
    -- | Used to update the finding severity.
    severity :: Prelude.Maybe SeverityUpdate,
    -- | One or more finding types in the format of
    -- namespace\/category\/classifier that classify a finding.
    --
    -- Valid namespace values are as follows.
    --
    -- -   Software and Configuration Checks
    --
    -- -   TTPs
    --
    -- -   Effects
    --
    -- -   Unusual Behaviors
    --
    -- -   Sensitive Data Identifications
    types :: Prelude.Maybe [Prelude.Text],
    -- | A list of findings that are related to the updated findings.
    relatedFindings :: Prelude.Maybe [RelatedFinding],
    -- | The updated value for the finding confidence. Confidence is defined as
    -- the likelihood that a finding accurately identifies the behavior or
    -- issue that it was intended to identify.
    --
    -- Confidence is scored on a 0-100 basis using a ratio scale, where 0 means
    -- zero percent confidence and 100 means 100 percent confidence.
    confidence :: Prelude.Maybe Prelude.Natural,
    -- | Used to update the workflow status of a finding.
    --
    -- The workflow status indicates the progress of the investigation into the
    -- finding.
    workflow :: Prelude.Maybe WorkflowUpdate,
    -- | Indicates the veracity of a finding.
    --
    -- The available values for @VerificationState@ are as follows.
    --
    -- -   @UNKNOWN@ – The default disposition of a security finding
    --
    -- -   @TRUE_POSITIVE@ – The security finding is confirmed
    --
    -- -   @FALSE_POSITIVE@ – The security finding was determined to be a false
    --     alarm
    --
    -- -   @BENIGN_POSITIVE@ – A special case of @TRUE_POSITIVE@ where the
    --     finding doesn\'t pose any threat, is expected, or both
    verificationState :: Prelude.Maybe VerificationState,
    -- | A list of name\/value string pairs associated with the finding. These
    -- are custom, user-defined fields added to a finding.
    userDefinedFields :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The list of findings to update. @BatchUpdateFindings@ can be used to
    -- update up to 100 findings at a time.
    --
    -- For each finding, the list provides the finding identifier and the ARN
    -- of the finding provider.
    findingIdentifiers :: [AwsSecurityFindingIdentifier]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchUpdateFindings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'criticality', 'batchUpdateFindings_criticality' - The updated value for the level of importance assigned to the resources
-- associated with the findings.
--
-- A score of 0 means that the underlying resources have no criticality,
-- and a score of 100 is reserved for the most critical resources.
--
-- 'note', 'batchUpdateFindings_note' - Undocumented member.
--
-- 'severity', 'batchUpdateFindings_severity' - Used to update the finding severity.
--
-- 'types', 'batchUpdateFindings_types' - One or more finding types in the format of
-- namespace\/category\/classifier that classify a finding.
--
-- Valid namespace values are as follows.
--
-- -   Software and Configuration Checks
--
-- -   TTPs
--
-- -   Effects
--
-- -   Unusual Behaviors
--
-- -   Sensitive Data Identifications
--
-- 'relatedFindings', 'batchUpdateFindings_relatedFindings' - A list of findings that are related to the updated findings.
--
-- 'confidence', 'batchUpdateFindings_confidence' - The updated value for the finding confidence. Confidence is defined as
-- the likelihood that a finding accurately identifies the behavior or
-- issue that it was intended to identify.
--
-- Confidence is scored on a 0-100 basis using a ratio scale, where 0 means
-- zero percent confidence and 100 means 100 percent confidence.
--
-- 'workflow', 'batchUpdateFindings_workflow' - Used to update the workflow status of a finding.
--
-- The workflow status indicates the progress of the investigation into the
-- finding.
--
-- 'verificationState', 'batchUpdateFindings_verificationState' - Indicates the veracity of a finding.
--
-- The available values for @VerificationState@ are as follows.
--
-- -   @UNKNOWN@ – The default disposition of a security finding
--
-- -   @TRUE_POSITIVE@ – The security finding is confirmed
--
-- -   @FALSE_POSITIVE@ – The security finding was determined to be a false
--     alarm
--
-- -   @BENIGN_POSITIVE@ – A special case of @TRUE_POSITIVE@ where the
--     finding doesn\'t pose any threat, is expected, or both
--
-- 'userDefinedFields', 'batchUpdateFindings_userDefinedFields' - A list of name\/value string pairs associated with the finding. These
-- are custom, user-defined fields added to a finding.
--
-- 'findingIdentifiers', 'batchUpdateFindings_findingIdentifiers' - The list of findings to update. @BatchUpdateFindings@ can be used to
-- update up to 100 findings at a time.
--
-- For each finding, the list provides the finding identifier and the ARN
-- of the finding provider.
newBatchUpdateFindings ::
  BatchUpdateFindings
newBatchUpdateFindings =
  BatchUpdateFindings'
    { criticality = Prelude.Nothing,
      note = Prelude.Nothing,
      severity = Prelude.Nothing,
      types = Prelude.Nothing,
      relatedFindings = Prelude.Nothing,
      confidence = Prelude.Nothing,
      workflow = Prelude.Nothing,
      verificationState = Prelude.Nothing,
      userDefinedFields = Prelude.Nothing,
      findingIdentifiers = Prelude.mempty
    }

-- | The updated value for the level of importance assigned to the resources
-- associated with the findings.
--
-- A score of 0 means that the underlying resources have no criticality,
-- and a score of 100 is reserved for the most critical resources.
batchUpdateFindings_criticality :: Lens.Lens' BatchUpdateFindings (Prelude.Maybe Prelude.Natural)
batchUpdateFindings_criticality = Lens.lens (\BatchUpdateFindings' {criticality} -> criticality) (\s@BatchUpdateFindings' {} a -> s {criticality = a} :: BatchUpdateFindings)

-- | Undocumented member.
batchUpdateFindings_note :: Lens.Lens' BatchUpdateFindings (Prelude.Maybe NoteUpdate)
batchUpdateFindings_note = Lens.lens (\BatchUpdateFindings' {note} -> note) (\s@BatchUpdateFindings' {} a -> s {note = a} :: BatchUpdateFindings)

-- | Used to update the finding severity.
batchUpdateFindings_severity :: Lens.Lens' BatchUpdateFindings (Prelude.Maybe SeverityUpdate)
batchUpdateFindings_severity = Lens.lens (\BatchUpdateFindings' {severity} -> severity) (\s@BatchUpdateFindings' {} a -> s {severity = a} :: BatchUpdateFindings)

-- | One or more finding types in the format of
-- namespace\/category\/classifier that classify a finding.
--
-- Valid namespace values are as follows.
--
-- -   Software and Configuration Checks
--
-- -   TTPs
--
-- -   Effects
--
-- -   Unusual Behaviors
--
-- -   Sensitive Data Identifications
batchUpdateFindings_types :: Lens.Lens' BatchUpdateFindings (Prelude.Maybe [Prelude.Text])
batchUpdateFindings_types = Lens.lens (\BatchUpdateFindings' {types} -> types) (\s@BatchUpdateFindings' {} a -> s {types = a} :: BatchUpdateFindings) Prelude.. Lens.mapping Lens.coerced

-- | A list of findings that are related to the updated findings.
batchUpdateFindings_relatedFindings :: Lens.Lens' BatchUpdateFindings (Prelude.Maybe [RelatedFinding])
batchUpdateFindings_relatedFindings = Lens.lens (\BatchUpdateFindings' {relatedFindings} -> relatedFindings) (\s@BatchUpdateFindings' {} a -> s {relatedFindings = a} :: BatchUpdateFindings) Prelude.. Lens.mapping Lens.coerced

-- | The updated value for the finding confidence. Confidence is defined as
-- the likelihood that a finding accurately identifies the behavior or
-- issue that it was intended to identify.
--
-- Confidence is scored on a 0-100 basis using a ratio scale, where 0 means
-- zero percent confidence and 100 means 100 percent confidence.
batchUpdateFindings_confidence :: Lens.Lens' BatchUpdateFindings (Prelude.Maybe Prelude.Natural)
batchUpdateFindings_confidence = Lens.lens (\BatchUpdateFindings' {confidence} -> confidence) (\s@BatchUpdateFindings' {} a -> s {confidence = a} :: BatchUpdateFindings)

-- | Used to update the workflow status of a finding.
--
-- The workflow status indicates the progress of the investigation into the
-- finding.
batchUpdateFindings_workflow :: Lens.Lens' BatchUpdateFindings (Prelude.Maybe WorkflowUpdate)
batchUpdateFindings_workflow = Lens.lens (\BatchUpdateFindings' {workflow} -> workflow) (\s@BatchUpdateFindings' {} a -> s {workflow = a} :: BatchUpdateFindings)

-- | Indicates the veracity of a finding.
--
-- The available values for @VerificationState@ are as follows.
--
-- -   @UNKNOWN@ – The default disposition of a security finding
--
-- -   @TRUE_POSITIVE@ – The security finding is confirmed
--
-- -   @FALSE_POSITIVE@ – The security finding was determined to be a false
--     alarm
--
-- -   @BENIGN_POSITIVE@ – A special case of @TRUE_POSITIVE@ where the
--     finding doesn\'t pose any threat, is expected, or both
batchUpdateFindings_verificationState :: Lens.Lens' BatchUpdateFindings (Prelude.Maybe VerificationState)
batchUpdateFindings_verificationState = Lens.lens (\BatchUpdateFindings' {verificationState} -> verificationState) (\s@BatchUpdateFindings' {} a -> s {verificationState = a} :: BatchUpdateFindings)

-- | A list of name\/value string pairs associated with the finding. These
-- are custom, user-defined fields added to a finding.
batchUpdateFindings_userDefinedFields :: Lens.Lens' BatchUpdateFindings (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
batchUpdateFindings_userDefinedFields = Lens.lens (\BatchUpdateFindings' {userDefinedFields} -> userDefinedFields) (\s@BatchUpdateFindings' {} a -> s {userDefinedFields = a} :: BatchUpdateFindings) Prelude.. Lens.mapping Lens.coerced

-- | The list of findings to update. @BatchUpdateFindings@ can be used to
-- update up to 100 findings at a time.
--
-- For each finding, the list provides the finding identifier and the ARN
-- of the finding provider.
batchUpdateFindings_findingIdentifiers :: Lens.Lens' BatchUpdateFindings [AwsSecurityFindingIdentifier]
batchUpdateFindings_findingIdentifiers = Lens.lens (\BatchUpdateFindings' {findingIdentifiers} -> findingIdentifiers) (\s@BatchUpdateFindings' {} a -> s {findingIdentifiers = a} :: BatchUpdateFindings) Prelude.. Lens.coerced

instance Core.AWSRequest BatchUpdateFindings where
  type
    AWSResponse BatchUpdateFindings =
      BatchUpdateFindingsResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchUpdateFindingsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "ProcessedFindings"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> ( x Core..?> "UnprocessedFindings"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable BatchUpdateFindings

instance Prelude.NFData BatchUpdateFindings

instance Core.ToHeaders BatchUpdateFindings where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchUpdateFindings where
  toJSON BatchUpdateFindings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Criticality" Core..=) Prelude.<$> criticality,
            ("Note" Core..=) Prelude.<$> note,
            ("Severity" Core..=) Prelude.<$> severity,
            ("Types" Core..=) Prelude.<$> types,
            ("RelatedFindings" Core..=)
              Prelude.<$> relatedFindings,
            ("Confidence" Core..=) Prelude.<$> confidence,
            ("Workflow" Core..=) Prelude.<$> workflow,
            ("VerificationState" Core..=)
              Prelude.<$> verificationState,
            ("UserDefinedFields" Core..=)
              Prelude.<$> userDefinedFields,
            Prelude.Just
              ("FindingIdentifiers" Core..= findingIdentifiers)
          ]
      )

instance Core.ToPath BatchUpdateFindings where
  toPath = Prelude.const "/findings/batchupdate"

instance Core.ToQuery BatchUpdateFindings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchUpdateFindingsResponse' smart constructor.
data BatchUpdateFindingsResponse = BatchUpdateFindingsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The list of findings that were updated successfully.
    processedFindings :: [AwsSecurityFindingIdentifier],
    -- | The list of findings that were not updated.
    unprocessedFindings :: [BatchUpdateFindingsUnprocessedFinding]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchUpdateFindingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'batchUpdateFindingsResponse_httpStatus' - The response's http status code.
--
-- 'processedFindings', 'batchUpdateFindingsResponse_processedFindings' - The list of findings that were updated successfully.
--
-- 'unprocessedFindings', 'batchUpdateFindingsResponse_unprocessedFindings' - The list of findings that were not updated.
newBatchUpdateFindingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchUpdateFindingsResponse
newBatchUpdateFindingsResponse pHttpStatus_ =
  BatchUpdateFindingsResponse'
    { httpStatus =
        pHttpStatus_,
      processedFindings = Prelude.mempty,
      unprocessedFindings = Prelude.mempty
    }

-- | The response's http status code.
batchUpdateFindingsResponse_httpStatus :: Lens.Lens' BatchUpdateFindingsResponse Prelude.Int
batchUpdateFindingsResponse_httpStatus = Lens.lens (\BatchUpdateFindingsResponse' {httpStatus} -> httpStatus) (\s@BatchUpdateFindingsResponse' {} a -> s {httpStatus = a} :: BatchUpdateFindingsResponse)

-- | The list of findings that were updated successfully.
batchUpdateFindingsResponse_processedFindings :: Lens.Lens' BatchUpdateFindingsResponse [AwsSecurityFindingIdentifier]
batchUpdateFindingsResponse_processedFindings = Lens.lens (\BatchUpdateFindingsResponse' {processedFindings} -> processedFindings) (\s@BatchUpdateFindingsResponse' {} a -> s {processedFindings = a} :: BatchUpdateFindingsResponse) Prelude.. Lens.coerced

-- | The list of findings that were not updated.
batchUpdateFindingsResponse_unprocessedFindings :: Lens.Lens' BatchUpdateFindingsResponse [BatchUpdateFindingsUnprocessedFinding]
batchUpdateFindingsResponse_unprocessedFindings = Lens.lens (\BatchUpdateFindingsResponse' {unprocessedFindings} -> unprocessedFindings) (\s@BatchUpdateFindingsResponse' {} a -> s {unprocessedFindings = a} :: BatchUpdateFindingsResponse) Prelude.. Lens.coerced

instance Prelude.NFData BatchUpdateFindingsResponse
