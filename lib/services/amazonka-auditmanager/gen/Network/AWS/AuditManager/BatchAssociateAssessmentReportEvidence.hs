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
-- Module      : Network.AWS.AuditManager.BatchAssociateAssessmentReportEvidence
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a list of evidence to an assessment report in an Audit
-- Manager assessment.
module Network.AWS.AuditManager.BatchAssociateAssessmentReportEvidence
  ( -- * Creating a Request
    BatchAssociateAssessmentReportEvidence (..),
    newBatchAssociateAssessmentReportEvidence,

    -- * Request Lenses
    batchAssociateAssessmentReportEvidence_assessmentId,
    batchAssociateAssessmentReportEvidence_evidenceFolderId,
    batchAssociateAssessmentReportEvidence_evidenceIds,

    -- * Destructuring the Response
    BatchAssociateAssessmentReportEvidenceResponse (..),
    newBatchAssociateAssessmentReportEvidenceResponse,

    -- * Response Lenses
    batchAssociateAssessmentReportEvidenceResponse_evidenceIds,
    batchAssociateAssessmentReportEvidenceResponse_errors,
    batchAssociateAssessmentReportEvidenceResponse_httpStatus,
  )
where

import Network.AWS.AuditManager.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchAssociateAssessmentReportEvidence' smart constructor.
data BatchAssociateAssessmentReportEvidence = BatchAssociateAssessmentReportEvidence'
  { -- | The unique identifier for the specified assessment.
    assessmentId :: Prelude.Text,
    -- | The identifier for the folder in which the evidence is stored.
    evidenceFolderId :: Prelude.Text,
    -- | The list of evidence identifiers.
    evidenceIds :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchAssociateAssessmentReportEvidence' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'assessmentId', 'batchAssociateAssessmentReportEvidence_assessmentId' - The unique identifier for the specified assessment.
--
-- 'evidenceFolderId', 'batchAssociateAssessmentReportEvidence_evidenceFolderId' - The identifier for the folder in which the evidence is stored.
--
-- 'evidenceIds', 'batchAssociateAssessmentReportEvidence_evidenceIds' - The list of evidence identifiers.
newBatchAssociateAssessmentReportEvidence ::
  -- | 'assessmentId'
  Prelude.Text ->
  -- | 'evidenceFolderId'
  Prelude.Text ->
  BatchAssociateAssessmentReportEvidence
newBatchAssociateAssessmentReportEvidence
  pAssessmentId_
  pEvidenceFolderId_ =
    BatchAssociateAssessmentReportEvidence'
      { assessmentId =
          pAssessmentId_,
        evidenceFolderId =
          pEvidenceFolderId_,
        evidenceIds = Prelude.mempty
      }

-- | The unique identifier for the specified assessment.
batchAssociateAssessmentReportEvidence_assessmentId :: Lens.Lens' BatchAssociateAssessmentReportEvidence Prelude.Text
batchAssociateAssessmentReportEvidence_assessmentId = Lens.lens (\BatchAssociateAssessmentReportEvidence' {assessmentId} -> assessmentId) (\s@BatchAssociateAssessmentReportEvidence' {} a -> s {assessmentId = a} :: BatchAssociateAssessmentReportEvidence)

-- | The identifier for the folder in which the evidence is stored.
batchAssociateAssessmentReportEvidence_evidenceFolderId :: Lens.Lens' BatchAssociateAssessmentReportEvidence Prelude.Text
batchAssociateAssessmentReportEvidence_evidenceFolderId = Lens.lens (\BatchAssociateAssessmentReportEvidence' {evidenceFolderId} -> evidenceFolderId) (\s@BatchAssociateAssessmentReportEvidence' {} a -> s {evidenceFolderId = a} :: BatchAssociateAssessmentReportEvidence)

-- | The list of evidence identifiers.
batchAssociateAssessmentReportEvidence_evidenceIds :: Lens.Lens' BatchAssociateAssessmentReportEvidence [Prelude.Text]
batchAssociateAssessmentReportEvidence_evidenceIds = Lens.lens (\BatchAssociateAssessmentReportEvidence' {evidenceIds} -> evidenceIds) (\s@BatchAssociateAssessmentReportEvidence' {} a -> s {evidenceIds = a} :: BatchAssociateAssessmentReportEvidence) Prelude.. Lens.coerced

instance
  Core.AWSRequest
    BatchAssociateAssessmentReportEvidence
  where
  type
    AWSResponse
      BatchAssociateAssessmentReportEvidence =
      BatchAssociateAssessmentReportEvidenceResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchAssociateAssessmentReportEvidenceResponse'
            Prelude.<$> (x Core..?> "evidenceIds" Core..!@ Prelude.mempty)
              Prelude.<*> (x Core..?> "errors" Core..!@ Prelude.mempty)
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    BatchAssociateAssessmentReportEvidence

instance
  Prelude.NFData
    BatchAssociateAssessmentReportEvidence

instance
  Core.ToHeaders
    BatchAssociateAssessmentReportEvidence
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    BatchAssociateAssessmentReportEvidence
  where
  toJSON BatchAssociateAssessmentReportEvidence' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("evidenceFolderId" Core..= evidenceFolderId),
            Prelude.Just ("evidenceIds" Core..= evidenceIds)
          ]
      )

