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
-- Module      : Network.AWS.Glue.Types.JobUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.JobUpdate where

import qualified Network.AWS.Core as Core
import Network.AWS.Glue.Types.ConnectionsList
import Network.AWS.Glue.Types.ExecutionProperty
import Network.AWS.Glue.Types.JobCommand
import Network.AWS.Glue.Types.NotificationProperty
import Network.AWS.Glue.Types.WorkerType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies information used to update an existing job definition. The
-- previous job definition is completely overwritten by this information.
--
-- /See:/ 'newJobUpdate' smart constructor.
data JobUpdate = JobUpdate'
  { -- | The number of workers of a defined @workerType@ that are allocated when
    -- a job runs.
    --
    -- The maximum number of workers you can define are 299 for @G.1X@, and 149
    -- for @G.2X@.
    numberOfWorkers :: Prelude.Maybe Prelude.Int,
    -- | The @JobCommand@ that runs this job (required).
    command :: Prelude.Maybe JobCommand,
    -- | Specifies the configuration properties of a job notification.
    notificationProperty :: Prelude.Maybe NotificationProperty,
    -- | The connections used for this job.
    connections :: Prelude.Maybe ConnectionsList,
    -- | The type of predefined worker that is allocated when a job runs. Accepts
    -- a value of Standard, G.1X, or G.2X.
    --
    -- -   For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB
    --     of memory and a 50GB disk, and 2 executors per worker.
    --
    -- -   For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
    --     of memory, 64 GB disk), and provides 1 executor per worker. We
    --     recommend this worker type for memory-intensive jobs.
    --
    -- -   For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
    --     of memory, 128 GB disk), and provides 1 executor per worker. We
    --     recommend this worker type for memory-intensive jobs.
    workerType :: Prelude.Maybe WorkerType,
    -- | The name of the @SecurityConfiguration@ structure to be used with this
    -- job.
    securityConfiguration :: Prelude.Maybe Prelude.Text,
    -- | Glue version determines the versions of Apache Spark and Python that
    -- Glue supports. The Python version indicates the version supported for
    -- jobs of type Spark.
    --
    -- For more information about the available Glue versions and corresponding
    -- Spark and Python versions, see
    -- <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version>
    -- in the developer guide.
    glueVersion :: Prelude.Maybe Prelude.Text,
    -- | Non-overridable arguments for this job, specified as name-value pairs.
    nonOverridableArguments :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name or Amazon Resource Name (ARN) of the IAM role associated with
    -- this job (required).
    role' :: Prelude.Maybe Prelude.Text,
    -- | This field is reserved for future use.
    logUri :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of times to retry this job if it fails.
    maxRetries :: Prelude.Maybe Prelude.Int,
    -- | An @ExecutionProperty@ specifying the maximum number of concurrent runs
    -- allowed for this job.
    executionProperty :: Prelude.Maybe ExecutionProperty,
    -- | This field is deprecated. Use @MaxCapacity@ instead.
    --
    -- The number of Glue data processing units (DPUs) to allocate to this job.
    -- You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a
    -- relative measure of processing power that consists of 4 vCPUs of compute
    -- capacity and 16 GB of memory. For more information, see the
    -- <https://aws.amazon.com/glue/pricing/ Glue pricing page>.
    allocatedCapacity :: Prelude.Maybe Prelude.Int,
    -- | For Glue version 1.0 or earlier jobs, using the standard worker type,
    -- the number of Glue data processing units (DPUs) that can be allocated
    -- when this job runs. A DPU is a relative measure of processing power that
    -- consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
    -- information, see the
    -- <https://aws.amazon.com/glue/pricing/ Glue pricing page>.
    --
    -- Do not set @Max Capacity@ if using @WorkerType@ and @NumberOfWorkers@.
    --
    -- The value that can be allocated for @MaxCapacity@ depends on whether you
    -- are running a Python shell job or an Apache Spark ETL job:
    --
    -- -   When you specify a Python shell job
    --     (@JobCommand.Name@=\"pythonshell\"), you can allocate either 0.0625
    --     or 1 DPU. The default is 0.0625 DPU.
    --
    -- -   When you specify an Apache Spark ETL job
    --     (@JobCommand.Name@=\"glueetl\") or Apache Spark streaming ETL job
    --     (@JobCommand.Name@=\"gluestreaming\"), you can allocate from 2 to
    --     100 DPUs. The default is 10 DPUs. This job type cannot have a
    --     fractional DPU allocation.
    --
    -- For Glue version 2.0 jobs, you cannot instead specify a
    -- @Maximum capacity@. Instead, you should specify a @Worker type@ and the
    -- @Number of workers@.
    maxCapacity :: Prelude.Maybe Prelude.Double,
    -- | The job timeout in minutes. This is the maximum time that a job run can
    -- consume resources before it is terminated and enters @TIMEOUT@ status.
    -- The default is 2,880 minutes (48 hours).
    timeout :: Prelude.Maybe Prelude.Natural,
    -- | The default arguments for this job.
    --
    -- You can specify arguments here that your own job-execution script
    -- consumes, as well as arguments that Glue itself consumes.
    --
    -- For information about how to specify and consume your own Job arguments,
    -- see the
    -- <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling Glue APIs in Python>
    -- topic in the developer guide.
    --
    -- For information about the key-value pairs that Glue consumes to set up
    -- your job, see the
    -- <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by Glue>
    -- topic in the developer guide.
    defaultArguments :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Description of the job being defined.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JobUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'numberOfWorkers', 'jobUpdate_numberOfWorkers' - The number of workers of a defined @workerType@ that are allocated when
-- a job runs.
--
-- The maximum number of workers you can define are 299 for @G.1X@, and 149
-- for @G.2X@.
--
-- 'command', 'jobUpdate_command' - The @JobCommand@ that runs this job (required).
--
-- 'notificationProperty', 'jobUpdate_notificationProperty' - Specifies the configuration properties of a job notification.
--
-- 'connections', 'jobUpdate_connections' - The connections used for this job.
--
-- 'workerType', 'jobUpdate_workerType' - The type of predefined worker that is allocated when a job runs. Accepts
-- a value of Standard, G.1X, or G.2X.
--
-- -   For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB
--     of memory and a 50GB disk, and 2 executors per worker.
--
-- -   For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
--     of memory, 64 GB disk), and provides 1 executor per worker. We
--     recommend this worker type for memory-intensive jobs.
--
-- -   For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
--     of memory, 128 GB disk), and provides 1 executor per worker. We
--     recommend this worker type for memory-intensive jobs.
--
-- 'securityConfiguration', 'jobUpdate_securityConfiguration' - The name of the @SecurityConfiguration@ structure to be used with this
-- job.
--
-- 'glueVersion', 'jobUpdate_glueVersion' - Glue version determines the versions of Apache Spark and Python that
-- Glue supports. The Python version indicates the version supported for
-- jobs of type Spark.
--
-- For more information about the available Glue versions and corresponding
-- Spark and Python versions, see
-- <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version>
-- in the developer guide.
--
-- 'nonOverridableArguments', 'jobUpdate_nonOverridableArguments' - Non-overridable arguments for this job, specified as name-value pairs.
--
-- 'role'', 'jobUpdate_role' - The name or Amazon Resource Name (ARN) of the IAM role associated with
-- this job (required).
--
-- 'logUri', 'jobUpdate_logUri' - This field is reserved for future use.
--
-- 'maxRetries', 'jobUpdate_maxRetries' - The maximum number of times to retry this job if it fails.
--
-- 'executionProperty', 'jobUpdate_executionProperty' - An @ExecutionProperty@ specifying the maximum number of concurrent runs
-- allowed for this job.
--
-- 'allocatedCapacity', 'jobUpdate_allocatedCapacity' - This field is deprecated. Use @MaxCapacity@ instead.
--
-- The number of Glue data processing units (DPUs) to allocate to this job.
-- You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a
-- relative measure of processing power that consists of 4 vCPUs of compute
-- capacity and 16 GB of memory. For more information, see the
-- <https://aws.amazon.com/glue/pricing/ Glue pricing page>.
--
-- 'maxCapacity', 'jobUpdate_maxCapacity' - For Glue version 1.0 or earlier jobs, using the standard worker type,
-- the number of Glue data processing units (DPUs) that can be allocated
-- when this job runs. A DPU is a relative measure of processing power that
-- consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
-- information, see the
-- <https://aws.amazon.com/glue/pricing/ Glue pricing page>.
--
-- Do not set @Max Capacity@ if using @WorkerType@ and @NumberOfWorkers@.
--
-- The value that can be allocated for @MaxCapacity@ depends on whether you
-- are running a Python shell job or an Apache Spark ETL job:
--
-- -   When you specify a Python shell job
--     (@JobCommand.Name@=\"pythonshell\"), you can allocate either 0.0625
--     or 1 DPU. The default is 0.0625 DPU.
--
-- -   When you specify an Apache Spark ETL job
--     (@JobCommand.Name@=\"glueetl\") or Apache Spark streaming ETL job
--     (@JobCommand.Name@=\"gluestreaming\"), you can allocate from 2 to
--     100 DPUs. The default is 10 DPUs. This job type cannot have a
--     fractional DPU allocation.
--
-- For Glue version 2.0 jobs, you cannot instead specify a
-- @Maximum capacity@. Instead, you should specify a @Worker type@ and the
-- @Number of workers@.
--
-- 'timeout', 'jobUpdate_timeout' - The job timeout in minutes. This is the maximum time that a job run can
-- consume resources before it is terminated and enters @TIMEOUT@ status.
-- The default is 2,880 minutes (48 hours).
--
-- 'defaultArguments', 'jobUpdate_defaultArguments' - The default arguments for this job.
--
-- You can specify arguments here that your own job-execution script
-- consumes, as well as arguments that Glue itself consumes.
--
-- For information about how to specify and consume your own Job arguments,
-- see the
-- <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling Glue APIs in Python>
-- topic in the developer guide.
--
-- For information about the key-value pairs that Glue consumes to set up
-- your job, see the
-- <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by Glue>
-- topic in the developer guide.
--
-- 'description', 'jobUpdate_description' - Description of the job being defined.
newJobUpdate ::
  JobUpdate
newJobUpdate =
  JobUpdate'
    { numberOfWorkers = Prelude.Nothing,
      command = Prelude.Nothing,
      notificationProperty = Prelude.Nothing,
      connections = Prelude.Nothing,
      workerType = Prelude.Nothing,
      securityConfiguration = Prelude.Nothing,
      glueVersion = Prelude.Nothing,
      nonOverridableArguments = Prelude.Nothing,
      role' = Prelude.Nothing,
      logUri = Prelude.Nothing,
      maxRetries = Prelude.Nothing,
      executionProperty = Prelude.Nothing,
      allocatedCapacity = Prelude.Nothing,
      maxCapacity = Prelude.Nothing,
      timeout = Prelude.Nothing,
      defaultArguments = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | The number of workers of a defined @workerType@ that are allocated when
-- a job runs.
--
-- The maximum number of workers you can define are 299 for @G.1X@, and 149
-- for @G.2X@.
jobUpdate_numberOfWorkers :: Lens.Lens' JobUpdate (Prelude.Maybe Prelude.Int)
jobUpdate_numberOfWorkers = Lens.lens (\JobUpdate' {numberOfWorkers} -> numberOfWorkers) (\s@JobUpdate' {} a -> s {numberOfWorkers = a} :: JobUpdate)

-- | The @JobCommand@ that runs this job (required).
jobUpdate_command :: Lens.Lens' JobUpdate (Prelude.Maybe JobCommand)
jobUpdate_command = Lens.lens (\JobUpdate' {command} -> command) (\s@JobUpdate' {} a -> s {command = a} :: JobUpdate)

-- | Specifies the configuration properties of a job notification.
jobUpdate_notificationProperty :: Lens.Lens' JobUpdate (Prelude.Maybe NotificationProperty)
jobUpdate_notificationProperty = Lens.lens (\JobUpdate' {notificationProperty} -> notificationProperty) (\s@JobUpdate' {} a -> s {notificationProperty = a} :: JobUpdate)

-- | The connections used for this job.
jobUpdate_connections :: Lens.Lens' JobUpdate (Prelude.Maybe ConnectionsList)
jobUpdate_connections = Lens.lens (\JobUpdate' {connections} -> connections) (\s@JobUpdate' {} a -> s {connections = a} :: JobUpdate)

-- | The type of predefined worker that is allocated when a job runs. Accepts
-- a value of Standard, G.1X, or G.2X.
--
-- -   For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB
--     of memory and a 50GB disk, and 2 executors per worker.
--
-- -   For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
--     of memory, 64 GB disk), and provides 1 executor per worker. We
--     recommend this worker type for memory-intensive jobs.
--
-- -   For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
--     of memory, 128 GB disk), and provides 1 executor per worker. We
--     recommend this worker type for memory-intensive jobs.
jobUpdate_workerType :: Lens.Lens' JobUpdate (Prelude.Maybe WorkerType)
jobUpdate_workerType = Lens.lens (\JobUpdate' {workerType} -> workerType) (\s@JobUpdate' {} a -> s {workerType = a} :: JobUpdate)

-- | The name of the @SecurityConfiguration@ structure to be used with this
-- job.
jobUpdate_securityConfiguration :: Lens.Lens' JobUpdate (Prelude.Maybe Prelude.Text)
jobUpdate_securityConfiguration = Lens.lens (\JobUpdate' {securityConfiguration} -> securityConfiguration) (\s@JobUpdate' {} a -> s {securityConfiguration = a} :: JobUpdate)

-- | Glue version determines the versions of Apache Spark and Python that
-- Glue supports. The Python version indicates the version supported for
-- jobs of type Spark.
--
-- For more information about the available Glue versions and corresponding
-- Spark and Python versions, see
-- <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version>
-- in the developer guide.
jobUpdate_glueVersion :: Lens.Lens' JobUpdate (Prelude.Maybe Prelude.Text)
jobUpdate_glueVersion = Lens.lens (\JobUpdate' {glueVersion} -> glueVersion) (\s@JobUpdate' {} a -> s {glueVersion = a} :: JobUpdate)

-- | Non-overridable arguments for this job, specified as name-value pairs.
jobUpdate_nonOverridableArguments :: Lens.Lens' JobUpdate (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
jobUpdate_nonOverridableArguments = Lens.lens (\JobUpdate' {nonOverridableArguments} -> nonOverridableArguments) (\s@JobUpdate' {} a -> s {nonOverridableArguments = a} :: JobUpdate) Prelude.. Lens.mapping Lens.coerced

-- | The name or Amazon Resource Name (ARN) of the IAM role associated with
-- this job (required).
jobUpdate_role :: Lens.Lens' JobUpdate (Prelude.Maybe Prelude.Text)
jobUpdate_role = Lens.lens (\JobUpdate' {role'} -> role') (\s@JobUpdate' {} a -> s {role' = a} :: JobUpdate)

-- | This field is reserved for future use.
jobUpdate_logUri :: Lens.Lens' JobUpdate (Prelude.Maybe Prelude.Text)
jobUpdate_logUri = Lens.lens (\JobUpdate' {logUri} -> logUri) (\s@JobUpdate' {} a -> s {logUri = a} :: JobUpdate)

-- | The maximum number of times to retry this job if it fails.
jobUpdate_maxRetries :: Lens.Lens' JobUpdate (Prelude.Maybe Prelude.Int)
jobUpdate_maxRetries = Lens.lens (\JobUpdate' {maxRetries} -> maxRetries) (\s@JobUpdate' {} a -> s {maxRetries = a} :: JobUpdate)

-- | An @ExecutionProperty@ specifying the maximum number of concurrent runs
-- allowed for this job.
jobUpdate_executionProperty :: Lens.Lens' JobUpdate (Prelude.Maybe ExecutionProperty)
jobUpdate_executionProperty = Lens.lens (\JobUpdate' {executionProperty} -> executionProperty) (\s@JobUpdate' {} a -> s {executionProperty = a} :: JobUpdate)

-- | This field is deprecated. Use @MaxCapacity@ instead.
--
-- The number of Glue data processing units (DPUs) to allocate to this job.
-- You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a
-- relative measure of processing power that consists of 4 vCPUs of compute
-- capacity and 16 GB of memory. For more information, see the
-- <https://aws.amazon.com/glue/pricing/ Glue pricing page>.
jobUpdate_allocatedCapacity :: Lens.Lens' JobUpdate (Prelude.Maybe Prelude.Int)
jobUpdate_allocatedCapacity = Lens.lens (\JobUpdate' {allocatedCapacity} -> allocatedCapacity) (\s@JobUpdate' {} a -> s {allocatedCapacity = a} :: JobUpdate)

-- | For Glue version 1.0 or earlier jobs, using the standard worker type,
-- the number of Glue data processing units (DPUs) that can be allocated
-- when this job runs. A DPU is a relative measure of processing power that
-- consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
-- information, see the
-- <https://aws.amazon.com/glue/pricing/ Glue pricing page>.
--
-- Do not set @Max Capacity@ if using @WorkerType@ and @NumberOfWorkers@.
--
-- The value that can be allocated for @MaxCapacity@ depends on whether you
-- are running a Python shell job or an Apache Spark ETL job:
--
-- -   When you specify a Python shell job
--     (@JobCommand.Name@=\"pythonshell\"), you can allocate either 0.0625
--     or 1 DPU. The default is 0.0625 DPU.
--
-- -   When you specify an Apache Spark ETL job
--     (@JobCommand.Name@=\"glueetl\") or Apache Spark streaming ETL job
--     (@JobCommand.Name@=\"gluestreaming\"), you can allocate from 2 to
--     100 DPUs. The default is 10 DPUs. This job type cannot have a
--     fractional DPU allocation.
--
-- For Glue version 2.0 jobs, you cannot instead specify a
-- @Maximum capacity@. Instead, you should specify a @Worker type@ and the
-- @Number of workers@.
jobUpdate_maxCapacity :: Lens.Lens' JobUpdate (Prelude.Maybe Prelude.Double)
jobUpdate_maxCapacity = Lens.lens (\JobUpdate' {maxCapacity} -> maxCapacity) (\s@JobUpdate' {} a -> s {maxCapacity = a} :: JobUpdate)

-- | The job timeout in minutes. This is the maximum time that a job run can
-- consume resources before it is terminated and enters @TIMEOUT@ status.
-- The default is 2,880 minutes (48 hours).
jobUpdate_timeout :: Lens.Lens' JobUpdate (Prelude.Maybe Prelude.Natural)
jobUpdate_timeout = Lens.lens (\JobUpdate' {timeout} -> timeout) (\s@JobUpdate' {} a -> s {timeout = a} :: JobUpdate)

-- | The default arguments for this job.
--
-- You can specify arguments here that your own job-execution script
-- consumes, as well as arguments that Glue itself consumes.
--
-- For information about how to specify and consume your own Job arguments,
-- see the
-- <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html Calling Glue APIs in Python>
-- topic in the developer guide.
--
-- For information about the key-value pairs that Glue consumes to set up
-- your job, see the
-- <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html Special Parameters Used by Glue>
-- topic in the developer guide.
jobUpdate_defaultArguments :: Lens.Lens' JobUpdate (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
jobUpdate_defaultArguments = Lens.lens (\JobUpdate' {defaultArguments} -> defaultArguments) (\s@JobUpdate' {} a -> s {defaultArguments = a} :: JobUpdate) Prelude.. Lens.mapping Lens.coerced

-- | Description of the job being defined.
jobUpdate_description :: Lens.Lens' JobUpdate (Prelude.Maybe Prelude.Text)
jobUpdate_description = Lens.lens (\JobUpdate' {description} -> description) (\s@JobUpdate' {} a -> s {description = a} :: JobUpdate)

instance Prelude.Hashable JobUpdate

instance Prelude.NFData JobUpdate

instance Core.ToJSON JobUpdate where
  toJSON JobUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NumberOfWorkers" Core..=)
              Prelude.<$> numberOfWorkers,
            ("Command" Core..=) Prelude.<$> command,
            ("NotificationProperty" Core..=)
              Prelude.<$> notificationProperty,
            ("Connections" Core..=) Prelude.<$> connections,
            ("WorkerType" Core..=) Prelude.<$> workerType,
            ("SecurityConfiguration" Core..=)
              Prelude.<$> securityConfiguration,
            ("GlueVersion" Core..=) Prelude.<$> glueVersion,
            ("NonOverridableArguments" Core..=)
              Prelude.<$> nonOverridableArguments,
            ("Role" Core..=) Prelude.<$> role',
            ("LogUri" Core..=) Prelude.<$> logUri,
            ("MaxRetries" Core..=) Prelude.<$> maxRetries,
            ("ExecutionProperty" Core..=)
              Prelude.<$> executionProperty,
            ("AllocatedCapacity" Core..=)
              Prelude.<$> allocatedCapacity,
            ("MaxCapacity" Core..=) Prelude.<$> maxCapacity,
            ("Timeout" Core..=) Prelude.<$> timeout,
            ("DefaultArguments" Core..=)
              Prelude.<$> defaultArguments,
            ("Description" Core..=) Prelude.<$> description
          ]
      )
