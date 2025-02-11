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
-- Module      : Network.AWS.DataBrew.StartJobRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a DataBrew job.
module Network.AWS.DataBrew.StartJobRun
  ( -- * Creating a Request
    StartJobRun (..),
    newStartJobRun,

    -- * Request Lenses
    startJobRun_name,

    -- * Destructuring the Response
    StartJobRunResponse (..),
    newStartJobRunResponse,

    -- * Response Lenses
    startJobRunResponse_httpStatus,
    startJobRunResponse_runId,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataBrew.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStartJobRun' smart constructor.
data StartJobRun = StartJobRun'
  { -- | The name of the job to be run.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartJobRun' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'startJobRun_name' - The name of the job to be run.
newStartJobRun ::
  -- | 'name'
  Prelude.Text ->
  StartJobRun
newStartJobRun pName_ = StartJobRun' {name = pName_}

-- | The name of the job to be run.
startJobRun_name :: Lens.Lens' StartJobRun Prelude.Text
startJobRun_name = Lens.lens (\StartJobRun' {name} -> name) (\s@StartJobRun' {} a -> s {name = a} :: StartJobRun)

instance Core.AWSRequest StartJobRun where
  type AWSResponse StartJobRun = StartJobRunResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StartJobRunResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "RunId")
      )

instance Prelude.Hashable StartJobRun

instance Prelude.NFData StartJobRun

instance Core.ToHeaders StartJobRun where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartJobRun where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath StartJobRun where
  toPath StartJobRun' {..} =
    Prelude.mconcat
      ["/jobs/", Core.toBS name, "/startJobRun"]

instance Core.ToQuery StartJobRun where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartJobRunResponse' smart constructor.
data StartJobRunResponse = StartJobRunResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A system-generated identifier for this particular job run.
    runId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartJobRunResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'startJobRunResponse_httpStatus' - The response's http status code.
--
-- 'runId', 'startJobRunResponse_runId' - A system-generated identifier for this particular job run.
newStartJobRunResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'runId'
  Prelude.Text ->
  StartJobRunResponse
newStartJobRunResponse pHttpStatus_ pRunId_ =
  StartJobRunResponse'
    { httpStatus = pHttpStatus_,
      runId = pRunId_
    }

-- | The response's http status code.
startJobRunResponse_httpStatus :: Lens.Lens' StartJobRunResponse Prelude.Int
startJobRunResponse_httpStatus = Lens.lens (\StartJobRunResponse' {httpStatus} -> httpStatus) (\s@StartJobRunResponse' {} a -> s {httpStatus = a} :: StartJobRunResponse)

-- | A system-generated identifier for this particular job run.
startJobRunResponse_runId :: Lens.Lens' StartJobRunResponse Prelude.Text
startJobRunResponse_runId = Lens.lens (\StartJobRunResponse' {runId} -> runId) (\s@StartJobRunResponse' {} a -> s {runId = a} :: StartJobRunResponse)

instance Prelude.NFData StartJobRunResponse
