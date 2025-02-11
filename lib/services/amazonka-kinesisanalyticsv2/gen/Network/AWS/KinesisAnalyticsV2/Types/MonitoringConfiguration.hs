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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.MonitoringConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.MonitoringConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.ConfigurationType
import Network.AWS.KinesisAnalyticsV2.Types.LogLevel
import Network.AWS.KinesisAnalyticsV2.Types.MetricsLevel
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes configuration parameters for Amazon CloudWatch logging for an
-- application. For more information about CloudWatch logging, see
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/java/monitoring-overview.html Monitoring>.
--
-- /See:/ 'newMonitoringConfiguration' smart constructor.
data MonitoringConfiguration = MonitoringConfiguration'
  { -- | Describes the verbosity of the CloudWatch Logs for an application.
    logLevel :: Prelude.Maybe LogLevel,
    -- | Describes the granularity of the CloudWatch Logs for an application. The
    -- @Parallelism@ level is not recommended for applications with a
    -- Parallelism over 64 due to excessive costs.
    metricsLevel :: Prelude.Maybe MetricsLevel,
    -- | Describes whether to use the default CloudWatch logging configuration
    -- for an application. You must set this property to @CUSTOM@ in order to
    -- set the @LogLevel@ or @MetricsLevel@ parameters.
    configurationType :: ConfigurationType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MonitoringConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logLevel', 'monitoringConfiguration_logLevel' - Describes the verbosity of the CloudWatch Logs for an application.
--
-- 'metricsLevel', 'monitoringConfiguration_metricsLevel' - Describes the granularity of the CloudWatch Logs for an application. The
-- @Parallelism@ level is not recommended for applications with a
-- Parallelism over 64 due to excessive costs.
--
-- 'configurationType', 'monitoringConfiguration_configurationType' - Describes whether to use the default CloudWatch logging configuration
-- for an application. You must set this property to @CUSTOM@ in order to
-- set the @LogLevel@ or @MetricsLevel@ parameters.
newMonitoringConfiguration ::
  -- | 'configurationType'
  ConfigurationType ->
  MonitoringConfiguration
newMonitoringConfiguration pConfigurationType_ =
  MonitoringConfiguration'
    { logLevel =
        Prelude.Nothing,
      metricsLevel = Prelude.Nothing,
      configurationType = pConfigurationType_
    }

-- | Describes the verbosity of the CloudWatch Logs for an application.
monitoringConfiguration_logLevel :: Lens.Lens' MonitoringConfiguration (Prelude.Maybe LogLevel)
monitoringConfiguration_logLevel = Lens.lens (\MonitoringConfiguration' {logLevel} -> logLevel) (\s@MonitoringConfiguration' {} a -> s {logLevel = a} :: MonitoringConfiguration)

-- | Describes the granularity of the CloudWatch Logs for an application. The
-- @Parallelism@ level is not recommended for applications with a
-- Parallelism over 64 due to excessive costs.
monitoringConfiguration_metricsLevel :: Lens.Lens' MonitoringConfiguration (Prelude.Maybe MetricsLevel)
monitoringConfiguration_metricsLevel = Lens.lens (\MonitoringConfiguration' {metricsLevel} -> metricsLevel) (\s@MonitoringConfiguration' {} a -> s {metricsLevel = a} :: MonitoringConfiguration)

-- | Describes whether to use the default CloudWatch logging configuration
-- for an application. You must set this property to @CUSTOM@ in order to
-- set the @LogLevel@ or @MetricsLevel@ parameters.
monitoringConfiguration_configurationType :: Lens.Lens' MonitoringConfiguration ConfigurationType
monitoringConfiguration_configurationType = Lens.lens (\MonitoringConfiguration' {configurationType} -> configurationType) (\s@MonitoringConfiguration' {} a -> s {configurationType = a} :: MonitoringConfiguration)

instance Prelude.Hashable MonitoringConfiguration

instance Prelude.NFData MonitoringConfiguration

instance Core.ToJSON MonitoringConfiguration where
  toJSON MonitoringConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("LogLevel" Core..=) Prelude.<$> logLevel,
            ("MetricsLevel" Core..=) Prelude.<$> metricsLevel,
            Prelude.Just
              ("ConfigurationType" Core..= configurationType)
          ]
      )
