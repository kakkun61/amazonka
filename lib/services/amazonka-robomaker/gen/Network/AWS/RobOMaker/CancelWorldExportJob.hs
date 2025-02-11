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
-- Module      : Network.AWS.RobOMaker.CancelWorldExportJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels the specified export job.
module Network.AWS.RobOMaker.CancelWorldExportJob
  ( -- * Creating a Request
    CancelWorldExportJob (..),
    newCancelWorldExportJob,

    -- * Request Lenses
    cancelWorldExportJob_job,

    -- * Destructuring the Response
    CancelWorldExportJobResponse (..),
    newCancelWorldExportJobResponse,

    -- * Response Lenses
    cancelWorldExportJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.RobOMaker.Types

-- | /See:/ 'newCancelWorldExportJob' smart constructor.
data CancelWorldExportJob = CancelWorldExportJob'
  { -- | The Amazon Resource Name (arn) of the world export job to cancel.
    job :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelWorldExportJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'job', 'cancelWorldExportJob_job' - The Amazon Resource Name (arn) of the world export job to cancel.
newCancelWorldExportJob ::
  -- | 'job'
  Prelude.Text ->
  CancelWorldExportJob
newCancelWorldExportJob pJob_ =
  CancelWorldExportJob' {job = pJob_}

-- | The Amazon Resource Name (arn) of the world export job to cancel.
cancelWorldExportJob_job :: Lens.Lens' CancelWorldExportJob Prelude.Text
cancelWorldExportJob_job = Lens.lens (\CancelWorldExportJob' {job} -> job) (\s@CancelWorldExportJob' {} a -> s {job = a} :: CancelWorldExportJob)

instance Core.AWSRequest CancelWorldExportJob where
  type
    AWSResponse CancelWorldExportJob =
      CancelWorldExportJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CancelWorldExportJobResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CancelWorldExportJob

instance Prelude.NFData CancelWorldExportJob

instance Core.ToHeaders CancelWorldExportJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CancelWorldExportJob where
  toJSON CancelWorldExportJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("job" Core..= job)]
      )

instance Core.ToPath CancelWorldExportJob where
  toPath = Prelude.const "/cancelWorldExportJob"

instance Core.ToQuery CancelWorldExportJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCancelWorldExportJobResponse' smart constructor.
data CancelWorldExportJobResponse = CancelWorldExportJobResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelWorldExportJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'cancelWorldExportJobResponse_httpStatus' - The response's http status code.
newCancelWorldExportJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CancelWorldExportJobResponse
newCancelWorldExportJobResponse pHttpStatus_ =
  CancelWorldExportJobResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
cancelWorldExportJobResponse_httpStatus :: Lens.Lens' CancelWorldExportJobResponse Prelude.Int
cancelWorldExportJobResponse_httpStatus = Lens.lens (\CancelWorldExportJobResponse' {httpStatus} -> httpStatus) (\s@CancelWorldExportJobResponse' {} a -> s {httpStatus = a} :: CancelWorldExportJobResponse)

instance Prelude.NFData CancelWorldExportJobResponse
