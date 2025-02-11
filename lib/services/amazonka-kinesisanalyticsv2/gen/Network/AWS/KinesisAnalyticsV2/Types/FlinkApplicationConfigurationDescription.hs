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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.FlinkApplicationConfigurationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.FlinkApplicationConfigurationDescription where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.CheckpointConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.MonitoringConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.ParallelismConfigurationDescription
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes configuration parameters for a Flink-based Kinesis Data
-- Analytics application.
--
-- /See:/ 'newFlinkApplicationConfigurationDescription' smart constructor.
data FlinkApplicationConfigurationDescription = FlinkApplicationConfigurationDescription'
  { -- | Describes configuration parameters for Amazon CloudWatch logging for an
    -- application.
    monitoringConfigurationDescription :: Prelude.Maybe MonitoringConfigurationDescription,
    -- | Describes parameters for how an application executes multiple tasks
    -- simultaneously.
    parallelismConfigurationDescription :: Prelude.Maybe ParallelismConfigurationDescription,
    -- | Describes an application\'s checkpointing configuration. Checkpointing
    -- is the process of persisting application state for fault tolerance.
    checkpointConfigurationDescription :: Prelude.Maybe CheckpointConfigurationDescription,
    -- | The job plan for an application. For more information about the job
    -- plan, see
    -- <https://ci.apache.org/projects/flink/flink-docs-release-1.8/internals/job_scheduling.html Jobs and Scheduling>
    -- in the
    -- <https://ci.apache.org/projects/flink/flink-docs-release-1.8/ Apache Flink Documentation>.
    -- To retrieve the job plan for the application, use the
    -- DescribeApplicationRequest$IncludeAdditionalDetails parameter of the
    -- DescribeApplication operation.
    jobPlanDescription :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FlinkApplicationConfigurationDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'monitoringConfigurationDescription', 'flinkApplicationConfigurationDescription_monitoringConfigurationDescription' - Describes configuration parameters for Amazon CloudWatch logging for an
-- application.
--
-- 'parallelismConfigurationDescription', 'flinkApplicationConfigurationDescription_parallelismConfigurationDescription' - Describes parameters for how an application executes multiple tasks
-- simultaneously.
--
-- 'checkpointConfigurationDescription', 'flinkApplicationConfigurationDescription_checkpointConfigurationDescription' - Describes an application\'s checkpointing configuration. Checkpointing
-- is the process of persisting application state for fault tolerance.
--
-- 'jobPlanDescription', 'flinkApplicationConfigurationDescription_jobPlanDescription' - The job plan for an application. For more information about the job
-- plan, see
-- <https://ci.apache.org/projects/flink/flink-docs-release-1.8/internals/job_scheduling.html Jobs and Scheduling>
-- in the
-- <https://ci.apache.org/projects/flink/flink-docs-release-1.8/ Apache Flink Documentation>.
-- To retrieve the job plan for the application, use the
-- DescribeApplicationRequest$IncludeAdditionalDetails parameter of the
-- DescribeApplication operation.
newFlinkApplicationConfigurationDescription ::
  FlinkApplicationConfigurationDescription
newFlinkApplicationConfigurationDescription =
  FlinkApplicationConfigurationDescription'
    { monitoringConfigurationDescription =
        Prelude.Nothing,
      parallelismConfigurationDescription =
        Prelude.Nothing,
      checkpointConfigurationDescription =
        Prelude.Nothing,
      jobPlanDescription =
        Prelude.Nothing
    }

-- | Describes configuration parameters for Amazon CloudWatch logging for an
-- application.
flinkApplicationConfigurationDescription_monitoringConfigurationDescription :: Lens.Lens' FlinkApplicationConfigurationDescription (Prelude.Maybe MonitoringConfigurationDescription)
flinkApplicationConfigurationDescription_monitoringConfigurationDescription = Lens.lens (\FlinkApplicationConfigurationDescription' {monitoringConfigurationDescription} -> monitoringConfigurationDescription) (\s@FlinkApplicationConfigurationDescription' {} a -> s {monitoringConfigurationDescription = a} :: FlinkApplicationConfigurationDescription)

-- | Describes parameters for how an application executes multiple tasks
-- simultaneously.
flinkApplicationConfigurationDescription_parallelismConfigurationDescription :: Lens.Lens' FlinkApplicationConfigurationDescription (Prelude.Maybe ParallelismConfigurationDescription)
flinkApplicationConfigurationDescription_parallelismConfigurationDescription = Lens.lens (\FlinkApplicationConfigurationDescription' {parallelismConfigurationDescription} -> parallelismConfigurationDescription) (\s@FlinkApplicationConfigurationDescription' {} a -> s {parallelismConfigurationDescription = a} :: FlinkApplicationConfigurationDescription)

-- | Describes an application\'s checkpointing configuration. Checkpointing
-- is the process of persisting application state for fault tolerance.
flinkApplicationConfigurationDescription_checkpointConfigurationDescription :: Lens.Lens' FlinkApplicationConfigurationDescription (Prelude.Maybe CheckpointConfigurationDescription)
flinkApplicationConfigurationDescription_checkpointConfigurationDescription = Lens.lens (\FlinkApplicationConfigurationDescription' {checkpointConfigurationDescription} -> checkpointConfigurationDescription) (\s@FlinkApplicationConfigurationDescription' {} a -> s {checkpointConfigurationDescription = a} :: FlinkApplicationConfigurationDescription)

-- | The job plan for an application. For more information about the job
-- plan, see
-- <https://ci.apache.org/projects/flink/flink-docs-release-1.8/internals/job_scheduling.html Jobs and Scheduling>
-- in the
-- <https://ci.apache.org/projects/flink/flink-docs-release-1.8/ Apache Flink Documentation>.
-- To retrieve the job plan for the application, use the
-- DescribeApplicationRequest$IncludeAdditionalDetails parameter of the
-- DescribeApplication operation.
flinkApplicationConfigurationDescription_jobPlanDescription :: Lens.Lens' FlinkApplicationConfigurationDescription (Prelude.Maybe Prelude.Text)
flinkApplicationConfigurationDescription_jobPlanDescription = Lens.lens (\FlinkApplicationConfigurationDescription' {jobPlanDescription} -> jobPlanDescription) (\s@FlinkApplicationConfigurationDescription' {} a -> s {jobPlanDescription = a} :: FlinkApplicationConfigurationDescription)

instance
  Core.FromJSON
    FlinkApplicationConfigurationDescription
  where
  parseJSON =
    Core.withObject
      "FlinkApplicationConfigurationDescription"
      ( \x ->
          FlinkApplicationConfigurationDescription'
            Prelude.<$> (x Core..:? "MonitoringConfigurationDescription")
            Prelude.<*> (x Core..:? "ParallelismConfigurationDescription")
            Prelude.<*> (x Core..:? "CheckpointConfigurationDescription")
            Prelude.<*> (x Core..:? "JobPlanDescription")
      )

instance
  Prelude.Hashable
    FlinkApplicationConfigurationDescription

instance
  Prelude.NFData
    FlinkApplicationConfigurationDescription
