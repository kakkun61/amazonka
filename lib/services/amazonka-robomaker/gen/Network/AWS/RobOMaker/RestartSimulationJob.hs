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
-- Module      : Network.AWS.RobOMaker.RestartSimulationJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restarts a running simulation job.
module Network.AWS.RobOMaker.RestartSimulationJob
  ( -- * Creating a Request
    RestartSimulationJob (..),
    newRestartSimulationJob,

    -- * Request Lenses
    restartSimulationJob_job,

    -- * Destructuring the Response
    RestartSimulationJobResponse (..),
    newRestartSimulationJobResponse,

    -- * Response Lenses
    restartSimulationJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.RobOMaker.Types

-- | /See:/ 'newRestartSimulationJob' smart constructor.
data RestartSimulationJob = RestartSimulationJob'
  { -- | The Amazon Resource Name (ARN) of the simulation job.
    job :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RestartSimulationJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'job', 'restartSimulationJob_job' - The Amazon Resource Name (ARN) of the simulation job.
newRestartSimulationJob ::
  -- | 'job'
  Prelude.Text ->
  RestartSimulationJob
newRestartSimulationJob pJob_ =
  RestartSimulationJob' {job = pJob_}

-- | The Amazon Resource Name (ARN) of the simulation job.
restartSimulationJob_job :: Lens.Lens' RestartSimulationJob Prelude.Text
restartSimulationJob_job = Lens.lens (\RestartSimulationJob' {job} -> job) (\s@RestartSimulationJob' {} a -> s {job = a} :: RestartSimulationJob)

instance Core.AWSRequest RestartSimulationJob where
  type
    AWSResponse RestartSimulationJob =
      RestartSimulationJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          RestartSimulationJobResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RestartSimulationJob

instance Prelude.NFData RestartSimulationJob

instance Core.ToHeaders RestartSimulationJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RestartSimulationJob where
  toJSON RestartSimulationJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("job" Core..= job)]
      )

instance Core.ToPath RestartSimulationJob where
  toPath = Prelude.const "/restartSimulationJob"

instance Core.ToQuery RestartSimulationJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRestartSimulationJobResponse' smart constructor.
data RestartSimulationJobResponse = RestartSimulationJobResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RestartSimulationJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'restartSimulationJobResponse_httpStatus' - The response's http status code.
newRestartSimulationJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RestartSimulationJobResponse
newRestartSimulationJobResponse pHttpStatus_ =
  RestartSimulationJobResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
restartSimulationJobResponse_httpStatus :: Lens.Lens' RestartSimulationJobResponse Prelude.Int
restartSimulationJobResponse_httpStatus = Lens.lens (\RestartSimulationJobResponse' {httpStatus} -> httpStatus) (\s@RestartSimulationJobResponse' {} a -> s {httpStatus = a} :: RestartSimulationJobResponse)

instance Prelude.NFData RestartSimulationJobResponse
