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
-- Module      : Network.AWS.AppConfig.StartDeployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a deployment.
module Network.AWS.AppConfig.StartDeployment
  ( -- * Creating a Request
    StartDeployment (..),
    newStartDeployment,

    -- * Request Lenses
    startDeployment_description,
    startDeployment_tags,
    startDeployment_applicationId,
    startDeployment_environmentId,
    startDeployment_deploymentStrategyId,
    startDeployment_configurationProfileId,
    startDeployment_configurationVersion,

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

-- | /See:/ 'newStartDeployment' smart constructor.
data StartDeployment = StartDeployment'
  { -- | A description of the deployment.
    description :: Prelude.Maybe Prelude.Text,
    -- | Metadata to assign to the deployment. Tags help organize and categorize
    -- your AppConfig resources. Each tag consists of a key and an optional
    -- value, both of which you define.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The application ID.
    applicationId :: Prelude.Text,
    -- | The environment ID.
    environmentId :: Prelude.Text,
    -- | The deployment strategy ID.
    deploymentStrategyId :: Prelude.Text,
    -- | The configuration profile ID.
    configurationProfileId :: Prelude.Text,
    -- | The configuration version to deploy.
    configurationVersion :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartDeployment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'startDeployment_description' - A description of the deployment.
--
-- 'tags', 'startDeployment_tags' - Metadata to assign to the deployment. Tags help organize and categorize
-- your AppConfig resources. Each tag consists of a key and an optional
-- value, both of which you define.
--
-- 'applicationId', 'startDeployment_applicationId' - The application ID.
--
-- 'environmentId', 'startDeployment_environmentId' - The environment ID.
--
-- 'deploymentStrategyId', 'startDeployment_deploymentStrategyId' - The deployment strategy ID.
--
-- 'configurationProfileId', 'startDeployment_configurationProfileId' - The configuration profile ID.
--
-- 'configurationVersion', 'startDeployment_configurationVersion' - The configuration version to deploy.
newStartDeployment ::
  -- | 'applicationId'
  Prelude.Text ->
  -- | 'environmentId'
  Prelude.Text ->
  -- | 'deploymentStrategyId'
  Prelude.Text ->
  -- | 'configurationProfileId'
  Prelude.Text ->
  -- | 'configurationVersion'
  Prelude.Text ->
  StartDeployment
newStartDeployment
  pApplicationId_
  pEnvironmentId_
  pDeploymentStrategyId_
  pConfigurationProfileId_
  pConfigurationVersion_ =
    StartDeployment'
      { description = Prelude.Nothing,
        tags = Prelude.Nothing,
        applicationId = pApplicationId_,
        environmentId = pEnvironmentId_,
        deploymentStrategyId = pDeploymentStrategyId_,
        configurationProfileId = pConfigurationProfileId_,
        configurationVersion = pConfigurationVersion_
      }

-- | A description of the deployment.
startDeployment_description :: Lens.Lens' StartDeployment (Prelude.Maybe Prelude.Text)
startDeployment_description = Lens.lens (\StartDeployment' {description} -> description) (\s@StartDeployment' {} a -> s {description = a} :: StartDeployment)

-- | Metadata to assign to the deployment. Tags help organize and categorize
-- your AppConfig resources. Each tag consists of a key and an optional
-- value, both of which you define.
startDeployment_tags :: Lens.Lens' StartDeployment (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
startDeployment_tags = Lens.lens (\StartDeployment' {tags} -> tags) (\s@StartDeployment' {} a -> s {tags = a} :: StartDeployment) Prelude.. Lens.mapping Lens.coerced

-- | The application ID.
startDeployment_applicationId :: Lens.Lens' StartDeployment Prelude.Text
startDeployment_applicationId = Lens.lens (\StartDeployment' {applicationId} -> applicationId) (\s@StartDeployment' {} a -> s {applicationId = a} :: StartDeployment)

-- | The environment ID.
startDeployment_environmentId :: Lens.Lens' StartDeployment Prelude.Text
startDeployment_environmentId = Lens.lens (\StartDeployment' {environmentId} -> environmentId) (\s@StartDeployment' {} a -> s {environmentId = a} :: StartDeployment)

-- | The deployment strategy ID.
startDeployment_deploymentStrategyId :: Lens.Lens' StartDeployment Prelude.Text
startDeployment_deploymentStrategyId = Lens.lens (\StartDeployment' {deploymentStrategyId} -> deploymentStrategyId) (\s@StartDeployment' {} a -> s {deploymentStrategyId = a} :: StartDeployment)

-- | The configuration profile ID.
startDeployment_configurationProfileId :: Lens.Lens' StartDeployment Prelude.Text
startDeployment_configurationProfileId = Lens.lens (\StartDeployment' {configurationProfileId} -> configurationProfileId) (\s@StartDeployment' {} a -> s {configurationProfileId = a} :: StartDeployment)

-- | The configuration version to deploy.
startDeployment_configurationVersion :: Lens.Lens' StartDeployment Prelude.Text
startDeployment_configurationVersion = Lens.lens (\StartDeployment' {configurationVersion} -> configurationVersion) (\s@StartDeployment' {} a -> s {configurationVersion = a} :: StartDeployment)

instance Core.AWSRequest StartDeployment where
  type AWSResponse StartDeployment = Deployment
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable StartDeployment

instance Prelude.NFData StartDeployment

instance Core.ToHeaders StartDeployment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartDeployment where
  toJSON StartDeployment' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Description" Core..=) Prelude.<$> description,
            ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ( "DeploymentStrategyId"
                  Core..= deploymentStrategyId
              ),
            Prelude.Just
              ( "ConfigurationProfileId"
                  Core..= configurationProfileId
              ),
            Prelude.Just
              ( "ConfigurationVersion"
                  Core..= configurationVersion
              )
          ]
      )

instance Core.ToPath StartDeployment where
  toPath StartDeployment' {..} =
    Prelude.mconcat
      [ "/applications/",
        Core.toBS applicationId,
        "/environments/",
        Core.toBS environmentId,
        "/deployments"
      ]

instance Core.ToQuery StartDeployment where
  toQuery = Prelude.const Prelude.mempty
