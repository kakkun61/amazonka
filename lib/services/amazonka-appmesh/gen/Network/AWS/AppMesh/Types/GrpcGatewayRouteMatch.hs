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
-- Module      : Network.AWS.AppMesh.Types.GrpcGatewayRouteMatch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.GrpcGatewayRouteMatch where

import Network.AWS.AppMesh.Types.GatewayRouteHostnameMatch
import Network.AWS.AppMesh.Types.GrpcGatewayRouteMetadata
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the criteria for determining a request match.
--
-- /See:/ 'newGrpcGatewayRouteMatch' smart constructor.
data GrpcGatewayRouteMatch = GrpcGatewayRouteMatch'
  { -- | The gateway route host name to be matched on.
    hostname :: Prelude.Maybe GatewayRouteHostnameMatch,
    -- | The fully qualified domain name for the service to match from the
    -- request.
    serviceName :: Prelude.Maybe Prelude.Text,
    -- | The gateway route metadata to be matched on.
    metadata :: Prelude.Maybe (Prelude.NonEmpty GrpcGatewayRouteMetadata)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GrpcGatewayRouteMatch' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hostname', 'grpcGatewayRouteMatch_hostname' - The gateway route host name to be matched on.
--
-- 'serviceName', 'grpcGatewayRouteMatch_serviceName' - The fully qualified domain name for the service to match from the
-- request.
--
-- 'metadata', 'grpcGatewayRouteMatch_metadata' - The gateway route metadata to be matched on.
newGrpcGatewayRouteMatch ::
  GrpcGatewayRouteMatch
newGrpcGatewayRouteMatch =
  GrpcGatewayRouteMatch'
    { hostname = Prelude.Nothing,
      serviceName = Prelude.Nothing,
      metadata = Prelude.Nothing
    }

-- | The gateway route host name to be matched on.
grpcGatewayRouteMatch_hostname :: Lens.Lens' GrpcGatewayRouteMatch (Prelude.Maybe GatewayRouteHostnameMatch)
grpcGatewayRouteMatch_hostname = Lens.lens (\GrpcGatewayRouteMatch' {hostname} -> hostname) (\s@GrpcGatewayRouteMatch' {} a -> s {hostname = a} :: GrpcGatewayRouteMatch)

-- | The fully qualified domain name for the service to match from the
-- request.
grpcGatewayRouteMatch_serviceName :: Lens.Lens' GrpcGatewayRouteMatch (Prelude.Maybe Prelude.Text)
grpcGatewayRouteMatch_serviceName = Lens.lens (\GrpcGatewayRouteMatch' {serviceName} -> serviceName) (\s@GrpcGatewayRouteMatch' {} a -> s {serviceName = a} :: GrpcGatewayRouteMatch)

-- | The gateway route metadata to be matched on.
grpcGatewayRouteMatch_metadata :: Lens.Lens' GrpcGatewayRouteMatch (Prelude.Maybe (Prelude.NonEmpty GrpcGatewayRouteMetadata))
grpcGatewayRouteMatch_metadata = Lens.lens (\GrpcGatewayRouteMatch' {metadata} -> metadata) (\s@GrpcGatewayRouteMatch' {} a -> s {metadata = a} :: GrpcGatewayRouteMatch) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON GrpcGatewayRouteMatch where
  parseJSON =
    Core.withObject
      "GrpcGatewayRouteMatch"
      ( \x ->
          GrpcGatewayRouteMatch'
            Prelude.<$> (x Core..:? "hostname")
            Prelude.<*> (x Core..:? "serviceName")
            Prelude.<*> (x Core..:? "metadata")
      )

instance Prelude.Hashable GrpcGatewayRouteMatch

instance Prelude.NFData GrpcGatewayRouteMatch

instance Core.ToJSON GrpcGatewayRouteMatch where
  toJSON GrpcGatewayRouteMatch' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("hostname" Core..=) Prelude.<$> hostname,
            ("serviceName" Core..=) Prelude.<$> serviceName,
            ("metadata" Core..=) Prelude.<$> metadata
          ]
      )
