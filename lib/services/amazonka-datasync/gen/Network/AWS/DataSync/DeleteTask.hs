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
-- Module      : Network.AWS.DataSync.DeleteTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a task.
module Network.AWS.DataSync.DeleteTask
  ( -- * Creating a Request
    DeleteTask (..),
    newDeleteTask,

    -- * Request Lenses
    deleteTask_taskArn,

    -- * Destructuring the Response
    DeleteTaskResponse (..),
    newDeleteTaskResponse,

    -- * Response Lenses
    deleteTaskResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataSync.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | DeleteTask
--
-- /See:/ 'newDeleteTask' smart constructor.
data DeleteTask = DeleteTask'
  { -- | The Amazon Resource Name (ARN) of the task to delete.
    taskArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteTask' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'taskArn', 'deleteTask_taskArn' - The Amazon Resource Name (ARN) of the task to delete.
newDeleteTask ::
  -- | 'taskArn'
  Prelude.Text ->
  DeleteTask
newDeleteTask pTaskArn_ =
  DeleteTask' {taskArn = pTaskArn_}

-- | The Amazon Resource Name (ARN) of the task to delete.
deleteTask_taskArn :: Lens.Lens' DeleteTask Prelude.Text
deleteTask_taskArn = Lens.lens (\DeleteTask' {taskArn} -> taskArn) (\s@DeleteTask' {} a -> s {taskArn = a} :: DeleteTask)

instance Core.AWSRequest DeleteTask where
  type AWSResponse DeleteTask = DeleteTaskResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteTaskResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteTask

instance Prelude.NFData DeleteTask

instance Core.ToHeaders DeleteTask where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("FmrsService.DeleteTask" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteTask where
  toJSON DeleteTask' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("TaskArn" Core..= taskArn)]
      )

instance Core.ToPath DeleteTask where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteTask where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteTaskResponse' smart constructor.
data DeleteTaskResponse = DeleteTaskResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteTaskResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteTaskResponse_httpStatus' - The response's http status code.
newDeleteTaskResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteTaskResponse
newDeleteTaskResponse pHttpStatus_ =
  DeleteTaskResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteTaskResponse_httpStatus :: Lens.Lens' DeleteTaskResponse Prelude.Int
deleteTaskResponse_httpStatus = Lens.lens (\DeleteTaskResponse' {httpStatus} -> httpStatus) (\s@DeleteTaskResponse' {} a -> s {httpStatus = a} :: DeleteTaskResponse)

instance Prelude.NFData DeleteTaskResponse
