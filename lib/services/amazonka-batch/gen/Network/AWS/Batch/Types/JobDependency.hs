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
-- Module      : Network.AWS.Batch.Types.JobDependency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.JobDependency where

import Network.AWS.Batch.Types.ArrayJobDependency
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object representing an Batch job dependency.
--
-- /See:/ 'newJobDependency' smart constructor.
data JobDependency = JobDependency'
  { -- | The job ID of the Batch job associated with this dependency.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | The type of the job dependency.
    type' :: Prelude.Maybe ArrayJobDependency
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JobDependency' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'jobDependency_jobId' - The job ID of the Batch job associated with this dependency.
--
-- 'type'', 'jobDependency_type' - The type of the job dependency.
newJobDependency ::
  JobDependency
newJobDependency =
  JobDependency'
    { jobId = Prelude.Nothing,
      type' = Prelude.Nothing
    }

-- | The job ID of the Batch job associated with this dependency.
jobDependency_jobId :: Lens.Lens' JobDependency (Prelude.Maybe Prelude.Text)
jobDependency_jobId = Lens.lens (\JobDependency' {jobId} -> jobId) (\s@JobDependency' {} a -> s {jobId = a} :: JobDependency)

-- | The type of the job dependency.
jobDependency_type :: Lens.Lens' JobDependency (Prelude.Maybe ArrayJobDependency)
jobDependency_type = Lens.lens (\JobDependency' {type'} -> type') (\s@JobDependency' {} a -> s {type' = a} :: JobDependency)

instance Core.FromJSON JobDependency where
  parseJSON =
    Core.withObject
      "JobDependency"
      ( \x ->
          JobDependency'
            Prelude.<$> (x Core..:? "jobId") Prelude.<*> (x Core..:? "type")
      )

instance Prelude.Hashable JobDependency

instance Prelude.NFData JobDependency

instance Core.ToJSON JobDependency where
  toJSON JobDependency' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("jobId" Core..=) Prelude.<$> jobId,
            ("type" Core..=) Prelude.<$> type'
          ]
      )
