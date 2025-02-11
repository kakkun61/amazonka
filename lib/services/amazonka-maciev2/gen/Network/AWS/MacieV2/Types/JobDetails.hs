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
-- Module      : Network.AWS.MacieV2.Types.JobDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.JobDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.IsDefinedInJob
import Network.AWS.MacieV2.Types.IsMonitoredByJob
import qualified Network.AWS.Prelude as Prelude

-- | Specifies whether any one-time or recurring classification jobs are
-- configured to analyze data in an S3 bucket, and, if so, the details of
-- the job that ran most recently.
--
-- /See:/ 'newJobDetails' smart constructor.
data JobDetails = JobDetails'
  { -- | Specifies whether any recurring jobs are configured to analyze data in
    -- the bucket. Possible values are:
    --
    -- -   TRUE - The bucket is explicitly included in the bucket definition
    --     (S3BucketDefinitionForJob) for one or more recurring jobs or the
    --     bucket matches the bucket criteria (S3BucketCriteriaForJob) for one
    --     or more recurring jobs. At least one of those jobs has a status
    --     other than CANCELLED.
    --
    -- -   FALSE - The bucket isn\'t explicitly included in the bucket
    --     definition (S3BucketDefinitionForJob) for any recurring jobs, the
    --     bucket doesn\'t match the bucket criteria (S3BucketCriteriaForJob)
    --     for any recurring jobs, or all the recurring jobs that are
    --     configured to analyze data in the bucket have a status of CANCELLED.
    --
    -- -   UNKNOWN - An exception occurred when Amazon Macie attempted to
    --     retrieve job data for the bucket.
    isMonitoredByJob :: Prelude.Maybe IsMonitoredByJob,
    -- | Specifies whether any one-time or recurring jobs are configured to
    -- analyze data in the bucket. Possible values are:
    --
    -- -   TRUE - The bucket is explicitly included in the bucket definition
    --     (S3BucketDefinitionForJob) for one or more jobs and at least one of
    --     those jobs has a status other than CANCELLED. Or the bucket matched
    --     the bucket criteria (S3BucketCriteriaForJob) for at least one job
    --     that previously ran.
    --
    -- -   FALSE - The bucket isn\'t explicitly included in the bucket
    --     definition (S3BucketDefinitionForJob) for any jobs, all the jobs
    --     that explicitly include the bucket in their bucket definitions have
    --     a status of CANCELLED, or the bucket didn\'t match the bucket
    --     criteria (S3BucketCriteriaForJob) for any jobs that previously ran.
    --
    -- -   UNKNOWN - An exception occurred when Amazon Macie attempted to
    --     retrieve job data for the bucket.
    isDefinedInJob :: Prelude.Maybe IsDefinedInJob,
    -- | The unique identifier for the job that ran most recently and is
    -- configured to analyze data in the bucket, either the latest run of a
    -- recurring job or the only run of a one-time job.
    --
    -- This value is typically null if the value for the isDefinedInJob
    -- property is FALSE or UNKNOWN.
    lastJobId :: Prelude.Maybe Prelude.Text,
    -- | The date and time, in UTC and extended ISO 8601 format, when the job
    -- (lastJobId) started. If the job is a recurring job, this value indicates
    -- when the most recent run started.
    --
    -- This value is typically null if the value for the isDefinedInJob
    -- property is FALSE or UNKNOWN.
    lastJobRunTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JobDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isMonitoredByJob', 'jobDetails_isMonitoredByJob' - Specifies whether any recurring jobs are configured to analyze data in
-- the bucket. Possible values are:
--
-- -   TRUE - The bucket is explicitly included in the bucket definition
--     (S3BucketDefinitionForJob) for one or more recurring jobs or the
--     bucket matches the bucket criteria (S3BucketCriteriaForJob) for one
--     or more recurring jobs. At least one of those jobs has a status
--     other than CANCELLED.
--
-- -   FALSE - The bucket isn\'t explicitly included in the bucket
--     definition (S3BucketDefinitionForJob) for any recurring jobs, the
--     bucket doesn\'t match the bucket criteria (S3BucketCriteriaForJob)
--     for any recurring jobs, or all the recurring jobs that are
--     configured to analyze data in the bucket have a status of CANCELLED.
--
-- -   UNKNOWN - An exception occurred when Amazon Macie attempted to
--     retrieve job data for the bucket.
--
-- 'isDefinedInJob', 'jobDetails_isDefinedInJob' - Specifies whether any one-time or recurring jobs are configured to
-- analyze data in the bucket. Possible values are:
--
-- -   TRUE - The bucket is explicitly included in the bucket definition
--     (S3BucketDefinitionForJob) for one or more jobs and at least one of
--     those jobs has a status other than CANCELLED. Or the bucket matched
--     the bucket criteria (S3BucketCriteriaForJob) for at least one job
--     that previously ran.
--
-- -   FALSE - The bucket isn\'t explicitly included in the bucket
--     definition (S3BucketDefinitionForJob) for any jobs, all the jobs
--     that explicitly include the bucket in their bucket definitions have
--     a status of CANCELLED, or the bucket didn\'t match the bucket
--     criteria (S3BucketCriteriaForJob) for any jobs that previously ran.
--
-- -   UNKNOWN - An exception occurred when Amazon Macie attempted to
--     retrieve job data for the bucket.
--
-- 'lastJobId', 'jobDetails_lastJobId' - The unique identifier for the job that ran most recently and is
-- configured to analyze data in the bucket, either the latest run of a
-- recurring job or the only run of a one-time job.
--
-- This value is typically null if the value for the isDefinedInJob
-- property is FALSE or UNKNOWN.
--
-- 'lastJobRunTime', 'jobDetails_lastJobRunTime' - The date and time, in UTC and extended ISO 8601 format, when the job
-- (lastJobId) started. If the job is a recurring job, this value indicates
-- when the most recent run started.
--
-- This value is typically null if the value for the isDefinedInJob
-- property is FALSE or UNKNOWN.
newJobDetails ::
  JobDetails
newJobDetails =
  JobDetails'
    { isMonitoredByJob = Prelude.Nothing,
      isDefinedInJob = Prelude.Nothing,
      lastJobId = Prelude.Nothing,
      lastJobRunTime = Prelude.Nothing
    }

-- | Specifies whether any recurring jobs are configured to analyze data in
-- the bucket. Possible values are:
--
-- -   TRUE - The bucket is explicitly included in the bucket definition
--     (S3BucketDefinitionForJob) for one or more recurring jobs or the
--     bucket matches the bucket criteria (S3BucketCriteriaForJob) for one
--     or more recurring jobs. At least one of those jobs has a status
--     other than CANCELLED.
--
-- -   FALSE - The bucket isn\'t explicitly included in the bucket
--     definition (S3BucketDefinitionForJob) for any recurring jobs, the
--     bucket doesn\'t match the bucket criteria (S3BucketCriteriaForJob)
--     for any recurring jobs, or all the recurring jobs that are
--     configured to analyze data in the bucket have a status of CANCELLED.
--
-- -   UNKNOWN - An exception occurred when Amazon Macie attempted to
--     retrieve job data for the bucket.
jobDetails_isMonitoredByJob :: Lens.Lens' JobDetails (Prelude.Maybe IsMonitoredByJob)
jobDetails_isMonitoredByJob = Lens.lens (\JobDetails' {isMonitoredByJob} -> isMonitoredByJob) (\s@JobDetails' {} a -> s {isMonitoredByJob = a} :: JobDetails)

-- | Specifies whether any one-time or recurring jobs are configured to
-- analyze data in the bucket. Possible values are:
--
-- -   TRUE - The bucket is explicitly included in the bucket definition
--     (S3BucketDefinitionForJob) for one or more jobs and at least one of
--     those jobs has a status other than CANCELLED. Or the bucket matched
--     the bucket criteria (S3BucketCriteriaForJob) for at least one job
--     that previously ran.
--
-- -   FALSE - The bucket isn\'t explicitly included in the bucket
--     definition (S3BucketDefinitionForJob) for any jobs, all the jobs
--     that explicitly include the bucket in their bucket definitions have
--     a status of CANCELLED, or the bucket didn\'t match the bucket
--     criteria (S3BucketCriteriaForJob) for any jobs that previously ran.
--
-- -   UNKNOWN - An exception occurred when Amazon Macie attempted to
--     retrieve job data for the bucket.
jobDetails_isDefinedInJob :: Lens.Lens' JobDetails (Prelude.Maybe IsDefinedInJob)
jobDetails_isDefinedInJob = Lens.lens (\JobDetails' {isDefinedInJob} -> isDefinedInJob) (\s@JobDetails' {} a -> s {isDefinedInJob = a} :: JobDetails)

-- | The unique identifier for the job that ran most recently and is
-- configured to analyze data in the bucket, either the latest run of a
-- recurring job or the only run of a one-time job.
--
-- This value is typically null if the value for the isDefinedInJob
-- property is FALSE or UNKNOWN.
jobDetails_lastJobId :: Lens.Lens' JobDetails (Prelude.Maybe Prelude.Text)
jobDetails_lastJobId = Lens.lens (\JobDetails' {lastJobId} -> lastJobId) (\s@JobDetails' {} a -> s {lastJobId = a} :: JobDetails)

-- | The date and time, in UTC and extended ISO 8601 format, when the job
-- (lastJobId) started. If the job is a recurring job, this value indicates
-- when the most recent run started.
--
-- This value is typically null if the value for the isDefinedInJob
-- property is FALSE or UNKNOWN.
jobDetails_lastJobRunTime :: Lens.Lens' JobDetails (Prelude.Maybe Prelude.UTCTime)
jobDetails_lastJobRunTime = Lens.lens (\JobDetails' {lastJobRunTime} -> lastJobRunTime) (\s@JobDetails' {} a -> s {lastJobRunTime = a} :: JobDetails) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON JobDetails where
  parseJSON =
    Core.withObject
      "JobDetails"
      ( \x ->
          JobDetails'
            Prelude.<$> (x Core..:? "isMonitoredByJob")
            Prelude.<*> (x Core..:? "isDefinedInJob")
            Prelude.<*> (x Core..:? "lastJobId")
            Prelude.<*> (x Core..:? "lastJobRunTime")
      )

instance Prelude.Hashable JobDetails

instance Prelude.NFData JobDetails
