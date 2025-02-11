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
-- Module      : Network.AWS.Route53Resolver.GetFirewallRuleGroupAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a firewall rule group association, which enables DNS filtering
-- for a VPC with one rule group. A VPC can have more than one firewall
-- rule group association, and a rule group can be associated with more
-- than one VPC.
module Network.AWS.Route53Resolver.GetFirewallRuleGroupAssociation
  ( -- * Creating a Request
    GetFirewallRuleGroupAssociation (..),
    newGetFirewallRuleGroupAssociation,

    -- * Request Lenses
    getFirewallRuleGroupAssociation_firewallRuleGroupAssociationId,

    -- * Destructuring the Response
    GetFirewallRuleGroupAssociationResponse (..),
    newGetFirewallRuleGroupAssociationResponse,

    -- * Response Lenses
    getFirewallRuleGroupAssociationResponse_firewallRuleGroupAssociation,
    getFirewallRuleGroupAssociationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newGetFirewallRuleGroupAssociation' smart constructor.
data GetFirewallRuleGroupAssociation = GetFirewallRuleGroupAssociation'
  { -- | The identifier of the FirewallRuleGroupAssociation.
    firewallRuleGroupAssociationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetFirewallRuleGroupAssociation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firewallRuleGroupAssociationId', 'getFirewallRuleGroupAssociation_firewallRuleGroupAssociationId' - The identifier of the FirewallRuleGroupAssociation.
newGetFirewallRuleGroupAssociation ::
  -- | 'firewallRuleGroupAssociationId'
  Prelude.Text ->
  GetFirewallRuleGroupAssociation
newGetFirewallRuleGroupAssociation
  pFirewallRuleGroupAssociationId_ =
    GetFirewallRuleGroupAssociation'
      { firewallRuleGroupAssociationId =
          pFirewallRuleGroupAssociationId_
      }

-- | The identifier of the FirewallRuleGroupAssociation.
getFirewallRuleGroupAssociation_firewallRuleGroupAssociationId :: Lens.Lens' GetFirewallRuleGroupAssociation Prelude.Text
getFirewallRuleGroupAssociation_firewallRuleGroupAssociationId = Lens.lens (\GetFirewallRuleGroupAssociation' {firewallRuleGroupAssociationId} -> firewallRuleGroupAssociationId) (\s@GetFirewallRuleGroupAssociation' {} a -> s {firewallRuleGroupAssociationId = a} :: GetFirewallRuleGroupAssociation)

instance
  Core.AWSRequest
    GetFirewallRuleGroupAssociation
  where
  type
    AWSResponse GetFirewallRuleGroupAssociation =
      GetFirewallRuleGroupAssociationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetFirewallRuleGroupAssociationResponse'
            Prelude.<$> (x Core..?> "FirewallRuleGroupAssociation")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetFirewallRuleGroupAssociation

instance
  Prelude.NFData
    GetFirewallRuleGroupAssociation

instance
  Core.ToHeaders
    GetFirewallRuleGroupAssociation
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.GetFirewallRuleGroupAssociation" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetFirewallRuleGroupAssociation where
  toJSON GetFirewallRuleGroupAssociation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "FirewallRuleGroupAssociationId"
                  Core..= firewallRuleGroupAssociationId
              )
          ]
      )

instance Core.ToPath GetFirewallRuleGroupAssociation where
  toPath = Prelude.const "/"

instance Core.ToQuery GetFirewallRuleGroupAssociation where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetFirewallRuleGroupAssociationResponse' smart constructor.
data GetFirewallRuleGroupAssociationResponse = GetFirewallRuleGroupAssociationResponse'
  { -- | The association that you requested.
    firewallRuleGroupAssociation :: Prelude.Maybe FirewallRuleGroupAssociation,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetFirewallRuleGroupAssociationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firewallRuleGroupAssociation', 'getFirewallRuleGroupAssociationResponse_firewallRuleGroupAssociation' - The association that you requested.
--
-- 'httpStatus', 'getFirewallRuleGroupAssociationResponse_httpStatus' - The response's http status code.
newGetFirewallRuleGroupAssociationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetFirewallRuleGroupAssociationResponse
newGetFirewallRuleGroupAssociationResponse
  pHttpStatus_ =
    GetFirewallRuleGroupAssociationResponse'
      { firewallRuleGroupAssociation =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The association that you requested.
getFirewallRuleGroupAssociationResponse_firewallRuleGroupAssociation :: Lens.Lens' GetFirewallRuleGroupAssociationResponse (Prelude.Maybe FirewallRuleGroupAssociation)
getFirewallRuleGroupAssociationResponse_firewallRuleGroupAssociation = Lens.lens (\GetFirewallRuleGroupAssociationResponse' {firewallRuleGroupAssociation} -> firewallRuleGroupAssociation) (\s@GetFirewallRuleGroupAssociationResponse' {} a -> s {firewallRuleGroupAssociation = a} :: GetFirewallRuleGroupAssociationResponse)

-- | The response's http status code.
getFirewallRuleGroupAssociationResponse_httpStatus :: Lens.Lens' GetFirewallRuleGroupAssociationResponse Prelude.Int
getFirewallRuleGroupAssociationResponse_httpStatus = Lens.lens (\GetFirewallRuleGroupAssociationResponse' {httpStatus} -> httpStatus) (\s@GetFirewallRuleGroupAssociationResponse' {} a -> s {httpStatus = a} :: GetFirewallRuleGroupAssociationResponse)

instance
  Prelude.NFData
    GetFirewallRuleGroupAssociationResponse
