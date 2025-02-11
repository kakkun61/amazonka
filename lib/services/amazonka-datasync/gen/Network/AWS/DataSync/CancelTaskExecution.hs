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
-- Module      : Network.AWS.DataSync.CancelTaskExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels execution of a task.
--
-- When you cancel a task execution, the transfer of some files is abruptly
-- interrupted. The contents of files that are transferred to the
-- destination might be incomplete or inconsistent with the source files.
-- However, if you start a new task execution on the same task and you
-- allow the task execution to complete, file content on the destination is
-- complete and consistent. This applies to other unexpected failures that
-- interrupt a task execution. In all of these cases, DataSync successfully
-- complete the transfer when you start the next task execution.
module Network.AWS.DataSync.CancelTaskExecution
  ( -- * Creating a Request
    CancelTaskExecution (..),
    newCancelTaskExecution,

    -- * Request Lenses
    cancelTaskExecution_taskExecutionArn,

    -- * Destructuring the Response
    CancelTaskExecutionResponse (..),
    newCancelTaskExecutionResponse,

    -- * Response Lenses
    cancelTaskExecutionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataSync.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | CancelTaskExecutionRequest
--
-- /See:/ 'newCancelTaskExecution' smart constructor.
data CancelTaskExecution = CancelTaskExecution'
  { -- | The Amazon Resource Name (ARN) of the task execution to cancel.
    taskExecutionArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelTaskExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'taskExecutionArn', 'cancelTaskExecution_taskExecutionArn' - The Amazon Resource Name (ARN) of the task execution to cancel.
newCancelTaskExecution ::
  -- | 'taskExecutionArn'
  Prelude.Text ->
  CancelTaskExecution
newCancelTaskExecution pTaskExecutionArn_ =
  CancelTaskExecution'
    { taskExecutionArn =
        pTaskExecutionArn_
    }

-- | The Amazon Resource Name (ARN) of the task execution to cancel.
cancelTaskExecution_taskExecutionArn :: Lens.Lens' CancelTaskExecution Prelude.Text
cancelTaskExecution_taskExecutionArn = Lens.lens (\CancelTaskExecution' {taskExecutionArn} -> taskExecutionArn) (\s@CancelTaskExecution' {} a -> s {taskExecutionArn = a} :: CancelTaskExecution)

instance Core.AWSRequest CancelTaskExecution where
  type
    AWSResponse CancelTaskExecution =
      CancelTaskExecutionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CancelTaskExecutionResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CancelTaskExecution

instance Prelude.NFData CancelTaskExecution

instance Core.ToHeaders CancelTaskExecution where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "FmrsService.CancelTaskExecution" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CancelTaskExecution where
  toJSON CancelTaskExecution' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("TaskExecutionArn" Core..= taskExecutionArn)
          ]
      )

instance Core.ToPath CancelTaskExecution where
  toPath = Prelude.const "/"

instance Core.ToQuery CancelTaskExecution where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCancelTaskExecutionResponse' smart constructor.
data CancelTaskExecutionResponse = CancelTaskExecutionResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelTaskExecutionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'cancelTaskExecutionResponse_httpStatus' - The response's http status code.
newCancelTaskExecutionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CancelTaskExecutionResponse
newCancelTaskExecutionResponse pHttpStatus_ =
  CancelTaskExecutionResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
cancelTaskExecutionResponse_httpStatus :: Lens.Lens' CancelTaskExecutionResponse Prelude.Int
cancelTaskExecutionResponse_httpStatus = Lens.lens (\CancelTaskExecutionResponse' {httpStatus} -> httpStatus) (\s@CancelTaskExecutionResponse' {} a -> s {httpStatus = a} :: CancelTaskExecutionResponse)

instance Prelude.NFData CancelTaskExecutionResponse
