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
-- Module      : Network.AWS.Route53Resolver.GetFirewallRuleGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified firewall rule group.
module Network.AWS.Route53Resolver.GetFirewallRuleGroup
  ( -- * Creating a Request
    GetFirewallRuleGroup (..),
    newGetFirewallRuleGroup,

    -- * Request Lenses
    getFirewallRuleGroup_firewallRuleGroupId,

    -- * Destructuring the Response
    GetFirewallRuleGroupResponse (..),
    newGetFirewallRuleGroupResponse,

    -- * Response Lenses
    getFirewallRuleGroupResponse_firewallRuleGroup,
    getFirewallRuleGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newGetFirewallRuleGroup' smart constructor.
data GetFirewallRuleGroup = GetFirewallRuleGroup'
  { -- | The unique identifier of the firewall rule group.
    firewallRuleGroupId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetFirewallRuleGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firewallRuleGroupId', 'getFirewallRuleGroup_firewallRuleGroupId' - The unique identifier of the firewall rule group.
newGetFirewallRuleGroup ::
  -- | 'firewallRuleGroupId'
  Prelude.Text ->
  GetFirewallRuleGroup
newGetFirewallRuleGroup pFirewallRuleGroupId_ =
  GetFirewallRuleGroup'
    { firewallRuleGroupId =
        pFirewallRuleGroupId_
    }

-- | The unique identifier of the firewall rule group.
getFirewallRuleGroup_firewallRuleGroupId :: Lens.Lens' GetFirewallRuleGroup Prelude.Text
getFirewallRuleGroup_firewallRuleGroupId = Lens.lens (\GetFirewallRuleGroup' {firewallRuleGroupId} -> firewallRuleGroupId) (\s@GetFirewallRuleGroup' {} a -> s {firewallRuleGroupId = a} :: GetFirewallRuleGroup)

instance Core.AWSRequest GetFirewallRuleGroup where
  type
    AWSResponse GetFirewallRuleGroup =
      GetFirewallRuleGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetFirewallRuleGroupResponse'
            Prelude.<$> (x Core..?> "FirewallRuleGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetFirewallRuleGroup

instance Prelude.NFData GetFirewallRuleGroup

instance Core.ToHeaders GetFirewallRuleGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.GetFirewallRuleGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetFirewallRuleGroup where
  toJSON GetFirewallRuleGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("FirewallRuleGroupId" Core..= firewallRuleGroupId)
          ]
      )

instance Core.ToPath GetFirewallRuleGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery GetFirewallRuleGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetFirewallRuleGroupResponse' smart constructor.
data GetFirewallRuleGroupResponse = GetFirewallRuleGroupResponse'
  { -- | A collection of rules used to filter DNS network traffic.
    firewallRuleGroup :: Prelude.Maybe FirewallRuleGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetFirewallRuleGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firewallRuleGroup', 'getFirewallRuleGroupResponse_firewallRuleGroup' - A collection of rules used to filter DNS network traffic.
--
-- 'httpStatus', 'getFirewallRuleGroupResponse_httpStatus' - The response's http status code.
newGetFirewallRuleGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetFirewallRuleGroupResponse
newGetFirewallRuleGroupResponse pHttpStatus_ =
  GetFirewallRuleGroupResponse'
    { firewallRuleGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A collection of rules used to filter DNS network traffic.
getFirewallRuleGroupResponse_firewallRuleGroup :: Lens.Lens' GetFirewallRuleGroupResponse (Prelude.Maybe FirewallRuleGroup)
getFirewallRuleGroupResponse_firewallRuleGroup = Lens.lens (\GetFirewallRuleGroupResponse' {firewallRuleGroup} -> firewallRuleGroup) (\s@GetFirewallRuleGroupResponse' {} a -> s {firewallRuleGroup = a} :: GetFirewallRuleGroupResponse)

-- | The response's http status code.
getFirewallRuleGroupResponse_httpStatus :: Lens.Lens' GetFirewallRuleGroupResponse Prelude.Int
getFirewallRuleGroupResponse_httpStatus = Lens.lens (\GetFirewallRuleGroupResponse' {httpStatus} -> httpStatus) (\s@GetFirewallRuleGroupResponse' {} a -> s {httpStatus = a} :: GetFirewallRuleGroupResponse)

instance Prelude.NFData GetFirewallRuleGroupResponse
