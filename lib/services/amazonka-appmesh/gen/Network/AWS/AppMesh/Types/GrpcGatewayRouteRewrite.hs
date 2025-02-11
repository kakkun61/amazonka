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
-- Module      : Network.AWS.AppMesh.Types.GrpcGatewayRouteRewrite
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.GrpcGatewayRouteRewrite where

import Network.AWS.AppMesh.Types.GatewayRouteHostnameRewrite
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the gateway route to rewrite.
--
-- /See:/ 'newGrpcGatewayRouteRewrite' smart constructor.
data GrpcGatewayRouteRewrite = GrpcGatewayRouteRewrite'
  { -- | The host name of the gateway route to rewrite.
    hostname :: Prelude.Maybe GatewayRouteHostnameRewrite
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GrpcGatewayRouteRewrite' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hostname', 'grpcGatewayRouteRewrite_hostname' - The host name of the gateway route to rewrite.
newGrpcGatewayRouteRewrite ::
  GrpcGatewayRouteRewrite
newGrpcGatewayRouteRewrite =
  GrpcGatewayRouteRewrite'
    { hostname =
        Prelude.Nothing
    }

-- | The host name of the gateway route to rewrite.
grpcGatewayRouteRewrite_hostname :: Lens.Lens' GrpcGatewayRouteRewrite (Prelude.Maybe GatewayRouteHostnameRewrite)
grpcGatewayRouteRewrite_hostname = Lens.lens (\GrpcGatewayRouteRewrite' {hostname} -> hostname) (\s@GrpcGatewayRouteRewrite' {} a -> s {hostname = a} :: GrpcGatewayRouteRewrite)

instance Core.FromJSON GrpcGatewayRouteRewrite where
  parseJSON =
    Core.withObject
      "GrpcGatewayRouteRewrite"
      ( \x ->
          GrpcGatewayRouteRewrite'
            Prelude.<$> (x Core..:? "hostname")
      )

instance Prelude.Hashable GrpcGatewayRouteRewrite

instance Prelude.NFData GrpcGatewayRouteRewrite

instance Core.ToJSON GrpcGatewayRouteRewrite where
  toJSON GrpcGatewayRouteRewrite' {..} =
    Core.object
      ( Prelude.catMaybes
          [("hostname" Core..=) Prelude.<$> hostname]
      )
