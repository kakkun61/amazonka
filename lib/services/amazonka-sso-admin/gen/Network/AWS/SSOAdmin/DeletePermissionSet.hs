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
-- Module      : Network.AWS.SSOAdmin.DeletePermissionSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified permission set.
module Network.AWS.SSOAdmin.DeletePermissionSet
  ( -- * Creating a Request
    DeletePermissionSet (..),
    newDeletePermissionSet,

    -- * Request Lenses
    deletePermissionSet_instanceArn,
    deletePermissionSet_permissionSetArn,

    -- * Destructuring the Response
    DeletePermissionSetResponse (..),
    newDeletePermissionSetResponse,

    -- * Response Lenses
    deletePermissionSetResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSOAdmin.Types

-- | /See:/ 'newDeletePermissionSet' smart constructor.
data DeletePermissionSet = DeletePermissionSet'
  { -- | The ARN of the SSO instance under which the operation will be executed.
    -- For more information about ARNs, see
    -- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
    -- in the /Amazon Web Services General Reference/.
    instanceArn :: Prelude.Text,
    -- | The ARN of the permission set that should be deleted.
    permissionSetArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePermissionSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceArn', 'deletePermissionSet_instanceArn' - The ARN of the SSO instance under which the operation will be executed.
-- For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
--
-- 'permissionSetArn', 'deletePermissionSet_permissionSetArn' - The ARN of the permission set that should be deleted.
newDeletePermissionSet ::
  -- | 'instanceArn'
  Prelude.Text ->
  -- | 'permissionSetArn'
  Prelude.Text ->
  DeletePermissionSet
newDeletePermissionSet
  pInstanceArn_
  pPermissionSetArn_ =
    DeletePermissionSet'
      { instanceArn = pInstanceArn_,
        permissionSetArn = pPermissionSetArn_
      }

-- | The ARN of the SSO instance under which the operation will be executed.
-- For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
deletePermissionSet_instanceArn :: Lens.Lens' DeletePermissionSet Prelude.Text
deletePermissionSet_instanceArn = Lens.lens (\DeletePermissionSet' {instanceArn} -> instanceArn) (\s@DeletePermissionSet' {} a -> s {instanceArn = a} :: DeletePermissionSet)

-- | The ARN of the permission set that should be deleted.
deletePermissionSet_permissionSetArn :: Lens.Lens' DeletePermissionSet Prelude.Text
deletePermissionSet_permissionSetArn = Lens.lens (\DeletePermissionSet' {permissionSetArn} -> permissionSetArn) (\s@DeletePermissionSet' {} a -> s {permissionSetArn = a} :: DeletePermissionSet)

instance Core.AWSRequest DeletePermissionSet where
  type
    AWSResponse DeletePermissionSet =
      DeletePermissionSetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeletePermissionSetResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeletePermissionSet

instance Prelude.NFData DeletePermissionSet

instance Core.ToHeaders DeletePermissionSet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SWBExternalService.DeletePermissionSet" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeletePermissionSet where
  toJSON DeletePermissionSet' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("InstanceArn" Core..= instanceArn),
            Prelude.Just
              ("PermissionSetArn" Core..= permissionSetArn)
          ]
      )

instance Core.ToPath DeletePermissionSet where
  toPath = Prelude.const "/"

instance Core.ToQuery DeletePermissionSet where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeletePermissionSetResponse' smart constructor.
data DeletePermissionSetResponse = DeletePermissionSetResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePermissionSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deletePermissionSetResponse_httpStatus' - The response's http status code.
newDeletePermissionSetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeletePermissionSetResponse
newDeletePermissionSetResponse pHttpStatus_ =
  DeletePermissionSetResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deletePermissionSetResponse_httpStatus :: Lens.Lens' DeletePermissionSetResponse Prelude.Int
deletePermissionSetResponse_httpStatus = Lens.lens (\DeletePermissionSetResponse' {httpStatus} -> httpStatus) (\s@DeletePermissionSetResponse' {} a -> s {httpStatus = a} :: DeletePermissionSetResponse)

instance Prelude.NFData DeletePermissionSetResponse
