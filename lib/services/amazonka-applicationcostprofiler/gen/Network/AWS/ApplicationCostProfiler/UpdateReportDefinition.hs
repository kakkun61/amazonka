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
-- Module      : Network.AWS.ApplicationCostProfiler.UpdateReportDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates existing report in AWS Application Cost Profiler.
module Network.AWS.ApplicationCostProfiler.UpdateReportDefinition
  ( -- * Creating a Request
    UpdateReportDefinition (..),
    newUpdateReportDefinition,

    -- * Request Lenses
    updateReportDefinition_reportId,
    updateReportDefinition_reportDescription,
    updateReportDefinition_reportFrequency,
    updateReportDefinition_format,
    updateReportDefinition_destinationS3Location,

    -- * Destructuring the Response
    UpdateReportDefinitionResponse (..),
    newUpdateReportDefinitionResponse,

    -- * Response Lenses
    updateReportDefinitionResponse_reportId,
    updateReportDefinitionResponse_httpStatus,
  )
where

import Network.AWS.ApplicationCostProfiler.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateReportDefinition' smart constructor.
data UpdateReportDefinition = UpdateReportDefinition'
  { -- | Required. ID of the report to update.
    reportId :: Prelude.Text,
    -- | Required. Description of the report.
    reportDescription :: Prelude.Text,
    -- | Required. The cadence to generate the report.
    reportFrequency :: ReportFrequency,
    -- | Required. The format to use for the generated report.
    format :: Format,
    -- | Required. Amazon Simple Storage Service (Amazon S3) location where
    -- Application Cost Profiler uploads the report.
    destinationS3Location :: S3Location
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateReportDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reportId', 'updateReportDefinition_reportId' - Required. ID of the report to update.
--
-- 'reportDescription', 'updateReportDefinition_reportDescription' - Required. Description of the report.
--
-- 'reportFrequency', 'updateReportDefinition_reportFrequency' - Required. The cadence to generate the report.
--
-- 'format', 'updateReportDefinition_format' - Required. The format to use for the generated report.
--
-- 'destinationS3Location', 'updateReportDefinition_destinationS3Location' - Required. Amazon Simple Storage Service (Amazon S3) location where
-- Application Cost Profiler uploads the report.
newUpdateReportDefinition ::
  -- | 'reportId'
  Prelude.Text ->
  -- | 'reportDescription'
  Prelude.Text ->
  -- | 'reportFrequency'
  ReportFrequency ->
  -- | 'format'
  Format ->
  -- | 'destinationS3Location'
  S3Location ->
  UpdateReportDefinition
newUpdateReportDefinition
  pReportId_
  pReportDescription_
  pReportFrequency_
  pFormat_
  pDestinationS3Location_ =
    UpdateReportDefinition'
      { reportId = pReportId_,
        reportDescription = pReportDescription_,
        reportFrequency = pReportFrequency_,
        format = pFormat_,
        destinationS3Location = pDestinationS3Location_
      }

-- | Required. ID of the report to update.
updateReportDefinition_reportId :: Lens.Lens' UpdateReportDefinition Prelude.Text
updateReportDefinition_reportId = Lens.lens (\UpdateReportDefinition' {reportId} -> reportId) (\s@UpdateReportDefinition' {} a -> s {reportId = a} :: UpdateReportDefinition)

-- | Required. Description of the report.
updateReportDefinition_reportDescription :: Lens.Lens' UpdateReportDefinition Prelude.Text
updateReportDefinition_reportDescription = Lens.lens (\UpdateReportDefinition' {reportDescription} -> reportDescription) (\s@UpdateReportDefinition' {} a -> s {reportDescription = a} :: UpdateReportDefinition)

-- | Required. The cadence to generate the report.
updateReportDefinition_reportFrequency :: Lens.Lens' UpdateReportDefinition ReportFrequency
updateReportDefinition_reportFrequency = Lens.lens (\UpdateReportDefinition' {reportFrequency} -> reportFrequency) (\s@UpdateReportDefinition' {} a -> s {reportFrequency = a} :: UpdateReportDefinition)

-- | Required. The format to use for the generated report.
updateReportDefinition_format :: Lens.Lens' UpdateReportDefinition Format
updateReportDefinition_format = Lens.lens (\UpdateReportDefinition' {format} -> format) (\s@UpdateReportDefinition' {} a -> s {format = a} :: UpdateReportDefinition)

-- | Required. Amazon Simple Storage Service (Amazon S3) location where
-- Application Cost Profiler uploads the report.
updateReportDefinition_destinationS3Location :: Lens.Lens' UpdateReportDefinition S3Location
updateReportDefinition_destinationS3Location = Lens.lens (\UpdateReportDefinition' {destinationS3Location} -> destinationS3Location) (\s@UpdateReportDefinition' {} a -> s {destinationS3Location = a} :: UpdateReportDefinition)

instance Core.AWSRequest UpdateReportDefinition where
  type
    AWSResponse UpdateReportDefinition =
      UpdateReportDefinitionResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateReportDefinitionResponse'
            Prelude.<$> (x Core..?> "reportId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateReportDefinition

instance Prelude.NFData UpdateReportDefinition

instance Core.ToHeaders UpdateReportDefinition where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateReportDefinition where
  toJSON UpdateReportDefinition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("reportDescription" Core..= reportDescription),
            Prelude.Just
              ("reportFrequency" Core..= reportFrequency),
            Prelude.Just ("format" Core..= format),
            Prelude.Just
              ( "destinationS3Location"
                  Core..= destinationS3Location
              )
          ]
      )

instance Core.ToPath UpdateReportDefinition where
  toPath UpdateReportDefinition' {..} =
    Prelude.mconcat
      ["/reportDefinition/", Core.toBS reportId]

instance Core.ToQuery UpdateReportDefinition where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateReportDefinitionResponse' smart constructor.
data UpdateReportDefinitionResponse = UpdateReportDefinitionResponse'
  { -- | ID of the report.
    reportId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateReportDefinitionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reportId', 'updateReportDefinitionResponse_reportId' - ID of the report.
--
-- 'httpStatus', 'updateReportDefinitionResponse_httpStatus' - The response's http status code.
newUpdateReportDefinitionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateReportDefinitionResponse
newUpdateReportDefinitionResponse pHttpStatus_ =
  UpdateReportDefinitionResponse'
    { reportId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | ID of the report.
updateReportDefinitionResponse_reportId :: Lens.Lens' UpdateReportDefinitionResponse (Prelude.Maybe Prelude.Text)
updateReportDefinitionResponse_reportId = Lens.lens (\UpdateReportDefinitionResponse' {reportId} -> reportId) (\s@UpdateReportDefinitionResponse' {} a -> s {reportId = a} :: UpdateReportDefinitionResponse)

-- | The response's http status code.
updateReportDefinitionResponse_httpStatus :: Lens.Lens' UpdateReportDefinitionResponse Prelude.Int
updateReportDefinitionResponse_httpStatus = Lens.lens (\UpdateReportDefinitionResponse' {httpStatus} -> httpStatus) (\s@UpdateReportDefinitionResponse' {} a -> s {httpStatus = a} :: UpdateReportDefinitionResponse)

instance
  Prelude.NFData
    UpdateReportDefinitionResponse
