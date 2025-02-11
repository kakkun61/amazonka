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
-- Module      : Network.AWS.FraudDetector.DeleteBatchPredictionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a batch prediction job.
module Network.AWS.FraudDetector.DeleteBatchPredictionJob
  ( -- * Creating a Request
    DeleteBatchPredictionJob (..),
    newDeleteBatchPredictionJob,

    -- * Request Lenses
    deleteBatchPredictionJob_jobId,

    -- * Destructuring the Response
    DeleteBatchPredictionJobResponse (..),
    newDeleteBatchPredictionJobResponse,

    -- * Response Lenses
    deleteBatchPredictionJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteBatchPredictionJob' smart constructor.
data DeleteBatchPredictionJob = DeleteBatchPredictionJob'
  { -- | The ID of the batch prediction job to delete.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteBatchPredictionJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'deleteBatchPredictionJob_jobId' - The ID of the batch prediction job to delete.
newDeleteBatchPredictionJob ::
  -- | 'jobId'
  Prelude.Text ->
  DeleteBatchPredictionJob
newDeleteBatchPredictionJob pJobId_ =
  DeleteBatchPredictionJob' {jobId = pJobId_}

-- | The ID of the batch prediction job to delete.
deleteBatchPredictionJob_jobId :: Lens.Lens' DeleteBatchPredictionJob Prelude.Text
deleteBatchPredictionJob_jobId = Lens.lens (\DeleteBatchPredictionJob' {jobId} -> jobId) (\s@DeleteBatchPredictionJob' {} a -> s {jobId = a} :: DeleteBatchPredictionJob)

instance Core.AWSRequest DeleteBatchPredictionJob where
  type
    AWSResponse DeleteBatchPredictionJob =
      DeleteBatchPredictionJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteBatchPredictionJobResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteBatchPredictionJob

instance Prelude.NFData DeleteBatchPredictionJob

instance Core.ToHeaders DeleteBatchPredictionJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.DeleteBatchPredictionJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteBatchPredictionJob where
  toJSON DeleteBatchPredictionJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("jobId" Core..= jobId)]
      )

instance Core.ToPath DeleteBatchPredictionJob where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteBatchPredictionJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteBatchPredictionJobResponse' smart constructor.
data DeleteBatchPredictionJobResponse = DeleteBatchPredictionJobResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteBatchPredictionJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteBatchPredictionJobResponse_httpStatus' - The response's http status code.
newDeleteBatchPredictionJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteBatchPredictionJobResponse
newDeleteBatchPredictionJobResponse pHttpStatus_ =
  DeleteBatchPredictionJobResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteBatchPredictionJobResponse_httpStatus :: Lens.Lens' DeleteBatchPredictionJobResponse Prelude.Int
deleteBatchPredictionJobResponse_httpStatus = Lens.lens (\DeleteBatchPredictionJobResponse' {httpStatus} -> httpStatus) (\s@DeleteBatchPredictionJobResponse' {} a -> s {httpStatus = a} :: DeleteBatchPredictionJobResponse)

instance
  Prelude.NFData
    DeleteBatchPredictionJobResponse
