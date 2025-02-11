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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.ZeppelinMonitoringConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.ZeppelinMonitoringConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.LogLevel
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes configuration parameters for Amazon CloudWatch logging for a
-- Kinesis Data Analytics Studio notebook. For more information about
-- CloudWatch logging, see
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/java/monitoring-overview.html Monitoring>.
--
-- /See:/ 'newZeppelinMonitoringConfiguration' smart constructor.
data ZeppelinMonitoringConfiguration = ZeppelinMonitoringConfiguration'
  { -- | The verbosity of the CloudWatch Logs for an application.
    logLevel :: LogLevel
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ZeppelinMonitoringConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logLevel', 'zeppelinMonitoringConfiguration_logLevel' - The verbosity of the CloudWatch Logs for an application.
newZeppelinMonitoringConfiguration ::
  -- | 'logLevel'
  LogLevel ->
  ZeppelinMonitoringConfiguration
newZeppelinMonitoringConfiguration pLogLevel_ =
  ZeppelinMonitoringConfiguration'
    { logLevel =
        pLogLevel_
    }

-- | The verbosity of the CloudWatch Logs for an application.
zeppelinMonitoringConfiguration_logLevel :: Lens.Lens' ZeppelinMonitoringConfiguration LogLevel
zeppelinMonitoringConfiguration_logLevel = Lens.lens (\ZeppelinMonitoringConfiguration' {logLevel} -> logLevel) (\s@ZeppelinMonitoringConfiguration' {} a -> s {logLevel = a} :: ZeppelinMonitoringConfiguration)

instance
  Prelude.Hashable
    ZeppelinMonitoringConfiguration

instance
  Prelude.NFData
    ZeppelinMonitoringConfiguration

instance Core.ToJSON ZeppelinMonitoringConfiguration where
  toJSON ZeppelinMonitoringConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("LogLevel" Core..= logLevel)]
      )
