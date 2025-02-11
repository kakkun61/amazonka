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
-- Module      : Network.AWS.ComprehendMedical.StopICD10CMInferenceJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops an InferICD10CM inference job in progress.
module Network.AWS.ComprehendMedical.StopICD10CMInferenceJob
  ( -- * Creating a Request
    StopICD10CMInferenceJob (..),
    newStopICD10CMInferenceJob,

    -- * Request Lenses
    stopICD10CMInferenceJob_jobId,

    -- * Destructuring the Response
    StopICD10CMInferenceJobResponse (..),
    newStopICD10CMInferenceJobResponse,

    -- * Response Lenses
    stopICD10CMInferenceJobResponse_jobId,
    stopICD10CMInferenceJobResponse_httpStatus,
  )
where

import Network.AWS.ComprehendMedical.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStopICD10CMInferenceJob' smart constructor.
data StopICD10CMInferenceJob = StopICD10CMInferenceJob'
  { -- | The identifier of the job.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopICD10CMInferenceJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'stopICD10CMInferenceJob_jobId' - The identifier of the job.
newStopICD10CMInferenceJob ::
  -- | 'jobId'
  Prelude.Text ->
  StopICD10CMInferenceJob
newStopICD10CMInferenceJob pJobId_ =
  StopICD10CMInferenceJob' {jobId = pJobId_}

-- | The identifier of the job.
stopICD10CMInferenceJob_jobId :: Lens.Lens' StopICD10CMInferenceJob Prelude.Text
stopICD10CMInferenceJob_jobId = Lens.lens (\StopICD10CMInferenceJob' {jobId} -> jobId) (\s@StopICD10CMInferenceJob' {} a -> s {jobId = a} :: StopICD10CMInferenceJob)

instance Core.AWSRequest StopICD10CMInferenceJob where
  type
    AWSResponse StopICD10CMInferenceJob =
      StopICD10CMInferenceJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StopICD10CMInferenceJobResponse'
            Prelude.<$> (x Core..?> "JobId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StopICD10CMInferenceJob

instance Prelude.NFData StopICD10CMInferenceJob

instance Core.ToHeaders StopICD10CMInferenceJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ComprehendMedical_20181030.StopICD10CMInferenceJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StopICD10CMInferenceJob where
  toJSON StopICD10CMInferenceJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("JobId" Core..= jobId)]
      )

instance Core.ToPath StopICD10CMInferenceJob where
  toPath = Prelude.const "/"

instance Core.ToQuery StopICD10CMInferenceJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStopICD10CMInferenceJobResponse' smart constructor.
data StopICD10CMInferenceJobResponse = StopICD10CMInferenceJobResponse'
  { -- | The identifier generated for the job. To get the status of job, use this
    -- identifier with the @DescribeICD10CMInferenceJob@ operation.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopICD10CMInferenceJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'stopICD10CMInferenceJobResponse_jobId' - The identifier generated for the job. To get the status of job, use this
-- identifier with the @DescribeICD10CMInferenceJob@ operation.
--
-- 'httpStatus', 'stopICD10CMInferenceJobResponse_httpStatus' - The response's http status code.
newStopICD10CMInferenceJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StopICD10CMInferenceJobResponse
newStopICD10CMInferenceJobResponse pHttpStatus_ =
  StopICD10CMInferenceJobResponse'
    { jobId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The identifier generated for the job. To get the status of job, use this
-- identifier with the @DescribeICD10CMInferenceJob@ operation.
stopICD10CMInferenceJobResponse_jobId :: Lens.Lens' StopICD10CMInferenceJobResponse (Prelude.Maybe Prelude.Text)
stopICD10CMInferenceJobResponse_jobId = Lens.lens (\StopICD10CMInferenceJobResponse' {jobId} -> jobId) (\s@StopICD10CMInferenceJobResponse' {} a -> s {jobId = a} :: StopICD10CMInferenceJobResponse)

-- | The response's http status code.
stopICD10CMInferenceJobResponse_httpStatus :: Lens.Lens' StopICD10CMInferenceJobResponse Prelude.Int
stopICD10CMInferenceJobResponse_httpStatus = Lens.lens (\StopICD10CMInferenceJobResponse' {httpStatus} -> httpStatus) (\s@StopICD10CMInferenceJobResponse' {} a -> s {httpStatus = a} :: StopICD10CMInferenceJobResponse)

instance
  Prelude.NFData
    StopICD10CMInferenceJobResponse
