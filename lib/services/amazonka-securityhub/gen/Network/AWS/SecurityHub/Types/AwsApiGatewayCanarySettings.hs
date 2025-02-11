{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SecurityHub.Types.AwsApiGatewayCanarySettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsApiGatewayCanarySettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about settings for canary deployment in the stage.
--
-- /See:/ 'newAwsApiGatewayCanarySettings' smart constructor.
data AwsApiGatewayCanarySettings = AwsApiGatewayCanarySettings'
  { -- | The deployment identifier for the canary deployment.
    deploymentId :: Prelude.Maybe Prelude.Text,
    -- | Stage variables that are overridden in the canary release deployment.
    -- The variables include new stage variables that are introduced in the
    -- canary.
    --
    -- Each variable is represented as a string-to-string map between the stage
    -- variable name and the variable value.
    stageVariableOverrides :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Indicates whether the canary deployment uses the stage cache.
    useStageCache :: Prelude.Maybe Prelude.Bool,
    -- | The percentage of traffic that is diverted to a canary deployment.
    percentTraffic :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsApiGatewayCanarySettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deploymentId', 'awsApiGatewayCanarySettings_deploymentId' - The deployment identifier for the canary deployment.
--
-- 'stageVariableOverrides', 'awsApiGatewayCanarySettings_stageVariableOverrides' - Stage variables that are overridden in the canary release deployment.
-- The variables include new stage variables that are introduced in the
-- canary.
--
-- Each variable is represented as a string-to-string map between the stage
-- variable name and the variable value.
--
-- 'useStageCache', 'awsApiGatewayCanarySettings_useStageCache' - Indicates whether the canary deployment uses the stage cache.
--
-- 'percentTraffic', 'awsApiGatewayCanarySettings_percentTraffic' - The percentage of traffic that is diverted to a canary deployment.
newAwsApiGatewayCanarySettings ::
  AwsApiGatewayCanarySettings
newAwsApiGatewayCanarySettings =
  AwsApiGatewayCanarySettings'
    { deploymentId =
        Prelude.Nothing,
      stageVariableOverrides = Prelude.Nothing,
      useStageCache = Prelude.Nothing,
      percentTraffic = Prelude.Nothing
    }

-- | The deployment identifier for the canary deployment.
awsApiGatewayCanarySettings_deploymentId :: Lens.Lens' AwsApiGatewayCanarySettings (Prelude.Maybe Prelude.Text)
awsApiGatewayCanarySettings_deploymentId = Lens.lens (\AwsApiGatewayCanarySettings' {deploymentId} -> deploymentId) (\s@AwsApiGatewayCanarySettings' {} a -> s {deploymentId = a} :: AwsApiGatewayCanarySettings)

-- | Stage variables that are overridden in the canary release deployment.
-- The variables include new stage variables that are introduced in the
-- canary.
--
-- Each variable is represented as a string-to-string map between the stage
-- variable name and the variable value.
awsApiGatewayCanarySettings_stageVariableOverrides :: Lens.Lens' AwsApiGatewayCanarySettings (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
awsApiGatewayCanarySettings_stageVariableOverrides = Lens.lens (\AwsApiGatewayCanarySettings' {stageVariableOverrides} -> stageVariableOverrides) (\s@AwsApiGatewayCanarySettings' {} a -> s {stageVariableOverrides = a} :: AwsApiGatewayCanarySettings) Prelude.. Lens.mapping Lens.coerced

-- | Indicates whether the canary deployment uses the stage cache.
awsApiGatewayCanarySettings_useStageCache :: Lens.Lens' AwsApiGatewayCanarySettings (Prelude.Maybe Prelude.Bool)
awsApiGatewayCanarySettings_useStageCache = Lens.lens (\AwsApiGatewayCanarySettings' {useStageCache} -> useStageCache) (\s@AwsApiGatewayCanarySettings' {} a -> s {useStageCache = a} :: AwsApiGatewayCanarySettings)

-- | The percentage of traffic that is diverted to a canary deployment.
awsApiGatewayCanarySettings_percentTraffic :: Lens.Lens' AwsApiGatewayCanarySettings (Prelude.Maybe Prelude.Double)
awsApiGatewayCanarySettings_percentTraffic = Lens.lens (\AwsApiGatewayCanarySettings' {percentTraffic} -> percentTraffic) (\s@AwsApiGatewayCanarySettings' {} a -> s {percentTraffic = a} :: AwsApiGatewayCanarySettings)

instance Core.FromJSON AwsApiGatewayCanarySettings where
  parseJSON =
    Core.withObject
      "AwsApiGatewayCanarySettings"
      ( \x ->
          AwsApiGatewayCanarySettings'
            Prelude.<$> (x Core..:? "DeploymentId")
            Prelude.<*> ( x Core..:? "StageVariableOverrides"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "UseStageCache")
            Prelude.<*> (x Core..:? "PercentTraffic")
      )

instance Prelude.Hashable AwsApiGatewayCanarySettings

instance Prelude.NFData AwsApiGatewayCanarySettings

instance Core.ToJSON AwsApiGatewayCanarySettings where
  toJSON AwsApiGatewayCanarySettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DeploymentId" Core..=) Prelude.<$> deploymentId,
            ("StageVariableOverrides" Core..=)
              Prelude.<$> stageVariableOverrides,
            ("UseStageCache" Core..=) Prelude.<$> useStageCache,
            ("PercentTraffic" Core..=)
              Prelude.<$> percentTraffic
          ]
      )
