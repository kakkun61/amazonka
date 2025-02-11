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
-- Module      : Network.AWS.SSOAdmin.DescribeAccountAssignmentDeletionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the status of the assignment deletion request.
module Network.AWS.SSOAdmin.DescribeAccountAssignmentDeletionStatus
  ( -- * Creating a Request
    DescribeAccountAssignmentDeletionStatus (..),
    newDescribeAccountAssignmentDeletionStatus,

    -- * Request Lenses
    describeAccountAssignmentDeletionStatus_instanceArn,
    describeAccountAssignmentDeletionStatus_accountAssignmentDeletionRequestId,

    -- * Destructuring the Response
    DescribeAccountAssignmentDeletionStatusResponse (..),
    newDescribeAccountAssignmentDeletionStatusResponse,

    -- * Response Lenses
    describeAccountAssignmentDeletionStatusResponse_accountAssignmentDeletionStatus,
    describeAccountAssignmentDeletionStatusResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSOAdmin.Types

-- | /See:/ 'newDescribeAccountAssignmentDeletionStatus' smart constructor.
data DescribeAccountAssignmentDeletionStatus = DescribeAccountAssignmentDeletionStatus'
  { -- | The ARN of the SSO instance under which the operation will be executed.
    -- For more information about ARNs, see
    -- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
    -- in the /Amazon Web Services General Reference/.
    instanceArn :: Prelude.Text,
    -- | The identifier that is used to track the request operation progress.
    accountAssignmentDeletionRequestId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAccountAssignmentDeletionStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceArn', 'describeAccountAssignmentDeletionStatus_instanceArn' - The ARN of the SSO instance under which the operation will be executed.
-- For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
--
-- 'accountAssignmentDeletionRequestId', 'describeAccountAssignmentDeletionStatus_accountAssignmentDeletionRequestId' - The identifier that is used to track the request operation progress.
newDescribeAccountAssignmentDeletionStatus ::
  -- | 'instanceArn'
  Prelude.Text ->
  -- | 'accountAssignmentDeletionRequestId'
  Prelude.Text ->
  DescribeAccountAssignmentDeletionStatus
newDescribeAccountAssignmentDeletionStatus
  pInstanceArn_
  pAccountAssignmentDeletionRequestId_ =
    DescribeAccountAssignmentDeletionStatus'
      { instanceArn =
          pInstanceArn_,
        accountAssignmentDeletionRequestId =
          pAccountAssignmentDeletionRequestId_
      }

-- | The ARN of the SSO instance under which the operation will be executed.
-- For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
describeAccountAssignmentDeletionStatus_instanceArn :: Lens.Lens' DescribeAccountAssignmentDeletionStatus Prelude.Text
describeAccountAssignmentDeletionStatus_instanceArn = Lens.lens (\DescribeAccountAssignmentDeletionStatus' {instanceArn} -> instanceArn) (\s@DescribeAccountAssignmentDeletionStatus' {} a -> s {instanceArn = a} :: DescribeAccountAssignmentDeletionStatus)

-- | The identifier that is used to track the request operation progress.
describeAccountAssignmentDeletionStatus_accountAssignmentDeletionRequestId :: Lens.Lens' DescribeAccountAssignmentDeletionStatus Prelude.Text
describeAccountAssignmentDeletionStatus_accountAssignmentDeletionRequestId = Lens.lens (\DescribeAccountAssignmentDeletionStatus' {accountAssignmentDeletionRequestId} -> accountAssignmentDeletionRequestId) (\s@DescribeAccountAssignmentDeletionStatus' {} a -> s {accountAssignmentDeletionRequestId = a} :: DescribeAccountAssignmentDeletionStatus)

instance
  Core.AWSRequest
    DescribeAccountAssignmentDeletionStatus
  where
  type
    AWSResponse
      DescribeAccountAssignmentDeletionStatus =
      DescribeAccountAssignmentDeletionStatusResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAccountAssignmentDeletionStatusResponse'
            Prelude.<$> (x Core..?> "AccountAssignmentDeletionStatus")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeAccountAssignmentDeletionStatus

instance
  Prelude.NFData
    DescribeAccountAssignmentDeletionStatus

instance
  Core.ToHeaders
    DescribeAccountAssignmentDeletionStatus
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SWBExternalService.DescribeAccountAssignmentDeletionStatus" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    DescribeAccountAssignmentDeletionStatus
  where
  toJSON DescribeAccountAssignmentDeletionStatus' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("InstanceArn" Core..= instanceArn),
            Prelude.Just
              ( "AccountAssignmentDeletionRequestId"
                  Core..= accountAssignmentDeletionRequestId
              )
          ]
      )

instance
  Core.ToPath
    DescribeAccountAssignmentDeletionStatus
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeAccountAssignmentDeletionStatus
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAccountAssignmentDeletionStatusResponse' smart constructor.
data DescribeAccountAssignmentDeletionStatusResponse = DescribeAccountAssignmentDeletionStatusResponse'
  { -- | The status object for the account assignment deletion operation.
    accountAssignmentDeletionStatus :: Prelude.Maybe AccountAssignmentOperationStatus,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAccountAssignmentDeletionStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountAssignmentDeletionStatus', 'describeAccountAssignmentDeletionStatusResponse_accountAssignmentDeletionStatus' - The status object for the account assignment deletion operation.
--
-- 'httpStatus', 'describeAccountAssignmentDeletionStatusResponse_httpStatus' - The response's http status code.
newDescribeAccountAssignmentDeletionStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAccountAssignmentDeletionStatusResponse
newDescribeAccountAssignmentDeletionStatusResponse
  pHttpStatus_ =
    DescribeAccountAssignmentDeletionStatusResponse'
      { accountAssignmentDeletionStatus =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The status object for the account assignment deletion operation.
describeAccountAssignmentDeletionStatusResponse_accountAssignmentDeletionStatus :: Lens.Lens' DescribeAccountAssignmentDeletionStatusResponse (Prelude.Maybe AccountAssignmentOperationStatus)
describeAccountAssignmentDeletionStatusResponse_accountAssignmentDeletionStatus = Lens.lens (\DescribeAccountAssignmentDeletionStatusResponse' {accountAssignmentDeletionStatus} -> accountAssignmentDeletionStatus) (\s@DescribeAccountAssignmentDeletionStatusResponse' {} a -> s {accountAssignmentDeletionStatus = a} :: DescribeAccountAssignmentDeletionStatusResponse)

-- | The response's http status code.
describeAccountAssignmentDeletionStatusResponse_httpStatus :: Lens.Lens' DescribeAccountAssignmentDeletionStatusResponse Prelude.Int
describeAccountAssignmentDeletionStatusResponse_httpStatus = Lens.lens (\DescribeAccountAssignmentDeletionStatusResponse' {httpStatus} -> httpStatus) (\s@DescribeAccountAssignmentDeletionStatusResponse' {} a -> s {httpStatus = a} :: DescribeAccountAssignmentDeletionStatusResponse)

instance
  Prelude.NFData
    DescribeAccountAssignmentDeletionStatusResponse
