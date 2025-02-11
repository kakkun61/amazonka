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
-- Module      : Network.AWS.SSOAdmin.PutInlinePolicyToPermissionSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches an IAM inline policy to a permission set.
--
-- If the permission set is already referenced by one or more account
-- assignments, you will need to call @ ProvisionPermissionSet @ after this
-- action to apply the corresponding IAM policy updates to all assigned
-- accounts.
module Network.AWS.SSOAdmin.PutInlinePolicyToPermissionSet
  ( -- * Creating a Request
    PutInlinePolicyToPermissionSet (..),
    newPutInlinePolicyToPermissionSet,

    -- * Request Lenses
    putInlinePolicyToPermissionSet_instanceArn,
    putInlinePolicyToPermissionSet_permissionSetArn,
    putInlinePolicyToPermissionSet_inlinePolicy,

    -- * Destructuring the Response
    PutInlinePolicyToPermissionSetResponse (..),
    newPutInlinePolicyToPermissionSetResponse,

    -- * Response Lenses
    putInlinePolicyToPermissionSetResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSOAdmin.Types

-- | /See:/ 'newPutInlinePolicyToPermissionSet' smart constructor.
data PutInlinePolicyToPermissionSet = PutInlinePolicyToPermissionSet'
  { -- | The ARN of the SSO instance under which the operation will be executed.
    -- For more information about ARNs, see
    -- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
    -- in the /Amazon Web Services General Reference/.
    instanceArn :: Prelude.Text,
    -- | The ARN of the permission set.
    permissionSetArn :: Prelude.Text,
    -- | The IAM inline policy to attach to a PermissionSet.
    inlinePolicy :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutInlinePolicyToPermissionSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceArn', 'putInlinePolicyToPermissionSet_instanceArn' - The ARN of the SSO instance under which the operation will be executed.
-- For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
--
-- 'permissionSetArn', 'putInlinePolicyToPermissionSet_permissionSetArn' - The ARN of the permission set.
--
-- 'inlinePolicy', 'putInlinePolicyToPermissionSet_inlinePolicy' - The IAM inline policy to attach to a PermissionSet.
newPutInlinePolicyToPermissionSet ::
  -- | 'instanceArn'
  Prelude.Text ->
  -- | 'permissionSetArn'
  Prelude.Text ->
  -- | 'inlinePolicy'
  Prelude.Text ->
  PutInlinePolicyToPermissionSet
newPutInlinePolicyToPermissionSet
  pInstanceArn_
  pPermissionSetArn_
  pInlinePolicy_ =
    PutInlinePolicyToPermissionSet'
      { instanceArn =
          pInstanceArn_,
        permissionSetArn = pPermissionSetArn_,
        inlinePolicy =
          Core._Sensitive Lens.# pInlinePolicy_
      }

-- | The ARN of the SSO instance under which the operation will be executed.
-- For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
putInlinePolicyToPermissionSet_instanceArn :: Lens.Lens' PutInlinePolicyToPermissionSet Prelude.Text
putInlinePolicyToPermissionSet_instanceArn = Lens.lens (\PutInlinePolicyToPermissionSet' {instanceArn} -> instanceArn) (\s@PutInlinePolicyToPermissionSet' {} a -> s {instanceArn = a} :: PutInlinePolicyToPermissionSet)

-- | The ARN of the permission set.
putInlinePolicyToPermissionSet_permissionSetArn :: Lens.Lens' PutInlinePolicyToPermissionSet Prelude.Text
putInlinePolicyToPermissionSet_permissionSetArn = Lens.lens (\PutInlinePolicyToPermissionSet' {permissionSetArn} -> permissionSetArn) (\s@PutInlinePolicyToPermissionSet' {} a -> s {permissionSetArn = a} :: PutInlinePolicyToPermissionSet)

-- | The IAM inline policy to attach to a PermissionSet.
putInlinePolicyToPermissionSet_inlinePolicy :: Lens.Lens' PutInlinePolicyToPermissionSet Prelude.Text
putInlinePolicyToPermissionSet_inlinePolicy = Lens.lens (\PutInlinePolicyToPermissionSet' {inlinePolicy} -> inlinePolicy) (\s@PutInlinePolicyToPermissionSet' {} a -> s {inlinePolicy = a} :: PutInlinePolicyToPermissionSet) Prelude.. Core._Sensitive

instance
  Core.AWSRequest
    PutInlinePolicyToPermissionSet
  where
  type
    AWSResponse PutInlinePolicyToPermissionSet =
      PutInlinePolicyToPermissionSetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          PutInlinePolicyToPermissionSetResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    PutInlinePolicyToPermissionSet

instance
  Prelude.NFData
    PutInlinePolicyToPermissionSet

instance
  Core.ToHeaders
    PutInlinePolicyToPermissionSet
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SWBExternalService.PutInlinePolicyToPermissionSet" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutInlinePolicyToPermissionSet where
  toJSON PutInlinePolicyToPermissionSet' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("InstanceArn" Core..= instanceArn),
            Prelude.Just
              ("PermissionSetArn" Core..= permissionSetArn),
            Prelude.Just ("InlinePolicy" Core..= inlinePolicy)
          ]
      )

instance Core.ToPath PutInlinePolicyToPermissionSet where
  toPath = Prelude.const "/"

instance Core.ToQuery PutInlinePolicyToPermissionSet where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutInlinePolicyToPermissionSetResponse' smart constructor.
data PutInlinePolicyToPermissionSetResponse = PutInlinePolicyToPermissionSetResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutInlinePolicyToPermissionSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'putInlinePolicyToPermissionSetResponse_httpStatus' - The response's http status code.
newPutInlinePolicyToPermissionSetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutInlinePolicyToPermissionSetResponse
newPutInlinePolicyToPermissionSetResponse
  pHttpStatus_ =
    PutInlinePolicyToPermissionSetResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
putInlinePolicyToPermissionSetResponse_httpStatus :: Lens.Lens' PutInlinePolicyToPermissionSetResponse Prelude.Int
putInlinePolicyToPermissionSetResponse_httpStatus = Lens.lens (\PutInlinePolicyToPermissionSetResponse' {httpStatus} -> httpStatus) (\s@PutInlinePolicyToPermissionSetResponse' {} a -> s {httpStatus = a} :: PutInlinePolicyToPermissionSetResponse)

instance
  Prelude.NFData
    PutInlinePolicyToPermissionSetResponse
