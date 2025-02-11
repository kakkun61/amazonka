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
-- Module      : Network.AWS.ComprehendMedical.StopPHIDetectionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a protected health information (PHI) detection job in progress.
module Network.AWS.ComprehendMedical.StopPHIDetectionJob
  ( -- * Creating a Request
    StopPHIDetectionJob (..),
    newStopPHIDetectionJob,

    -- * Request Lenses
    stopPHIDetectionJob_jobId,

    -- * Destructuring the Response
    StopPHIDetectionJobResponse (..),
    newStopPHIDetectionJobResponse,

    -- * Response Lenses
    stopPHIDetectionJobResponse_jobId,
    stopPHIDetectionJobResponse_httpStatus,
  )
where

import Network.AWS.ComprehendMedical.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStopPHIDetectionJob' smart constructor.
data StopPHIDetectionJob = StopPHIDetectionJob'
  { -- | The identifier of the PHI detection job to stop.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopPHIDetectionJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'stopPHIDetectionJob_jobId' - The identifier of the PHI detection job to stop.
newStopPHIDetectionJob ::
  -- | 'jobId'
  Prelude.Text ->
  StopPHIDetectionJob
newStopPHIDetectionJob pJobId_ =
  StopPHIDetectionJob' {jobId = pJobId_}

-- | The identifier of the PHI detection job to stop.
stopPHIDetectionJob_jobId :: Lens.Lens' StopPHIDetectionJob Prelude.Text
stopPHIDetectionJob_jobId = Lens.lens (\StopPHIDetectionJob' {jobId} -> jobId) (\s@StopPHIDetectionJob' {} a -> s {jobId = a} :: StopPHIDetectionJob)

instance Core.AWSRequest StopPHIDetectionJob where
  type
    AWSResponse StopPHIDetectionJob =
      StopPHIDetectionJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StopPHIDetectionJobResponse'
            Prelude.<$> (x Core..?> "JobId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StopPHIDetectionJob

instance Prelude.NFData StopPHIDetectionJob

instance Core.ToHeaders StopPHIDetectionJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ComprehendMedical_20181030.StopPHIDetectionJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StopPHIDetectionJob where
  toJSON StopPHIDetectionJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("JobId" Core..= jobId)]
      )

instance Core.ToPath StopPHIDetectionJob where
  toPath = Prelude.const "/"

instance Core.ToQuery StopPHIDetectionJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStopPHIDetectionJobResponse' smart constructor.
data StopPHIDetectionJobResponse = StopPHIDetectionJobResponse'
  { -- | The identifier of the PHI detection job that was stopped.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopPHIDetectionJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'stopPHIDetectionJobResponse_jobId' - The identifier of the PHI detection job that was stopped.
--
-- 'httpStatus', 'stopPHIDetectionJobResponse_httpStatus' - The response's http status code.
newStopPHIDetectionJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StopPHIDetectionJobResponse
newStopPHIDetectionJobResponse pHttpStatus_ =
  StopPHIDetectionJobResponse'
    { jobId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The identifier of the PHI detection job that was stopped.
stopPHIDetectionJobResponse_jobId :: Lens.Lens' StopPHIDetectionJobResponse (Prelude.Maybe Prelude.Text)
stopPHIDetectionJobResponse_jobId = Lens.lens (\StopPHIDetectionJobResponse' {jobId} -> jobId) (\s@StopPHIDetectionJobResponse' {} a -> s {jobId = a} :: StopPHIDetectionJobResponse)

-- | The response's http status code.
stopPHIDetectionJobResponse_httpStatus :: Lens.Lens' StopPHIDetectionJobResponse Prelude.Int
stopPHIDetectionJobResponse_httpStatus = Lens.lens (\StopPHIDetectionJobResponse' {httpStatus} -> httpStatus) (\s@StopPHIDetectionJobResponse' {} a -> s {httpStatus = a} :: StopPHIDetectionJobResponse)

instance Prelude.NFData StopPHIDetectionJobResponse
