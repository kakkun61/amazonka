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
-- Module      : Network.AWS.Comprehend.Types.KeyPhrasesDetectionJobFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.KeyPhrasesDetectionJobFilter where

import Network.AWS.Comprehend.Types.JobStatus
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides information for filtering a list of dominant language detection
-- jobs. For more information, see the operation.
--
-- /See:/ 'newKeyPhrasesDetectionJobFilter' smart constructor.
data KeyPhrasesDetectionJobFilter = KeyPhrasesDetectionJobFilter'
  { -- | Filters the list of jobs based on the time that the job was submitted
    -- for processing. Returns only jobs submitted after the specified time.
    -- Jobs are returned in descending order, newest to oldest.
    submitTimeAfter :: Prelude.Maybe Core.POSIX,
    -- | Filters the list of jobs based on the time that the job was submitted
    -- for processing. Returns only jobs submitted before the specified time.
    -- Jobs are returned in ascending order, oldest to newest.
    submitTimeBefore :: Prelude.Maybe Core.POSIX,
    -- | Filters on the name of the job.
    jobName :: Prelude.Maybe Prelude.Text,
    -- | Filters the list of jobs based on job status. Returns only jobs with the
    -- specified status.
    jobStatus :: Prelude.Maybe JobStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KeyPhrasesDetectionJobFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'submitTimeAfter', 'keyPhrasesDetectionJobFilter_submitTimeAfter' - Filters the list of jobs based on the time that the job was submitted
-- for processing. Returns only jobs submitted after the specified time.
-- Jobs are returned in descending order, newest to oldest.
--
-- 'submitTimeBefore', 'keyPhrasesDetectionJobFilter_submitTimeBefore' - Filters the list of jobs based on the time that the job was submitted
-- for processing. Returns only jobs submitted before the specified time.
-- Jobs are returned in ascending order, oldest to newest.
--
-- 'jobName', 'keyPhrasesDetectionJobFilter_jobName' - Filters on the name of the job.
--
-- 'jobStatus', 'keyPhrasesDetectionJobFilter_jobStatus' - Filters the list of jobs based on job status. Returns only jobs with the
-- specified status.
newKeyPhrasesDetectionJobFilter ::
  KeyPhrasesDetectionJobFilter
newKeyPhrasesDetectionJobFilter =
  KeyPhrasesDetectionJobFilter'
    { submitTimeAfter =
        Prelude.Nothing,
      submitTimeBefore = Prelude.Nothing,
      jobName = Prelude.Nothing,
      jobStatus = Prelude.Nothing
    }

-- | Filters the list of jobs based on the time that the job was submitted
-- for processing. Returns only jobs submitted after the specified time.
-- Jobs are returned in descending order, newest to oldest.
keyPhrasesDetectionJobFilter_submitTimeAfter :: Lens.Lens' KeyPhrasesDetectionJobFilter (Prelude.Maybe Prelude.UTCTime)
keyPhrasesDetectionJobFilter_submitTimeAfter = Lens.lens (\KeyPhrasesDetectionJobFilter' {submitTimeAfter} -> submitTimeAfter) (\s@KeyPhrasesDetectionJobFilter' {} a -> s {submitTimeAfter = a} :: KeyPhrasesDetectionJobFilter) Prelude.. Lens.mapping Core._Time

-- | Filters the list of jobs based on the time that the job was submitted
-- for processing. Returns only jobs submitted before the specified time.
-- Jobs are returned in ascending order, oldest to newest.
keyPhrasesDetectionJobFilter_submitTimeBefore :: Lens.Lens' KeyPhrasesDetectionJobFilter (Prelude.Maybe Prelude.UTCTime)
keyPhrasesDetectionJobFilter_submitTimeBefore = Lens.lens (\KeyPhrasesDetectionJobFilter' {submitTimeBefore} -> submitTimeBefore) (\s@KeyPhrasesDetectionJobFilter' {} a -> s {submitTimeBefore = a} :: KeyPhrasesDetectionJobFilter) Prelude.. Lens.mapping Core._Time

-- | Filters on the name of the job.
keyPhrasesDetectionJobFilter_jobName :: Lens.Lens' KeyPhrasesDetectionJobFilter (Prelude.Maybe Prelude.Text)
keyPhrasesDetectionJobFilter_jobName = Lens.lens (\KeyPhrasesDetectionJobFilter' {jobName} -> jobName) (\s@KeyPhrasesDetectionJobFilter' {} a -> s {jobName = a} :: KeyPhrasesDetectionJobFilter)

-- | Filters the list of jobs based on job status. Returns only jobs with the
-- specified status.
keyPhrasesDetectionJobFilter_jobStatus :: Lens.Lens' KeyPhrasesDetectionJobFilter (Prelude.Maybe JobStatus)
keyPhrasesDetectionJobFilter_jobStatus = Lens.lens (\KeyPhrasesDetectionJobFilter' {jobStatus} -> jobStatus) (\s@KeyPhrasesDetectionJobFilter' {} a -> s {jobStatus = a} :: KeyPhrasesDetectionJobFilter)

instance
  Prelude.Hashable
    KeyPhrasesDetectionJobFilter

instance Prelude.NFData KeyPhrasesDetectionJobFilter

instance Core.ToJSON KeyPhrasesDetectionJobFilter where
  toJSON KeyPhrasesDetectionJobFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SubmitTimeAfter" Core..=)
              Prelude.<$> submitTimeAfter,
            ("SubmitTimeBefore" Core..=)
              Prelude.<$> submitTimeBefore,
            ("JobName" Core..=) Prelude.<$> jobName,
            ("JobStatus" Core..=) Prelude.<$> jobStatus
          ]
      )
