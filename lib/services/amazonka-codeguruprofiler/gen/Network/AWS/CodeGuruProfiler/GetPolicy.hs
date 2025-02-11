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
-- Module      : Network.AWS.CodeGuruProfiler.GetPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the JSON-formatted resource-based policy on a profiling group.
module Network.AWS.CodeGuruProfiler.GetPolicy
  ( -- * Creating a Request
    GetPolicy (..),
    newGetPolicy,

    -- * Request Lenses
    getPolicy_profilingGroupName,

    -- * Destructuring the Response
    GetPolicyResponse (..),
    newGetPolicyResponse,

    -- * Response Lenses
    getPolicyResponse_httpStatus,
    getPolicyResponse_policy,
    getPolicyResponse_revisionId,
  )
where

import Network.AWS.CodeGuruProfiler.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The structure representing the @getPolicyRequest@.
--
-- /See:/ 'newGetPolicy' smart constructor.
data GetPolicy = GetPolicy'
  { -- | The name of the profiling group.
    profilingGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'profilingGroupName', 'getPolicy_profilingGroupName' - The name of the profiling group.
newGetPolicy ::
  -- | 'profilingGroupName'
  Prelude.Text ->
  GetPolicy
newGetPolicy pProfilingGroupName_ =
  GetPolicy'
    { profilingGroupName =
        pProfilingGroupName_
    }

-- | The name of the profiling group.
getPolicy_profilingGroupName :: Lens.Lens' GetPolicy Prelude.Text
getPolicy_profilingGroupName = Lens.lens (\GetPolicy' {profilingGroupName} -> profilingGroupName) (\s@GetPolicy' {} a -> s {profilingGroupName = a} :: GetPolicy)

instance Core.AWSRequest GetPolicy where
  type AWSResponse GetPolicy = GetPolicyResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPolicyResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "policy")
            Prelude.<*> (x Core..:> "revisionId")
      )

instance Prelude.Hashable GetPolicy

instance Prelude.NFData GetPolicy

instance Core.ToHeaders GetPolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetPolicy where
  toPath GetPolicy' {..} =
    Prelude.mconcat
      [ "/profilingGroups/",
        Core.toBS profilingGroupName,
        "/policy"
      ]

instance Core.ToQuery GetPolicy where
  toQuery = Prelude.const Prelude.mempty

-- | The structure representing the @getPolicyResponse@.
--
-- /See:/ 'newGetPolicyResponse' smart constructor.
data GetPolicyResponse = GetPolicyResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The JSON-formatted resource-based policy attached to the
    -- @ProfilingGroup@.
    policy :: Prelude.Text,
    -- | A unique identifier for the current revision of the returned policy.
    revisionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getPolicyResponse_httpStatus' - The response's http status code.
--
-- 'policy', 'getPolicyResponse_policy' - The JSON-formatted resource-based policy attached to the
-- @ProfilingGroup@.
--
-- 'revisionId', 'getPolicyResponse_revisionId' - A unique identifier for the current revision of the returned policy.
newGetPolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'policy'
  Prelude.Text ->
  -- | 'revisionId'
  Prelude.Text ->
  GetPolicyResponse
newGetPolicyResponse
  pHttpStatus_
  pPolicy_
  pRevisionId_ =
    GetPolicyResponse'
      { httpStatus = pHttpStatus_,
        policy = pPolicy_,
        revisionId = pRevisionId_
      }

-- | The response's http status code.
getPolicyResponse_httpStatus :: Lens.Lens' GetPolicyResponse Prelude.Int
getPolicyResponse_httpStatus = Lens.lens (\GetPolicyResponse' {httpStatus} -> httpStatus) (\s@GetPolicyResponse' {} a -> s {httpStatus = a} :: GetPolicyResponse)

-- | The JSON-formatted resource-based policy attached to the
-- @ProfilingGroup@.
getPolicyResponse_policy :: Lens.Lens' GetPolicyResponse Prelude.Text
getPolicyResponse_policy = Lens.lens (\GetPolicyResponse' {policy} -> policy) (\s@GetPolicyResponse' {} a -> s {policy = a} :: GetPolicyResponse)

-- | A unique identifier for the current revision of the returned policy.
getPolicyResponse_revisionId :: Lens.Lens' GetPolicyResponse Prelude.Text
getPolicyResponse_revisionId = Lens.lens (\GetPolicyResponse' {revisionId} -> revisionId) (\s@GetPolicyResponse' {} a -> s {revisionId = a} :: GetPolicyResponse)

instance Prelude.NFData GetPolicyResponse
