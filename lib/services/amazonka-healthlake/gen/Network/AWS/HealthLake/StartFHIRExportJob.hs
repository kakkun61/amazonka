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
-- Module      : Network.AWS.HealthLake.StartFHIRExportJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Begins a FHIR export job.
module Network.AWS.HealthLake.StartFHIRExportJob
  ( -- * Creating a Request
    StartFHIRExportJob (..),
    newStartFHIRExportJob,

    -- * Request Lenses
    startFHIRExportJob_jobName,
    startFHIRExportJob_outputDataConfig,
    startFHIRExportJob_datastoreId,
    startFHIRExportJob_dataAccessRoleArn,
    startFHIRExportJob_clientToken,

    -- * Destructuring the Response
    StartFHIRExportJobResponse (..),
    newStartFHIRExportJobResponse,

    -- * Response Lenses
    startFHIRExportJobResponse_datastoreId,
    startFHIRExportJobResponse_httpStatus,
    startFHIRExportJobResponse_jobId,
    startFHIRExportJobResponse_jobStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.HealthLake.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStartFHIRExportJob' smart constructor.
data StartFHIRExportJob = StartFHIRExportJob'
  { -- | The user generated name for an export job.
    jobName :: Prelude.Maybe Prelude.Text,
    -- | The output data configuration that was supplied when the export job was
    -- created.
    outputDataConfig :: OutputDataConfig,
    -- | The AWS generated ID for the Data Store from which files are being
    -- exported for an export job.
    datastoreId :: Prelude.Text,
    -- | The Amazon Resource Name used during the initiation of the job.
    dataAccessRoleArn :: Prelude.Text,
    -- | An optional user provided token used for ensuring idempotency.
    clientToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartFHIRExportJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobName', 'startFHIRExportJob_jobName' - The user generated name for an export job.
--
-- 'outputDataConfig', 'startFHIRExportJob_outputDataConfig' - The output data configuration that was supplied when the export job was
-- created.
--
-- 'datastoreId', 'startFHIRExportJob_datastoreId' - The AWS generated ID for the Data Store from which files are being
-- exported for an export job.
--
-- 'dataAccessRoleArn', 'startFHIRExportJob_dataAccessRoleArn' - The Amazon Resource Name used during the initiation of the job.
--
-- 'clientToken', 'startFHIRExportJob_clientToken' - An optional user provided token used for ensuring idempotency.
newStartFHIRExportJob ::
  -- | 'outputDataConfig'
  OutputDataConfig ->
  -- | 'datastoreId'
  Prelude.Text ->
  -- | 'dataAccessRoleArn'
  Prelude.Text ->
  -- | 'clientToken'
  Prelude.Text ->
  StartFHIRExportJob
newStartFHIRExportJob
  pOutputDataConfig_
  pDatastoreId_
  pDataAccessRoleArn_
  pClientToken_ =
    StartFHIRExportJob'
      { jobName = Prelude.Nothing,
        outputDataConfig = pOutputDataConfig_,
        datastoreId = pDatastoreId_,
        dataAccessRoleArn = pDataAccessRoleArn_,
        clientToken = pClientToken_
      }

-- | The user generated name for an export job.
startFHIRExportJob_jobName :: Lens.Lens' StartFHIRExportJob (Prelude.Maybe Prelude.Text)
startFHIRExportJob_jobName = Lens.lens (\StartFHIRExportJob' {jobName} -> jobName) (\s@StartFHIRExportJob' {} a -> s {jobName = a} :: StartFHIRExportJob)

-- | The output data configuration that was supplied when the export job was
-- created.
startFHIRExportJob_outputDataConfig :: Lens.Lens' StartFHIRExportJob OutputDataConfig
startFHIRExportJob_outputDataConfig = Lens.lens (\StartFHIRExportJob' {outputDataConfig} -> outputDataConfig) (\s@StartFHIRExportJob' {} a -> s {outputDataConfig = a} :: StartFHIRExportJob)

-- | The AWS generated ID for the Data Store from which files are being
-- exported for an export job.
startFHIRExportJob_datastoreId :: Lens.Lens' StartFHIRExportJob Prelude.Text
startFHIRExportJob_datastoreId = Lens.lens (\StartFHIRExportJob' {datastoreId} -> datastoreId) (\s@StartFHIRExportJob' {} a -> s {datastoreId = a} :: StartFHIRExportJob)

-- | The Amazon Resource Name used during the initiation of the job.
startFHIRExportJob_dataAccessRoleArn :: Lens.Lens' StartFHIRExportJob Prelude.Text
startFHIRExportJob_dataAccessRoleArn = Lens.lens (\StartFHIRExportJob' {dataAccessRoleArn} -> dataAccessRoleArn) (\s@StartFHIRExportJob' {} a -> s {dataAccessRoleArn = a} :: StartFHIRExportJob)

-- | An optional user provided token used for ensuring idempotency.
startFHIRExportJob_clientToken :: Lens.Lens' StartFHIRExportJob Prelude.Text
startFHIRExportJob_clientToken = Lens.lens (\StartFHIRExportJob' {clientToken} -> clientToken) (\s@StartFHIRExportJob' {} a -> s {clientToken = a} :: StartFHIRExportJob)

instance Core.AWSRequest StartFHIRExportJob where
  type
    AWSResponse StartFHIRExportJob =
      StartFHIRExportJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StartFHIRExportJobResponse'
            Prelude.<$> (x Core..?> "DatastoreId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "JobId")
            Prelude.<*> (x Core..:> "JobStatus")
      )

instance Prelude.Hashable StartFHIRExportJob

instance Prelude.NFData StartFHIRExportJob

instance Core.ToHeaders StartFHIRExportJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "HealthLake.StartFHIRExportJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartFHIRExportJob where
  toJSON StartFHIRExportJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("JobName" Core..=) Prelude.<$> jobName,
            Prelude.Just
              ("OutputDataConfig" Core..= outputDataConfig),
            Prelude.Just ("DatastoreId" Core..= datastoreId),
            Prelude.Just
              ("DataAccessRoleArn" Core..= dataAccessRoleArn),
            Prelude.Just ("ClientToken" Core..= clientToken)
          ]
      )

