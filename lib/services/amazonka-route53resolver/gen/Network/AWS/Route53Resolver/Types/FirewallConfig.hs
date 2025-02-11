{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53Resolver.Types.FirewallConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53Resolver.Types.FirewallConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53Resolver.Types.FirewallFailOpenStatus

-- | Configuration of the firewall behavior provided by DNS Firewall for a
-- single VPC from Amazon Virtual Private Cloud (Amazon VPC).
--
-- /See:/ 'newFirewallConfig' smart constructor.
data FirewallConfig = FirewallConfig'
  { -- | The ID of the VPC that this firewall configuration applies to.
    resourceId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services account ID of the owner of the VPC that this
    -- firewall configuration applies to.
    ownerId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the firewall configuration.
    id :: Prelude.Maybe Prelude.Text,
    -- | Determines how DNS Firewall operates during failures, for example when
    -- all traffic that is sent to DNS Firewall fails to receive a reply.
    --
    -- -   By default, fail open is disabled, which means the failure mode is
    --     closed. This approach favors security over availability. DNS
    --     Firewall returns a failure error when it is unable to properly
    --     evaluate a query.
    --
    -- -   If you enable this option, the failure mode is open. This approach
    --     favors availability over security. DNS Firewall allows queries to
    --     proceed if it is unable to properly evaluate them.
    --
    -- This behavior is only enforced for VPCs that have at least one DNS
    -- Firewall rule group association.
    firewallFailOpen :: Prelude.Maybe FirewallFailOpenStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FirewallConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceId', 'firewallConfig_resourceId' - The ID of the VPC that this firewall configuration applies to.
--
-- 'ownerId', 'firewallConfig_ownerId' - The Amazon Web Services account ID of the owner of the VPC that this
-- firewall configuration applies to.
--
-- 'id', 'firewallConfig_id' - The ID of the firewall configuration.
--
-- 'firewallFailOpen', 'firewallConfig_firewallFailOpen' - Determines how DNS Firewall operates during failures, for example when
-- all traffic that is sent to DNS Firewall fails to receive a reply.
--
-- -   By default, fail open is disabled, which means the failure mode is
--     closed. This approach favors security over availability. DNS
--     Firewall returns a failure error when it is unable to properly
--     evaluate a query.
--
-- -   If you enable this option, the failure mode is open. This approach
--     favors availability over security. DNS Firewall allows queries to
--     proceed if it is unable to properly evaluate them.
--
-- This behavior is only enforced for VPCs that have at least one DNS
-- Firewall rule group association.
newFirewallConfig ::
  FirewallConfig
newFirewallConfig =
  FirewallConfig'
    { resourceId = Prelude.Nothing,
      ownerId = Prelude.Nothing,
      id = Prelude.Nothing,
      firewallFailOpen = Prelude.Nothing
    }

-- | The ID of the VPC that this firewall configuration applies to.
firewallConfig_resourceId :: Lens.Lens' FirewallConfig (Prelude.Maybe Prelude.Text)
firewallConfig_resourceId = Lens.lens (\FirewallConfig' {resourceId} -> resourceId) (\s@FirewallConfig' {} a -> s {resourceId = a} :: FirewallConfig)

-- | The Amazon Web Services account ID of the owner of the VPC that this
-- firewall configuration applies to.
firewallConfig_ownerId :: Lens.Lens' FirewallConfig (Prelude.Maybe Prelude.Text)
firewallConfig_ownerId = Lens.lens (\FirewallConfig' {ownerId} -> ownerId) (\s@FirewallConfig' {} a -> s {ownerId = a} :: FirewallConfig)

-- | The ID of the firewall configuration.
firewallConfig_id :: Lens.Lens' FirewallConfig (Prelude.Maybe Prelude.Text)
firewallConfig_id = Lens.lens (\FirewallConfig' {id} -> id) (\s@FirewallConfig' {} a -> s {id = a} :: FirewallConfig)

-- | Determines how DNS Firewall operates during failures, for example when
-- all traffic that is sent to DNS Firewall fails to receive a reply.
--
-- -   By default, fail open is disabled, which means the failure mode is
--     closed. This approach favors security over availability. DNS
--     Firewall returns a failure error when it is unable to properly
--     evaluate a query.
--
-- -   If you enable this option, the failure mode is open. This approach
--     favors availability over security. DNS Firewall allows queries to
--     proceed if it is unable to properly evaluate them.
--
-- This behavior is only enforced for VPCs that have at least one DNS
-- Firewall rule group association.
firewallConfig_firewallFailOpen :: Lens.Lens' FirewallConfig (Prelude.Maybe FirewallFailOpenStatus)
firewallConfig_firewallFailOpen = Lens.lens (\FirewallConfig' {firewallFailOpen} -> firewallFailOpen) (\s@FirewallConfig' {} a -> s {firewallFailOpen = a} :: FirewallConfig)

instance Core.FromJSON FirewallConfig where
  parseJSON =
    Core.withObject
      "FirewallConfig"
      ( \x ->
          FirewallConfig'
            Prelude.<$> (x Core..:? "ResourceId")
            Prelude.<*> (x Core..:? "OwnerId")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "FirewallFailOpen")
      )

instance Prelude.Hashable FirewallConfig

instance Prelude.NFData FirewallConfig
