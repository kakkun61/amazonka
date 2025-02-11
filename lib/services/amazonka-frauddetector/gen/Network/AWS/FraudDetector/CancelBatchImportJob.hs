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
-- Module      : Network.AWS.FraudDetector.CancelBatchImportJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels an in-progress batch import job.
module Network.AWS.FraudDetector.CancelBatchImportJob
  ( -- * Creating a Request
    CancelBatchImportJob (..),
    newCancelBatchImportJob,

    -- * Request Lenses
    cancelBatchImportJob_jobId,

    -- * Destructuring the Response
    CancelBatchImportJobResponse (..),
    newCancelBatchImportJobResponse,

    -- * Response Lenses
    cancelBatchImportJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCancelBatchImportJob' smart constructor.
data CancelBatchImportJob = CancelBatchImportJob'
  { -- | The ID of an in-progress batch import job to cancel.
    --
    -- Amazon Fraud Detector will throw an error if the batch import job is in
    -- @FAILED@, @CANCELED@, or @COMPLETED@ state.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelBatchImportJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'cancelBatchImportJob_jobId' - The ID of an in-progress batch import job to cancel.
--
-- Amazon Fraud Detector will throw an error if the batch import job is in
-- @FAILED@, @CANCELED@, or @COMPLETED@ state.
newCancelBatchImportJob ::
  -- | 'jobId'
  Prelude.Text ->
  CancelBatchImportJob
newCancelBatchImportJob pJobId_ =
  CancelBatchImportJob' {jobId = pJobId_}

-- | The ID of an in-progress batch import job to cancel.
--
-- Amazon Fraud Detector will throw an error if the batch import job is in
-- @FAILED@, @CANCELED@, or @COMPLETED@ state.
cancelBatchImportJob_jobId :: Lens.Lens' CancelBatchImportJob Prelude.Text
cancelBatchImportJob_jobId = Lens.lens (\CancelBatchImportJob' {jobId} -> jobId) (\s@CancelBatchImportJob' {} a -> s {jobId = a} :: CancelBatchImportJob)

instance Core.AWSRequest CancelBatchImportJob where
  type
    AWSResponse CancelBatchImportJob =
      CancelBatchImportJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CancelBatchImportJobResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CancelBatchImportJob

instance Prelude.NFData CancelBatchImportJob

instance Core.ToHeaders CancelBatchImportJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.CancelBatchImportJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CancelBatchImportJob where
  toJSON CancelBatchImportJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("jobId" Core..= jobId)]
      )

instance Core.ToPath CancelBatchImportJob where
  toPath = Prelude.const "/"

instance Core.ToQuery CancelBatchImportJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCancelBatchImportJobResponse' smart constructor.
data CancelBatchImportJobResponse = CancelBatchImportJobResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelBatchImportJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'cancelBatchImportJobResponse_httpStatus' - The response's http status code.
newCancelBatchImportJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CancelBatchImportJobResponse
newCancelBatchImportJobResponse pHttpStatus_ =
  CancelBatchImportJobResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
cancelBatchImportJobResponse_httpStatus :: Lens.Lens' CancelBatchImportJobResponse Prelude.Int
cancelBatchImportJobResponse_httpStatus = Lens.lens (\CancelBatchImportJobResponse' {httpStatus} -> httpStatus) (\s@CancelBatchImportJobResponse' {} a -> s {httpStatus = a} :: CancelBatchImportJobResponse)

instance Prelude.NFData CancelBatchImportJobResponse
