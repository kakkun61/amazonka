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
-- Module      : Network.AWS.Forecast.DeleteDatasetImportJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a dataset import job created using the CreateDatasetImportJob
-- operation. You can delete only dataset import jobs that have a status of
-- @ACTIVE@ or @CREATE_FAILED@. To get the status, use the
-- DescribeDatasetImportJob operation.
module Network.AWS.Forecast.DeleteDatasetImportJob
  ( -- * Creating a Request
    DeleteDatasetImportJob (..),
    newDeleteDatasetImportJob,

    -- * Request Lenses
    deleteDatasetImportJob_datasetImportJobArn,

    -- * Destructuring the Response
    DeleteDatasetImportJobResponse (..),
    newDeleteDatasetImportJobResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Forecast.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDatasetImportJob' smart constructor.
data DeleteDatasetImportJob = DeleteDatasetImportJob'
  { -- | The Amazon Resource Name (ARN) of the dataset import job to delete.
    datasetImportJobArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDatasetImportJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datasetImportJobArn', 'deleteDatasetImportJob_datasetImportJobArn' - The Amazon Resource Name (ARN) of the dataset import job to delete.
newDeleteDatasetImportJob ::
  -- | 'datasetImportJobArn'
  Prelude.Text ->
  DeleteDatasetImportJob
newDeleteDatasetImportJob pDatasetImportJobArn_ =
  DeleteDatasetImportJob'
    { datasetImportJobArn =
        pDatasetImportJobArn_
    }

-- | The Amazon Resource Name (ARN) of the dataset import job to delete.
deleteDatasetImportJob_datasetImportJobArn :: Lens.Lens' DeleteDatasetImportJob Prelude.Text
deleteDatasetImportJob_datasetImportJobArn = Lens.lens (\DeleteDatasetImportJob' {datasetImportJobArn} -> datasetImportJobArn) (\s@DeleteDatasetImportJob' {} a -> s {datasetImportJobArn = a} :: DeleteDatasetImportJob)

instance Core.AWSRequest DeleteDatasetImportJob where
  type
    AWSResponse DeleteDatasetImportJob =
      DeleteDatasetImportJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      DeleteDatasetImportJobResponse'

instance Prelude.Hashable DeleteDatasetImportJob

instance Prelude.NFData DeleteDatasetImportJob

instance Core.ToHeaders DeleteDatasetImportJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonForecast.DeleteDatasetImportJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteDatasetImportJob where
  toJSON DeleteDatasetImportJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("DatasetImportJobArn" Core..= datasetImportJobArn)
          ]
      )

instance Core.ToPath DeleteDatasetImportJob where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteDatasetImportJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDatasetImportJobResponse' smart constructor.
data DeleteDatasetImportJobResponse = DeleteDatasetImportJobResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDatasetImportJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteDatasetImportJobResponse ::
  DeleteDatasetImportJobResponse
newDeleteDatasetImportJobResponse =
  DeleteDatasetImportJobResponse'

instance
  Prelude.NFData
    DeleteDatasetImportJobResponse
