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
-- Module      : Network.AWS.LookoutMetrics.GetSampleData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a selection of sample records from an Amazon S3 datasource.
module Network.AWS.LookoutMetrics.GetSampleData
  ( -- * Creating a Request
    GetSampleData (..),
    newGetSampleData,

    -- * Request Lenses
    getSampleData_s3SourceConfig,

    -- * Destructuring the Response
    GetSampleDataResponse (..),
    newGetSampleDataResponse,

    -- * Response Lenses
    getSampleDataResponse_sampleRows,
    getSampleDataResponse_headerValues,
    getSampleDataResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutMetrics.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetSampleData' smart constructor.
data GetSampleData = GetSampleData'
  { -- | A datasource bucket in Amazon S3.
    s3SourceConfig :: Prelude.Maybe SampleDataS3SourceConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSampleData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3SourceConfig', 'getSampleData_s3SourceConfig' - A datasource bucket in Amazon S3.
newGetSampleData ::
  GetSampleData
newGetSampleData =
  GetSampleData' {s3SourceConfig = Prelude.Nothing}

-- | A datasource bucket in Amazon S3.
getSampleData_s3SourceConfig :: Lens.Lens' GetSampleData (Prelude.Maybe SampleDataS3SourceConfig)
getSampleData_s3SourceConfig = Lens.lens (\GetSampleData' {s3SourceConfig} -> s3SourceConfig) (\s@GetSampleData' {} a -> s {s3SourceConfig = a} :: GetSampleData)

instance Core.AWSRequest GetSampleData where
  type
    AWSResponse GetSampleData =
      GetSampleDataResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetSampleDataResponse'
            Prelude.<$> (x Core..?> "SampleRows" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "HeaderValues" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetSampleData

instance Prelude.NFData GetSampleData

instance Core.ToHeaders GetSampleData where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetSampleData where
  toJSON GetSampleData' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("S3SourceConfig" Core..=)
              Prelude.<$> s3SourceConfig
          ]
      )

instance Core.ToPath GetSampleData where
  toPath = Prelude.const "/GetSampleData"

instance Core.ToQuery GetSampleData where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetSampleDataResponse' smart constructor.
data GetSampleDataResponse = GetSampleDataResponse'
  { -- | A list of records.
    sampleRows :: Prelude.Maybe [[Prelude.Text]],
    -- | A list of header labels for the records.
    headerValues :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSampleDataResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sampleRows', 'getSampleDataResponse_sampleRows' - A list of records.
--
-- 'headerValues', 'getSampleDataResponse_headerValues' - A list of header labels for the records.
--
-- 'httpStatus', 'getSampleDataResponse_httpStatus' - The response's http status code.
newGetSampleDataResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetSampleDataResponse
newGetSampleDataResponse pHttpStatus_ =
  GetSampleDataResponse'
    { sampleRows =
        Prelude.Nothing,
      headerValues = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of records.
getSampleDataResponse_sampleRows :: Lens.Lens' GetSampleDataResponse (Prelude.Maybe [[Prelude.Text]])
getSampleDataResponse_sampleRows = Lens.lens (\GetSampleDataResponse' {sampleRows} -> sampleRows) (\s@GetSampleDataResponse' {} a -> s {sampleRows = a} :: GetSampleDataResponse) Prelude.. Lens.mapping Lens.coerced

-- | A list of header labels for the records.
getSampleDataResponse_headerValues :: Lens.Lens' GetSampleDataResponse (Prelude.Maybe [Prelude.Text])
getSampleDataResponse_headerValues = Lens.lens (\GetSampleDataResponse' {headerValues} -> headerValues) (\s@GetSampleDataResponse' {} a -> s {headerValues = a} :: GetSampleDataResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getSampleDataResponse_httpStatus :: Lens.Lens' GetSampleDataResponse Prelude.Int
getSampleDataResponse_httpStatus = Lens.lens (\GetSampleDataResponse' {httpStatus} -> httpStatus) (\s@GetSampleDataResponse' {} a -> s {httpStatus = a} :: GetSampleDataResponse)

instance Prelude.NFData GetSampleDataResponse
