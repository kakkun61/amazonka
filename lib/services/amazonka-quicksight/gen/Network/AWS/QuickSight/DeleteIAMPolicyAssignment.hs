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
-- Module      : Network.AWS.QuickSight.DeleteIAMPolicyAssignment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing IAMpolicy assignment.
module Network.AWS.QuickSight.DeleteIAMPolicyAssignment
  ( -- * Creating a Request
    DeleteIAMPolicyAssignment (..),
    newDeleteIAMPolicyAssignment,

    -- * Request Lenses
    deleteIAMPolicyAssignment_awsAccountId,
    deleteIAMPolicyAssignment_assignmentName,
    deleteIAMPolicyAssignment_namespace,

    -- * Destructuring the Response
    DeleteIAMPolicyAssignmentResponse (..),
    newDeleteIAMPolicyAssignmentResponse,

    -- * Response Lenses
    deleteIAMPolicyAssignmentResponse_requestId,
    deleteIAMPolicyAssignmentResponse_assignmentName,
    deleteIAMPolicyAssignmentResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteIAMPolicyAssignment' smart constructor.
data DeleteIAMPolicyAssignment = DeleteIAMPolicyAssignment'
  { -- | The Amazon Web Services account ID where you want to delete the
    -- IAMpolicy assignment.
    awsAccountId :: Prelude.Text,
    -- | The name of the assignment.
    assignmentName :: Prelude.Text,
    -- | The namespace that contains the assignment.
    namespace :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteIAMPolicyAssignment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'deleteIAMPolicyAssignment_awsAccountId' - The Amazon Web Services account ID where you want to delete the
-- IAMpolicy assignment.
--
-- 'assignmentName', 'deleteIAMPolicyAssignment_assignmentName' - The name of the assignment.
--
-- 'namespace', 'deleteIAMPolicyAssignment_namespace' - The namespace that contains the assignment.
newDeleteIAMPolicyAssignment ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'assignmentName'
  Prelude.Text ->
  -- | 'namespace'
  Prelude.Text ->
  DeleteIAMPolicyAssignment
newDeleteIAMPolicyAssignment
  pAwsAccountId_
  pAssignmentName_
  pNamespace_ =
    DeleteIAMPolicyAssignment'
      { awsAccountId =
          pAwsAccountId_,
        assignmentName = pAssignmentName_,
        namespace = pNamespace_
      }

-- | The Amazon Web Services account ID where you want to delete the
-- IAMpolicy assignment.
deleteIAMPolicyAssignment_awsAccountId :: Lens.Lens' DeleteIAMPolicyAssignment Prelude.Text
deleteIAMPolicyAssignment_awsAccountId = Lens.lens (\DeleteIAMPolicyAssignment' {awsAccountId} -> awsAccountId) (\s@DeleteIAMPolicyAssignment' {} a -> s {awsAccountId = a} :: DeleteIAMPolicyAssignment)

-- | The name of the assignment.
deleteIAMPolicyAssignment_assignmentName :: Lens.Lens' DeleteIAMPolicyAssignment Prelude.Text
deleteIAMPolicyAssignment_assignmentName = Lens.lens (\DeleteIAMPolicyAssignment' {assignmentName} -> assignmentName) (\s@DeleteIAMPolicyAssignment' {} a -> s {assignmentName = a} :: DeleteIAMPolicyAssignment)

-- | The namespace that contains the assignment.
deleteIAMPolicyAssignment_namespace :: Lens.Lens' DeleteIAMPolicyAssignment Prelude.Text
deleteIAMPolicyAssignment_namespace = Lens.lens (\DeleteIAMPolicyAssignment' {namespace} -> namespace) (\s@DeleteIAMPolicyAssignment' {} a -> s {namespace = a} :: DeleteIAMPolicyAssignment)

instance Core.AWSRequest DeleteIAMPolicyAssignment where
  type
    AWSResponse DeleteIAMPolicyAssignment =
      DeleteIAMPolicyAssignmentResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteIAMPolicyAssignmentResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "AssignmentName")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteIAMPolicyAssignment

instance Prelude.NFData DeleteIAMPolicyAssignment

instance Core.ToHeaders DeleteIAMPolicyAssignment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteIAMPolicyAssignment where
  toPath DeleteIAMPolicyAssignment' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/namespace/",
        Core.toBS namespace,
        "/iam-policy-assignments/",
        Core.toBS assignmentName
      ]

instance Core.ToQuery DeleteIAMPolicyAssignment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteIAMPolicyAssignmentResponse' smart constructor.
data DeleteIAMPolicyAssignmentResponse = DeleteIAMPolicyAssignmentResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The name of the assignment.
    assignmentName :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteIAMPolicyAssignmentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'deleteIAMPolicyAssignmentResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'assignmentName', 'deleteIAMPolicyAssignmentResponse_assignmentName' - The name of the assignment.
--
-- 'status', 'deleteIAMPolicyAssignmentResponse_status' - The HTTP status of the request.
newDeleteIAMPolicyAssignmentResponse ::
  -- | 'status'
  Prelude.Int ->
  DeleteIAMPolicyAssignmentResponse
newDeleteIAMPolicyAssignmentResponse pStatus_ =
  DeleteIAMPolicyAssignmentResponse'
    { requestId =
        Prelude.Nothing,
      assignmentName = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
deleteIAMPolicyAssignmentResponse_requestId :: Lens.Lens' DeleteIAMPolicyAssignmentResponse (Prelude.Maybe Prelude.Text)
deleteIAMPolicyAssignmentResponse_requestId = Lens.lens (\DeleteIAMPolicyAssignmentResponse' {requestId} -> requestId) (\s@DeleteIAMPolicyAssignmentResponse' {} a -> s {requestId = a} :: DeleteIAMPolicyAssignmentResponse)

-- | The name of the assignment.
deleteIAMPolicyAssignmentResponse_assignmentName :: Lens.Lens' DeleteIAMPolicyAssignmentResponse (Prelude.Maybe Prelude.Text)
deleteIAMPolicyAssignmentResponse_assignmentName = Lens.lens (\DeleteIAMPolicyAssignmentResponse' {assignmentName} -> assignmentName) (\s@DeleteIAMPolicyAssignmentResponse' {} a -> s {assignmentName = a} :: DeleteIAMPolicyAssignmentResponse)

-- | The HTTP status of the request.
deleteIAMPolicyAssignmentResponse_status :: Lens.Lens' DeleteIAMPolicyAssignmentResponse Prelude.Int
deleteIAMPolicyAssignmentResponse_status = Lens.lens (\DeleteIAMPolicyAssignmentResponse' {status} -> status) (\s@DeleteIAMPolicyAssignmentResponse' {} a -> s {status = a} :: DeleteIAMPolicyAssignmentResponse)

instance
  Prelude.NFData
    DeleteIAMPolicyAssignmentResponse
