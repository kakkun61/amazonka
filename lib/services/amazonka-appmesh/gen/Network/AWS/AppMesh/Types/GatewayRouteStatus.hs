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
-- Module      : Network.AWS.AppMesh.Types.GatewayRouteStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.GatewayRouteStatus where

import Network.AWS.AppMesh.Types.GatewayRouteStatusCode
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the current status of a gateway route.
--
-- /See:/ 'newGatewayRouteStatus' smart constructor.
data GatewayRouteStatus = GatewayRouteStatus'
  { -- | The current status for the gateway route.
    status :: GatewayRouteStatusCode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GatewayRouteStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'gatewayRouteStatus_status' - The current status for the gateway route.
newGatewayRouteStatus ::
  -- | 'status'
  GatewayRouteStatusCode ->
  GatewayRouteStatus
newGatewayRouteStatus pStatus_ =
  GatewayRouteStatus' {status = pStatus_}

-- | The current status for the gateway route.
gatewayRouteStatus_status :: Lens.Lens' GatewayRouteStatus GatewayRouteStatusCode
gatewayRouteStatus_status = Lens.lens (\GatewayRouteStatus' {status} -> status) (\s@GatewayRouteStatus' {} a -> s {status = a} :: GatewayRouteStatus)

instance Core.FromJSON GatewayRouteStatus where
  parseJSON =
    Core.withObject
      "GatewayRouteStatus"
      ( \x ->
          GatewayRouteStatus' Prelude.<$> (x Core..: "status")
      )

instance Prelude.Hashable GatewayRouteStatus

instance Prelude.NFData GatewayRouteStatus
