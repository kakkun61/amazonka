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
-- Module      : Network.AWS.Route53Resolver.UpdateFirewallRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified firewall rule.
module Network.AWS.Route53Resolver.UpdateFirewallRule
  ( -- * Creating a Request
    UpdateFirewallRule (..),
    newUpdateFirewallRule,

    -- * Request Lenses
    updateFirewallRule_blockOverrideDnsType,
    updateFirewallRule_priority,
    updateFirewallRule_blockResponse,
    updateFirewallRule_action,
    updateFirewallRule_blockOverrideTtl,
    updateFirewallRule_name,
    updateFirewallRule_blockOverrideDomain,
    updateFirewallRule_firewallRuleGroupId,
    updateFirewallRule_firewallDomainListId,

    -- * Destructuring the Response
    UpdateFirewallRuleResponse (..),
    newUpdateFirewallRuleResponse,

    -- * Response Lenses
    updateFirewallRuleResponse_firewallRule,
    updateFirewallRuleResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newUpdateFirewallRule' smart constructor.
data UpdateFirewallRule = UpdateFirewallRule'
  { -- | The DNS record\'s type. This determines the format of the record value
    -- that you provided in @BlockOverrideDomain@. Used for the rule action
    -- @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
    blockOverrideDnsType :: Prelude.Maybe BlockOverrideDnsType,
    -- | The setting that determines the processing order of the rule in the rule
    -- group. DNS Firewall processes the rules in a rule group by order of
    -- priority, starting from the lowest setting.
    --
    -- You must specify a unique priority for each rule in a rule group. To
    -- make it easier to insert rules later, leave space between the numbers,
    -- for example, use 100, 200, and so on. You can change the priority
    -- setting for the rules in a rule group at any time.
    priority :: Prelude.Maybe Prelude.Int,
    -- | The way that you want DNS Firewall to block the request. Used for the
    -- rule action setting @BLOCK@.
    --
    -- -   @NODATA@ - Respond indicating that the query was successful, but no
    --     response is available for it.
    --
    -- -   @NXDOMAIN@ - Respond indicating that the domain name that\'s in the
    --     query doesn\'t exist.
    --
    -- -   @OVERRIDE@ - Provide a custom override in the response. This option
    --     requires custom handling details in the rule\'s @BlockOverride*@
    --     settings.
    blockResponse :: Prelude.Maybe BlockResponse,
    -- | The action that DNS Firewall should take on a DNS query when it matches
    -- one of the domains in the rule\'s domain list:
    --
    -- -   @ALLOW@ - Permit the request to go through.
    --
    -- -   @ALERT@ - Permit the request to go through but send an alert to the
    --     logs.
    --
    -- -   @BLOCK@ - Disallow the request. This option requires additional
    --     details in the rule\'s @BlockResponse@.
    action :: Prelude.Maybe Action,
    -- | The recommended amount of time, in seconds, for the DNS resolver or web
    -- browser to cache the provided override record. Used for the rule action
    -- @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
    blockOverrideTtl :: Prelude.Maybe Prelude.Natural,
    -- | The name of the rule.
    name :: Prelude.Maybe Prelude.Text,
    -- | The custom DNS record to send back in response to the query. Used for
    -- the rule action @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
    blockOverrideDomain :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the firewall rule group for the rule.
    firewallRuleGroupId :: Prelude.Text,
    -- | The ID of the domain list to use in the rule.
    firewallDomainListId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFirewallRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'blockOverrideDnsType', 'updateFirewallRule_blockOverrideDnsType' - The DNS record\'s type. This determines the format of the record value
-- that you provided in @BlockOverrideDomain@. Used for the rule action
-- @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
--
-- 'priority', 'updateFirewallRule_priority' - The setting that determines the processing order of the rule in the rule
-- group. DNS Firewall processes the rules in a rule group by order of
-- priority, starting from the lowest setting.
--
-- You must specify a unique priority for each rule in a rule group. To
-- make it easier to insert rules later, leave space between the numbers,
-- for example, use 100, 200, and so on. You can change the priority
-- setting for the rules in a rule group at any time.
--
-- 'blockResponse', 'updateFirewallRule_blockResponse' - The way that you want DNS Firewall to block the request. Used for the
-- rule action setting @BLOCK@.
--
-- -   @NODATA@ - Respond indicating that the query was successful, but no
--     response is available for it.
--
-- -   @NXDOMAIN@ - Respond indicating that the domain name that\'s in the
--     query doesn\'t exist.
--
-- -   @OVERRIDE@ - Provide a custom override in the response. This option
--     requires custom handling details in the rule\'s @BlockOverride*@
--     settings.
--
-- 'action', 'updateFirewallRule_action' - The action that DNS Firewall should take on a DNS query when it matches
-- one of the domains in the rule\'s domain list:
--
-- -   @ALLOW@ - Permit the request to go through.
--
-- -   @ALERT@ - Permit the request to go through but send an alert to the
--     logs.
--
-- -   @BLOCK@ - Disallow the request. This option requires additional
--     details in the rule\'s @BlockResponse@.
--
-- 'blockOverrideTtl', 'updateFirewallRule_blockOverrideTtl' - The recommended amount of time, in seconds, for the DNS resolver or web
-- browser to cache the provided override record. Used for the rule action
-- @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
--
-- 'name', 'updateFirewallRule_name' - The name of the rule.
--
-- 'blockOverrideDomain', 'updateFirewallRule_blockOverrideDomain' - The custom DNS record to send back in response to the query. Used for
-- the rule action @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
--
-- 'firewallRuleGroupId', 'updateFirewallRule_firewallRuleGroupId' - The unique identifier of the firewall rule group for the rule.
--
-- 'firewallDomainListId', 'updateFirewallRule_firewallDomainListId' - The ID of the domain list to use in the rule.
newUpdateFirewallRule ::
  -- | 'firewallRuleGroupId'
  Prelude.Text ->
  -- | 'firewallDomainListId'
  Prelude.Text ->
  UpdateFirewallRule
newUpdateFirewallRule
  pFirewallRuleGroupId_
  pFirewallDomainListId_ =
    UpdateFirewallRule'
      { blockOverrideDnsType =
          Prelude.Nothing,
        priority = Prelude.Nothing,
        blockResponse = Prelude.Nothing,
        action = Prelude.Nothing,
        blockOverrideTtl = Prelude.Nothing,
        name = Prelude.Nothing,
        blockOverrideDomain = Prelude.Nothing,
        firewallRuleGroupId = pFirewallRuleGroupId_,
        firewallDomainListId = pFirewallDomainListId_
      }

-- | The DNS record\'s type. This determines the format of the record value
-- that you provided in @BlockOverrideDomain@. Used for the rule action
-- @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
updateFirewallRule_blockOverrideDnsType :: Lens.Lens' UpdateFirewallRule (Prelude.Maybe BlockOverrideDnsType)
updateFirewallRule_blockOverrideDnsType = Lens.lens (\UpdateFirewallRule' {blockOverrideDnsType} -> blockOverrideDnsType) (\s@UpdateFirewallRule' {} a -> s {blockOverrideDnsType = a} :: UpdateFirewallRule)

-- | The setting that determines the processing order of the rule in the rule
-- group. DNS Firewall processes the rules in a rule group by order of
-- priority, starting from the lowest setting.
--
-- You must specify a unique priority for each rule in a rule group. To
-- make it easier to insert rules later, leave space between the numbers,
-- for example, use 100, 200, and so on. You can change the priority
-- setting for the rules in a rule group at any time.
updateFirewallRule_priority :: Lens.Lens' UpdateFirewallRule (Prelude.Maybe Prelude.Int)
updateFirewallRule_priority = Lens.lens (\UpdateFirewallRule' {priority} -> priority) (\s@UpdateFirewallRule' {} a -> s {priority = a} :: UpdateFirewallRule)

-- | The way that you want DNS Firewall to block the request. Used for the
-- rule action setting @BLOCK@.
--
-- -   @NODATA@ - Respond indicating that the query was successful, but no
--     response is available for it.
--
-- -   @NXDOMAIN@ - Respond indicating that the domain name that\'s in the
--     query doesn\'t exist.
--
-- -   @OVERRIDE@ - Provide a custom override in the response. This option
--     requires custom handling details in the rule\'s @BlockOverride*@
--     settings.
updateFirewallRule_blockResponse :: Lens.Lens' UpdateFirewallRule (Prelude.Maybe BlockResponse)
updateFirewallRule_blockResponse = Lens.lens (\UpdateFirewallRule' {blockResponse} -> blockResponse) (\s@UpdateFirewallRule' {} a -> s {blockResponse = a} :: UpdateFirewallRule)

-- | The action that DNS Firewall should take on a DNS query when it matches
-- one of the domains in the rule\'s domain list:
--
-- -   @ALLOW@ - Permit the request to go through.
--
-- -   @ALERT@ - Permit the request to go through but send an alert to the
--     logs.
--
-- -   @BLOCK@ - Disallow the request. This option requires additional
--     details in the rule\'s @BlockResponse@.
updateFirewallRule_action :: Lens.Lens' UpdateFirewallRule (Prelude.Maybe Action)
updateFirewallRule_action = Lens.lens (\UpdateFirewallRule' {action} -> action) (\s@UpdateFirewallRule' {} a -> s {action = a} :: UpdateFirewallRule)

-- | The recommended amount of time, in seconds, for the DNS resolver or web
-- browser to cache the provided override record. Used for the rule action
-- @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
updateFirewallRule_blockOverrideTtl :: Lens.Lens' UpdateFirewallRule (Prelude.Maybe Prelude.Natural)
updateFirewallRule_blockOverrideTtl = Lens.lens (\UpdateFirewallRule' {blockOverrideTtl} -> blockOverrideTtl) (\s@UpdateFirewallRule' {} a -> s {blockOverrideTtl = a} :: UpdateFirewallRule)

-- | The name of the rule.
updateFirewallRule_name :: Lens.Lens' UpdateFirewallRule (Prelude.Maybe Prelude.Text)
updateFirewallRule_name = Lens.lens (\UpdateFirewallRule' {name} -> name) (\s@UpdateFirewallRule' {} a -> s {name = a} :: UpdateFirewallRule)

-- | The custom DNS record to send back in response to the query. Used for
-- the rule action @BLOCK@ with a @BlockResponse@ setting of @OVERRIDE@.
updateFirewallRule_blockOverrideDomain :: Lens.Lens' UpdateFirewallRule (Prelude.Maybe Prelude.Text)
updateFirewallRule_blockOverrideDomain = Lens.lens (\UpdateFirewallRule' {blockOverrideDomain} -> blockOverrideDomain) (\s@UpdateFirewallRule' {} a -> s {blockOverrideDomain = a} :: UpdateFirewallRule)

-- | The unique identifier of the firewall rule group for the rule.
updateFirewallRule_firewallRuleGroupId :: Lens.Lens' UpdateFirewallRule Prelude.Text
updateFirewallRule_firewallRuleGroupId = Lens.lens (\UpdateFirewallRule' {firewallRuleGroupId} -> firewallRuleGroupId) (\s@UpdateFirewallRule' {} a -> s {firewallRuleGroupId = a} :: UpdateFirewallRule)

-- | The ID of the domain list to use in the rule.
updateFirewallRule_firewallDomainListId :: Lens.Lens' UpdateFirewallRule Prelude.Text
updateFirewallRule_firewallDomainListId = Lens.lens (\UpdateFirewallRule' {firewallDomainListId} -> firewallDomainListId) (\s@UpdateFirewallRule' {} a -> s {firewallDomainListId = a} :: UpdateFirewallRule)

instance Core.AWSRequest UpdateFirewallRule where
  type
    AWSResponse UpdateFirewallRule =
      UpdateFirewallRuleResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateFirewallRuleResponse'
            Prelude.<$> (x Core..?> "FirewallRule")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateFirewallRule

instance Prelude.NFData UpdateFirewallRule

instance Core.ToHeaders UpdateFirewallRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.UpdateFirewallRule" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateFirewallRule where
  toJSON UpdateFirewallRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("BlockOverrideDnsType" Core..=)
              Prelude.<$> blockOverrideDnsType,
            ("Priority" Core..=) Prelude.<$> priority,
            ("BlockResponse" Core..=) Prelude.<$> blockResponse,
            ("Action" Core..=) Prelude.<$> action,
            ("BlockOverrideTtl" Core..=)
              Prelude.<$> blockOverrideTtl,
            ("Name" Core..=) Prelude.<$> name,
            ("BlockOverrideDomain" Core..=)
              Prelude.<$> blockOverrideDomain,
            Prelude.Just
              ("FirewallRuleGroupId" Core..= firewallRuleGroupId),
            Prelude.Just
              ( "FirewallDomainListId"
                  Core..= firewallDomainListId
              )
          ]
      )

