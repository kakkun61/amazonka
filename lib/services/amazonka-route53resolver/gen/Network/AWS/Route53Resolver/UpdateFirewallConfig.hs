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
-- Module      : Network.AWS.Route53Resolver.UpdateFirewallConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the configuration of the firewall behavior provided by DNS
-- Firewall for a single VPC from Amazon Virtual Private Cloud (Amazon
-- VPC).
module Network.AWS.Route53Resolver.UpdateFirewallConfig
  ( -- * Creating a Request
    UpdateFirewallConfig (..),
    newUpdateFirewallConfig,

    -- * Request Lenses
    updateFirewallConfig_resourceId,
    updateFirewallConfig_firewallFailOpen,

    -- * Destructuring the Response
    UpdateFirewallConfigResponse (..),
    newUpdateFirewallConfigResponse,

    -- * Response Lenses
    updateFirewallConfigResponse_firewallConfig,
    updateFirewallConfigResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newUpdateFirewallConfig' smart constructor.
data UpdateFirewallConfig = UpdateFirewallConfig'
  { -- | The ID of the VPC that the configuration is for.
    resourceId :: Prelude.Text,
    -- | Determines how Route 53 Resolver handles queries during failures, for
    -- example when all traffic that is sent to DNS Firewall fails to receive a
    -- reply.
    --
    -- -   By default, fail open is disabled, which means the failure mode is
    --     closed. This approach favors security over availability. DNS
    --     Firewall blocks queries that it is unable to evaluate properly.
    --
    -- -   If you enable this option, the failure mode is open. This approach
    --     favors availability over security. DNS Firewall allows queries to
    --     proceed if it is unable to properly evaluate them.
    --
    -- This behavior is only enforced for VPCs that have at least one DNS
    -- Firewall rule group association.
    firewallFailOpen :: FirewallFailOpenStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFirewallConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceId', 'updateFirewallConfig_resourceId' - The ID of the VPC that the configuration is for.
--
-- 'firewallFailOpen', 'updateFirewallConfig_firewallFailOpen' - Determines how Route 53 Resolver handles queries during failures, for
-- example when all traffic that is sent to DNS Firewall fails to receive a
-- reply.
--
-- -   By default, fail open is disabled, which means the failure mode is
--     closed. This approach favors security over availability. DNS
--     Firewall blocks queries that it is unable to evaluate properly.
--
-- -   If you enable this option, the failure mode is open. This approach
--     favors availability over security. DNS Firewall allows queries to
--     proceed if it is unable to properly evaluate them.
--
-- This behavior is only enforced for VPCs that have at least one DNS
-- Firewall rule group association.
newUpdateFirewallConfig ::
  -- | 'resourceId'
  Prelude.Text ->
  -- | 'firewallFailOpen'
  FirewallFailOpenStatus ->
  UpdateFirewallConfig
newUpdateFirewallConfig
  pResourceId_
  pFirewallFailOpen_ =
    UpdateFirewallConfig'
      { resourceId = pResourceId_,
        firewallFailOpen = pFirewallFailOpen_
      }

-- | The ID of the VPC that the configuration is for.
updateFirewallConfig_resourceId :: Lens.Lens' UpdateFirewallConfig Prelude.Text
updateFirewallConfig_resourceId = Lens.lens (\UpdateFirewallConfig' {resourceId} -> resourceId) (\s@UpdateFirewallConfig' {} a -> s {resourceId = a} :: UpdateFirewallConfig)

-- | Determines how Route 53 Resolver handles queries during failures, for
-- example when all traffic that is sent to DNS Firewall fails to receive a
-- reply.
--
-- -   By default, fail open is disabled, which means the failure mode is
--     closed. This approach favors security over availability. DNS
--     Firewall blocks queries that it is unable to evaluate properly.
--
-- -   If you enable this option, the failure mode is open. This approach
--     favors availability over security. DNS Firewall allows queries to
--     proceed if it is unable to properly evaluate them.
--
-- This behavior is only enforced for VPCs that have at least one DNS
-- Firewall rule group association.
updateFirewallConfig_firewallFailOpen :: Lens.Lens' UpdateFirewallConfig FirewallFailOpenStatus
updateFirewallConfig_firewallFailOpen = Lens.lens (\UpdateFirewallConfig' {firewallFailOpen} -> firewallFailOpen) (\s@UpdateFirewallConfig' {} a -> s {firewallFailOpen = a} :: UpdateFirewallConfig)

instance Core.AWSRequest UpdateFirewallConfig where
  type
    AWSResponse UpdateFirewallConfig =
      UpdateFirewallConfigResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateFirewallConfigResponse'
            Prelude.<$> (x Core..?> "FirewallConfig")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateFirewallConfig

instance Prelude.NFData UpdateFirewallConfig

instance Core.ToHeaders UpdateFirewallConfig where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.UpdateFirewallConfig" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateFirewallConfig where
  toJSON UpdateFirewallConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ResourceId" Core..= resourceId),
            Prelude.Just
              ("FirewallFailOpen" Core..= firewallFailOpen)
          ]
      )

instance Core.ToPath UpdateFirewallConfig where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateFirewallConfig where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateFirewallConfigResponse' smart constructor.
data UpdateFirewallConfigResponse = UpdateFirewallConfigResponse'
  { -- | Configuration of the firewall behavior provided by DNS Firewall for a
    -- single VPC.
    firewallConfig :: Prelude.Maybe FirewallConfig,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFirewallConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firewallConfig', 'updateFirewallConfigResponse_firewallConfig' - Configuration of the firewall behavior provided by DNS Firewall for a
-- single VPC.
--
-- 'httpStatus', 'updateFirewallConfigResponse_httpStatus' - The response's http status code.
newUpdateFirewallConfigResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateFirewallConfigResponse
newUpdateFirewallConfigResponse pHttpStatus_ =
  UpdateFirewallConfigResponse'
    { firewallConfig =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Configuration of the firewall behavior provided by DNS Firewall for a
-- single VPC.
updateFirewallConfigResponse_firewallConfig :: Lens.Lens' UpdateFirewallConfigResponse (Prelude.Maybe FirewallConfig)
updateFirewallConfigResponse_firewallConfig = Lens.lens (\UpdateFirewallConfigResponse' {firewallConfig} -> firewallConfig) (\s@UpdateFirewallConfigResponse' {} a -> s {firewallConfig = a} :: UpdateFirewallConfigResponse)

-- | The response's http status code.
updateFirewallConfigResponse_httpStatus :: Lens.Lens' UpdateFirewallConfigResponse Prelude.Int
updateFirewallConfigResponse_httpStatus = Lens.lens (\UpdateFirewallConfigResponse' {httpStatus} -> httpStatus) (\s@UpdateFirewallConfigResponse' {} a -> s {httpStatus = a} :: UpdateFirewallConfigResponse)

instance Prelude.NFData UpdateFirewallConfigResponse
