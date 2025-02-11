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
-- Module      : Network.AWS.AuditManager.DisassociateAssessmentReportEvidenceFolder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates an evidence folder from the specified assessment report in
-- Audit Manager.
module Network.AWS.AuditManager.DisassociateAssessmentReportEvidenceFolder
  ( -- * Creating a Request
    DisassociateAssessmentReportEvidenceFolder (..),
    newDisassociateAssessmentReportEvidenceFolder,

    -- * Request Lenses
    disassociateAssessmentReportEvidenceFolder_assessmentId,
    disassociateAssessmentReportEvidenceFolder_evidenceFolderId,

    -- * Destructuring the Response
    DisassociateAssessmentReportEvidenceFolderResponse (..),
    newDisassociateAssessmentReportEvidenceFolderResponse,

    -- * Response Lenses
    disassociateAssessmentReportEvidenceFolderResponse_httpStatus,
  )
where

import Network.AWS.AuditManager.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDisassociateAssessmentReportEvidenceFolder' smart constructor.
data DisassociateAssessmentReportEvidenceFolder = DisassociateAssessmentReportEvidenceFolder'
  { -- | The identifier for the specified assessment.
    assessmentId :: Prelude.Text,
    -- | The identifier for the folder in which evidence is stored.
    evidenceFolderId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateAssessmentReportEvidenceFolder' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'assessmentId', 'disassociateAssessmentReportEvidenceFolder_assessmentId' - The identifier for the specified assessment.
--
-- 'evidenceFolderId', 'disassociateAssessmentReportEvidenceFolder_evidenceFolderId' - The identifier for the folder in which evidence is stored.
newDisassociateAssessmentReportEvidenceFolder ::
  -- | 'assessmentId'
  Prelude.Text ->
  -- | 'evidenceFolderId'
  Prelude.Text ->
  DisassociateAssessmentReportEvidenceFolder
newDisassociateAssessmentReportEvidenceFolder
  pAssessmentId_
  pEvidenceFolderId_ =
    DisassociateAssessmentReportEvidenceFolder'
      { assessmentId =
          pAssessmentId_,
        evidenceFolderId =
          pEvidenceFolderId_
      }

-- | The identifier for the specified assessment.
disassociateAssessmentReportEvidenceFolder_assessmentId :: Lens.Lens' DisassociateAssessmentReportEvidenceFolder Prelude.Text
disassociateAssessmentReportEvidenceFolder_assessmentId = Lens.lens (\DisassociateAssessmentReportEvidenceFolder' {assessmentId} -> assessmentId) (\s@DisassociateAssessmentReportEvidenceFolder' {} a -> s {assessmentId = a} :: DisassociateAssessmentReportEvidenceFolder)

-- | The identifier for the folder in which evidence is stored.
disassociateAssessmentReportEvidenceFolder_evidenceFolderId :: Lens.Lens' DisassociateAssessmentReportEvidenceFolder Prelude.Text
disassociateAssessmentReportEvidenceFolder_evidenceFolderId = Lens.lens (\DisassociateAssessmentReportEvidenceFolder' {evidenceFolderId} -> evidenceFolderId) (\s@DisassociateAssessmentReportEvidenceFolder' {} a -> s {evidenceFolderId = a} :: DisassociateAssessmentReportEvidenceFolder)

instance
  Core.AWSRequest
    DisassociateAssessmentReportEvidenceFolder
  where
  type
    AWSResponse
      DisassociateAssessmentReportEvidenceFolder =
      DisassociateAssessmentReportEvidenceFolderResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DisassociateAssessmentReportEvidenceFolderResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DisassociateAssessmentReportEvidenceFolder

instance
  Prelude.NFData
    DisassociateAssessmentReportEvidenceFolder

instance
  Core.ToHeaders
    DisassociateAssessmentReportEvidenceFolder
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
    DisassociateAssessmentReportEvidenceFolder
  where
  toJSON
    DisassociateAssessmentReportEvidenceFolder' {..} =
      Core.object
        ( Prelude.catMaybes
            [ Prelude.Just
                ("evidenceFolderId" Core..= evidenceFolderId)
            ]
        )

instance
  Core.ToPath
    DisassociateAssessmentReportEvidenceFolder
  where
  toPath
    DisassociateAssessmentReportEvidenceFolder' {..} =
      Prelude.mconcat
        [ "/assessments/",
          Core.toBS assessmentId,
          "/disassociateFromAssessmentReport"
        ]

instance
  Core.ToQuery
    DisassociateAssessmentReportEvidenceFolder
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDisassociateAssessmentReportEvidenceFolderResponse' smart constructor.
data DisassociateAssessmentReportEvidenceFolderResponse = DisassociateAssessmentReportEvidenceFolderResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateAssessmentReportEvidenceFolderResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'disassociateAssessmentReportEvidenceFolderResponse_httpStatus' - The response's http status code.
newDisassociateAssessmentReportEvidenceFolderResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisassociateAssessmentReportEvidenceFolderResponse
newDisassociateAssessmentReportEvidenceFolderResponse
  pHttpStatus_ =
    DisassociateAssessmentReportEvidenceFolderResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
disassociateAssessmentReportEvidenceFolderResponse_httpStatus :: Lens.Lens' DisassociateAssessmentReportEvidenceFolderResponse Prelude.Int
disassociateAssessmentReportEvidenceFolderResponse_httpStatus = Lens.lens (\DisassociateAssessmentReportEvidenceFolderResponse' {httpStatus} -> httpStatus) (\s@DisassociateAssessmentReportEvidenceFolderResponse' {} a -> s {httpStatus = a} :: DisassociateAssessmentReportEvidenceFolderResponse)

instance
  Prelude.NFData
    DisassociateAssessmentReportEvidenceFolderResponse
