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
-- Module      : Network.AWS.GreengrassV2.Types.IoTJobExecutionsRolloutConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GreengrassV2.Types.IoTJobExecutionsRolloutConfig where

import qualified Network.AWS.Core as Core
import Network.AWS.GreengrassV2.Types.IoTJobExponentialRolloutRate
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about the rollout configuration for a job. This
-- configuration defines the rate at which the job deploys a configuration
-- to a fleet of target devices.
--
-- /See:/ 'newIoTJobExecutionsRolloutConfig' smart constructor.
data IoTJobExecutionsRolloutConfig = IoTJobExecutionsRolloutConfig'
  { -- | The exponential rate to increase the job rollout rate.
    exponentialRate :: Prelude.Maybe IoTJobExponentialRolloutRate,
    -- | The maximum number of devices that receive a pending job notification,
    -- per minute.
    maximumPerMinute :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IoTJobExecutionsRolloutConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'exponentialRate', 'ioTJobExecutionsRolloutConfig_exponentialRate' - The exponential rate to increase the job rollout rate.
--
-- 'maximumPerMinute', 'ioTJobExecutionsRolloutConfig_maximumPerMinute' - The maximum number of devices that receive a pending job notification,
-- per minute.
newIoTJobExecutionsRolloutConfig ::
  IoTJobExecutionsRolloutConfig
newIoTJobExecutionsRolloutConfig =
  IoTJobExecutionsRolloutConfig'
    { exponentialRate =
        Prelude.Nothing,
      maximumPerMinute = Prelude.Nothing
    }

-- | The exponential rate to increase the job rollout rate.
ioTJobExecutionsRolloutConfig_exponentialRate :: Lens.Lens' IoTJobExecutionsRolloutConfig (Prelude.Maybe IoTJobExponentialRolloutRate)
ioTJobExecutionsRolloutConfig_exponentialRate = Lens.lens (\IoTJobExecutionsRolloutConfig' {exponentialRate} -> exponentialRate) (\s@IoTJobExecutionsRolloutConfig' {} a -> s {exponentialRate = a} :: IoTJobExecutionsRolloutConfig)

-- | The maximum number of devices that receive a pending job notification,
-- per minute.
ioTJobExecutionsRolloutConfig_maximumPerMinute :: Lens.Lens' IoTJobExecutionsRolloutConfig (Prelude.Maybe Prelude.Natural)
ioTJobExecutionsRolloutConfig_maximumPerMinute = Lens.lens (\IoTJobExecutionsRolloutConfig' {maximumPerMinute} -> maximumPerMinute) (\s@IoTJobExecutionsRolloutConfig' {} a -> s {maximumPerMinute = a} :: IoTJobExecutionsRolloutConfig)

instance Core.FromJSON IoTJobExecutionsRolloutConfig where
  parseJSON =
    Core.withObject
      "IoTJobExecutionsRolloutConfig"
      ( \x ->
          IoTJobExecutionsRolloutConfig'
            Prelude.<$> (x Core..:? "exponentialRate")
            Prelude.<*> (x Core..:? "maximumPerMinute")
      )

instance
  Prelude.Hashable
    IoTJobExecutionsRolloutConfig

instance Prelude.NFData IoTJobExecutionsRolloutConfig

instance Core.ToJSON IoTJobExecutionsRolloutConfig where
  toJSON IoTJobExecutionsRolloutConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("exponentialRate" Core..=)
              Prelude.<$> exponentialRate,
            ("maximumPerMinute" Core..=)
              Prelude.<$> maximumPerMinute
          ]
      )
