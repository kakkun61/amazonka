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
-- Module      : Network.AWS.DLM.GetLifecyclePolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets summary information about all or the specified data lifecycle
-- policies.
--
-- To get complete information about a policy, use GetLifecyclePolicy.
module Network.AWS.DLM.GetLifecyclePolicies
  ( -- * Creating a Request
    GetLifecyclePolicies (..),
    newGetLifecyclePolicies,

    -- * Request Lenses
    getLifecyclePolicies_state,
    getLifecyclePolicies_targetTags,
    getLifecyclePolicies_tagsToAdd,
    getLifecyclePolicies_policyIds,
    getLifecyclePolicies_resourceTypes,

    -- * Destructuring the Response
    GetLifecyclePoliciesResponse (..),
    newGetLifecyclePoliciesResponse,

    -- * Response Lenses
    getLifecyclePoliciesResponse_policies,
    getLifecyclePoliciesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DLM.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetLifecyclePolicies' smart constructor.
data GetLifecyclePolicies = GetLifecyclePolicies'
  { -- | The activation state.
    state :: Prelude.Maybe GettablePolicyStateValues,
    -- | The target tag for a policy.
    --
    -- Tags are strings in the format @key=value@.
    targetTags :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The tags to add to objects created by the policy.
    --
    -- Tags are strings in the format @key=value@.
    --
    -- These user-defined tags are added in addition to the Amazon Web
    -- Services-added lifecycle tags.
    tagsToAdd :: Prelude.Maybe [Prelude.Text],
    -- | The identifiers of the data lifecycle policies.
    policyIds :: Prelude.Maybe [Prelude.Text],
    -- | The resource type.
    resourceTypes :: Prelude.Maybe (Prelude.NonEmpty ResourceTypeValues)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetLifecyclePolicies' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'getLifecyclePolicies_state' - The activation state.
--
-- 'targetTags', 'getLifecyclePolicies_targetTags' - The target tag for a policy.
--
-- Tags are strings in the format @key=value@.
--
-- 'tagsToAdd', 'getLifecyclePolicies_tagsToAdd' - The tags to add to objects created by the policy.
--
-- Tags are strings in the format @key=value@.
--
-- These user-defined tags are added in addition to the Amazon Web
-- Services-added lifecycle tags.
--
-- 'policyIds', 'getLifecyclePolicies_policyIds' - The identifiers of the data lifecycle policies.
--
-- 'resourceTypes', 'getLifecyclePolicies_resourceTypes' - The resource type.
newGetLifecyclePolicies ::
  GetLifecyclePolicies
newGetLifecyclePolicies =
  GetLifecyclePolicies'
    { state = Prelude.Nothing,
      targetTags = Prelude.Nothing,
      tagsToAdd = Prelude.Nothing,
      policyIds = Prelude.Nothing,
      resourceTypes = Prelude.Nothing
    }

-- | The activation state.
getLifecyclePolicies_state :: Lens.Lens' GetLifecyclePolicies (Prelude.Maybe GettablePolicyStateValues)
getLifecyclePolicies_state = Lens.lens (\GetLifecyclePolicies' {state} -> state) (\s@GetLifecyclePolicies' {} a -> s {state = a} :: GetLifecyclePolicies)

-- | The target tag for a policy.
--
-- Tags are strings in the format @key=value@.
getLifecyclePolicies_targetTags :: Lens.Lens' GetLifecyclePolicies (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
getLifecyclePolicies_targetTags = Lens.lens (\GetLifecyclePolicies' {targetTags} -> targetTags) (\s@GetLifecyclePolicies' {} a -> s {targetTags = a} :: GetLifecyclePolicies) Prelude.. Lens.mapping Lens.coerced

-- | The tags to add to objects created by the policy.
--
-- Tags are strings in the format @key=value@.
--
-- These user-defined tags are added in addition to the Amazon Web
-- Services-added lifecycle tags.
getLifecyclePolicies_tagsToAdd :: Lens.Lens' GetLifecyclePolicies (Prelude.Maybe [Prelude.Text])
getLifecyclePolicies_tagsToAdd = Lens.lens (\GetLifecyclePolicies' {tagsToAdd} -> tagsToAdd) (\s@GetLifecyclePolicies' {} a -> s {tagsToAdd = a} :: GetLifecyclePolicies) Prelude.. Lens.mapping Lens.coerced

-- | The identifiers of the data lifecycle policies.
getLifecyclePolicies_policyIds :: Lens.Lens' GetLifecyclePolicies (Prelude.Maybe [Prelude.Text])
getLifecyclePolicies_policyIds = Lens.lens (\GetLifecyclePolicies' {policyIds} -> policyIds) (\s@GetLifecyclePolicies' {} a -> s {policyIds = a} :: GetLifecyclePolicies) Prelude.. Lens.mapping Lens.coerced

-- | The resource type.
getLifecyclePolicies_resourceTypes :: Lens.Lens' GetLifecyclePolicies (Prelude.Maybe (Prelude.NonEmpty ResourceTypeValues))
getLifecyclePolicies_resourceTypes = Lens.lens (\GetLifecyclePolicies' {resourceTypes} -> resourceTypes) (\s@GetLifecyclePolicies' {} a -> s {resourceTypes = a} :: GetLifecyclePolicies) Prelude.. Lens.mapping Lens.coerced

instance Core.AWSRequest GetLifecyclePolicies where
  type
    AWSResponse GetLifecyclePolicies =
      GetLifecyclePoliciesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetLifecyclePoliciesResponse'
            Prelude.<$> (x Core..?> "Policies" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetLifecyclePolicies

instance Prelude.NFData GetLifecyclePolicies

instance Core.ToHeaders GetLifecyclePolicies where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetLifecyclePolicies where
  toPath = Prelude.const "/policies"

instance Core.ToQuery GetLifecyclePolicies where
  toQuery GetLifecyclePolicies' {..} =
    Prelude.mconcat
      [ "state" Core.=: state,
        "targetTags"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> targetTags),
        "tagsToAdd"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> tagsToAdd),
        "policyIds"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> policyIds),
        "resourceTypes"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> resourceTypes
            )
      ]