instance
  Core.ToPath
    BatchAssociateAssessmentReportEvidence
  where
  toPath BatchAssociateAssessmentReportEvidence' {..} =
    Prelude.mconcat
      [ "/assessments/",
        Core.toBS assessmentId,
        "/batchAssociateToAssessmentReport"
      ]

instance
  Core.ToQuery
    BatchAssociateAssessmentReportEvidence
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchAssociateAssessmentReportEvidenceResponse' smart constructor.
data BatchAssociateAssessmentReportEvidenceResponse = BatchAssociateAssessmentReportEvidenceResponse'
  { -- | The identifier for the evidence.
    evidenceIds :: Prelude.Maybe [Prelude.Text],
    -- | A list of errors returned by the
    -- @BatchAssociateAssessmentReportEvidence@ API.
    errors :: Prelude.Maybe [AssessmentReportEvidenceError],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchAssociateAssessmentReportEvidenceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'evidenceIds', 'batchAssociateAssessmentReportEvidenceResponse_evidenceIds' - The identifier for the evidence.
--
-- 'errors', 'batchAssociateAssessmentReportEvidenceResponse_errors' - A list of errors returned by the
-- @BatchAssociateAssessmentReportEvidence@ API.
--
-- 'httpStatus', 'batchAssociateAssessmentReportEvidenceResponse_httpStatus' - The response's http status code.
newBatchAssociateAssessmentReportEvidenceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchAssociateAssessmentReportEvidenceResponse
newBatchAssociateAssessmentReportEvidenceResponse
  pHttpStatus_ =
    BatchAssociateAssessmentReportEvidenceResponse'
      { evidenceIds =
          Prelude.Nothing,
        errors = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The identifier for the evidence.
batchAssociateAssessmentReportEvidenceResponse_evidenceIds :: Lens.Lens' BatchAssociateAssessmentReportEvidenceResponse (Prelude.Maybe [Prelude.Text])
batchAssociateAssessmentReportEvidenceResponse_evidenceIds = Lens.lens (\BatchAssociateAssessmentReportEvidenceResponse' {evidenceIds} -> evidenceIds) (\s@BatchAssociateAssessmentReportEvidenceResponse' {} a -> s {evidenceIds = a} :: BatchAssociateAssessmentReportEvidenceResponse) Prelude.. Lens.mapping Lens.coerced

-- | A list of errors returned by the
-- @BatchAssociateAssessmentReportEvidence@ API.
batchAssociateAssessmentReportEvidenceResponse_errors :: Lens.Lens' BatchAssociateAssessmentReportEvidenceResponse (Prelude.Maybe [AssessmentReportEvidenceError])
batchAssociateAssessmentReportEvidenceResponse_errors = Lens.lens (\BatchAssociateAssessmentReportEvidenceResponse' {errors} -> errors) (\s@BatchAssociateAssessmentReportEvidenceResponse' {} a -> s {errors = a} :: BatchAssociateAssessmentReportEvidenceResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchAssociateAssessmentReportEvidenceResponse_httpStatus :: Lens.Lens' BatchAssociateAssessmentReportEvidenceResponse Prelude.Int
batchAssociateAssessmentReportEvidenceResponse_httpStatus = Lens.lens (\BatchAssociateAssessmentReportEvidenceResponse' {httpStatus} -> httpStatus) (\s@BatchAssociateAssessmentReportEvidenceResponse' {} a -> s {httpStatus = a} :: BatchAssociateAssessmentReportEvidenceResponse)

instance
  Prelude.NFData
    BatchAssociateAssessmentReportEvidenceResponse