instance Core.ToPath UpdateFirewallRule where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateFirewallRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateFirewallRuleResponse' smart constructor.
data UpdateFirewallRuleResponse = UpdateFirewallRuleResponse'
  { -- | The firewall rule that you just updated.
    firewallRule :: Prelude.Maybe FirewallRule,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFirewallRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firewallRule', 'updateFirewallRuleResponse_firewallRule' - The firewall rule that you just updated.
--
-- 'httpStatus', 'updateFirewallRuleResponse_httpStatus' - The response's http status code.
newUpdateFirewallRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateFirewallRuleResponse
newUpdateFirewallRuleResponse pHttpStatus_ =
  UpdateFirewallRuleResponse'
    { firewallRule =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The firewall rule that you just updated.
updateFirewallRuleResponse_firewallRule :: Lens.Lens' UpdateFirewallRuleResponse (Prelude.Maybe FirewallRule)
updateFirewallRuleResponse_firewallRule = Lens.lens (\UpdateFirewallRuleResponse' {firewallRule} -> firewallRule) (\s@UpdateFirewallRuleResponse' {} a -> s {firewallRule = a} :: UpdateFirewallRuleResponse)

-- | The response's http status code.
updateFirewallRuleResponse_httpStatus :: Lens.Lens' UpdateFirewallRuleResponse Prelude.Int
updateFirewallRuleResponse_httpStatus = Lens.lens (\UpdateFirewallRuleResponse' {httpStatus} -> httpStatus) (\s@UpdateFirewallRuleResponse' {} a -> s {httpStatus = a} :: UpdateFirewallRuleResponse)

instance Prelude.NFData UpdateFirewallRuleResponse
