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
-- Module      : Network.AWS.Transfer.DeleteWorkflow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified workflow.
module Network.AWS.Transfer.DeleteWorkflow
  ( -- * Creating a Request
    DeleteWorkflow (..),
    newDeleteWorkflow,

    -- * Request Lenses
    deleteWorkflow_workflowId,

    -- * Destructuring the Response
    DeleteWorkflowResponse (..),
    newDeleteWorkflowResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Transfer.Types

-- | /See:/ 'newDeleteWorkflow' smart constructor.
data DeleteWorkflow = DeleteWorkflow'
  { -- | A unique identifier for the workflow.
    workflowId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteWorkflow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workflowId', 'deleteWorkflow_workflowId' - A unique identifier for the workflow.
newDeleteWorkflow ::
  -- | 'workflowId'
  Prelude.Text ->
  DeleteWorkflow
newDeleteWorkflow pWorkflowId_ =
  DeleteWorkflow' {workflowId = pWorkflowId_}

-- | A unique identifier for the workflow.
deleteWorkflow_workflowId :: Lens.Lens' DeleteWorkflow Prelude.Text
deleteWorkflow_workflowId = Lens.lens (\DeleteWorkflow' {workflowId} -> workflowId) (\s@DeleteWorkflow' {} a -> s {workflowId = a} :: DeleteWorkflow)

instance Core.AWSRequest DeleteWorkflow where
  type
    AWSResponse DeleteWorkflow =
      DeleteWorkflowResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull DeleteWorkflowResponse'

instance Prelude.Hashable DeleteWorkflow

instance Prelude.NFData DeleteWorkflow

instance Core.ToHeaders DeleteWorkflow where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "TransferService.DeleteWorkflow" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteWorkflow where
  toJSON DeleteWorkflow' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("WorkflowId" Core..= workflowId)]
      )

instance Core.ToPath DeleteWorkflow where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteWorkflow where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteWorkflowResponse' smart constructor.
data DeleteWorkflowResponse = DeleteWorkflowResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteWorkflowResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteWorkflowResponse ::
  DeleteWorkflowResponse
newDeleteWorkflowResponse = DeleteWorkflowResponse'

instance Prelude.NFData DeleteWorkflowResponse
