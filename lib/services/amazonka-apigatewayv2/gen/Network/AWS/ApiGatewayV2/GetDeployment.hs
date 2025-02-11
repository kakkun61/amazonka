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
-- Module      : Network.AWS.ApiGatewayV2.GetDeployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Deployment.
module Network.AWS.ApiGatewayV2.GetDeployment
  ( -- * Creating a Request
    GetDeployment (..),
    newGetDeployment,

    -- * Request Lenses
    getDeployment_apiId,
    getDeployment_deploymentId,

    -- * Destructuring the Response
    GetDeploymentResponse (..),
    newGetDeploymentResponse,

    -- * Response Lenses
    getDeploymentResponse_deploymentId,
    getDeploymentResponse_autoDeployed,
    getDeploymentResponse_deploymentStatusMessage,
    getDeploymentResponse_createdDate,
    getDeploymentResponse_deploymentStatus,
    getDeploymentResponse_description,
    getDeploymentResponse_httpStatus,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetDeployment' smart constructor.
data GetDeployment = GetDeployment'
  { -- | The API identifier.
    apiId :: Prelude.Text,
    -- | The deployment ID.
    deploymentId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDeployment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'apiId', 'getDeployment_apiId' - The API identifier.
--
-- 'deploymentId', 'getDeployment_deploymentId' - The deployment ID.
newGetDeployment ::
  -- | 'apiId'
  Prelude.Text ->
  -- | 'deploymentId'
  Prelude.Text ->
  GetDeployment
newGetDeployment pApiId_ pDeploymentId_ =
  GetDeployment'
    { apiId = pApiId_,
      deploymentId = pDeploymentId_
    }

-- | The API identifier.
getDeployment_apiId :: Lens.Lens' GetDeployment Prelude.Text
getDeployment_apiId = Lens.lens (\GetDeployment' {apiId} -> apiId) (\s@GetDeployment' {} a -> s {apiId = a} :: GetDeployment)

-- | The deployment ID.
getDeployment_deploymentId :: Lens.Lens' GetDeployment Prelude.Text
getDeployment_deploymentId = Lens.lens (\GetDeployment' {deploymentId} -> deploymentId) (\s@GetDeployment' {} a -> s {deploymentId = a} :: GetDeployment)

instance Core.AWSRequest GetDeployment where
  type
    AWSResponse GetDeployment =
      GetDeploymentResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDeploymentResponse'
            Prelude.<$> (x Core..?> "deploymentId")
            Prelude.<*> (x Core..?> "autoDeployed")
            Prelude.<*> (x Core..?> "deploymentStatusMessage")
            Prelude.<*> (x Core..?> "createdDate")
            Prelude.<*> (x Core..?> "deploymentStatus")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDeployment

instance Prelude.NFData GetDeployment

instance Core.ToHeaders GetDeployment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetDeployment where
  toPath GetDeployment' {..} =
    Prelude.mconcat
      [ "/v2/apis/",
        Core.toBS apiId,
        "/deployments/",
        Core.toBS deploymentId
      ]

instance Core.ToQuery GetDeployment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetDeploymentResponse' smart constructor.
data GetDeploymentResponse = GetDeploymentResponse'
  { -- | The identifier for the deployment.
    deploymentId :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether a deployment was automatically released.
    autoDeployed :: Prelude.Maybe Prelude.Bool,
    -- | May contain additional feedback on the status of an API deployment.
    deploymentStatusMessage :: Prelude.Maybe Prelude.Text,
    -- | The date and time when the Deployment resource was created.
    createdDate :: Prelude.Maybe Core.POSIX,
    -- | The status of the deployment: PENDING, FAILED, or SUCCEEDED.
    deploymentStatus :: Prelude.Maybe DeploymentStatus,
    -- | The description for the deployment.
    description :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDeploymentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deploymentId', 'getDeploymentResponse_deploymentId' - The identifier for the deployment.
--
-- 'autoDeployed', 'getDeploymentResponse_autoDeployed' - Specifies whether a deployment was automatically released.
--
-- 'deploymentStatusMessage', 'getDeploymentResponse_deploymentStatusMessage' - May contain additional feedback on the status of an API deployment.
--
-- 'createdDate', 'getDeploymentResponse_createdDate' - The date and time when the Deployment resource was created.
--
-- 'deploymentStatus', 'getDeploymentResponse_deploymentStatus' - The status of the deployment: PENDING, FAILED, or SUCCEEDED.
--
-- 'description', 'getDeploymentResponse_description' - The description for the deployment.
--
-- 'httpStatus', 'getDeploymentResponse_httpStatus' - The response's http status code.
newGetDeploymentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDeploymentResponse
newGetDeploymentResponse pHttpStatus_ =
  GetDeploymentResponse'
    { deploymentId =
        Prelude.Nothing,
      autoDeployed = Prelude.Nothing,
      deploymentStatusMessage = Prelude.Nothing,
      createdDate = Prelude.Nothing,
      deploymentStatus = Prelude.Nothing,
      description = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The identifier for the deployment.
getDeploymentResponse_deploymentId :: Lens.Lens' GetDeploymentResponse (Prelude.Maybe Prelude.Text)
getDeploymentResponse_deploymentId = Lens.lens (\GetDeploymentResponse' {deploymentId} -> deploymentId) (\s@GetDeploymentResponse' {} a -> s {deploymentId = a} :: GetDeploymentResponse)

-- | Specifies whether a deployment was automatically released.
getDeploymentResponse_autoDeployed :: Lens.Lens' GetDeploymentResponse (Prelude.Maybe Prelude.Bool)
getDeploymentResponse_autoDeployed = Lens.lens (\GetDeploymentResponse' {autoDeployed} -> autoDeployed) (\s@GetDeploymentResponse' {} a -> s {autoDeployed = a} :: GetDeploymentResponse)

-- | May contain additional feedback on the status of an API deployment.
getDeploymentResponse_deploymentStatusMessage :: Lens.Lens' GetDeploymentResponse (Prelude.Maybe Prelude.Text)
getDeploymentResponse_deploymentStatusMessage = Lens.lens (\GetDeploymentResponse' {deploymentStatusMessage} -> deploymentStatusMessage) (\s@GetDeploymentResponse' {} a -> s {deploymentStatusMessage = a} :: GetDeploymentResponse)

-- | The date and time when the Deployment resource was created.
getDeploymentResponse_createdDate :: Lens.Lens' GetDeploymentResponse (Prelude.Maybe Prelude.UTCTime)
getDeploymentResponse_createdDate = Lens.lens (\GetDeploymentResponse' {createdDate} -> createdDate) (\s@GetDeploymentResponse' {} a -> s {createdDate = a} :: GetDeploymentResponse) Prelude.. Lens.mapping Core._Time

-- | The status of the deployment: PENDING, FAILED, or SUCCEEDED.
getDeploymentResponse_deploymentStatus :: Lens.Lens' GetDeploymentResponse (Prelude.Maybe DeploymentStatus)
getDeploymentResponse_deploymentStatus = Lens.lens (\GetDeploymentResponse' {deploymentStatus} -> deploymentStatus) (\s@GetDeploymentResponse' {} a -> s {deploymentStatus = a} :: GetDeploymentResponse)

-- | The description for the deployment.
getDeploymentResponse_description :: Lens.Lens' GetDeploymentResponse (Prelude.Maybe Prelude.Text)
getDeploymentResponse_description = Lens.lens (\GetDeploymentResponse' {description} -> description) (\s@GetDeploymentResponse' {} a -> s {description = a} :: GetDeploymentResponse)

-- | The response's http status code.
getDeploymentResponse_httpStatus :: Lens.Lens' GetDeploymentResponse Prelude.Int
getDeploymentResponse_httpStatus = Lens.lens (\GetDeploymentResponse' {httpStatus} -> httpStatus) (\s@GetDeploymentResponse' {} a -> s {httpStatus = a} :: GetDeploymentResponse)

instance Prelude.NFData GetDeploymentResponse
