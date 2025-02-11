{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Amplify.StartJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a new job for a branch of an Amplify app.
module Network.AWS.Amplify.StartJob
  ( -- * Creating a Request
    StartJob (..),
    newStartJob,

    -- * Request Lenses
    startJob_commitId,
    startJob_jobId,
    startJob_jobReason,
    startJob_commitTime,
    startJob_commitMessage,
    startJob_appId,
    startJob_branchName,
    startJob_jobType,

    -- * Destructuring the Response
    StartJobResponse (..),
    newStartJobResponse,

    -- * Response Lenses
    startJobResponse_httpStatus,
    startJobResponse_jobSummary,
  )
where

import Network.AWS.Amplify.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request structure for the start job request.
--
-- /See:/ 'newStartJob' smart constructor.
data StartJob = StartJob'
  { -- | The commit ID from a third-party repository provider for the job.
    commitId :: Prelude.Maybe Prelude.Text,
    -- | The unique ID for an existing job. This is required if the value of
    -- @jobType@ is @RETRY@.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | A descriptive reason for starting this job.
    jobReason :: Prelude.Maybe Prelude.Text,
    -- | The commit date and time for the job.
    commitTime :: Prelude.Maybe Core.POSIX,
    -- | The commit message from a third-party repository provider for the job.
    commitMessage :: Prelude.Maybe Prelude.Text,
    -- | The unique ID for an Amplify app.
    appId :: Prelude.Text,
    -- | The branch name for the job.
    branchName :: Prelude.Text,
    -- | Describes the type for the job. The job type @RELEASE@ starts a new job
    -- with the latest change from the specified branch. This value is
    -- available only for apps that are connected to a repository. The job type
    -- @RETRY@ retries an existing job. If the job type value is @RETRY@, the
    -- @jobId@ is also required.
    jobType :: JobType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'commitId', 'startJob_commitId' - The commit ID from a third-party repository provider for the job.
--
-- 'jobId', 'startJob_jobId' - The unique ID for an existing job. This is required if the value of
-- @jobType@ is @RETRY@.
--
-- 'jobReason', 'startJob_jobReason' - A descriptive reason for starting this job.
--
-- 'commitTime', 'startJob_commitTime' - The commit date and time for the job.
--
-- 'commitMessage', 'startJob_commitMessage' - The commit message from a third-party repository provider for the job.
--
-- 'appId', 'startJob_appId' - The unique ID for an Amplify app.
--
-- 'branchName', 'startJob_branchName' - The branch name for the job.
--
-- 'jobType', 'startJob_jobType' - Describes the type for the job. The job type @RELEASE@ starts a new job
-- with the latest change from the specified branch. This value is
-- available only for apps that are connected to a repository. The job type
-- @RETRY@ retries an existing job. If the job type value is @RETRY@, the
-- @jobId@ is also required.
newStartJob ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'branchName'
  Prelude.Text ->
  -- | 'jobType'
  JobType ->
  StartJob
newStartJob pAppId_ pBranchName_ pJobType_ =
  StartJob'
    { commitId = Prelude.Nothing,
      jobId = Prelude.Nothing,
      jobReason = Prelude.Nothing,
      commitTime = Prelude.Nothing,
      commitMessage = Prelude.Nothing,
      appId = pAppId_,
      branchName = pBranchName_,
      jobType = pJobType_
    }

-- | The commit ID from a third-party repository provider for the job.
startJob_commitId :: Lens.Lens' StartJob (Prelude.Maybe Prelude.Text)
startJob_commitId = Lens.lens (\StartJob' {commitId} -> commitId) (\s@StartJob' {} a -> s {commitId = a} :: StartJob)

-- | The unique ID for an existing job. This is required if the value of
-- @jobType@ is @RETRY@.
startJob_jobId :: Lens.Lens' StartJob (Prelude.Maybe Prelude.Text)
startJob_jobId = Lens.lens (\StartJob' {jobId} -> jobId) (\s@StartJob' {} a -> s {jobId = a} :: StartJob)

-- | A descriptive reason for starting this job.
startJob_jobReason :: Lens.Lens' StartJob (Prelude.Maybe Prelude.Text)
startJob_jobReason = Lens.lens (\StartJob' {jobReason} -> jobReason) (\s@StartJob' {} a -> s {jobReason = a} :: StartJob)

-- | The commit date and time for the job.
startJob_commitTime :: Lens.Lens' StartJob (Prelude.Maybe Prelude.UTCTime)
startJob_commitTime = Lens.lens (\StartJob' {commitTime} -> commitTime) (\s@StartJob' {} a -> s {commitTime = a} :: StartJob) Prelude.. Lens.mapping Core._Time

-- | The commit message from a third-party repository provider for the job.
startJob_commitMessage :: Lens.Lens' StartJob (Prelude.Maybe Prelude.Text)
startJob_commitMessage = Lens.lens (\StartJob' {commitMessage} -> commitMessage) (\s@StartJob' {} a -> s {commitMessage = a} :: StartJob)

-- | The unique ID for an Amplify app.
startJob_appId :: Lens.Lens' StartJob Prelude.Text
startJob_appId = Lens.lens (\StartJob' {appId} -> appId) (\s@StartJob' {} a -> s {appId = a} :: StartJob)

-- | The branch name for the job.
startJob_branchName :: Lens.Lens' StartJob Prelude.Text
startJob_branchName = Lens.lens (\StartJob' {branchName} -> branchName) (\s@StartJob' {} a -> s {branchName = a} :: StartJob)

-- | Describes the type for the job. The job type @RELEASE@ starts a new job
-- with the latest change from the specified branch. This value is
-- available only for apps that are connected to a repository. The job type
-- @RETRY@ retries an existing job. If the job type value is @RETRY@, the
-- @jobId@ is also required.
startJob_jobType :: Lens.Lens' StartJob JobType
startJob_jobType = Lens.lens (\StartJob' {jobType} -> jobType) (\s@StartJob' {} a -> s {jobType = a} :: StartJob)

instance Core.AWSRequest StartJob where
  type AWSResponse StartJob = StartJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StartJobResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "jobSummary")
      )

