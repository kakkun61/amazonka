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
-- Module      : Network.AWS.AppConfig.GetDeployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve information about a configuration deployment.
module Network.AWS.AppConfig.GetDeployment
  ( -- * Creating a Request
    GetDeployment (..),
    newGetDeployment,

    -- * Request Lenses
    getDeployment_applicationId,
    getDeployment_environmentId,
    getDeployment_deploymentNumber,

    -- * Destructuring the Response
    Deployment (..),
    newDeployment,

    -- * Response Lenses
    deployment_growthFactor,
    deployment_configurationName,
    deployment_state,
    deployment_deploymentStrategyId,
    deployment_deploymentNumber,
    deployment_configurationVersion,
    deployment_eventLog,
    deployment_percentageComplete,
    deployment_startedAt,
    deployment_applicationId,
    deployment_deploymentDurationInMinutes,
    deployment_environmentId,
    deployment_completedAt,
    deployment_configurationLocationUri,
    deployment_finalBakeTimeInMinutes,
    deployment_description,
    deployment_configurationProfileId,
    deployment_growthType,
  )
where

import Network.AWS.AppConfig.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetDeployment' smart constructor.
data GetDeployment = GetDeployment'
  { -- | The ID of the application that includes the deployment you want to get.
    applicationId :: Prelude.Text,
    -- | The ID of the environment that includes the deployment you want to get.
    environmentId :: Prelude.Text,
    -- | The sequence number of the deployment.
    deploymentNumber :: Prelude.Int
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
-- 'applicationId', 'getDeployment_applicationId' - The ID of the application that includes the deployment you want to get.
--
-- 'environmentId', 'getDeployment_environmentId' - The ID of the environment that includes the deployment you want to get.
--
-- 'deploymentNumber', 'getDeployment_deploymentNumber' - The sequence number of the deployment.
newGetDeployment ::
  -- | 'applicationId'
  Prelude.Text ->
  -- | 'environmentId'
  Prelude.Text ->
  -- | 'deploymentNumber'
  Prelude.Int ->
  GetDeployment
newGetDeployment
  pApplicationId_
  pEnvironmentId_
  pDeploymentNumber_ =
    GetDeployment'
      { applicationId = pApplicationId_,
        environmentId = pEnvironmentId_,
        deploymentNumber = pDeploymentNumber_
      }

-- | The ID of the application that includes the deployment you want to get.
getDeployment_applicationId :: Lens.Lens' GetDeployment Prelude.Text
getDeployment_applicationId = Lens.lens (\GetDeployment' {applicationId} -> applicationId) (\s@GetDeployment' {} a -> s {applicationId = a} :: GetDeployment)

-- | The ID of the environment that includes the deployment you want to get.
getDeployment_environmentId :: Lens.Lens' GetDeployment Prelude.Text
getDeployment_environmentId = Lens.lens (\GetDeployment' {environmentId} -> environmentId) (\s@GetDeployment' {} a -> s {environmentId = a} :: GetDeployment)

-- | The sequence number of the deployment.
getDeployment_deploymentNumber :: Lens.Lens' GetDeployment Prelude.Int
getDeployment_deploymentNumber = Lens.lens (\GetDeployment' {deploymentNumber} -> deploymentNumber) (\s@GetDeployment' {} a -> s {deploymentNumber = a} :: GetDeployment)

instance Core.AWSRequest GetDeployment where
  type AWSResponse GetDeployment = Deployment
  request = Request.get defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

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
      [ "/applications/",
        Core.toBS applicationId,
        "/environments/",
        Core.toBS environmentId,
        "/deployments/",
        Core.toBS deploymentNumber
      ]

instance Core.ToQuery GetDeployment where
  toQuery = Prelude.const Prelude.mempty
