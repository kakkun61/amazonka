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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.ParallelismConfigurationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.ParallelismConfigurationDescription where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.ConfigurationType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes parameters for how a Flink-based Kinesis Data Analytics
-- application executes multiple tasks simultaneously.
--
-- /See:/ 'newParallelismConfigurationDescription' smart constructor.
data ParallelismConfigurationDescription = ParallelismConfigurationDescription'
  { -- | Describes whether the Kinesis Data Analytics service can increase the
    -- parallelism of the application in response to increased throughput.
    autoScalingEnabled :: Prelude.Maybe Prelude.Bool,
    -- | Describes the current number of parallel tasks that a Flink-based
    -- Kinesis Data Analytics application can perform. If @AutoScalingEnabled@
    -- is set to True, Kinesis Data Analytics can increase this value in
    -- response to application load. The service can increase this value up to
    -- the maximum parallelism, which is @ParalellismPerKPU@ times the maximum
    -- KPUs for the application. The maximum KPUs for an application is 32 by
    -- default, and can be increased by requesting a limit increase. If
    -- application load is reduced, the service can reduce the
    -- @CurrentParallelism@ value down to the @Parallelism@ setting.
    currentParallelism :: Prelude.Maybe Prelude.Natural,
    -- | Describes the number of parallel tasks that a Flink-based Kinesis Data
    -- Analytics application can perform per Kinesis Processing Unit (KPU) used
    -- by the application.
    parallelismPerKPU :: Prelude.Maybe Prelude.Natural,
    -- | Describes whether the application uses the default parallelism for the
    -- Kinesis Data Analytics service.
    configurationType :: Prelude.Maybe ConfigurationType,
    -- | Describes the initial number of parallel tasks that a Flink-based
    -- Kinesis Data Analytics application can perform. If @AutoScalingEnabled@
    -- is set to True, then Kinesis Data Analytics can increase the
    -- @CurrentParallelism@ value in response to application load. The service
    -- can increase @CurrentParallelism@ up to the maximum parallelism, which
    -- is @ParalellismPerKPU@ times the maximum KPUs for the application. The
    -- maximum KPUs for an application is 32 by default, and can be increased
    -- by requesting a limit increase. If application load is reduced, the
    -- service can reduce the @CurrentParallelism@ value down to the
    -- @Parallelism@ setting.
    parallelism :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ParallelismConfigurationDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'autoScalingEnabled', 'parallelismConfigurationDescription_autoScalingEnabled' - Describes whether the Kinesis Data Analytics service can increase the
-- parallelism of the application in response to increased throughput.
--
-- 'currentParallelism', 'parallelismConfigurationDescription_currentParallelism' - Describes the current number of parallel tasks that a Flink-based
-- Kinesis Data Analytics application can perform. If @AutoScalingEnabled@
-- is set to True, Kinesis Data Analytics can increase this value in
-- response to application load. The service can increase this value up to
-- the maximum parallelism, which is @ParalellismPerKPU@ times the maximum
-- KPUs for the application. The maximum KPUs for an application is 32 by
-- default, and can be increased by requesting a limit increase. If
-- application load is reduced, the service can reduce the
-- @CurrentParallelism@ value down to the @Parallelism@ setting.
--
-- 'parallelismPerKPU', 'parallelismConfigurationDescription_parallelismPerKPU' - Describes the number of parallel tasks that a Flink-based Kinesis Data
-- Analytics application can perform per Kinesis Processing Unit (KPU) used
-- by the application.
--
-- 'configurationType', 'parallelismConfigurationDescription_configurationType' - Describes whether the application uses the default parallelism for the
-- Kinesis Data Analytics service.
--
-- 'parallelism', 'parallelismConfigurationDescription_parallelism' - Describes the initial number of parallel tasks that a Flink-based
-- Kinesis Data Analytics application can perform. If @AutoScalingEnabled@
-- is set to True, then Kinesis Data Analytics can increase the
-- @CurrentParallelism@ value in response to application load. The service
-- can increase @CurrentParallelism@ up to the maximum parallelism, which
-- is @ParalellismPerKPU@ times the maximum KPUs for the application. The
-- maximum KPUs for an application is 32 by default, and can be increased
-- by requesting a limit increase. If application load is reduced, the
-- service can reduce the @CurrentParallelism@ value down to the
-- @Parallelism@ setting.
newParallelismConfigurationDescription ::
  ParallelismConfigurationDescription
newParallelismConfigurationDescription =
  ParallelismConfigurationDescription'
    { autoScalingEnabled =
        Prelude.Nothing,
      currentParallelism = Prelude.Nothing,
      parallelismPerKPU = Prelude.Nothing,
      configurationType = Prelude.Nothing,
      parallelism = Prelude.Nothing
    }

-- | Describes whether the Kinesis Data Analytics service can increase the
-- parallelism of the application in response to increased throughput.
parallelismConfigurationDescription_autoScalingEnabled :: Lens.Lens' ParallelismConfigurationDescription (Prelude.Maybe Prelude.Bool)
parallelismConfigurationDescription_autoScalingEnabled = Lens.lens (\ParallelismConfigurationDescription' {autoScalingEnabled} -> autoScalingEnabled) (\s@ParallelismConfigurationDescription' {} a -> s {autoScalingEnabled = a} :: ParallelismConfigurationDescription)

-- | Describes the current number of parallel tasks that a Flink-based
-- Kinesis Data Analytics application can perform. If @AutoScalingEnabled@
-- is set to True, Kinesis Data Analytics can increase this value in
-- response to application load. The service can increase this value up to
-- the maximum parallelism, which is @ParalellismPerKPU@ times the maximum
-- KPUs for the application. The maximum KPUs for an application is 32 by
-- default, and can be increased by requesting a limit increase. If
-- application load is reduced, the service can reduce the
-- @CurrentParallelism@ value down to the @Parallelism@ setting.
parallelismConfigurationDescription_currentParallelism :: Lens.Lens' ParallelismConfigurationDescription (Prelude.Maybe Prelude.Natural)
parallelismConfigurationDescription_currentParallelism = Lens.lens (\ParallelismConfigurationDescription' {currentParallelism} -> currentParallelism) (\s@ParallelismConfigurationDescription' {} a -> s {currentParallelism = a} :: ParallelismConfigurationDescription)

-- | Describes the number of parallel tasks that a Flink-based Kinesis Data
-- Analytics application can perform per Kinesis Processing Unit (KPU) used
-- by the application.
parallelismConfigurationDescription_parallelismPerKPU :: Lens.Lens' ParallelismConfigurationDescription (Prelude.Maybe Prelude.Natural)
parallelismConfigurationDescription_parallelismPerKPU = Lens.lens (\ParallelismConfigurationDescription' {parallelismPerKPU} -> parallelismPerKPU) (\s@ParallelismConfigurationDescription' {} a -> s {parallelismPerKPU = a} :: ParallelismConfigurationDescription)

-- | Describes whether the application uses the default parallelism for the
-- Kinesis Data Analytics service.
parallelismConfigurationDescription_configurationType :: Lens.Lens' ParallelismConfigurationDescription (Prelude.Maybe ConfigurationType)
parallelismConfigurationDescription_configurationType = Lens.lens (\ParallelismConfigurationDescription' {configurationType} -> configurationType) (\s@ParallelismConfigurationDescription' {} a -> s {configurationType = a} :: ParallelismConfigurationDescription)

-- | Describes the initial number of parallel tasks that a Flink-based
-- Kinesis Data Analytics application can perform. If @AutoScalingEnabled@
-- is set to True, then Kinesis Data Analytics can increase the
-- @CurrentParallelism@ value in response to application load. The service
-- can increase @CurrentParallelism@ up to the maximum parallelism, which
-- is @ParalellismPerKPU@ times the maximum KPUs for the application. The
-- maximum KPUs for an application is 32 by default, and can be increased
-- by requesting a limit increase. If application load is reduced, the
-- service can reduce the @CurrentParallelism@ value down to the
-- @Parallelism@ setting.
parallelismConfigurationDescription_parallelism :: Lens.Lens' ParallelismConfigurationDescription (Prelude.Maybe Prelude.Natural)
parallelismConfigurationDescription_parallelism = Lens.lens (\ParallelismConfigurationDescription' {parallelism} -> parallelism) (\s@ParallelismConfigurationDescription' {} a -> s {parallelism = a} :: ParallelismConfigurationDescription)

instance
  Core.FromJSON
    ParallelismConfigurationDescription
  where
  parseJSON =
    Core.withObject
      "ParallelismConfigurationDescription"
      ( \x ->
          ParallelismConfigurationDescription'
            Prelude.<$> (x Core..:? "AutoScalingEnabled")
            Prelude.<*> (x Core..:? "CurrentParallelism")
            Prelude.<*> (x Core..:? "ParallelismPerKPU")
            Prelude.<*> (x Core..:? "ConfigurationType")
            Prelude.<*> (x Core..:? "Parallelism")
      )

instance
  Prelude.Hashable
    ParallelismConfigurationDescription

instance
  Prelude.NFData
    ParallelismConfigurationDescription
