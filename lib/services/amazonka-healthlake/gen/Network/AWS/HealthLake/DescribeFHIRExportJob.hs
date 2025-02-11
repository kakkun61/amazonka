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
-- Module      : Network.AWS.HealthLake.DescribeFHIRExportJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays the properties of a FHIR export job, including the ID, ARN,
-- name, and the status of the job.
module Network.AWS.HealthLake.DescribeFHIRExportJob
  ( -- * Creating a Request
    DescribeFHIRExportJob (..),
    newDescribeFHIRExportJob,

    -- * Request Lenses
    describeFHIRExportJob_datastoreId,
    describeFHIRExportJob_jobId,

    -- * Destructuring the Response
    DescribeFHIRExportJobResponse (..),
    newDescribeFHIRExportJobResponse,

    -- * Response Lenses
    describeFHIRExportJobResponse_httpStatus,
    describeFHIRExportJobResponse_exportJobProperties,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.HealthLake.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeFHIRExportJob' smart constructor.
data DescribeFHIRExportJob = DescribeFHIRExportJob'
  { -- | The AWS generated ID for the Data Store from which files are being
    -- exported from for an export job.
    datastoreId :: Prelude.Text,
    -- | The AWS generated ID for an export job.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFHIRExportJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datastoreId', 'describeFHIRExportJob_datastoreId' - The AWS generated ID for the Data Store from which files are being
-- exported from for an export job.
--
-- 'jobId', 'describeFHIRExportJob_jobId' - The AWS generated ID for an export job.
newDescribeFHIRExportJob ::
  -- | 'datastoreId'
  Prelude.Text ->
  -- | 'jobId'
  Prelude.Text ->
  DescribeFHIRExportJob
newDescribeFHIRExportJob pDatastoreId_ pJobId_ =
  DescribeFHIRExportJob'
    { datastoreId = pDatastoreId_,
      jobId = pJobId_
    }

-- | The AWS generated ID for the Data Store from which files are being
-- exported from for an export job.
describeFHIRExportJob_datastoreId :: Lens.Lens' DescribeFHIRExportJob Prelude.Text
describeFHIRExportJob_datastoreId = Lens.lens (\DescribeFHIRExportJob' {datastoreId} -> datastoreId) (\s@DescribeFHIRExportJob' {} a -> s {datastoreId = a} :: DescribeFHIRExportJob)

-- | The AWS generated ID for an export job.
describeFHIRExportJob_jobId :: Lens.Lens' DescribeFHIRExportJob Prelude.Text
describeFHIRExportJob_jobId = Lens.lens (\DescribeFHIRExportJob' {jobId} -> jobId) (\s@DescribeFHIRExportJob' {} a -> s {jobId = a} :: DescribeFHIRExportJob)

instance Core.AWSRequest DescribeFHIRExportJob where
  type
    AWSResponse DescribeFHIRExportJob =
      DescribeFHIRExportJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeFHIRExportJobResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "ExportJobProperties")
      )

instance Prelude.Hashable DescribeFHIRExportJob

instance Prelude.NFData DescribeFHIRExportJob

instance Core.ToHeaders DescribeFHIRExportJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "HealthLake.DescribeFHIRExportJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeFHIRExportJob where
  toJSON DescribeFHIRExportJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("DatastoreId" Core..= datastoreId),
            Prelude.Just ("JobId" Core..= jobId)
          ]
      )

instance Core.ToPath DescribeFHIRExportJob where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeFHIRExportJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeFHIRExportJobResponse' smart constructor.
data DescribeFHIRExportJobResponse = DescribeFHIRExportJobResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Displays the properties of the export job, including the ID, Arn, Name,
    -- and the status of the job.
    exportJobProperties :: ExportJobProperties
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFHIRExportJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeFHIRExportJobResponse_httpStatus' - The response's http status code.
--
-- 'exportJobProperties', 'describeFHIRExportJobResponse_exportJobProperties' - Displays the properties of the export job, including the ID, Arn, Name,
-- and the status of the job.
newDescribeFHIRExportJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'exportJobProperties'
  ExportJobProperties ->
  DescribeFHIRExportJobResponse
newDescribeFHIRExportJobResponse
  pHttpStatus_
  pExportJobProperties_ =
    DescribeFHIRExportJobResponse'
      { httpStatus =
          pHttpStatus_,
        exportJobProperties = pExportJobProperties_
      }

-- | The response's http status code.
describeFHIRExportJobResponse_httpStatus :: Lens.Lens' DescribeFHIRExportJobResponse Prelude.Int
describeFHIRExportJobResponse_httpStatus = Lens.lens (\DescribeFHIRExportJobResponse' {httpStatus} -> httpStatus) (\s@DescribeFHIRExportJobResponse' {} a -> s {httpStatus = a} :: DescribeFHIRExportJobResponse)

-- | Displays the properties of the export job, including the ID, Arn, Name,
-- and the status of the job.
describeFHIRExportJobResponse_exportJobProperties :: Lens.Lens' DescribeFHIRExportJobResponse ExportJobProperties
describeFHIRExportJobResponse_exportJobProperties = Lens.lens (\DescribeFHIRExportJobResponse' {exportJobProperties} -> exportJobProperties) (\s@DescribeFHIRExportJobResponse' {} a -> s {exportJobProperties = a} :: DescribeFHIRExportJobResponse)

instance Prelude.NFData DescribeFHIRExportJobResponse
