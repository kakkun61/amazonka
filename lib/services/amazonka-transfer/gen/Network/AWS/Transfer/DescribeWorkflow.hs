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
-- Module      : Network.AWS.Transfer.DescribeWorkflow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified workflow.
module Network.AWS.Transfer.DescribeWorkflow
  ( -- * Creating a Request
    DescribeWorkflow (..),
    newDescribeWorkflow,

    -- * Request Lenses
    describeWorkflow_workflowId,

    -- * Destructuring the Response
    DescribeWorkflowResponse (..),
    newDescribeWorkflowResponse,

    -- * Response Lenses
    describeWorkflowResponse_httpStatus,
    describeWorkflowResponse_workflow,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Transfer.Types

-- | /See:/ 'newDescribeWorkflow' smart constructor.
data DescribeWorkflow = DescribeWorkflow'
  { -- | A unique identifier for the workflow.
    workflowId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeWorkflow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workflowId', 'describeWorkflow_workflowId' - A unique identifier for the workflow.
newDescribeWorkflow ::
  -- | 'workflowId'
  Prelude.Text ->
  DescribeWorkflow
newDescribeWorkflow pWorkflowId_ =
  DescribeWorkflow' {workflowId = pWorkflowId_}

-- | A unique identifier for the workflow.
describeWorkflow_workflowId :: Lens.Lens' DescribeWorkflow Prelude.Text
describeWorkflow_workflowId = Lens.lens (\DescribeWorkflow' {workflowId} -> workflowId) (\s@DescribeWorkflow' {} a -> s {workflowId = a} :: DescribeWorkflow)

instance Core.AWSRequest DescribeWorkflow where
  type
    AWSResponse DescribeWorkflow =
      DescribeWorkflowResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeWorkflowResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Workflow")
      )

instance Prelude.Hashable DescribeWorkflow

instance Prelude.NFData DescribeWorkflow

instance Core.ToHeaders DescribeWorkflow where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "TransferService.DescribeWorkflow" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeWorkflow where
  toJSON DescribeWorkflow' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("WorkflowId" Core..= workflowId)]
      )

instance Core.ToPath DescribeWorkflow where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeWorkflow where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeWorkflowResponse' smart constructor.
data DescribeWorkflowResponse = DescribeWorkflowResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The structure that contains the details of the workflow.
    workflow :: DescribedWorkflow
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeWorkflowResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeWorkflowResponse_httpStatus' - The response's http status code.
--
-- 'workflow', 'describeWorkflowResponse_workflow' - The structure that contains the details of the workflow.
newDescribeWorkflowResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'workflow'
  DescribedWorkflow ->
  DescribeWorkflowResponse
newDescribeWorkflowResponse pHttpStatus_ pWorkflow_ =
  DescribeWorkflowResponse'
    { httpStatus =
        pHttpStatus_,
      workflow = pWorkflow_
    }

-- | The response's http status code.
describeWorkflowResponse_httpStatus :: Lens.Lens' DescribeWorkflowResponse Prelude.Int
describeWorkflowResponse_httpStatus = Lens.lens (\DescribeWorkflowResponse' {httpStatus} -> httpStatus) (\s@DescribeWorkflowResponse' {} a -> s {httpStatus = a} :: DescribeWorkflowResponse)

-- | The structure that contains the details of the workflow.
describeWorkflowResponse_workflow :: Lens.Lens' DescribeWorkflowResponse DescribedWorkflow
describeWorkflowResponse_workflow = Lens.lens (\DescribeWorkflowResponse' {workflow} -> workflow) (\s@DescribeWorkflowResponse' {} a -> s {workflow = a} :: DescribeWorkflowResponse)

instance Prelude.NFData DescribeWorkflowResponse