instance Prelude.Hashable StartJob

instance Prelude.NFData StartJob

instance Core.ToHeaders StartJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartJob where
  toJSON StartJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("commitId" Core..=) Prelude.<$> commitId,
            ("jobId" Core..=) Prelude.<$> jobId,
            ("jobReason" Core..=) Prelude.<$> jobReason,
            ("commitTime" Core..=) Prelude.<$> commitTime,
            ("commitMessage" Core..=) Prelude.<$> commitMessage,
            Prelude.Just ("jobType" Core..= jobType)
          ]
      )

instance Core.ToPath StartJob where
  toPath StartJob' {..} =
    Prelude.mconcat
      [ "/apps/",
        Core.toBS appId,
        "/branches/",
        Core.toBS branchName,
        "/jobs"
      ]

instance Core.ToQuery StartJob where
  toQuery = Prelude.const Prelude.mempty

-- | The result structure for the run job request.
--
-- /See:/ 'newStartJobResponse' smart constructor.
data StartJobResponse = StartJobResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The summary for the job.
    jobSummary :: JobSummary
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'startJobResponse_httpStatus' - The response's http status code.
--
-- 'jobSummary', 'startJobResponse_jobSummary' - The summary for the job.
newStartJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'jobSummary'
  JobSummary ->
  StartJobResponse
newStartJobResponse pHttpStatus_ pJobSummary_ =
  StartJobResponse'
    { httpStatus = pHttpStatus_,
      jobSummary = pJobSummary_
    }

-- | The response's http status code.
startJobResponse_httpStatus :: Lens.Lens' StartJobResponse Prelude.Int
startJobResponse_httpStatus = Lens.lens (\StartJobResponse' {httpStatus} -> httpStatus) (\s@StartJobResponse' {} a -> s {httpStatus = a} :: StartJobResponse)

-- | The summary for the job.
startJobResponse_jobSummary :: Lens.Lens' StartJobResponse JobSummary
startJobResponse_jobSummary = Lens.lens (\StartJobResponse' {jobSummary} -> jobSummary) (\s@StartJobResponse' {} a -> s {jobSummary = a} :: StartJobResponse)

instance Prelude.NFData StartJobResponse
