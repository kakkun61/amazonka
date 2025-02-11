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
-- Module      : Network.AWS.AppMesh.Types.GrpcGatewayRouteAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.GrpcGatewayRouteAction where

import Network.AWS.AppMesh.Types.GatewayRouteTarget
import Network.AWS.AppMesh.Types.GrpcGatewayRouteRewrite
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the action to take if a match is determined.
--
-- /See:/ 'newGrpcGatewayRouteAction' smart constructor.
data GrpcGatewayRouteAction = GrpcGatewayRouteAction'
  { -- | The gateway route action to rewrite.
    rewrite :: Prelude.Maybe GrpcGatewayRouteRewrite,
    -- | An object that represents the target that traffic is routed to when a
    -- request matches the gateway route.
    target :: GatewayRouteTarget
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GrpcGatewayRouteAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rewrite', 'grpcGatewayRouteAction_rewrite' - The gateway route action to rewrite.
--
-- 'target', 'grpcGatewayRouteAction_target' - An object that represents the target that traffic is routed to when a
-- request matches the gateway route.
newGrpcGatewayRouteAction ::
  -- | 'target'
  GatewayRouteTarget ->
  GrpcGatewayRouteAction
newGrpcGatewayRouteAction pTarget_ =
  GrpcGatewayRouteAction'
    { rewrite = Prelude.Nothing,
      target = pTarget_
    }

-- | The gateway route action to rewrite.
grpcGatewayRouteAction_rewrite :: Lens.Lens' GrpcGatewayRouteAction (Prelude.Maybe GrpcGatewayRouteRewrite)
grpcGatewayRouteAction_rewrite = Lens.lens (\GrpcGatewayRouteAction' {rewrite} -> rewrite) (\s@GrpcGatewayRouteAction' {} a -> s {rewrite = a} :: GrpcGatewayRouteAction)

-- | An object that represents the target that traffic is routed to when a
-- request matches the gateway route.
grpcGatewayRouteAction_target :: Lens.Lens' GrpcGatewayRouteAction GatewayRouteTarget
grpcGatewayRouteAction_target = Lens.lens (\GrpcGatewayRouteAction' {target} -> target) (\s@GrpcGatewayRouteAction' {} a -> s {target = a} :: GrpcGatewayRouteAction)

instance Core.FromJSON GrpcGatewayRouteAction where
  parseJSON =
    Core.withObject
      "GrpcGatewayRouteAction"
      ( \x ->
          GrpcGatewayRouteAction'
            Prelude.<$> (x Core..:? "rewrite")
            Prelude.<*> (x Core..: "target")
      )

instance Prelude.Hashable GrpcGatewayRouteAction

instance Prelude.NFData GrpcGatewayRouteAction

instance Core.ToJSON GrpcGatewayRouteAction where
  toJSON GrpcGatewayRouteAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("rewrite" Core..=) Prelude.<$> rewrite,
            Prelude.Just ("target" Core..= target)
          ]
      )
