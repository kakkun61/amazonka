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
-- Module      : Network.AWS.AppConfig.UpdateDeploymentStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a deployment strategy.
module Network.AWS.AppConfig.UpdateDeploymentStrategy
  ( -- * Creating a Request
    UpdateDeploymentStrategy (..),
    newUpdateDeploymentStrategy,

    -- * Request Lenses
    updateDeploymentStrategy_growthFactor,
    updateDeploymentStrategy_deploymentDurationInMinutes,
    updateDeploymentStrategy_finalBakeTimeInMinutes,
    updateDeploymentStrategy_description,
    updateDeploymentStrategy_growthType,
    updateDeploymentStrategy_deploymentStrategyId,

    -- * Destructuring the Response
    DeploymentStrategy (..),
    newDeploymentStrategy,

    -- * Response Lenses
    deploymentStrategy_growthFactor,
    deploymentStrategy_replicateTo,
    deploymentStrategy_name,
    deploymentStrategy_id,
    deploymentStrategy_deploymentDurationInMinutes,
    deploymentStrategy_finalBakeTimeInMinutes,
    deploymentStrategy_description,
    deploymentStrategy_growthType,
  )
where

import Network.AWS.AppConfig.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateDeploymentStrategy' smart constructor.
data UpdateDeploymentStrategy = UpdateDeploymentStrategy'
  { -- | The percentage of targets to receive a deployed configuration during
    -- each interval.
    growthFactor :: Prelude.Maybe Prelude.Double,
    -- | Total amount of time for a deployment to last.
    deploymentDurationInMinutes :: Prelude.Maybe Prelude.Natural,
    -- | The amount of time AppConfig monitors for alarms before considering the
    -- deployment to be complete and no longer eligible for automatic roll
    -- back.
    finalBakeTimeInMinutes :: Prelude.Maybe Prelude.Natural,
    -- | A description of the deployment strategy.
    description :: Prelude.Maybe Prelude.Text,
    -- | The algorithm used to define how percentage grows over time. AWS
    -- AppConfig supports the following growth types:
    --
    -- __Linear__: For this type, AppConfig processes the deployment by
    -- increments of the growth factor evenly distributed over the deployment
    -- time. For example, a linear deployment that uses a growth factor of 20
    -- initially makes the configuration available to 20 percent of the
    -- targets. After 1\/5th of the deployment time has passed, the system
    -- updates the percentage to 40 percent. This continues until 100% of the
    -- targets are set to receive the deployed configuration.
    --
    -- __Exponential__: For this type, AppConfig processes the deployment
    -- exponentially using the following formula: @G*(2^N)@. In this formula,
    -- @G@ is the growth factor specified by the user and @N@ is the number of
    -- steps until the configuration is deployed to all targets. For example,
    -- if you specify a growth factor of 2, then the system rolls out the
    -- configuration as follows:
    --
    -- @2*(2^0)@
    --
    -- @2*(2^1)@
    --
    -- @2*(2^2)@
    --
    -- Expressed numerically, the deployment rolls out as follows: 2% of the
    -- targets, 4% of the targets, 8% of the targets, and continues until the
    -- configuration has been deployed to all targets.
    growthType :: Prelude.Maybe GrowthType,
    -- | The deployment strategy ID.
    deploymentStrategyId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDeploymentStrategy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'growthFactor', 'updateDeploymentStrategy_growthFactor' - The percentage of targets to receive a deployed configuration during
-- each interval.
--
-- 'deploymentDurationInMinutes', 'updateDeploymentStrategy_deploymentDurationInMinutes' - Total amount of time for a deployment to last.
--
-- 'finalBakeTimeInMinutes', 'updateDeploymentStrategy_finalBakeTimeInMinutes' - The amount of time AppConfig monitors for alarms before considering the
-- deployment to be complete and no longer eligible for automatic roll
-- back.
--
-- 'description', 'updateDeploymentStrategy_description' - A description of the deployment strategy.
--
-- 'growthType', 'updateDeploymentStrategy_growthType' - The algorithm used to define how percentage grows over time. AWS
-- AppConfig supports the following growth types:
--
-- __Linear__: For this type, AppConfig processes the deployment by
-- increments of the growth factor evenly distributed over the deployment
-- time. For example, a linear deployment that uses a growth factor of 20
-- initially makes the configuration available to 20 percent of the
-- targets. After 1\/5th of the deployment time has passed, the system
-- updates the percentage to 40 percent. This continues until 100% of the
-- targets are set to receive the deployed configuration.
--
-- __Exponential__: For this type, AppConfig processes the deployment
-- exponentially using the following formula: @G*(2^N)@. In this formula,
-- @G@ is the growth factor specified by the user and @N@ is the number of
-- steps until the configuration is deployed to all targets. For example,
-- if you specify a growth factor of 2, then the system rolls out the
-- configuration as follows:
--
-- @2*(2^0)@
--
-- @2*(2^1)@
--
-- @2*(2^2)@
--
-- Expressed numerically, the deployment rolls out as follows: 2% of the
-- targets, 4% of the targets, 8% of the targets, and continues until the
-- configuration has been deployed to all targets.
--
-- 'deploymentStrategyId', 'updateDeploymentStrategy_deploymentStrategyId' - The deployment strategy ID.
newUpdateDeploymentStrategy ::
  -- | 'deploymentStrategyId'
  Prelude.Text ->
  UpdateDeploymentStrategy
newUpdateDeploymentStrategy pDeploymentStrategyId_ =
  UpdateDeploymentStrategy'
    { growthFactor =
        Prelude.Nothing,
      deploymentDurationInMinutes = Prelude.Nothing,
      finalBakeTimeInMinutes = Prelude.Nothing,
      description = Prelude.Nothing,
      growthType = Prelude.Nothing,
      deploymentStrategyId = pDeploymentStrategyId_
    }

-- | The percentage of targets to receive a deployed configuration during
-- each interval.
updateDeploymentStrategy_growthFactor :: Lens.Lens' UpdateDeploymentStrategy (Prelude.Maybe Prelude.Double)
updateDeploymentStrategy_growthFactor = Lens.lens (\UpdateDeploymentStrategy' {growthFactor} -> growthFactor) (\s@UpdateDeploymentStrategy' {} a -> s {growthFactor = a} :: UpdateDeploymentStrategy)

-- | Total amount of time for a deployment to last.
updateDeploymentStrategy_deploymentDurationInMinutes :: Lens.Lens' UpdateDeploymentStrategy (Prelude.Maybe Prelude.Natural)
updateDeploymentStrategy_deploymentDurationInMinutes = Lens.lens (\UpdateDeploymentStrategy' {deploymentDurationInMinutes} -> deploymentDurationInMinutes) (\s@UpdateDeploymentStrategy' {} a -> s {deploymentDurationInMinutes = a} :: UpdateDeploymentStrategy)

-- | The amount of time AppConfig monitors for alarms before considering the
-- deployment to be complete and no longer eligible for automatic roll
-- back.
updateDeploymentStrategy_finalBakeTimeInMinutes :: Lens.Lens' UpdateDeploymentStrategy (Prelude.Maybe Prelude.Natural)
updateDeploymentStrategy_finalBakeTimeInMinutes = Lens.lens (\UpdateDeploymentStrategy' {finalBakeTimeInMinutes} -> finalBakeTimeInMinutes) (\s@UpdateDeploymentStrategy' {} a -> s {finalBakeTimeInMinutes = a} :: UpdateDeploymentStrategy)

-- | A description of the deployment strategy.
updateDeploymentStrategy_description :: Lens.Lens' UpdateDeploymentStrategy (Prelude.Maybe Prelude.Text)
updateDeploymentStrategy_description = Lens.lens (\UpdateDeploymentStrategy' {description} -> description) (\s@UpdateDeploymentStrategy' {} a -> s {description = a} :: UpdateDeploymentStrategy)

-- | The algorithm used to define how percentage grows over time. AWS
-- AppConfig supports the following growth types:
--
-- __Linear__: For this type, AppConfig processes the deployment by
-- increments of the growth factor evenly distributed over the deployment
-- time. For example, a linear deployment that uses a growth factor of 20
-- initially makes the configuration available to 20 percent of the
-- targets. After 1\/5th of the deployment time has passed, the system
-- updates the percentage to 40 percent. This continues until 100% of the
-- targets are set to receive the deployed configuration.
--
-- __Exponential__: For this type, AppConfig processes the deployment
-- exponentially using the following formula: @G*(2^N)@. In this formula,
-- @G@ is the growth factor specified by the user and @N@ is the number of
-- steps until the configuration is deployed to all targets. For example,
-- if you specify a growth factor of 2, then the system rolls out the
-- configuration as follows:
--
-- @2*(2^0)@
--
-- @2*(2^1)@
--
-- @2*(2^2)@
--
-- Expressed numerically, the deployment rolls out as follows: 2% of the
-- targets, 4% of the targets, 8% of the targets, and continues until the
-- configuration has been deployed to all targets.
updateDeploymentStrategy_growthType :: Lens.Lens' UpdateDeploymentStrategy (Prelude.Maybe GrowthType)
updateDeploymentStrategy_growthType = Lens.lens (\UpdateDeploymentStrategy' {growthType} -> growthType) (\s@UpdateDeploymentStrategy' {} a -> s {growthType = a} :: UpdateDeploymentStrategy)

-- | The deployment strategy ID.
updateDeploymentStrategy_deploymentStrategyId :: Lens.Lens' UpdateDeploymentStrategy Prelude.Text
updateDeploymentStrategy_deploymentStrategyId = Lens.lens (\UpdateDeploymentStrategy' {deploymentStrategyId} -> deploymentStrategyId) (\s@UpdateDeploymentStrategy' {} a -> s {deploymentStrategyId = a} :: UpdateDeploymentStrategy)

instance Core.AWSRequest UpdateDeploymentStrategy where
  type
    AWSResponse UpdateDeploymentStrategy =
      DeploymentStrategy
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable UpdateDeploymentStrategy

instance Prelude.NFData UpdateDeploymentStrategy

instance Core.ToHeaders UpdateDeploymentStrategy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateDeploymentStrategy where
  toJSON UpdateDeploymentStrategy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("GrowthFactor" Core..=) Prelude.<$> growthFactor,
            ("DeploymentDurationInMinutes" Core..=)
              Prelude.<$> deploymentDurationInMinutes,
            ("FinalBakeTimeInMinutes" Core..=)
              Prelude.<$> finalBakeTimeInMinutes,
            ("Description" Core..=) Prelude.<$> description,
            ("GrowthType" Core..=) Prelude.<$> growthType
          ]
      )

instance Core.ToPath UpdateDeploymentStrategy where
  toPath UpdateDeploymentStrategy' {..} =
    Prelude.mconcat
      [ "/deploymentstrategies/",
        Core.toBS deploymentStrategyId
      ]

instance Core.ToQuery UpdateDeploymentStrategy where
  toQuery = Prelude.const Prelude.mempty
