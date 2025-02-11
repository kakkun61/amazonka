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
-- Module      : Network.AWS.Amplify.Types.Job
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Amplify.Types.Job where

import Network.AWS.Amplify.Types.JobSummary
import Network.AWS.Amplify.Types.Step
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes an execution job for an Amplify app.
--
-- /See:/ 'newJob' smart constructor.
data Job = Job'
  { -- | Describes the summary for an execution job for an Amplify app.
    summary :: JobSummary,
    -- | The execution steps for an execution job, for an Amplify app.
    steps :: [Step]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Job' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'summary', 'job_summary' - Describes the summary for an execution job for an Amplify app.
--
-- 'steps', 'job_steps' - The execution steps for an execution job, for an Amplify app.
newJob ::
  -- | 'summary'
  JobSummary ->
  Job
newJob pSummary_ =
  Job' {summary = pSummary_, steps = Prelude.mempty}

-- | Describes the summary for an execution job for an Amplify app.
job_summary :: Lens.Lens' Job JobSummary
job_summary = Lens.lens (\Job' {summary} -> summary) (\s@Job' {} a -> s {summary = a} :: Job)

-- | The execution steps for an execution job, for an Amplify app.
job_steps :: Lens.Lens' Job [Step]
job_steps = Lens.lens (\Job' {steps} -> steps) (\s@Job' {} a -> s {steps = a} :: Job) Prelude.. Lens.coerced

instance Core.FromJSON Job where
  parseJSON =
    Core.withObject
      "Job"
      ( \x ->
          Job'
            Prelude.<$> (x Core..: "summary")
            Prelude.<*> (x Core..:? "steps" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable Job

instance Prelude.NFData Job
