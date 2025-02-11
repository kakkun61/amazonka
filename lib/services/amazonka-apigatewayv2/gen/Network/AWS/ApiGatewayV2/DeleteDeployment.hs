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
-- Module      : Network.AWS.ApiGatewayV2.DeleteDeployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Deployment.
module Network.AWS.ApiGatewayV2.DeleteDeployment
  ( -- * Creating a Request
    DeleteDeployment (..),
    newDeleteDeployment,

    -- * Request Lenses
    deleteDeployment_apiId,
    deleteDeployment_deploymentId,

    -- * Destructuring the Response
    DeleteDeploymentResponse (..),
    newDeleteDeploymentResponse,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDeployment' smart constructor.
data DeleteDeployment = DeleteDeployment'
  { -- | The API identifier.
    apiId :: Prelude.Text,
    -- | The deployment ID.
    deploymentId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDeployment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'apiId', 'deleteDeployment_apiId' - The API identifier.
--
-- 'deploymentId', 'deleteDeployment_deploymentId' - The deployment ID.
newDeleteDeployment ::
  -- | 'apiId'
  Prelude.Text ->
  -- | 'deploymentId'
  Prelude.Text ->
  DeleteDeployment
newDeleteDeployment pApiId_ pDeploymentId_ =
  DeleteDeployment'
    { apiId = pApiId_,
      deploymentId = pDeploymentId_
    }

-- | The API identifier.
deleteDeployment_apiId :: Lens.Lens' DeleteDeployment Prelude.Text
deleteDeployment_apiId = Lens.lens (\DeleteDeployment' {apiId} -> apiId) (\s@DeleteDeployment' {} a -> s {apiId = a} :: DeleteDeployment)

-- | The deployment ID.
deleteDeployment_deploymentId :: Lens.Lens' DeleteDeployment Prelude.Text
deleteDeployment_deploymentId = Lens.lens (\DeleteDeployment' {deploymentId} -> deploymentId) (\s@DeleteDeployment' {} a -> s {deploymentId = a} :: DeleteDeployment)

instance Core.AWSRequest DeleteDeployment where
  type
    AWSResponse DeleteDeployment =
      DeleteDeploymentResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeleteDeploymentResponse'

instance Prelude.Hashable DeleteDeployment

instance Prelude.NFData DeleteDeployment

instance Core.ToHeaders DeleteDeployment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteDeployment where
  toPath DeleteDeployment' {..} =
    Prelude.mconcat
      [ "/v2/apis/",
        Core.toBS apiId,
        "/deployments/",
        Core.toBS deploymentId
      ]

instance Core.ToQuery DeleteDeployment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDeploymentResponse' smart constructor.
data DeleteDeploymentResponse = DeleteDeploymentResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDeploymentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteDeploymentResponse ::
  DeleteDeploymentResponse
newDeleteDeploymentResponse =
  DeleteDeploymentResponse'

instance Prelude.NFData DeleteDeploymentResponse
