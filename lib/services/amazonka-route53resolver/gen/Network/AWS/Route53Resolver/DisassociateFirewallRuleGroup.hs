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
-- Module      : Network.AWS.Route53Resolver.DisassociateFirewallRuleGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a FirewallRuleGroup from a VPC, to remove DNS filtering
-- from the VPC.
module Network.AWS.Route53Resolver.DisassociateFirewallRuleGroup
  ( -- * Creating a Request
    DisassociateFirewallRuleGroup (..),
    newDisassociateFirewallRuleGroup,

    -- * Request Lenses
    disassociateFirewallRuleGroup_firewallRuleGroupAssociationId,

    -- * Destructuring the Response
    DisassociateFirewallRuleGroupResponse (..),
    newDisassociateFirewallRuleGroupResponse,

    -- * Response Lenses
    disassociateFirewallRuleGroupResponse_firewallRuleGroupAssociation,
    disassociateFirewallRuleGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newDisassociateFirewallRuleGroup' smart constructor.
data DisassociateFirewallRuleGroup = DisassociateFirewallRuleGroup'
  { -- | The identifier of the FirewallRuleGroupAssociation.
    firewallRuleGroupAssociationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateFirewallRuleGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firewallRuleGroupAssociationId', 'disassociateFirewallRuleGroup_firewallRuleGroupAssociationId' - The identifier of the FirewallRuleGroupAssociation.
newDisassociateFirewallRuleGroup ::
  -- | 'firewallRuleGroupAssociationId'
  Prelude.Text ->
  DisassociateFirewallRuleGroup
newDisassociateFirewallRuleGroup
  pFirewallRuleGroupAssociationId_ =
    DisassociateFirewallRuleGroup'
      { firewallRuleGroupAssociationId =
          pFirewallRuleGroupAssociationId_
      }

-- | The identifier of the FirewallRuleGroupAssociation.
disassociateFirewallRuleGroup_firewallRuleGroupAssociationId :: Lens.Lens' DisassociateFirewallRuleGroup Prelude.Text
disassociateFirewallRuleGroup_firewallRuleGroupAssociationId = Lens.lens (\DisassociateFirewallRuleGroup' {firewallRuleGroupAssociationId} -> firewallRuleGroupAssociationId) (\s@DisassociateFirewallRuleGroup' {} a -> s {firewallRuleGroupAssociationId = a} :: DisassociateFirewallRuleGroup)

instance
  Core.AWSRequest
    DisassociateFirewallRuleGroup
  where
  type
    AWSResponse DisassociateFirewallRuleGroup =
      DisassociateFirewallRuleGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DisassociateFirewallRuleGroupResponse'
            Prelude.<$> (x Core..?> "FirewallRuleGroupAssociation")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DisassociateFirewallRuleGroup

instance Prelude.NFData DisassociateFirewallRuleGroup

instance Core.ToHeaders DisassociateFirewallRuleGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.DisassociateFirewallRuleGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DisassociateFirewallRuleGroup where
  toJSON DisassociateFirewallRuleGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "FirewallRuleGroupAssociationId"
                  Core..= firewallRuleGroupAssociationId
              )
          ]
      )

instance Core.ToPath DisassociateFirewallRuleGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery DisassociateFirewallRuleGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDisassociateFirewallRuleGroupResponse' smart constructor.
data DisassociateFirewallRuleGroupResponse = DisassociateFirewallRuleGroupResponse'
  { -- | The firewall rule group association that you just removed.
    firewallRuleGroupAssociation :: Prelude.Maybe FirewallRuleGroupAssociation,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateFirewallRuleGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firewallRuleGroupAssociation', 'disassociateFirewallRuleGroupResponse_firewallRuleGroupAssociation' - The firewall rule group association that you just removed.
--
-- 'httpStatus', 'disassociateFirewallRuleGroupResponse_httpStatus' - The response's http status code.
newDisassociateFirewallRuleGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisassociateFirewallRuleGroupResponse
newDisassociateFirewallRuleGroupResponse pHttpStatus_ =
  DisassociateFirewallRuleGroupResponse'
    { firewallRuleGroupAssociation =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The firewall rule group association that you just removed.
disassociateFirewallRuleGroupResponse_firewallRuleGroupAssociation :: Lens.Lens' DisassociateFirewallRuleGroupResponse (Prelude.Maybe FirewallRuleGroupAssociation)
disassociateFirewallRuleGroupResponse_firewallRuleGroupAssociation = Lens.lens (\DisassociateFirewallRuleGroupResponse' {firewallRuleGroupAssociation} -> firewallRuleGroupAssociation) (\s@DisassociateFirewallRuleGroupResponse' {} a -> s {firewallRuleGroupAssociation = a} :: DisassociateFirewallRuleGroupResponse)

-- | The response's http status code.
disassociateFirewallRuleGroupResponse_httpStatus :: Lens.Lens' DisassociateFirewallRuleGroupResponse Prelude.Int
disassociateFirewallRuleGroupResponse_httpStatus = Lens.lens (\DisassociateFirewallRuleGroupResponse' {httpStatus} -> httpStatus) (\s@DisassociateFirewallRuleGroupResponse' {} a -> s {httpStatus = a} :: DisassociateFirewallRuleGroupResponse)

instance
  Prelude.NFData
    DisassociateFirewallRuleGroupResponse
