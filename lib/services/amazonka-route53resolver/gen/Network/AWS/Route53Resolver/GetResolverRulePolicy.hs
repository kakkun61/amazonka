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
-- Module      : Network.AWS.Route53Resolver.GetResolverRulePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the Resolver rule policy for a specified rule. A
-- Resolver rule policy includes the rule that you want to share with
-- another account, the account that you want to share the rule with, and
-- the Resolver operations that you want to allow the account to use.
module Network.AWS.Route53Resolver.GetResolverRulePolicy
  ( -- * Creating a Request
    GetResolverRulePolicy (..),
    newGetResolverRulePolicy,

    -- * Request Lenses
    getResolverRulePolicy_arn,

    -- * Destructuring the Response
    GetResolverRulePolicyResponse (..),
    newGetResolverRulePolicyResponse,

    -- * Response Lenses
    getResolverRulePolicyResponse_resolverRulePolicy,
    getResolverRulePolicyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newGetResolverRulePolicy' smart constructor.
data GetResolverRulePolicy = GetResolverRulePolicy'
  { -- | The ID of the Resolver rule that you want to get the Resolver rule
    -- policy for.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetResolverRulePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'getResolverRulePolicy_arn' - The ID of the Resolver rule that you want to get the Resolver rule
-- policy for.
newGetResolverRulePolicy ::
  -- | 'arn'
  Prelude.Text ->
  GetResolverRulePolicy
newGetResolverRulePolicy pArn_ =
  GetResolverRulePolicy' {arn = pArn_}

-- | The ID of the Resolver rule that you want to get the Resolver rule
-- policy for.
getResolverRulePolicy_arn :: Lens.Lens' GetResolverRulePolicy Prelude.Text
getResolverRulePolicy_arn = Lens.lens (\GetResolverRulePolicy' {arn} -> arn) (\s@GetResolverRulePolicy' {} a -> s {arn = a} :: GetResolverRulePolicy)

instance Core.AWSRequest GetResolverRulePolicy where
  type
    AWSResponse GetResolverRulePolicy =
      GetResolverRulePolicyResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetResolverRulePolicyResponse'
            Prelude.<$> (x Core..?> "ResolverRulePolicy")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetResolverRulePolicy

instance Prelude.NFData GetResolverRulePolicy

instance Core.ToHeaders GetResolverRulePolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.GetResolverRulePolicy" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetResolverRulePolicy where
  toJSON GetResolverRulePolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Arn" Core..= arn)]
      )

instance Core.ToPath GetResolverRulePolicy where
  toPath = Prelude.const "/"

instance Core.ToQuery GetResolverRulePolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetResolverRulePolicyResponse' smart constructor.
data GetResolverRulePolicyResponse = GetResolverRulePolicyResponse'
  { -- | The Resolver rule policy for the rule that you specified in a
    -- @GetResolverRulePolicy@ request.
    resolverRulePolicy :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetResolverRulePolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resolverRulePolicy', 'getResolverRulePolicyResponse_resolverRulePolicy' - The Resolver rule policy for the rule that you specified in a
-- @GetResolverRulePolicy@ request.
--
-- 'httpStatus', 'getResolverRulePolicyResponse_httpStatus' - The response's http status code.
newGetResolverRulePolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetResolverRulePolicyResponse
newGetResolverRulePolicyResponse pHttpStatus_ =
  GetResolverRulePolicyResponse'
    { resolverRulePolicy =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Resolver rule policy for the rule that you specified in a
-- @GetResolverRulePolicy@ request.
getResolverRulePolicyResponse_resolverRulePolicy :: Lens.Lens' GetResolverRulePolicyResponse (Prelude.Maybe Prelude.Text)
getResolverRulePolicyResponse_resolverRulePolicy = Lens.lens (\GetResolverRulePolicyResponse' {resolverRulePolicy} -> resolverRulePolicy) (\s@GetResolverRulePolicyResponse' {} a -> s {resolverRulePolicy = a} :: GetResolverRulePolicyResponse)

-- | The response's http status code.
getResolverRulePolicyResponse_httpStatus :: Lens.Lens' GetResolverRulePolicyResponse Prelude.Int
getResolverRulePolicyResponse_httpStatus = Lens.lens (\GetResolverRulePolicyResponse' {httpStatus} -> httpStatus) (\s@GetResolverRulePolicyResponse' {} a -> s {httpStatus = a} :: GetResolverRulePolicyResponse)

instance Prelude.NFData GetResolverRulePolicyResponse
