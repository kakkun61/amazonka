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
-- Module      : Network.AWS.SSOAdmin.DeleteInlinePolicyFromPermissionSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the inline policy from a specified permission set.
module Network.AWS.SSOAdmin.DeleteInlinePolicyFromPermissionSet
  ( -- * Creating a Request
    DeleteInlinePolicyFromPermissionSet (..),
    newDeleteInlinePolicyFromPermissionSet,

    -- * Request Lenses
    deleteInlinePolicyFromPermissionSet_instanceArn,
    deleteInlinePolicyFromPermissionSet_permissionSetArn,

    -- * Destructuring the Response
    DeleteInlinePolicyFromPermissionSetResponse (..),
    newDeleteInlinePolicyFromPermissionSetResponse,

    -- * Response Lenses
    deleteInlinePolicyFromPermissionSetResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSOAdmin.Types

-- | /See:/ 'newDeleteInlinePolicyFromPermissionSet' smart constructor.
data DeleteInlinePolicyFromPermissionSet = DeleteInlinePolicyFromPermissionSet'
  { -- | The ARN of the SSO instance under which the operation will be executed.
    -- For more information about ARNs, see
    -- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
    -- in the /Amazon Web Services General Reference/.
    instanceArn :: Prelude.Text,
    -- | The ARN of the permission set that will be used to remove access.
    permissionSetArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteInlinePolicyFromPermissionSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceArn', 'deleteInlinePolicyFromPermissionSet_instanceArn' - The ARN of the SSO instance under which the operation will be executed.
-- For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
--
-- 'permissionSetArn', 'deleteInlinePolicyFromPermissionSet_permissionSetArn' - The ARN of the permission set that will be used to remove access.
newDeleteInlinePolicyFromPermissionSet ::
  -- | 'instanceArn'
  Prelude.Text ->
  -- | 'permissionSetArn'
  Prelude.Text ->
  DeleteInlinePolicyFromPermissionSet
newDeleteInlinePolicyFromPermissionSet
  pInstanceArn_
  pPermissionSetArn_ =
    DeleteInlinePolicyFromPermissionSet'
      { instanceArn =
          pInstanceArn_,
        permissionSetArn = pPermissionSetArn_
      }

-- | The ARN of the SSO instance under which the operation will be executed.
-- For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
deleteInlinePolicyFromPermissionSet_instanceArn :: Lens.Lens' DeleteInlinePolicyFromPermissionSet Prelude.Text
deleteInlinePolicyFromPermissionSet_instanceArn = Lens.lens (\DeleteInlinePolicyFromPermissionSet' {instanceArn} -> instanceArn) (\s@DeleteInlinePolicyFromPermissionSet' {} a -> s {instanceArn = a} :: DeleteInlinePolicyFromPermissionSet)

-- | The ARN of the permission set that will be used to remove access.
deleteInlinePolicyFromPermissionSet_permissionSetArn :: Lens.Lens' DeleteInlinePolicyFromPermissionSet Prelude.Text
deleteInlinePolicyFromPermissionSet_permissionSetArn = Lens.lens (\DeleteInlinePolicyFromPermissionSet' {permissionSetArn} -> permissionSetArn) (\s@DeleteInlinePolicyFromPermissionSet' {} a -> s {permissionSetArn = a} :: DeleteInlinePolicyFromPermissionSet)

instance
  Core.AWSRequest
    DeleteInlinePolicyFromPermissionSet
  where
  type
    AWSResponse DeleteInlinePolicyFromPermissionSet =
      DeleteInlinePolicyFromPermissionSetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteInlinePolicyFromPermissionSetResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DeleteInlinePolicyFromPermissionSet

instance
  Prelude.NFData
    DeleteInlinePolicyFromPermissionSet

instance
  Core.ToHeaders
    DeleteInlinePolicyFromPermissionSet
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SWBExternalService.DeleteInlinePolicyFromPermissionSet" ::
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
    DeleteInlinePolicyFromPermissionSet
  where
  toJSON DeleteInlinePolicyFromPermissionSet' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("InstanceArn" Core..= instanceArn),
            Prelude.Just
              ("PermissionSetArn" Core..= permissionSetArn)
          ]
      )

instance
  Core.ToPath
    DeleteInlinePolicyFromPermissionSet
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DeleteInlinePolicyFromPermissionSet
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteInlinePolicyFromPermissionSetResponse' smart constructor.
data DeleteInlinePolicyFromPermissionSetResponse = DeleteInlinePolicyFromPermissionSetResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteInlinePolicyFromPermissionSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteInlinePolicyFromPermissionSetResponse_httpStatus' - The response's http status code.
newDeleteInlinePolicyFromPermissionSetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteInlinePolicyFromPermissionSetResponse
newDeleteInlinePolicyFromPermissionSetResponse
  pHttpStatus_ =
    DeleteInlinePolicyFromPermissionSetResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
deleteInlinePolicyFromPermissionSetResponse_httpStatus :: Lens.Lens' DeleteInlinePolicyFromPermissionSetResponse Prelude.Int
deleteInlinePolicyFromPermissionSetResponse_httpStatus = Lens.lens (\DeleteInlinePolicyFromPermissionSetResponse' {httpStatus} -> httpStatus) (\s@DeleteInlinePolicyFromPermissionSetResponse' {} a -> s {httpStatus = a} :: DeleteInlinePolicyFromPermissionSetResponse)

instance
  Prelude.NFData
    DeleteInlinePolicyFromPermissionSetResponse
