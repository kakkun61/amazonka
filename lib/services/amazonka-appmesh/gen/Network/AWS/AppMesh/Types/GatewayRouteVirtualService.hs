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
-- Module      : Network.AWS.AppMesh.Types.GatewayRouteVirtualService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.GatewayRouteVirtualService where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the virtual service that traffic is routed to.
--
-- /See:/ 'newGatewayRouteVirtualService' smart constructor.
data GatewayRouteVirtualService = GatewayRouteVirtualService'
  { -- | The name of the virtual service that traffic is routed to.
    virtualServiceName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GatewayRouteVirtualService' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'virtualServiceName', 'gatewayRouteVirtualService_virtualServiceName' - The name of the virtual service that traffic is routed to.
newGatewayRouteVirtualService ::
  -- | 'virtualServiceName'
  Prelude.Text ->
  GatewayRouteVirtualService
newGatewayRouteVirtualService pVirtualServiceName_ =
  GatewayRouteVirtualService'
    { virtualServiceName =
        pVirtualServiceName_
    }

-- | The name of the virtual service that traffic is routed to.
gatewayRouteVirtualService_virtualServiceName :: Lens.Lens' GatewayRouteVirtualService Prelude.Text
gatewayRouteVirtualService_virtualServiceName = Lens.lens (\GatewayRouteVirtualService' {virtualServiceName} -> virtualServiceName) (\s@GatewayRouteVirtualService' {} a -> s {virtualServiceName = a} :: GatewayRouteVirtualService)

instance Core.FromJSON GatewayRouteVirtualService where
  parseJSON =
    Core.withObject
      "GatewayRouteVirtualService"
      ( \x ->
          GatewayRouteVirtualService'
            Prelude.<$> (x Core..: "virtualServiceName")
      )

instance Prelude.Hashable GatewayRouteVirtualService

instance Prelude.NFData GatewayRouteVirtualService

instance Core.ToJSON GatewayRouteVirtualService where
  toJSON GatewayRouteVirtualService' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("virtualServiceName" Core..= virtualServiceName)
          ]
      )