-- | /See:/ 'newGetLifecyclePoliciesResponse' smart constructor.
data GetLifecyclePoliciesResponse = GetLifecyclePoliciesResponse'
  { -- | Summary information about the lifecycle policies.
    policies :: Prelude.Maybe [LifecyclePolicySummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetLifecyclePoliciesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policies', 'getLifecyclePoliciesResponse_policies' - Summary information about the lifecycle policies.
--
-- 'httpStatus', 'getLifecyclePoliciesResponse_httpStatus' - The response's http status code.
newGetLifecyclePoliciesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetLifecyclePoliciesResponse
newGetLifecyclePoliciesResponse pHttpStatus_ =
  GetLifecyclePoliciesResponse'
    { policies =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Summary information about the lifecycle policies.
getLifecyclePoliciesResponse_policies :: Lens.Lens' GetLifecyclePoliciesResponse (Prelude.Maybe [LifecyclePolicySummary])
getLifecyclePoliciesResponse_policies = Lens.lens (\GetLifecyclePoliciesResponse' {policies} -> policies) (\s@GetLifecyclePoliciesResponse' {} a -> s {policies = a} :: GetLifecyclePoliciesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getLifecyclePoliciesResponse_httpStatus :: Lens.Lens' GetLifecyclePoliciesResponse Prelude.Int
getLifecyclePoliciesResponse_httpStatus = Lens.lens (\GetLifecyclePoliciesResponse' {httpStatus} -> httpStatus) (\s@GetLifecyclePoliciesResponse' {} a -> s {httpStatus = a} :: GetLifecyclePoliciesResponse)

instance Prelude.NFData GetLifecyclePoliciesResponse
