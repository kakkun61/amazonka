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
-- Module      : Network.AWS.DLM.DeleteLifecyclePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified lifecycle policy and halts the automated
-- operations that the policy specified.
module Network.AWS.DLM.DeleteLifecyclePolicy
  ( -- * Creating a Request
    DeleteLifecyclePolicy (..),
    newDeleteLifecyclePolicy,

    -- * Request Lenses
    deleteLifecyclePolicy_policyId,

    -- * Destructuring the Response
    DeleteLifecyclePolicyResponse (..),
    newDeleteLifecyclePolicyResponse,

    -- * Response Lenses
    deleteLifecyclePolicyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DLM.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteLifecyclePolicy' smart constructor.
data DeleteLifecyclePolicy = DeleteLifecyclePolicy'
  { -- | The identifier of the lifecycle policy.
    policyId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLifecyclePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policyId', 'deleteLifecyclePolicy_policyId' - The identifier of the lifecycle policy.
newDeleteLifecyclePolicy ::
  -- | 'policyId'
  Prelude.Text ->
  DeleteLifecyclePolicy
newDeleteLifecyclePolicy pPolicyId_ =
  DeleteLifecyclePolicy' {policyId = pPolicyId_}

-- | The identifier of the lifecycle policy.
deleteLifecyclePolicy_policyId :: Lens.Lens' DeleteLifecyclePolicy Prelude.Text
deleteLifecyclePolicy_policyId = Lens.lens (\DeleteLifecyclePolicy' {policyId} -> policyId) (\s@DeleteLifecyclePolicy' {} a -> s {policyId = a} :: DeleteLifecyclePolicy)

instance Core.AWSRequest DeleteLifecyclePolicy where
  type
    AWSResponse DeleteLifecyclePolicy =
      DeleteLifecyclePolicyResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteLifecyclePolicyResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteLifecyclePolicy

instance Prelude.NFData DeleteLifecyclePolicy

instance Core.ToHeaders DeleteLifecyclePolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteLifecyclePolicy where
  toPath DeleteLifecyclePolicy' {..} =
    Prelude.mconcat
      ["/policies/", Core.toBS policyId, "/"]

instance Core.ToQuery DeleteLifecyclePolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteLifecyclePolicyResponse' smart constructor.
data DeleteLifecyclePolicyResponse = DeleteLifecyclePolicyResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLifecyclePolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteLifecyclePolicyResponse_httpStatus' - The response's http status code.
newDeleteLifecyclePolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteLifecyclePolicyResponse
newDeleteLifecyclePolicyResponse pHttpStatus_ =
  DeleteLifecyclePolicyResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteLifecyclePolicyResponse_httpStatus :: Lens.Lens' DeleteLifecyclePolicyResponse Prelude.Int
deleteLifecyclePolicyResponse_httpStatus = Lens.lens (\DeleteLifecyclePolicyResponse' {httpStatus} -> httpStatus) (\s@DeleteLifecyclePolicyResponse' {} a -> s {httpStatus = a} :: DeleteLifecyclePolicyResponse)

instance Prelude.NFData DeleteLifecyclePolicyResponse
