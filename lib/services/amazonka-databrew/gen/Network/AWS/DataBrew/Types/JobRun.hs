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
-- Module      : Network.AWS.DataBrew.Types.JobRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataBrew.Types.JobRun where

import qualified Network.AWS.Core as Core
import Network.AWS.DataBrew.Types.DataCatalogOutput
import Network.AWS.DataBrew.Types.DatabaseOutput
import Network.AWS.DataBrew.Types.JobRunState
import Network.AWS.DataBrew.Types.JobSample
import Network.AWS.DataBrew.Types.LogSubscription
import Network.AWS.DataBrew.Types.Output
import Network.AWS.DataBrew.Types.RecipeReference
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents one run of a DataBrew job.
--
-- /See:/ 'newJobRun' smart constructor.
data JobRun = JobRun'
  { -- | The date and time when the job completed processing.
    completedOn :: Prelude.Maybe Core.POSIX,
    -- | The current state of the job run entity itself.
    state :: Prelude.Maybe JobRunState,
    -- | One or more artifacts that represent the Glue Data Catalog output from
    -- running the job.
    dataCatalogOutputs :: Prelude.Maybe (Prelude.NonEmpty DataCatalogOutput),
    -- | The name of the job being processed during this run.
    jobName :: Prelude.Maybe Prelude.Text,
    -- | The date and time when the job run began.
    startedOn :: Prelude.Maybe Core.POSIX,
    -- | The set of steps processed by the job.
    recipeReference :: Prelude.Maybe RecipeReference,
    -- | Represents a list of JDBC database output objects which defines the
    -- output destination for a DataBrew recipe job to write into.
    databaseOutputs :: Prelude.Maybe (Prelude.NonEmpty DatabaseOutput),
    -- | The name of an Amazon CloudWatch log group, where the job writes
    -- diagnostic messages when it runs.
    logGroupName :: Prelude.Maybe Prelude.Text,
    -- | One or more output artifacts from a job run.
    outputs :: Prelude.Maybe (Prelude.NonEmpty Output),
    -- | The unique identifier of the job run.
    runId :: Prelude.Maybe Prelude.Text,
    -- | The amount of time, in seconds, during which a job run consumed
    -- resources.
    executionTime :: Prelude.Maybe Prelude.Int,
    -- | The current status of Amazon CloudWatch logging for the job run.
    logSubscription :: Prelude.Maybe LogSubscription,
    -- | The Amazon Resource Name (ARN) of the user who initiated the job run.
    startedBy :: Prelude.Maybe Prelude.Text,
    -- | The name of the dataset for the job to process.
    datasetName :: Prelude.Maybe Prelude.Text,
    -- | The number of times that DataBrew has attempted to run the job.
    attempt :: Prelude.Maybe Prelude.Int,
    -- | A message indicating an error (if any) that was encountered when the job
    -- ran.
    errorMessage :: Prelude.Maybe Prelude.Text,
    -- | A sample configuration for profile jobs only, which determines the
    -- number of rows on which the profile job is run. If a @JobSample@ value
    -- isn\'t provided, the default is used. The default value is CUSTOM_ROWS
    -- for the mode parameter and 20,000 for the size parameter.
    jobSample :: Prelude.Maybe JobSample
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JobRun' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'completedOn', 'jobRun_completedOn' - The date and time when the job completed processing.
--
-- 'state', 'jobRun_state' - The current state of the job run entity itself.
--
-- 'dataCatalogOutputs', 'jobRun_dataCatalogOutputs' - One or more artifacts that represent the Glue Data Catalog output from
-- running the job.
--
-- 'jobName', 'jobRun_jobName' - The name of the job being processed during this run.
--
-- 'startedOn', 'jobRun_startedOn' - The date and time when the job run began.
--
-- 'recipeReference', 'jobRun_recipeReference' - The set of steps processed by the job.
--
-- 'databaseOutputs', 'jobRun_databaseOutputs' - Represents a list of JDBC database output objects which defines the
-- output destination for a DataBrew recipe job to write into.
--
-- 'logGroupName', 'jobRun_logGroupName' - The name of an Amazon CloudWatch log group, where the job writes
-- diagnostic messages when it runs.
--
-- 'outputs', 'jobRun_outputs' - One or more output artifacts from a job run.
--
-- 'runId', 'jobRun_runId' - The unique identifier of the job run.
--
-- 'executionTime', 'jobRun_executionTime' - The amount of time, in seconds, during which a job run consumed
-- resources.
--
-- 'logSubscription', 'jobRun_logSubscription' - The current status of Amazon CloudWatch logging for the job run.
--
-- 'startedBy', 'jobRun_startedBy' - The Amazon Resource Name (ARN) of the user who initiated the job run.
--
-- 'datasetName', 'jobRun_datasetName' - The name of the dataset for the job to process.
--
-- 'attempt', 'jobRun_attempt' - The number of times that DataBrew has attempted to run the job.
--
-- 'errorMessage', 'jobRun_errorMessage' - A message indicating an error (if any) that was encountered when the job
-- ran.
--
-- 'jobSample', 'jobRun_jobSample' - A sample configuration for profile jobs only, which determines the
-- number of rows on which the profile job is run. If a @JobSample@ value
-- isn\'t provided, the default is used. The default value is CUSTOM_ROWS
-- for the mode parameter and 20,000 for the size parameter.
newJobRun ::
  JobRun
newJobRun =
  JobRun'
    { completedOn = Prelude.Nothing,
      state = Prelude.Nothing,
      dataCatalogOutputs = Prelude.Nothing,
      jobName = Prelude.Nothing,
      startedOn = Prelude.Nothing,
      recipeReference = Prelude.Nothing,
      databaseOutputs = Prelude.Nothing,
      logGroupName = Prelude.Nothing,
      outputs = Prelude.Nothing,
      runId = Prelude.Nothing,
      executionTime = Prelude.Nothing,
      logSubscription = Prelude.Nothing,
      startedBy = Prelude.Nothing,
      datasetName = Prelude.Nothing,
      attempt = Prelude.Nothing,
      errorMessage = Prelude.Nothing,
      jobSample = Prelude.Nothing
    }

-- | The date and time when the job completed processing.
jobRun_completedOn :: Lens.Lens' JobRun (Prelude.Maybe Prelude.UTCTime)
jobRun_completedOn = Lens.lens (\JobRun' {completedOn} -> completedOn) (\s@JobRun' {} a -> s {completedOn = a} :: JobRun) Prelude.. Lens.mapping Core._Time

-- | The current state of the job run entity itself.
jobRun_state :: Lens.Lens' JobRun (Prelude.Maybe JobRunState)
jobRun_state = Lens.lens (\JobRun' {state} -> state) (\s@JobRun' {} a -> s {state = a} :: JobRun)

-- | One or more artifacts that represent the Glue Data Catalog output from
-- running the job.
jobRun_dataCatalogOutputs :: Lens.Lens' JobRun (Prelude.Maybe (Prelude.NonEmpty DataCatalogOutput))
jobRun_dataCatalogOutputs = Lens.lens (\JobRun' {dataCatalogOutputs} -> dataCatalogOutputs) (\s@JobRun' {} a -> s {dataCatalogOutputs = a} :: JobRun) Prelude.. Lens.mapping Lens.coerced

-- | The name of the job being processed during this run.
jobRun_jobName :: Lens.Lens' JobRun (Prelude.Maybe Prelude.Text)
jobRun_jobName = Lens.lens (\JobRun' {jobName} -> jobName) (\s@JobRun' {} a -> s {jobName = a} :: JobRun)

-- | The date and time when the job run began.
jobRun_startedOn :: Lens.Lens' JobRun (Prelude.Maybe Prelude.UTCTime)
jobRun_startedOn = Lens.lens (\JobRun' {startedOn} -> startedOn) (\s@JobRun' {} a -> s {startedOn = a} :: JobRun) Prelude.. Lens.mapping Core._Time

-- | The set of steps processed by the job.
jobRun_recipeReference :: Lens.Lens' JobRun (Prelude.Maybe RecipeReference)
jobRun_recipeReference = Lens.lens (\JobRun' {recipeReference} -> recipeReference) (\s@JobRun' {} a -> s {recipeReference = a} :: JobRun)

-- | Represents a list of JDBC database output objects which defines the
-- output destination for a DataBrew recipe job to write into.
jobRun_databaseOutputs :: Lens.Lens' JobRun (Prelude.Maybe (Prelude.NonEmpty DatabaseOutput))
jobRun_databaseOutputs = Lens.lens (\JobRun' {databaseOutputs} -> databaseOutputs) (\s@JobRun' {} a -> s {databaseOutputs = a} :: JobRun) Prelude.. Lens.mapping Lens.coerced

-- | The name of an Amazon CloudWatch log group, where the job writes
-- diagnostic messages when it runs.
jobRun_logGroupName :: Lens.Lens' JobRun (Prelude.Maybe Prelude.Text)
jobRun_logGroupName = Lens.lens (\JobRun' {logGroupName} -> logGroupName) (\s@JobRun' {} a -> s {logGroupName = a} :: JobRun)

-- | One or more output artifacts from a job run.
jobRun_outputs :: Lens.Lens' JobRun (Prelude.Maybe (Prelude.NonEmpty Output))
jobRun_outputs = Lens.lens (\JobRun' {outputs} -> outputs) (\s@JobRun' {} a -> s {outputs = a} :: JobRun) Prelude.. Lens.mapping Lens.coerced

-- | The unique identifier of the job run.
jobRun_runId :: Lens.Lens' JobRun (Prelude.Maybe Prelude.Text)
jobRun_runId = Lens.lens (\JobRun' {runId} -> runId) (\s@JobRun' {} a -> s {runId = a} :: JobRun)

-- | The amount of time, in seconds, during which a job run consumed
-- resources.
jobRun_executionTime :: Lens.Lens' JobRun (Prelude.Maybe Prelude.Int)
jobRun_executionTime = Lens.lens (\JobRun' {executionTime} -> executionTime) (\s@JobRun' {} a -> s {executionTime = a} :: JobRun)

-- | The current status of Amazon CloudWatch logging for the job run.
jobRun_logSubscription :: Lens.Lens' JobRun (Prelude.Maybe LogSubscription)
jobRun_logSubscription = Lens.lens (\JobRun' {logSubscription} -> logSubscription) (\s@JobRun' {} a -> s {logSubscription = a} :: JobRun)

-- | The Amazon Resource Name (ARN) of the user who initiated the job run.
jobRun_startedBy :: Lens.Lens' JobRun (Prelude.Maybe Prelude.Text)
jobRun_startedBy = Lens.lens (\JobRun' {startedBy} -> startedBy) (\s@JobRun' {} a -> s {startedBy = a} :: JobRun)

-- | The name of the dataset for the job to process.
jobRun_datasetName :: Lens.Lens' JobRun (Prelude.Maybe Prelude.Text)
jobRun_datasetName = Lens.lens (\JobRun' {datasetName} -> datasetName) (\s@JobRun' {} a -> s {datasetName = a} :: JobRun)

-- | The number of times that DataBrew has attempted to run the job.
jobRun_attempt :: Lens.Lens' JobRun (Prelude.Maybe Prelude.Int)
jobRun_attempt = Lens.lens (\JobRun' {attempt} -> attempt) (\s@JobRun' {} a -> s {attempt = a} :: JobRun)

-- | A message indicating an error (if any) that was encountered when the job
-- ran.
jobRun_errorMessage :: Lens.Lens' JobRun (Prelude.Maybe Prelude.Text)
jobRun_errorMessage = Lens.lens (\JobRun' {errorMessage} -> errorMessage) (\s@JobRun' {} a -> s {errorMessage = a} :: JobRun)

-- | A sample configuration for profile jobs only, which determines the
-- number of rows on which the profile job is run. If a @JobSample@ value
-- isn\'t provided, the default is used. The default value is CUSTOM_ROWS
-- for the mode parameter and 20,000 for the size parameter.
jobRun_jobSample :: Lens.Lens' JobRun (Prelude.Maybe JobSample)
jobRun_jobSample = Lens.lens (\JobRun' {jobSample} -> jobSample) (\s@JobRun' {} a -> s {jobSample = a} :: JobRun)

instance Core.FromJSON JobRun where
  parseJSON =
    Core.withObject
      "JobRun"
      ( \x ->
          JobRun'
            Prelude.<$> (x Core..:? "CompletedOn")
            Prelude.<*> (x Core..:? "State")
            Prelude.<*> (x Core..:? "DataCatalogOutputs")
            Prelude.<*> (x Core..:? "JobName")
            Prelude.<*> (x Core..:? "StartedOn")
            Prelude.<*> (x Core..:? "RecipeReference")
            Prelude.<*> (x Core..:? "DatabaseOutputs")
            Prelude.<*> (x Core..:? "LogGroupName")
            Prelude.<*> (x Core..:? "Outputs")
            Prelude.<*> (x Core..:? "RunId")
            Prelude.<*> (x Core..:? "ExecutionTime")
            Prelude.<*> (x Core..:? "LogSubscription")
            Prelude.<*> (x Core..:? "StartedBy")
            Prelude.<*> (x Core..:? "DatasetName")
            Prelude.<*> (x Core..:? "Attempt")
            Prelude.<*> (x Core..:? "ErrorMessage")
            Prelude.<*> (x Core..:? "JobSample")
      )

instance Prelude.Hashable JobRun

instance Prelude.NFData JobRun
