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
-- Module      : Network.AWS.Proton.CancelServicePipelineDeployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attempts to cancel a service pipeline deployment on an
-- UpdateServicePipeline action, if the deployment is @IN_PROGRESS@. For
-- more information, see /Update a service pipeline/ in the
-- <https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-pipeline-update.html AWS Proton Administrator guide>
-- or the
-- <https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-pipeline-update.html AWS Proton User guide>.
--
-- The following list includes potential cancellation scenarios.
--
-- -   If the cancellation attempt succeeds, the resulting deployment state
--     is @CANCELLED@.
--
-- -   If the cancellation attempt fails, the resulting deployment state is
--     @FAILED@.
--
-- -   If the current UpdateServicePipeline action succeeds before the
--     cancellation attempt starts, the resulting deployment state is
--     @SUCCEEDED@ and the cancellation attempt has no effect.
module Network.AWS.Proton.CancelServicePipelineDeployment
  ( -- * Creating a Request
    CancelServicePipelineDeployment (..),
    newCancelServicePipelineDeployment,

    -- * Request Lenses
    cancelServicePipelineDeployment_serviceName,

    -- * Destructuring the Response
    CancelServicePipelineDeploymentResponse (..),
    newCancelServicePipelineDeploymentResponse,

    -- * Response Lenses
    cancelServicePipelineDeploymentResponse_httpStatus,
    cancelServicePipelineDeploymentResponse_pipeline,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Proton.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCancelServicePipelineDeployment' smart constructor.
data CancelServicePipelineDeployment = CancelServicePipelineDeployment'
  { -- | The name of the service with the service pipeline deployment to cancel.
    serviceName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelServicePipelineDeployment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serviceName', 'cancelServicePipelineDeployment_serviceName' - The name of the service with the service pipeline deployment to cancel.
newCancelServicePipelineDeployment ::
  -- | 'serviceName'
  Prelude.Text ->
  CancelServicePipelineDeployment
newCancelServicePipelineDeployment pServiceName_ =
  CancelServicePipelineDeployment'
    { serviceName =
        pServiceName_
    }

-- | The name of the service with the service pipeline deployment to cancel.
cancelServicePipelineDeployment_serviceName :: Lens.Lens' CancelServicePipelineDeployment Prelude.Text
cancelServicePipelineDeployment_serviceName = Lens.lens (\CancelServicePipelineDeployment' {serviceName} -> serviceName) (\s@CancelServicePipelineDeployment' {} a -> s {serviceName = a} :: CancelServicePipelineDeployment)

instance
  Core.AWSRequest
    CancelServicePipelineDeployment
  where
  type
    AWSResponse CancelServicePipelineDeployment =
      CancelServicePipelineDeploymentResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CancelServicePipelineDeploymentResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "pipeline")
      )

instance
  Prelude.Hashable
    CancelServicePipelineDeployment

instance
  Prelude.NFData
    CancelServicePipelineDeployment

instance
  Core.ToHeaders
    CancelServicePipelineDeployment
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AwsProton20200720.CancelServicePipelineDeployment" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CancelServicePipelineDeployment where
  toJSON CancelServicePipelineDeployment' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("serviceName" Core..= serviceName)]
      )

instance Core.ToPath CancelServicePipelineDeployment where
  toPath = Prelude.const "/"

instance Core.ToQuery CancelServicePipelineDeployment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCancelServicePipelineDeploymentResponse' smart constructor.
data CancelServicePipelineDeploymentResponse = CancelServicePipelineDeploymentResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The service pipeline detail data that\'s returned by AWS Proton.
    pipeline :: ServicePipeline
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelServicePipelineDeploymentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'cancelServicePipelineDeploymentResponse_httpStatus' - The response's http status code.
--
-- 'pipeline', 'cancelServicePipelineDeploymentResponse_pipeline' - The service pipeline detail data that\'s returned by AWS Proton.
newCancelServicePipelineDeploymentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'pipeline'
  ServicePipeline ->
  CancelServicePipelineDeploymentResponse
newCancelServicePipelineDeploymentResponse
  pHttpStatus_
  pPipeline_ =
    CancelServicePipelineDeploymentResponse'
      { httpStatus =
          pHttpStatus_,
        pipeline = pPipeline_
      }

-- | The response's http status code.
cancelServicePipelineDeploymentResponse_httpStatus :: Lens.Lens' CancelServicePipelineDeploymentResponse Prelude.Int
cancelServicePipelineDeploymentResponse_httpStatus = Lens.lens (\CancelServicePipelineDeploymentResponse' {httpStatus} -> httpStatus) (\s@CancelServicePipelineDeploymentResponse' {} a -> s {httpStatus = a} :: CancelServicePipelineDeploymentResponse)

-- | The service pipeline detail data that\'s returned by AWS Proton.
cancelServicePipelineDeploymentResponse_pipeline :: Lens.Lens' CancelServicePipelineDeploymentResponse ServicePipeline
cancelServicePipelineDeploymentResponse_pipeline = Lens.lens (\CancelServicePipelineDeploymentResponse' {pipeline} -> pipeline) (\s@CancelServicePipelineDeploymentResponse' {} a -> s {pipeline = a} :: CancelServicePipelineDeploymentResponse)

instance
  Prelude.NFData
    CancelServicePipelineDeploymentResponse
