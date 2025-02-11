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
-- Module      : Network.AWS.Route53Resolver.PutFirewallRuleGroupPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches an Identity and Access Management (Amazon Web Services IAM)
-- policy for sharing the rule group. You can use the policy to share the
-- rule group using Resource Access Manager (RAM).
module Network.AWS.Route53Resolver.PutFirewallRuleGroupPolicy
  ( -- * Creating a Request
    PutFirewallRuleGroupPolicy (..),
    newPutFirewallRuleGroupPolicy,

    -- * Request Lenses
    putFirewallRuleGroupPolicy_arn,
    putFirewallRuleGroupPolicy_firewallRuleGroupPolicy,

    -- * Destructuring the Response
    PutFirewallRuleGroupPolicyResponse (..),
    newPutFirewallRuleGroupPolicyResponse,

    -- * Response Lenses
    putFirewallRuleGroupPolicyResponse_returnValue,
    putFirewallRuleGroupPolicyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newPutFirewallRuleGroupPolicy' smart constructor.
data PutFirewallRuleGroupPolicy = PutFirewallRuleGroupPolicy'
  { -- | The ARN (Amazon Resource Name) for the rule group that you want to
    -- share.
    arn :: Prelude.Text,
    -- | The Identity and Access Management (Amazon Web Services IAM) policy to
    -- attach to the rule group.
    firewallRuleGroupPolicy :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutFirewallRuleGroupPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'putFirewallRuleGroupPolicy_arn' - The ARN (Amazon Resource Name) for the rule group that you want to
-- share.
--
-- 'firewallRuleGroupPolicy', 'putFirewallRuleGroupPolicy_firewallRuleGroupPolicy' - The Identity and Access Management (Amazon Web Services IAM) policy to
-- attach to the rule group.
newPutFirewallRuleGroupPolicy ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'firewallRuleGroupPolicy'
  Prelude.Text ->
  PutFirewallRuleGroupPolicy
newPutFirewallRuleGroupPolicy
  pArn_
  pFirewallRuleGroupPolicy_ =
    PutFirewallRuleGroupPolicy'
      { arn = pArn_,
        firewallRuleGroupPolicy =
          pFirewallRuleGroupPolicy_
      }

-- | The ARN (Amazon Resource Name) for the rule group that you want to
-- share.
putFirewallRuleGroupPolicy_arn :: Lens.Lens' PutFirewallRuleGroupPolicy Prelude.Text
putFirewallRuleGroupPolicy_arn = Lens.lens (\PutFirewallRuleGroupPolicy' {arn} -> arn) (\s@PutFirewallRuleGroupPolicy' {} a -> s {arn = a} :: PutFirewallRuleGroupPolicy)

-- | The Identity and Access Management (Amazon Web Services IAM) policy to
-- attach to the rule group.
putFirewallRuleGroupPolicy_firewallRuleGroupPolicy :: Lens.Lens' PutFirewallRuleGroupPolicy Prelude.Text
putFirewallRuleGroupPolicy_firewallRuleGroupPolicy = Lens.lens (\PutFirewallRuleGroupPolicy' {firewallRuleGroupPolicy} -> firewallRuleGroupPolicy) (\s@PutFirewallRuleGroupPolicy' {} a -> s {firewallRuleGroupPolicy = a} :: PutFirewallRuleGroupPolicy)

instance Core.AWSRequest PutFirewallRuleGroupPolicy where
  type
    AWSResponse PutFirewallRuleGroupPolicy =
      PutFirewallRuleGroupPolicyResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutFirewallRuleGroupPolicyResponse'
            Prelude.<$> (x Core..?> "ReturnValue")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutFirewallRuleGroupPolicy

instance Prelude.NFData PutFirewallRuleGroupPolicy

instance Core.ToHeaders PutFirewallRuleGroupPolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.PutFirewallRuleGroupPolicy" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutFirewallRuleGroupPolicy where
  toJSON PutFirewallRuleGroupPolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Arn" Core..= arn),
            Prelude.Just
              ( "FirewallRuleGroupPolicy"
                  Core..= firewallRuleGroupPolicy
              )
          ]
      )

instance Core.ToPath PutFirewallRuleGroupPolicy where
  toPath = Prelude.const "/"

instance Core.ToQuery PutFirewallRuleGroupPolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutFirewallRuleGroupPolicyResponse' smart constructor.
data PutFirewallRuleGroupPolicyResponse = PutFirewallRuleGroupPolicyResponse'
  { returnValue :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutFirewallRuleGroupPolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'returnValue', 'putFirewallRuleGroupPolicyResponse_returnValue' -
--
-- 'httpStatus', 'putFirewallRuleGroupPolicyResponse_httpStatus' - The response's http status code.
newPutFirewallRuleGroupPolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutFirewallRuleGroupPolicyResponse
newPutFirewallRuleGroupPolicyResponse pHttpStatus_ =
  PutFirewallRuleGroupPolicyResponse'
    { returnValue =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- |
putFirewallRuleGroupPolicyResponse_returnValue :: Lens.Lens' PutFirewallRuleGroupPolicyResponse (Prelude.Maybe Prelude.Bool)
putFirewallRuleGroupPolicyResponse_returnValue = Lens.lens (\PutFirewallRuleGroupPolicyResponse' {returnValue} -> returnValue) (\s@PutFirewallRuleGroupPolicyResponse' {} a -> s {returnValue = a} :: PutFirewallRuleGroupPolicyResponse)

-- | The response's http status code.
putFirewallRuleGroupPolicyResponse_httpStatus :: Lens.Lens' PutFirewallRuleGroupPolicyResponse Prelude.Int
putFirewallRuleGroupPolicyResponse_httpStatus = Lens.lens (\PutFirewallRuleGroupPolicyResponse' {httpStatus} -> httpStatus) (\s@PutFirewallRuleGroupPolicyResponse' {} a -> s {httpStatus = a} :: PutFirewallRuleGroupPolicyResponse)

instance
  Prelude.NFData
    PutFirewallRuleGroupPolicyResponse