instance Core.ToPath StartFHIRExportJob where
  toPath = Prelude.const "/"

instance Core.ToQuery StartFHIRExportJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartFHIRExportJobResponse' smart constructor.
data StartFHIRExportJobResponse = StartFHIRExportJobResponse'
  { -- | The AWS generated ID for the Data Store from which files are being
    -- exported for an export job.
    datastoreId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The AWS generated ID for an export job.
    jobId :: Prelude.Text,
    -- | The status of a FHIR export job. Possible statuses are SUBMITTED,
    -- IN_PROGRESS, COMPLETED, or FAILED.
    jobStatus :: JobStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartFHIRExportJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datastoreId', 'startFHIRExportJobResponse_datastoreId' - The AWS generated ID for the Data Store from which files are being
-- exported for an export job.
--
-- 'httpStatus', 'startFHIRExportJobResponse_httpStatus' - The response's http status code.
--
-- 'jobId', 'startFHIRExportJobResponse_jobId' - The AWS generated ID for an export job.
--
-- 'jobStatus', 'startFHIRExportJobResponse_jobStatus' - The status of a FHIR export job. Possible statuses are SUBMITTED,
-- IN_PROGRESS, COMPLETED, or FAILED.
newStartFHIRExportJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'jobId'
  Prelude.Text ->
  -- | 'jobStatus'
  JobStatus ->
  StartFHIRExportJobResponse
newStartFHIRExportJobResponse
  pHttpStatus_
  pJobId_
  pJobStatus_ =
    StartFHIRExportJobResponse'
      { datastoreId =
          Prelude.Nothing,
        httpStatus = pHttpStatus_,
        jobId = pJobId_,
        jobStatus = pJobStatus_
      }

-- | The AWS generated ID for the Data Store from which files are being
-- exported for an export job.
startFHIRExportJobResponse_datastoreId :: Lens.Lens' StartFHIRExportJobResponse (Prelude.Maybe Prelude.Text)
startFHIRExportJobResponse_datastoreId = Lens.lens (\StartFHIRExportJobResponse' {datastoreId} -> datastoreId) (\s@StartFHIRExportJobResponse' {} a -> s {datastoreId = a} :: StartFHIRExportJobResponse)

-- | The response's http status code.
startFHIRExportJobResponse_httpStatus :: Lens.Lens' StartFHIRExportJobResponse Prelude.Int
startFHIRExportJobResponse_httpStatus = Lens.lens (\StartFHIRExportJobResponse' {httpStatus} -> httpStatus) (\s@StartFHIRExportJobResponse' {} a -> s {httpStatus = a} :: StartFHIRExportJobResponse)

-- | The AWS generated ID for an export job.
startFHIRExportJobResponse_jobId :: Lens.Lens' StartFHIRExportJobResponse Prelude.Text
startFHIRExportJobResponse_jobId = Lens.lens (\StartFHIRExportJobResponse' {jobId} -> jobId) (\s@StartFHIRExportJobResponse' {} a -> s {jobId = a} :: StartFHIRExportJobResponse)

-- | The status of a FHIR export job. Possible statuses are SUBMITTED,
-- IN_PROGRESS, COMPLETED, or FAILED.
startFHIRExportJobResponse_jobStatus :: Lens.Lens' StartFHIRExportJobResponse JobStatus
startFHIRExportJobResponse_jobStatus = Lens.lens (\StartFHIRExportJobResponse' {jobStatus} -> jobStatus) (\s@StartFHIRExportJobResponse' {} a -> s {jobStatus = a} :: StartFHIRExportJobResponse)

instance Prelude.NFData StartFHIRExportJobResponse
