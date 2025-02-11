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
-- Module      : Network.AWS.DataSync.UpdateTaskExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates execution of a task.
--
-- You can modify bandwidth throttling for a task execution that is running
-- or queued. For more information, see
-- <https://docs.aws.amazon.com/datasync/latest/userguide/working-with-task-executions.html#adjust-bandwidth-throttling Adjusting Bandwidth Throttling for a Task Execution>.
--
-- The only @Option@ that can be modified by @UpdateTaskExecution@ is
-- @ BytesPerSecond @.
module Network.AWS.DataSync.UpdateTaskExecution
  ( -- * Creating a Request
    UpdateTaskExecution (..),
    newUpdateTaskExecution,

    -- * Request Lenses
    updateTaskExecution_taskExecutionArn,
    updateTaskExecution_options,

    -- * Destructuring the Response
    UpdateTaskExecutionResponse (..),
    newUpdateTaskExecutionResponse,

    -- * Response Lenses
    updateTaskExecutionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataSync.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateTaskExecution' smart constructor.
data UpdateTaskExecution = UpdateTaskExecution'
  { -- | The Amazon Resource Name (ARN) of the specific task execution that is
    -- being updated.
    taskExecutionArn :: Prelude.Text,
    options :: Options
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTaskExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'taskExecutionArn', 'updateTaskExecution_taskExecutionArn' - The Amazon Resource Name (ARN) of the specific task execution that is
-- being updated.
--
-- 'options', 'updateTaskExecution_options' - Undocumented member.
newUpdateTaskExecution ::
  -- | 'taskExecutionArn'
  Prelude.Text ->
  -- | 'options'
  Options ->
  UpdateTaskExecution
newUpdateTaskExecution pTaskExecutionArn_ pOptions_ =
  UpdateTaskExecution'
    { taskExecutionArn =
        pTaskExecutionArn_,
      options = pOptions_
    }

-- | The Amazon Resource Name (ARN) of the specific task execution that is
-- being updated.
updateTaskExecution_taskExecutionArn :: Lens.Lens' UpdateTaskExecution Prelude.Text
updateTaskExecution_taskExecutionArn = Lens.lens (\UpdateTaskExecution' {taskExecutionArn} -> taskExecutionArn) (\s@UpdateTaskExecution' {} a -> s {taskExecutionArn = a} :: UpdateTaskExecution)

-- | Undocumented member.
updateTaskExecution_options :: Lens.Lens' UpdateTaskExecution Options
updateTaskExecution_options = Lens.lens (\UpdateTaskExecution' {options} -> options) (\s@UpdateTaskExecution' {} a -> s {options = a} :: UpdateTaskExecution)

instance Core.AWSRequest UpdateTaskExecution where
  type
    AWSResponse UpdateTaskExecution =
      UpdateTaskExecutionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateTaskExecutionResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateTaskExecution

instance Prelude.NFData UpdateTaskExecution

instance Core.ToHeaders UpdateTaskExecution where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "FmrsService.UpdateTaskExecution" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateTaskExecution where
  toJSON UpdateTaskExecution' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("TaskExecutionArn" Core..= taskExecutionArn),
            Prelude.Just ("Options" Core..= options)
          ]
      )

instance Core.ToPath UpdateTaskExecution where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateTaskExecution where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateTaskExecutionResponse' smart constructor.
data UpdateTaskExecutionResponse = UpdateTaskExecutionResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTaskExecutionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateTaskExecutionResponse_httpStatus' - The response's http status code.
newUpdateTaskExecutionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateTaskExecutionResponse
newUpdateTaskExecutionResponse pHttpStatus_ =
  UpdateTaskExecutionResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateTaskExecutionResponse_httpStatus :: Lens.Lens' UpdateTaskExecutionResponse Prelude.Int
updateTaskExecutionResponse_httpStatus = Lens.lens (\UpdateTaskExecutionResponse' {httpStatus} -> httpStatus) (\s@UpdateTaskExecutionResponse' {} a -> s {httpStatus = a} :: UpdateTaskExecutionResponse)

instance Prelude.NFData UpdateTaskExecutionResponse
