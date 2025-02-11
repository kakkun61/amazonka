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
-- Module      : Network.AWS.Transfer.DescribeExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- You can use @DescribeExecution@ to check the details of the execution of
-- the specified workflow.
module Network.AWS.Transfer.DescribeExecution
  ( -- * Creating a Request
    DescribeExecution (..),
    newDescribeExecution,

    -- * Request Lenses
    describeExecution_executionId,
    describeExecution_workflowId,

    -- * Destructuring the Response
    DescribeExecutionResponse (..),
    newDescribeExecutionResponse,

    -- * Response Lenses
    describeExecutionResponse_httpStatus,
    describeExecutionResponse_workflowId,
    describeExecutionResponse_execution,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Transfer.Types

-- | /See:/ 'newDescribeExecution' smart constructor.
data DescribeExecution = DescribeExecution'
  { -- | A unique identifier for the execution of a workflow.
    executionId :: Prelude.Text,
    -- | A unique identifier for the workflow.
    workflowId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'executionId', 'describeExecution_executionId' - A unique identifier for the execution of a workflow.
--
-- 'workflowId', 'describeExecution_workflowId' - A unique identifier for the workflow.
newDescribeExecution ::
  -- | 'executionId'
  Prelude.Text ->
  -- | 'workflowId'
  Prelude.Text ->
  DescribeExecution
newDescribeExecution pExecutionId_ pWorkflowId_ =
  DescribeExecution'
    { executionId = pExecutionId_,
      workflowId = pWorkflowId_
    }

-- | A unique identifier for the execution of a workflow.
describeExecution_executionId :: Lens.Lens' DescribeExecution Prelude.Text
describeExecution_executionId = Lens.lens (\DescribeExecution' {executionId} -> executionId) (\s@DescribeExecution' {} a -> s {executionId = a} :: DescribeExecution)

-- | A unique identifier for the workflow.
describeExecution_workflowId :: Lens.Lens' DescribeExecution Prelude.Text
describeExecution_workflowId = Lens.lens (\DescribeExecution' {workflowId} -> workflowId) (\s@DescribeExecution' {} a -> s {workflowId = a} :: DescribeExecution)

instance Core.AWSRequest DescribeExecution where
  type
    AWSResponse DescribeExecution =
      DescribeExecutionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeExecutionResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "WorkflowId")
            Prelude.<*> (x Core..:> "Execution")
      )

instance Prelude.Hashable DescribeExecution

instance Prelude.NFData DescribeExecution

instance Core.ToHeaders DescribeExecution where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "TransferService.DescribeExecution" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeExecution where
  toJSON DescribeExecution' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ExecutionId" Core..= executionId),
            Prelude.Just ("WorkflowId" Core..= workflowId)
          ]
      )

instance Core.ToPath DescribeExecution where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeExecution where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeExecutionResponse' smart constructor.
data DescribeExecutionResponse = DescribeExecutionResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A unique identifier for the workflow.
    workflowId :: Prelude.Text,
    -- | The structure that contains the details of the workflow\' execution.
    execution :: DescribedExecution
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeExecutionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeExecutionResponse_httpStatus' - The response's http status code.
--
-- 'workflowId', 'describeExecutionResponse_workflowId' - A unique identifier for the workflow.
--
-- 'execution', 'describeExecutionResponse_execution' - The structure that contains the details of the workflow\' execution.
newDescribeExecutionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'workflowId'
  Prelude.Text ->
  -- | 'execution'
  DescribedExecution ->
  DescribeExecutionResponse
newDescribeExecutionResponse
  pHttpStatus_
  pWorkflowId_
  pExecution_ =
    DescribeExecutionResponse'
      { httpStatus =
          pHttpStatus_,
        workflowId = pWorkflowId_,
        execution = pExecution_
      }

-- | The response's http status code.
describeExecutionResponse_httpStatus :: Lens.Lens' DescribeExecutionResponse Prelude.Int
describeExecutionResponse_httpStatus = Lens.lens (\DescribeExecutionResponse' {httpStatus} -> httpStatus) (\s@DescribeExecutionResponse' {} a -> s {httpStatus = a} :: DescribeExecutionResponse)

-- | A unique identifier for the workflow.
describeExecutionResponse_workflowId :: Lens.Lens' DescribeExecutionResponse Prelude.Text
describeExecutionResponse_workflowId = Lens.lens (\DescribeExecutionResponse' {workflowId} -> workflowId) (\s@DescribeExecutionResponse' {} a -> s {workflowId = a} :: DescribeExecutionResponse)

-- | The structure that contains the details of the workflow\' execution.
describeExecutionResponse_execution :: Lens.Lens' DescribeExecutionResponse DescribedExecution
describeExecutionResponse_execution = Lens.lens (\DescribeExecutionResponse' {execution} -> execution) (\s@DescribeExecutionResponse' {} a -> s {execution = a} :: DescribeExecutionResponse)

instance Prelude.NFData DescribeExecutionResponse
