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
-- Module      : Network.AWS.RobOMaker.CancelSimulationJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels the specified simulation job.
module Network.AWS.RobOMaker.CancelSimulationJob
  ( -- * Creating a Request
    CancelSimulationJob (..),
    newCancelSimulationJob,

    -- * Request Lenses
    cancelSimulationJob_job,

    -- * Destructuring the Response
    CancelSimulationJobResponse (..),
    newCancelSimulationJobResponse,

    -- * Response Lenses
    cancelSimulationJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.RobOMaker.Types

-- | /See:/ 'newCancelSimulationJob' smart constructor.
data CancelSimulationJob = CancelSimulationJob'
  { -- | The simulation job ARN to cancel.
    job :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelSimulationJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'job', 'cancelSimulationJob_job' - The simulation job ARN to cancel.
newCancelSimulationJob ::
  -- | 'job'
  Prelude.Text ->
  CancelSimulationJob
newCancelSimulationJob pJob_ =
  CancelSimulationJob' {job = pJob_}

-- | The simulation job ARN to cancel.
cancelSimulationJob_job :: Lens.Lens' CancelSimulationJob Prelude.Text
cancelSimulationJob_job = Lens.lens (\CancelSimulationJob' {job} -> job) (\s@CancelSimulationJob' {} a -> s {job = a} :: CancelSimulationJob)

instance Core.AWSRequest CancelSimulationJob where
  type
    AWSResponse CancelSimulationJob =
      CancelSimulationJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CancelSimulationJobResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CancelSimulationJob

instance Prelude.NFData CancelSimulationJob

instance Core.ToHeaders CancelSimulationJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CancelSimulationJob where
  toJSON CancelSimulationJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("job" Core..= job)]
      )

instance Core.ToPath CancelSimulationJob where
  toPath = Prelude.const "/cancelSimulationJob"

instance Core.ToQuery CancelSimulationJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCancelSimulationJobResponse' smart constructor.
data CancelSimulationJobResponse = CancelSimulationJobResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelSimulationJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'cancelSimulationJobResponse_httpStatus' - The response's http status code.
newCancelSimulationJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CancelSimulationJobResponse
newCancelSimulationJobResponse pHttpStatus_ =
  CancelSimulationJobResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
cancelSimulationJobResponse_httpStatus :: Lens.Lens' CancelSimulationJobResponse Prelude.Int
cancelSimulationJobResponse_httpStatus = Lens.lens (\CancelSimulationJobResponse' {httpStatus} -> httpStatus) (\s@CancelSimulationJobResponse' {} a -> s {httpStatus = a} :: CancelSimulationJobResponse)

instance Prelude.NFData CancelSimulationJobResponse
