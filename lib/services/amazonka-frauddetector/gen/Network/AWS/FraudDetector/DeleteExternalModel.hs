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
-- Module      : Network.AWS.FraudDetector.DeleteExternalModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a SageMaker model from Amazon Fraud Detector.
--
-- You can remove an Amazon SageMaker model if it is not associated with a
-- detector version. Removing a SageMaker model disconnects it from Amazon
-- Fraud Detector, but the model remains available in SageMaker.
module Network.AWS.FraudDetector.DeleteExternalModel
  ( -- * Creating a Request
    DeleteExternalModel (..),
    newDeleteExternalModel,

    -- * Request Lenses
    deleteExternalModel_modelEndpoint,

    -- * Destructuring the Response
    DeleteExternalModelResponse (..),
    newDeleteExternalModelResponse,

    -- * Response Lenses
    deleteExternalModelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteExternalModel' smart constructor.
data DeleteExternalModel = DeleteExternalModel'
  { -- | The endpoint of the Amazon Sagemaker model to delete.
    modelEndpoint :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteExternalModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelEndpoint', 'deleteExternalModel_modelEndpoint' - The endpoint of the Amazon Sagemaker model to delete.
newDeleteExternalModel ::
  -- | 'modelEndpoint'
  Prelude.Text ->
  DeleteExternalModel
newDeleteExternalModel pModelEndpoint_ =
  DeleteExternalModel'
    { modelEndpoint =
        pModelEndpoint_
    }

-- | The endpoint of the Amazon Sagemaker model to delete.
deleteExternalModel_modelEndpoint :: Lens.Lens' DeleteExternalModel Prelude.Text
deleteExternalModel_modelEndpoint = Lens.lens (\DeleteExternalModel' {modelEndpoint} -> modelEndpoint) (\s@DeleteExternalModel' {} a -> s {modelEndpoint = a} :: DeleteExternalModel)

instance Core.AWSRequest DeleteExternalModel where
  type
    AWSResponse DeleteExternalModel =
      DeleteExternalModelResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteExternalModelResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteExternalModel

instance Prelude.NFData DeleteExternalModel

instance Core.ToHeaders DeleteExternalModel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.DeleteExternalModel" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteExternalModel where
  toJSON DeleteExternalModel' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("modelEndpoint" Core..= modelEndpoint)
          ]
      )

instance Core.ToPath DeleteExternalModel where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteExternalModel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteExternalModelResponse' smart constructor.
data DeleteExternalModelResponse = DeleteExternalModelResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteExternalModelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteExternalModelResponse_httpStatus' - The response's http status code.
newDeleteExternalModelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteExternalModelResponse
newDeleteExternalModelResponse pHttpStatus_ =
  DeleteExternalModelResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteExternalModelResponse_httpStatus :: Lens.Lens' DeleteExternalModelResponse Prelude.Int
deleteExternalModelResponse_httpStatus = Lens.lens (\DeleteExternalModelResponse' {httpStatus} -> httpStatus) (\s@DeleteExternalModelResponse' {} a -> s {httpStatus = a} :: DeleteExternalModelResponse)

instance Prelude.NFData DeleteExternalModelResponse
