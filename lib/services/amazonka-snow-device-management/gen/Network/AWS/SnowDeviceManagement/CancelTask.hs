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
-- Module      : Network.AWS.SnowDeviceManagement.CancelTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends a cancel request for a specified task. You can cancel a task only
-- if it\'s still in a @QUEUED@ state. Tasks that are already running
-- can\'t be cancelled.
--
-- A task might still run if it\'s processed from the queue before the
-- @CancelTask@ operation changes the task\'s state.
module Network.AWS.SnowDeviceManagement.CancelTask
  ( -- * Creating a Request
    CancelTask (..),
    newCancelTask,

    -- * Request Lenses
    cancelTask_taskId,

    -- * Destructuring the Response
    CancelTaskResponse (..),
    newCancelTaskResponse,

    -- * Response Lenses
    cancelTaskResponse_taskId,
    cancelTaskResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SnowDeviceManagement.Types

-- | /See:/ 'newCancelTask' smart constructor.
data CancelTask = CancelTask'
  { -- | The ID of the task that you are attempting to cancel. You can retrieve a
    -- task ID by using the @ListTasks@ operation.
    taskId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelTask' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'taskId', 'cancelTask_taskId' - The ID of the task that you are attempting to cancel. You can retrieve a
-- task ID by using the @ListTasks@ operation.
newCancelTask ::
  -- | 'taskId'
  Prelude.Text ->
  CancelTask
newCancelTask pTaskId_ =
  CancelTask' {taskId = pTaskId_}

-- | The ID of the task that you are attempting to cancel. You can retrieve a
-- task ID by using the @ListTasks@ operation.
cancelTask_taskId :: Lens.Lens' CancelTask Prelude.Text
cancelTask_taskId = Lens.lens (\CancelTask' {taskId} -> taskId) (\s@CancelTask' {} a -> s {taskId = a} :: CancelTask)

instance Core.AWSRequest CancelTask where
  type AWSResponse CancelTask = CancelTaskResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CancelTaskResponse'
            Prelude.<$> (x Core..?> "taskId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CancelTask

instance Prelude.NFData CancelTask

instance Core.ToHeaders CancelTask where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CancelTask where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath CancelTask where
  toPath CancelTask' {..} =
    Prelude.mconcat
      ["/task/", Core.toBS taskId, "/cancel"]

instance Core.ToQuery CancelTask where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCancelTaskResponse' smart constructor.
data CancelTaskResponse = CancelTaskResponse'
  { -- | The ID of the task that you are attempting to cancel.
    taskId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelTaskResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'taskId', 'cancelTaskResponse_taskId' - The ID of the task that you are attempting to cancel.
--
-- 'httpStatus', 'cancelTaskResponse_httpStatus' - The response's http status code.
newCancelTaskResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CancelTaskResponse
newCancelTaskResponse pHttpStatus_ =
  CancelTaskResponse'
    { taskId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the task that you are attempting to cancel.
cancelTaskResponse_taskId :: Lens.Lens' CancelTaskResponse (Prelude.Maybe Prelude.Text)
cancelTaskResponse_taskId = Lens.lens (\CancelTaskResponse' {taskId} -> taskId) (\s@CancelTaskResponse' {} a -> s {taskId = a} :: CancelTaskResponse)

-- | The response's http status code.
cancelTaskResponse_httpStatus :: Lens.Lens' CancelTaskResponse Prelude.Int
cancelTaskResponse_httpStatus = Lens.lens (\CancelTaskResponse' {httpStatus} -> httpStatus) (\s@CancelTaskResponse' {} a -> s {httpStatus = a} :: CancelTaskResponse)

instance Prelude.NFData CancelTaskResponse
