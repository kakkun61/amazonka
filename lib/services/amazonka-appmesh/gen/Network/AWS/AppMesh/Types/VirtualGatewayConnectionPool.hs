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
-- Module      : Network.AWS.AppMesh.Types.VirtualGatewayConnectionPool
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualGatewayConnectionPool where

import Network.AWS.AppMesh.Types.VirtualGatewayGrpcConnectionPool
import Network.AWS.AppMesh.Types.VirtualGatewayHttp2ConnectionPool
import Network.AWS.AppMesh.Types.VirtualGatewayHttpConnectionPool
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the type of virtual gateway connection pool.
--
-- Only one protocol is used at a time and should be the same protocol as
-- the one chosen under port mapping.
--
-- If not present the default value for @maxPendingRequests@ is
-- @2147483647@.
--
-- /See:/ 'newVirtualGatewayConnectionPool' smart constructor.
data VirtualGatewayConnectionPool = VirtualGatewayConnectionPool'
  { -- | An object that represents a type of connection pool.
    http2 :: Prelude.Maybe VirtualGatewayHttp2ConnectionPool,
    -- | An object that represents a type of connection pool.
    grpc :: Prelude.Maybe VirtualGatewayGrpcConnectionPool,
    -- | An object that represents a type of connection pool.
    http :: Prelude.Maybe VirtualGatewayHttpConnectionPool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualGatewayConnectionPool' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'http2', 'virtualGatewayConnectionPool_http2' - An object that represents a type of connection pool.
--
-- 'grpc', 'virtualGatewayConnectionPool_grpc' - An object that represents a type of connection pool.
--
-- 'http', 'virtualGatewayConnectionPool_http' - An object that represents a type of connection pool.
newVirtualGatewayConnectionPool ::
  VirtualGatewayConnectionPool
newVirtualGatewayConnectionPool =
  VirtualGatewayConnectionPool'
    { http2 =
        Prelude.Nothing,
      grpc = Prelude.Nothing,
      http = Prelude.Nothing
    }

-- | An object that represents a type of connection pool.
virtualGatewayConnectionPool_http2 :: Lens.Lens' VirtualGatewayConnectionPool (Prelude.Maybe VirtualGatewayHttp2ConnectionPool)
virtualGatewayConnectionPool_http2 = Lens.lens (\VirtualGatewayConnectionPool' {http2} -> http2) (\s@VirtualGatewayConnectionPool' {} a -> s {http2 = a} :: VirtualGatewayConnectionPool)

-- | An object that represents a type of connection pool.
virtualGatewayConnectionPool_grpc :: Lens.Lens' VirtualGatewayConnectionPool (Prelude.Maybe VirtualGatewayGrpcConnectionPool)
virtualGatewayConnectionPool_grpc = Lens.lens (\VirtualGatewayConnectionPool' {grpc} -> grpc) (\s@VirtualGatewayConnectionPool' {} a -> s {grpc = a} :: VirtualGatewayConnectionPool)

-- | An object that represents a type of connection pool.
virtualGatewayConnectionPool_http :: Lens.Lens' VirtualGatewayConnectionPool (Prelude.Maybe VirtualGatewayHttpConnectionPool)
virtualGatewayConnectionPool_http = Lens.lens (\VirtualGatewayConnectionPool' {http} -> http) (\s@VirtualGatewayConnectionPool' {} a -> s {http = a} :: VirtualGatewayConnectionPool)

instance Core.FromJSON VirtualGatewayConnectionPool where
  parseJSON =
    Core.withObject
      "VirtualGatewayConnectionPool"
      ( \x ->
          VirtualGatewayConnectionPool'
            Prelude.<$> (x Core..:? "http2")
            Prelude.<*> (x Core..:? "grpc")
            Prelude.<*> (x Core..:? "http")
      )

instance
  Prelude.Hashable
    VirtualGatewayConnectionPool

instance Prelude.NFData VirtualGatewayConnectionPool

instance Core.ToJSON VirtualGatewayConnectionPool where
  toJSON VirtualGatewayConnectionPool' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("http2" Core..=) Prelude.<$> http2,
            ("grpc" Core..=) Prelude.<$> grpc,
            ("http" Core..=) Prelude.<$> http
          ]
      )
