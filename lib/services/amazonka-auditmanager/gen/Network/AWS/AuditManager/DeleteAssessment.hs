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
-- Module      : Network.AWS.AuditManager.DeleteAssessment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an assessment in Audit Manager.
module Network.AWS.AuditManager.DeleteAssessment
  ( -- * Creating a Request
    DeleteAssessment (..),
    newDeleteAssessment,

    -- * Request Lenses
    deleteAssessment_assessmentId,

    -- * Destructuring the Response
    DeleteAssessmentResponse (..),
    newDeleteAssessmentResponse,

    -- * Response Lenses
    deleteAssessmentResponse_httpStatus,
  )
where

import Network.AWS.AuditManager.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteAssessment' smart constructor.
data DeleteAssessment = DeleteAssessment'
  { -- | The identifier for the specified assessment.
    assessmentId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAssessment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'assessmentId', 'deleteAssessment_assessmentId' - The identifier for the specified assessment.
newDeleteAssessment ::
  -- | 'assessmentId'
  Prelude.Text ->
  DeleteAssessment
newDeleteAssessment pAssessmentId_ =
  DeleteAssessment' {assessmentId = pAssessmentId_}

-- | The identifier for the specified assessment.
deleteAssessment_assessmentId :: Lens.Lens' DeleteAssessment Prelude.Text
deleteAssessment_assessmentId = Lens.lens (\DeleteAssessment' {assessmentId} -> assessmentId) (\s@DeleteAssessment' {} a -> s {assessmentId = a} :: DeleteAssessment)

instance Core.AWSRequest DeleteAssessment where
  type
    AWSResponse DeleteAssessment =
      DeleteAssessmentResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteAssessmentResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteAssessment

instance Prelude.NFData DeleteAssessment

instance Core.ToHeaders DeleteAssessment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteAssessment where
  toPath DeleteAssessment' {..} =
    Prelude.mconcat
      ["/assessments/", Core.toBS assessmentId]

instance Core.ToQuery DeleteAssessment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteAssessmentResponse' smart constructor.
data DeleteAssessmentResponse = DeleteAssessmentResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAssessmentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteAssessmentResponse_httpStatus' - The response's http status code.
newDeleteAssessmentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteAssessmentResponse
newDeleteAssessmentResponse pHttpStatus_ =
  DeleteAssessmentResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteAssessmentResponse_httpStatus :: Lens.Lens' DeleteAssessmentResponse Prelude.Int
deleteAssessmentResponse_httpStatus = Lens.lens (\DeleteAssessmentResponse' {httpStatus} -> httpStatus) (\s@DeleteAssessmentResponse' {} a -> s {httpStatus = a} :: DeleteAssessmentResponse)

instance Prelude.NFData DeleteAssessmentResponse
