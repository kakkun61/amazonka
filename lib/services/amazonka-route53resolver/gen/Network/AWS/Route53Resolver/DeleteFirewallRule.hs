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
-- Module      : Network.AWS.Route53Resolver.DeleteFirewallRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified firewall rule.
module Network.AWS.Route53Resolver.DeleteFirewallRule
  ( -- * Creating a Request
    DeleteFirewallRule (..),
    newDeleteFirewallRule,

    -- * Request Lenses
    deleteFirewallRule_firewallRuleGroupId,
    deleteFirewallRule_firewallDomainListId,

    -- * Destructuring the Response
    DeleteFirewallRuleResponse (..),
    newDeleteFirewallRuleResponse,

    -- * Response Lenses
    deleteFirewallRuleResponse_firewallRule,
    deleteFirewallRuleResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newDeleteFirewallRule' smart constructor.
data DeleteFirewallRule = DeleteFirewallRule'
  { -- | The unique identifier of the firewall rule group that you want to delete
    -- the rule from.
    firewallRuleGroupId :: Prelude.Text,
    -- | The ID of the domain list that\'s used in the rule.
    firewallDomainListId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteFirewallRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firewallRuleGroupId', 'deleteFirewallRule_firewallRuleGroupId' - The unique identifier of the firewall rule group that you want to delete
-- the rule from.
--
-- 'firewallDomainListId', 'deleteFirewallRule_firewallDomainListId' - The ID of the domain list that\'s used in the rule.
newDeleteFirewallRule ::
  -- | 'firewallRuleGroupId'
  Prelude.Text ->
  -- | 'firewallDomainListId'
  Prelude.Text ->
  DeleteFirewallRule
newDeleteFirewallRule
  pFirewallRuleGroupId_
  pFirewallDomainListId_ =
    DeleteFirewallRule'
      { firewallRuleGroupId =
          pFirewallRuleGroupId_,
        firewallDomainListId = pFirewallDomainListId_
      }

-- | The unique identifier of the firewall rule group that you want to delete
-- the rule from.
deleteFirewallRule_firewallRuleGroupId :: Lens.Lens' DeleteFirewallRule Prelude.Text
deleteFirewallRule_firewallRuleGroupId = Lens.lens (\DeleteFirewallRule' {firewallRuleGroupId} -> firewallRuleGroupId) (\s@DeleteFirewallRule' {} a -> s {firewallRuleGroupId = a} :: DeleteFirewallRule)

-- | The ID of the domain list that\'s used in the rule.
deleteFirewallRule_firewallDomainListId :: Lens.Lens' DeleteFirewallRule Prelude.Text
deleteFirewallRule_firewallDomainListId = Lens.lens (\DeleteFirewallRule' {firewallDomainListId} -> firewallDomainListId) (\s@DeleteFirewallRule' {} a -> s {firewallDomainListId = a} :: DeleteFirewallRule)

instance Core.AWSRequest DeleteFirewallRule where
  type
    AWSResponse DeleteFirewallRule =
      DeleteFirewallRuleResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteFirewallRuleResponse'
            Prelude.<$> (x Core..?> "FirewallRule")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteFirewallRule

instance Prelude.NFData DeleteFirewallRule

instance Core.ToHeaders DeleteFirewallRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.DeleteFirewallRule" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteFirewallRule where
  toJSON DeleteFirewallRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("FirewallRuleGroupId" Core..= firewallRuleGroupId),
            Prelude.Just
              ( "FirewallDomainListId"
                  Core..= firewallDomainListId
              )
          ]
      )

instance Core.ToPath DeleteFirewallRule where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteFirewallRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteFirewallRuleResponse' smart constructor.
data DeleteFirewallRuleResponse = DeleteFirewallRuleResponse'
  { -- | The specification for the firewall rule that you just deleted.
    firewallRule :: Prelude.Maybe FirewallRule,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteFirewallRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firewallRule', 'deleteFirewallRuleResponse_firewallRule' - The specification for the firewall rule that you just deleted.
--
-- 'httpStatus', 'deleteFirewallRuleResponse_httpStatus' - The response's http status code.
newDeleteFirewallRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteFirewallRuleResponse
newDeleteFirewallRuleResponse pHttpStatus_ =
  DeleteFirewallRuleResponse'
    { firewallRule =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The specification for the firewall rule that you just deleted.
deleteFirewallRuleResponse_firewallRule :: Lens.Lens' DeleteFirewallRuleResponse (Prelude.Maybe FirewallRule)
deleteFirewallRuleResponse_firewallRule = Lens.lens (\DeleteFirewallRuleResponse' {firewallRule} -> firewallRule) (\s@DeleteFirewallRuleResponse' {} a -> s {firewallRule = a} :: DeleteFirewallRuleResponse)

-- | The response's http status code.
deleteFirewallRuleResponse_httpStatus :: Lens.Lens' DeleteFirewallRuleResponse Prelude.Int
deleteFirewallRuleResponse_httpStatus = Lens.lens (\DeleteFirewallRuleResponse' {httpStatus} -> httpStatus) (\s@DeleteFirewallRuleResponse' {} a -> s {httpStatus = a} :: DeleteFirewallRuleResponse)

instance Prelude.NFData DeleteFirewallRuleResponse
