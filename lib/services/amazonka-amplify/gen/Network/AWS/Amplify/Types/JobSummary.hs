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
-- Module      : Network.AWS.Amplify.Types.JobSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Amplify.Types.JobSummary where

import Network.AWS.Amplify.Types.JobStatus
import Network.AWS.Amplify.Types.JobType
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the summary for an execution job for an Amplify app.
--
-- /See:/ 'newJobSummary' smart constructor.
data JobSummary = JobSummary'
  { -- | The end date and time for the job.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) for the job.
    jobArn :: Prelude.Text,
    -- | The unique ID for the job.
    jobId :: Prelude.Text,
    -- | The commit ID from a third-party repository provider for the job.
    commitId :: Prelude.Text,
    -- | The commit message from a third-party repository provider for the job.
    commitMessage :: Prelude.Text,
    -- | The commit date and time for the job.
    commitTime :: Core.POSIX,
    -- | The start date and time for the job.
    startTime :: Core.POSIX,
    -- | The current status for the job.
    status :: JobStatus,
    -- | The type for the job. If the value is @RELEASE@, the job was manually
    -- released from its source by using the @StartJob@ API. If the value is
    -- @RETRY@, the job was manually retried using the @StartJob@ API. If the
    -- value is @WEB_HOOK@, the job was automatically triggered by webhooks.
    jobType :: JobType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JobSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endTime', 'jobSummary_endTime' - The end date and time for the job.
--
-- 'jobArn', 'jobSummary_jobArn' - The Amazon Resource Name (ARN) for the job.
--
-- 'jobId', 'jobSummary_jobId' - The unique ID for the job.
--
-- 'commitId', 'jobSummary_commitId' - The commit ID from a third-party repository provider for the job.
--
-- 'commitMessage', 'jobSummary_commitMessage' - The commit message from a third-party repository provider for the job.
--
-- 'commitTime', 'jobSummary_commitTime' - The commit date and time for the job.
--
-- 'startTime', 'jobSummary_startTime' - The start date and time for the job.
--
-- 'status', 'jobSummary_status' - The current status for the job.
--
-- 'jobType', 'jobSummary_jobType' - The type for the job. If the value is @RELEASE@, the job was manually
-- released from its source by using the @StartJob@ API. If the value is
-- @RETRY@, the job was manually retried using the @StartJob@ API. If the
-- value is @WEB_HOOK@, the job was automatically triggered by webhooks.
newJobSummary ::
  -- | 'jobArn'
  Prelude.Text ->
  -- | 'jobId'
  Prelude.Text ->
  -- | 'commitId'
  Prelude.Text ->
  -- | 'commitMessage'
  Prelude.Text ->
  -- | 'commitTime'
  Prelude.UTCTime ->
  -- | 'startTime'
  Prelude.UTCTime ->
  -- | 'status'
  JobStatus ->
  -- | 'jobType'
  JobType ->
  JobSummary
newJobSummary
  pJobArn_
  pJobId_
  pCommitId_
  pCommitMessage_
  pCommitTime_
  pStartTime_
  pStatus_
  pJobType_ =
    JobSummary'
      { endTime = Prelude.Nothing,
        jobArn = pJobArn_,
        jobId = pJobId_,
        commitId = pCommitId_,
        commitMessage = pCommitMessage_,
        commitTime = Core._Time Lens.# pCommitTime_,
        startTime = Core._Time Lens.# pStartTime_,
        status = pStatus_,
        jobType = pJobType_
      }

-- | The end date and time for the job.
jobSummary_endTime :: Lens.Lens' JobSummary (Prelude.Maybe Prelude.UTCTime)
jobSummary_endTime = Lens.lens (\JobSummary' {endTime} -> endTime) (\s@JobSummary' {} a -> s {endTime = a} :: JobSummary) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) for the job.
jobSummary_jobArn :: Lens.Lens' JobSummary Prelude.Text
jobSummary_jobArn = Lens.lens (\JobSummary' {jobArn} -> jobArn) (\s@JobSummary' {} a -> s {jobArn = a} :: JobSummary)

-- | The unique ID for the job.
jobSummary_jobId :: Lens.Lens' JobSummary Prelude.Text
jobSummary_jobId = Lens.lens (\JobSummary' {jobId} -> jobId) (\s@JobSummary' {} a -> s {jobId = a} :: JobSummary)

-- | The commit ID from a third-party repository provider for the job.
jobSummary_commitId :: Lens.Lens' JobSummary Prelude.Text
jobSummary_commitId = Lens.lens (\JobSummary' {commitId} -> commitId) (\s@JobSummary' {} a -> s {commitId = a} :: JobSummary)

-- | The commit message from a third-party repository provider for the job.
jobSummary_commitMessage :: Lens.Lens' JobSummary Prelude.Text
jobSummary_commitMessage = Lens.lens (\JobSummary' {commitMessage} -> commitMessage) (\s@JobSummary' {} a -> s {commitMessage = a} :: JobSummary)

-- | The commit date and time for the job.
jobSummary_commitTime :: Lens.Lens' JobSummary Prelude.UTCTime
jobSummary_commitTime = Lens.lens (\JobSummary' {commitTime} -> commitTime) (\s@JobSummary' {} a -> s {commitTime = a} :: JobSummary) Prelude.. Core._Time

-- | The start date and time for the job.
jobSummary_startTime :: Lens.Lens' JobSummary Prelude.UTCTime
jobSummary_startTime = Lens.lens (\JobSummary' {startTime} -> startTime) (\s@JobSummary' {} a -> s {startTime = a} :: JobSummary) Prelude.. Core._Time

-- | The current status for the job.
jobSummary_status :: Lens.Lens' JobSummary JobStatus
jobSummary_status = Lens.lens (\JobSummary' {status} -> status) (\s@JobSummary' {} a -> s {status = a} :: JobSummary)

-- | The type for the job. If the value is @RELEASE@, the job was manually
-- released from its source by using the @StartJob@ API. If the value is
-- @RETRY@, the job was manually retried using the @StartJob@ API. If the
-- value is @WEB_HOOK@, the job was automatically triggered by webhooks.
jobSummary_jobType :: Lens.Lens' JobSummary JobType
jobSummary_jobType = Lens.lens (\JobSummary' {jobType} -> jobType) (\s@JobSummary' {} a -> s {jobType = a} :: JobSummary)

instance Core.FromJSON JobSummary where
  parseJSON =
    Core.withObject
      "JobSummary"
      ( \x ->
          JobSummary'
            Prelude.<$> (x Core..:? "endTime")
            Prelude.<*> (x Core..: "jobArn")
            Prelude.<*> (x Core..: "jobId")
            Prelude.<*> (x Core..: "commitId")
            Prelude.<*> (x Core..: "commitMessage")
            Prelude.<*> (x Core..: "commitTime")
            Prelude.<*> (x Core..: "startTime")
            Prelude.<*> (x Core..: "status")
            Prelude.<*> (x Core..: "jobType")
      )

instance Prelude.Hashable JobSummary

instance Prelude.NFData JobSummary
