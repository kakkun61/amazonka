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
-- Module      : Network.AWS.SecurityHub.Types.AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about the type of monitoring for instances in the group.
--
-- /See:/ 'newAwsAutoScalingLaunchConfigurationInstanceMonitoringDetails' smart constructor.
data AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails = AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails'
  { -- | If set to @true@, then instances in the group launch with detailed
    -- monitoring.
    --
    -- If set to @false@, then instances in the group launch with basic
    -- monitoring.
    enabled :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enabled', 'awsAutoScalingLaunchConfigurationInstanceMonitoringDetails_enabled' - If set to @true@, then instances in the group launch with detailed
-- monitoring.
--
-- If set to @false@, then instances in the group launch with basic
-- monitoring.
newAwsAutoScalingLaunchConfigurationInstanceMonitoringDetails ::
  AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails
newAwsAutoScalingLaunchConfigurationInstanceMonitoringDetails =
  AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails'
    { enabled =
        Prelude.Nothing
    }

-- | If set to @true@, then instances in the group launch with detailed
-- monitoring.
--
-- If set to @false@, then instances in the group launch with basic
-- monitoring.
awsAutoScalingLaunchConfigurationInstanceMonitoringDetails_enabled :: Lens.Lens' AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails (Prelude.Maybe Prelude.Bool)
awsAutoScalingLaunchConfigurationInstanceMonitoringDetails_enabled = Lens.lens (\AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails' {enabled} -> enabled) (\s@AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails' {} a -> s {enabled = a} :: AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails)

instance
  Core.FromJSON
    AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails
  where
  parseJSON =
    Core.withObject
      "AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails"
      ( \x ->
          AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails'
            Prelude.<$> (x Core..:? "Enabled")
      )

instance
  Prelude.Hashable
    AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails

instance
  Prelude.NFData
    AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails

instance
  Core.ToJSON
    AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails
  where
  toJSON
    AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails' {..} =
      Core.object
        ( Prelude.catMaybes
            [("Enabled" Core..=) Prelude.<$> enabled]
        )
