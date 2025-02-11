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
-- Module      : Network.AWS.NetworkFirewall.Types.SyncState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.NetworkFirewall.Types.SyncState where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkFirewall.Types.Attachment
import Network.AWS.NetworkFirewall.Types.PerObjectStatus
import qualified Network.AWS.Prelude as Prelude

-- | The status of the firewall endpoint and firewall policy configuration
-- for a single VPC subnet.
--
-- For each VPC subnet that you associate with a firewall, AWS Network
-- Firewall does the following:
--
-- -   Instantiates a firewall endpoint in the subnet, ready to take
--     traffic.
--
-- -   Configures the endpoint with the current firewall policy settings,
--     to provide the filtering behavior for the endpoint.
--
-- When you update a firewall, for example to add a subnet association or
-- change a rule group in the firewall policy, the affected sync states
-- reflect out-of-sync or not ready status until the changes are complete.
--
-- /See:/ 'newSyncState' smart constructor.
data SyncState = SyncState'
  { -- | The configuration status of the firewall endpoint in a single VPC
    -- subnet. Network Firewall provides each endpoint with the rules that are
    -- configured in the firewall policy. Each time you add a subnet or modify
    -- the associated firewall policy, Network Firewall synchronizes the rules
    -- in the endpoint, so it can properly filter network traffic. This is part
    -- of the FirewallStatus.
    config :: Prelude.Maybe (Prelude.HashMap Prelude.Text PerObjectStatus),
    -- | The attachment status of the firewall\'s association with a single VPC
    -- subnet. For each configured subnet, Network Firewall creates the
    -- attachment by instantiating the firewall endpoint in the subnet so that
    -- it\'s ready to take traffic. This is part of the FirewallStatus.
    attachment :: Prelude.Maybe Attachment
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SyncState' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'config', 'syncState_config' - The configuration status of the firewall endpoint in a single VPC
-- subnet. Network Firewall provides each endpoint with the rules that are
-- configured in the firewall policy. Each time you add a subnet or modify
-- the associated firewall policy, Network Firewall synchronizes the rules
-- in the endpoint, so it can properly filter network traffic. This is part
-- of the FirewallStatus.
--
-- 'attachment', 'syncState_attachment' - The attachment status of the firewall\'s association with a single VPC
-- subnet. For each configured subnet, Network Firewall creates the
-- attachment by instantiating the firewall endpoint in the subnet so that
-- it\'s ready to take traffic. This is part of the FirewallStatus.
newSyncState ::
  SyncState
newSyncState =
  SyncState'
    { config = Prelude.Nothing,
      attachment = Prelude.Nothing
    }

-- | The configuration status of the firewall endpoint in a single VPC
-- subnet. Network Firewall provides each endpoint with the rules that are
-- configured in the firewall policy. Each time you add a subnet or modify
-- the associated firewall policy, Network Firewall synchronizes the rules
-- in the endpoint, so it can properly filter network traffic. This is part
-- of the FirewallStatus.
syncState_config :: Lens.Lens' SyncState (Prelude.Maybe (Prelude.HashMap Prelude.Text PerObjectStatus))
syncState_config = Lens.lens (\SyncState' {config} -> config) (\s@SyncState' {} a -> s {config = a} :: SyncState) Prelude.. Lens.mapping Lens.coerced

-- | The attachment status of the firewall\'s association with a single VPC
-- subnet. For each configured subnet, Network Firewall creates the
-- attachment by instantiating the firewall endpoint in the subnet so that
-- it\'s ready to take traffic. This is part of the FirewallStatus.
syncState_attachment :: Lens.Lens' SyncState (Prelude.Maybe Attachment)
syncState_attachment = Lens.lens (\SyncState' {attachment} -> attachment) (\s@SyncState' {} a -> s {attachment = a} :: SyncState)

instance Core.FromJSON SyncState where
  parseJSON =
    Core.withObject
      "SyncState"
      ( \x ->
          SyncState'
            Prelude.<$> (x Core..:? "Config" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Attachment")
      )

instance Prelude.Hashable SyncState

instance Prelude.NFData SyncState
