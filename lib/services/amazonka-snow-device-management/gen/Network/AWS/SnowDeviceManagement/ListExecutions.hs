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
-- Module      : Network.AWS.SnowDeviceManagement.ListExecutions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the status of tasks for one or more target devices.
--
-- This operation returns paginated results.
module Network.AWS.SnowDeviceManagement.ListExecutions
  ( -- * Creating a Request
    ListExecutions (..),
    newListExecutions,

    -- * Request Lenses
    listExecutions_state,
    listExecutions_nextToken,
    listExecutions_maxResults,
    listExecutions_taskId,

    -- * Destructuring the Response
    ListExecutionsResponse (..),
    newListExecutionsResponse,

    -- * Response Lenses
    listExecutionsResponse_executions,
    listExecutionsResponse_nextToken,
    listExecutionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SnowDeviceManagement.Types

-- | /See:/ 'newListExecutions' smart constructor.
data ListExecutions = ListExecutions'
  { -- | A structure used to filter the tasks by their current state.
    state :: Prelude.Maybe ExecutionState,
    -- | A pagination token to continue to the next page of tasks.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of tasks to list per page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the task.
    taskId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListExecutions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'listExecutions_state' - A structure used to filter the tasks by their current state.
--
-- 'nextToken', 'listExecutions_nextToken' - A pagination token to continue to the next page of tasks.
--
-- 'maxResults', 'listExecutions_maxResults' - The maximum number of tasks to list per page.
--
-- 'taskId', 'listExecutions_taskId' - The ID of the task.
newListExecutions ::
  -- | 'taskId'
  Prelude.Text ->
  ListExecutions
newListExecutions pTaskId_ =
  ListExecutions'
    { state = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      taskId = pTaskId_
    }

-- | A structure used to filter the tasks by their current state.
listExecutions_state :: Lens.Lens' ListExecutions (Prelude.Maybe ExecutionState)
listExecutions_state = Lens.lens (\ListExecutions' {state} -> state) (\s@ListExecutions' {} a -> s {state = a} :: ListExecutions)

-- | A pagination token to continue to the next page of tasks.
listExecutions_nextToken :: Lens.Lens' ListExecutions (Prelude.Maybe Prelude.Text)
listExecutions_nextToken = Lens.lens (\ListExecutions' {nextToken} -> nextToken) (\s@ListExecutions' {} a -> s {nextToken = a} :: ListExecutions)

-- | The maximum number of tasks to list per page.
listExecutions_maxResults :: Lens.Lens' ListExecutions (Prelude.Maybe Prelude.Natural)
listExecutions_maxResults = Lens.lens (\ListExecutions' {maxResults} -> maxResults) (\s@ListExecutions' {} a -> s {maxResults = a} :: ListExecutions)

-- | The ID of the task.
listExecutions_taskId :: Lens.Lens' ListExecutions Prelude.Text
listExecutions_taskId = Lens.lens (\ListExecutions' {taskId} -> taskId) (\s@ListExecutions' {} a -> s {taskId = a} :: ListExecutions)

instance Core.AWSPager ListExecutions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listExecutionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listExecutionsResponse_executions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listExecutions_nextToken
          Lens..~ rs
          Lens.^? listExecutionsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListExecutions where
  type
    AWSResponse ListExecutions =
      ListExecutionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListExecutionsResponse'
            Prelude.<$> (x Core..?> "executions" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListExecutions

instance Prelude.NFData ListExecutions

instance Core.ToHeaders ListExecutions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListExecutions where
  toPath = Prelude.const "/executions"

instance Core.ToQuery ListExecutions where
  toQuery ListExecutions' {..} =
    Prelude.mconcat
      [ "state" Core.=: state,
        "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults,
        "taskId" Core.=: taskId
      ]

-- | /See:/ 'newListExecutionsResponse' smart constructor.
data ListExecutionsResponse = ListExecutionsResponse'
  { -- | A list of executions. Each execution contains the task ID, the device
    -- that the task is executing on, the execution ID, and the status of the
    -- execution.
    executions :: Prelude.Maybe [ExecutionSummary],
    -- | A pagination token to continue to the next page of executions.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListExecutionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'executions', 'listExecutionsResponse_executions' - A list of executions. Each execution contains the task ID, the device
-- that the task is executing on, the execution ID, and the status of the
-- execution.
--
-- 'nextToken', 'listExecutionsResponse_nextToken' - A pagination token to continue to the next page of executions.
--
-- 'httpStatus', 'listExecutionsResponse_httpStatus' - The response's http status code.
newListExecutionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListExecutionsResponse
newListExecutionsResponse pHttpStatus_ =
  ListExecutionsResponse'
    { executions =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of executions. Each execution contains the task ID, the device
-- that the task is executing on, the execution ID, and the status of the
-- execution.
listExecutionsResponse_executions :: Lens.Lens' ListExecutionsResponse (Prelude.Maybe [ExecutionSummary])
listExecutionsResponse_executions = Lens.lens (\ListExecutionsResponse' {executions} -> executions) (\s@ListExecutionsResponse' {} a -> s {executions = a} :: ListExecutionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | A pagination token to continue to the next page of executions.
listExecutionsResponse_nextToken :: Lens.Lens' ListExecutionsResponse (Prelude.Maybe Prelude.Text)
listExecutionsResponse_nextToken = Lens.lens (\ListExecutionsResponse' {nextToken} -> nextToken) (\s@ListExecutionsResponse' {} a -> s {nextToken = a} :: ListExecutionsResponse)

-- | The response's http status code.
listExecutionsResponse_httpStatus :: Lens.Lens' ListExecutionsResponse Prelude.Int
listExecutionsResponse_httpStatus = Lens.lens (\ListExecutionsResponse' {httpStatus} -> httpStatus) (\s@ListExecutionsResponse' {} a -> s {httpStatus = a} :: ListExecutionsResponse)

instance Prelude.NFData ListExecutionsResponse
