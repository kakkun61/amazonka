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
-- Module      : Network.AWS.ApplicationCostProfiler.ImportApplicationUsage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Ingests application usage data from Amazon Simple Storage Service
-- (Amazon S3).
--
-- The data must already exist in the S3 location. As part of the action,
-- AWS Application Cost Profiler copies the object from your S3 bucket to
-- an S3 bucket owned by Amazon for processing asynchronously.
module Network.AWS.ApplicationCostProfiler.ImportApplicationUsage
  ( -- * Creating a Request
    ImportApplicationUsage (..),
    newImportApplicationUsage,

    -- * Request Lenses
    importApplicationUsage_sourceS3Location,

    -- * Destructuring the Response
    ImportApplicationUsageResponse (..),
    newImportApplicationUsageResponse,

    -- * Response Lenses
    importApplicationUsageResponse_httpStatus,
    importApplicationUsageResponse_importId,
  )
where

import Network.AWS.ApplicationCostProfiler.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newImportApplicationUsage' smart constructor.
data ImportApplicationUsage = ImportApplicationUsage'
  { -- | Amazon S3 location to import application usage data from.
    sourceS3Location :: SourceS3Location
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportApplicationUsage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceS3Location', 'importApplicationUsage_sourceS3Location' - Amazon S3 location to import application usage data from.
newImportApplicationUsage ::
  -- | 'sourceS3Location'
  SourceS3Location ->
  ImportApplicationUsage
newImportApplicationUsage pSourceS3Location_ =
  ImportApplicationUsage'
    { sourceS3Location =
        pSourceS3Location_
    }

-- | Amazon S3 location to import application usage data from.
importApplicationUsage_sourceS3Location :: Lens.Lens' ImportApplicationUsage SourceS3Location
importApplicationUsage_sourceS3Location = Lens.lens (\ImportApplicationUsage' {sourceS3Location} -> sourceS3Location) (\s@ImportApplicationUsage' {} a -> s {sourceS3Location = a} :: ImportApplicationUsage)

instance Core.AWSRequest ImportApplicationUsage where
  type
    AWSResponse ImportApplicationUsage =
      ImportApplicationUsageResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ImportApplicationUsageResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "importId")
      )

instance Prelude.Hashable ImportApplicationUsage

instance Prelude.NFData ImportApplicationUsage

instance Core.ToHeaders ImportApplicationUsage where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ImportApplicationUsage where
  toJSON ImportApplicationUsage' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("sourceS3Location" Core..= sourceS3Location)
          ]
      )

instance Core.ToPath ImportApplicationUsage where
  toPath = Prelude.const "/importApplicationUsage"

instance Core.ToQuery ImportApplicationUsage where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newImportApplicationUsageResponse' smart constructor.
data ImportApplicationUsageResponse = ImportApplicationUsageResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | ID of the import request.
    importId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportApplicationUsageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'importApplicationUsageResponse_httpStatus' - The response's http status code.
--
-- 'importId', 'importApplicationUsageResponse_importId' - ID of the import request.
newImportApplicationUsageResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'importId'
  Prelude.Text ->
  ImportApplicationUsageResponse
newImportApplicationUsageResponse
  pHttpStatus_
  pImportId_ =
    ImportApplicationUsageResponse'
      { httpStatus =
          pHttpStatus_,
        importId = pImportId_
      }

-- | The response's http status code.
importApplicationUsageResponse_httpStatus :: Lens.Lens' ImportApplicationUsageResponse Prelude.Int
importApplicationUsageResponse_httpStatus = Lens.lens (\ImportApplicationUsageResponse' {httpStatus} -> httpStatus) (\s@ImportApplicationUsageResponse' {} a -> s {httpStatus = a} :: ImportApplicationUsageResponse)

-- | ID of the import request.
importApplicationUsageResponse_importId :: Lens.Lens' ImportApplicationUsageResponse Prelude.Text
importApplicationUsageResponse_importId = Lens.lens (\ImportApplicationUsageResponse' {importId} -> importId) (\s@ImportApplicationUsageResponse' {} a -> s {importId = a} :: ImportApplicationUsageResponse)

instance
  Prelude.NFData
    ImportApplicationUsageResponse
