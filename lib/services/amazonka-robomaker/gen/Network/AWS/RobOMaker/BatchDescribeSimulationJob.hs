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
-- Module      : Network.AWS.RobOMaker.BatchDescribeSimulationJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more simulation jobs.
module Network.AWS.RobOMaker.BatchDescribeSimulationJob
  ( -- * Creating a Request
    BatchDescribeSimulationJob (..),
    newBatchDescribeSimulationJob,

    -- * Request Lenses
    batchDescribeSimulationJob_jobs,

    -- * Destructuring the Response
    BatchDescribeSimulationJobResponse (..),
    newBatchDescribeSimulationJobResponse,

    -- * Response Lenses
    batchDescribeSimulationJobResponse_unprocessedJobs,
    batchDescribeSimulationJobResponse_jobs,
    batchDescribeSimulationJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.RobOMaker.Types

-- | /See:/ 'newBatchDescribeSimulationJob' smart constructor.
data BatchDescribeSimulationJob = BatchDescribeSimulationJob'
  { -- | A list of Amazon Resource Names (ARNs) of simulation jobs to describe.
    jobs :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDescribeSimulationJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobs', 'batchDescribeSimulationJob_jobs' - A list of Amazon Resource Names (ARNs) of simulation jobs to describe.
newBatchDescribeSimulationJob ::
  -- | 'jobs'
  Prelude.NonEmpty Prelude.Text ->
  BatchDescribeSimulationJob
newBatchDescribeSimulationJob pJobs_ =
  BatchDescribeSimulationJob'
    { jobs =
        Lens.coerced Lens.# pJobs_
    }

-- | A list of Amazon Resource Names (ARNs) of simulation jobs to describe.
batchDescribeSimulationJob_jobs :: Lens.Lens' BatchDescribeSimulationJob (Prelude.NonEmpty Prelude.Text)
batchDescribeSimulationJob_jobs = Lens.lens (\BatchDescribeSimulationJob' {jobs} -> jobs) (\s@BatchDescribeSimulationJob' {} a -> s {jobs = a} :: BatchDescribeSimulationJob) Prelude.. Lens.coerced

instance Core.AWSRequest BatchDescribeSimulationJob where
  type
    AWSResponse BatchDescribeSimulationJob =
      BatchDescribeSimulationJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchDescribeSimulationJobResponse'
            Prelude.<$> (x Core..?> "unprocessedJobs")
            Prelude.<*> (x Core..?> "jobs" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchDescribeSimulationJob

instance Prelude.NFData BatchDescribeSimulationJob

instance Core.ToHeaders BatchDescribeSimulationJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchDescribeSimulationJob where
  toJSON BatchDescribeSimulationJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("jobs" Core..= jobs)]
      )

instance Core.ToPath BatchDescribeSimulationJob where
  toPath = Prelude.const "/batchDescribeSimulationJob"

instance Core.ToQuery BatchDescribeSimulationJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchDescribeSimulationJobResponse' smart constructor.
data BatchDescribeSimulationJobResponse = BatchDescribeSimulationJobResponse'
  { -- | A list of unprocessed simulation job Amazon Resource Names (ARNs).
    unprocessedJobs :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | A list of simulation jobs.
    jobs :: Prelude.Maybe [SimulationJob],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDescribeSimulationJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'unprocessedJobs', 'batchDescribeSimulationJobResponse_unprocessedJobs' - A list of unprocessed simulation job Amazon Resource Names (ARNs).
--
-- 'jobs', 'batchDescribeSimulationJobResponse_jobs' - A list of simulation jobs.
--
-- 'httpStatus', 'batchDescribeSimulationJobResponse_httpStatus' - The response's http status code.
newBatchDescribeSimulationJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchDescribeSimulationJobResponse
newBatchDescribeSimulationJobResponse pHttpStatus_ =
  BatchDescribeSimulationJobResponse'
    { unprocessedJobs =
        Prelude.Nothing,
      jobs = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of unprocessed simulation job Amazon Resource Names (ARNs).
batchDescribeSimulationJobResponse_unprocessedJobs :: Lens.Lens' BatchDescribeSimulationJobResponse (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
batchDescribeSimulationJobResponse_unprocessedJobs = Lens.lens (\BatchDescribeSimulationJobResponse' {unprocessedJobs} -> unprocessedJobs) (\s@BatchDescribeSimulationJobResponse' {} a -> s {unprocessedJobs = a} :: BatchDescribeSimulationJobResponse) Prelude.. Lens.mapping Lens.coerced

-- | A list of simulation jobs.
batchDescribeSimulationJobResponse_jobs :: Lens.Lens' BatchDescribeSimulationJobResponse (Prelude.Maybe [SimulationJob])
batchDescribeSimulationJobResponse_jobs = Lens.lens (\BatchDescribeSimulationJobResponse' {jobs} -> jobs) (\s@BatchDescribeSimulationJobResponse' {} a -> s {jobs = a} :: BatchDescribeSimulationJobResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchDescribeSimulationJobResponse_httpStatus :: Lens.Lens' BatchDescribeSimulationJobResponse Prelude.Int
batchDescribeSimulationJobResponse_httpStatus = Lens.lens (\BatchDescribeSimulationJobResponse' {httpStatus} -> httpStatus) (\s@BatchDescribeSimulationJobResponse' {} a -> s {httpStatus = a} :: BatchDescribeSimulationJobResponse)

instance
  Prelude.NFData
    BatchDescribeSimulationJobResponse
