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
-- Module      : Network.AWS.AppMesh.Types.HttpGatewayRouteRewrite
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.HttpGatewayRouteRewrite where

import Network.AWS.AppMesh.Types.GatewayRouteHostnameRewrite
import Network.AWS.AppMesh.Types.HttpGatewayRoutePathRewrite
import Network.AWS.AppMesh.Types.HttpGatewayRoutePrefixRewrite
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object representing the gateway route to rewrite.
--
-- /See:/ 'newHttpGatewayRouteRewrite' smart constructor.
data HttpGatewayRouteRewrite = HttpGatewayRouteRewrite'
  { -- | The host name to rewrite.
    hostname :: Prelude.Maybe GatewayRouteHostnameRewrite,
    -- | The path to rewrite.
    path :: Prelude.Maybe HttpGatewayRoutePathRewrite,
    -- | The specified beginning characters to rewrite.
    prefix :: Prelude.Maybe HttpGatewayRoutePrefixRewrite
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HttpGatewayRouteRewrite' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hostname', 'httpGatewayRouteRewrite_hostname' - The host name to rewrite.
--
-- 'path', 'httpGatewayRouteRewrite_path' - The path to rewrite.
--
-- 'prefix', 'httpGatewayRouteRewrite_prefix' - The specified beginning characters to rewrite.
newHttpGatewayRouteRewrite ::
  HttpGatewayRouteRewrite
newHttpGatewayRouteRewrite =
  HttpGatewayRouteRewrite'
    { hostname =
        Prelude.Nothing,
      path = Prelude.Nothing,
      prefix = Prelude.Nothing
    }

-- | The host name to rewrite.
httpGatewayRouteRewrite_hostname :: Lens.Lens' HttpGatewayRouteRewrite (Prelude.Maybe GatewayRouteHostnameRewrite)
httpGatewayRouteRewrite_hostname = Lens.lens (\HttpGatewayRouteRewrite' {hostname} -> hostname) (\s@HttpGatewayRouteRewrite' {} a -> s {hostname = a} :: HttpGatewayRouteRewrite)

-- | The path to rewrite.
httpGatewayRouteRewrite_path :: Lens.Lens' HttpGatewayRouteRewrite (Prelude.Maybe HttpGatewayRoutePathRewrite)
httpGatewayRouteRewrite_path = Lens.lens (\HttpGatewayRouteRewrite' {path} -> path) (\s@HttpGatewayRouteRewrite' {} a -> s {path = a} :: HttpGatewayRouteRewrite)

-- | The specified beginning characters to rewrite.
httpGatewayRouteRewrite_prefix :: Lens.Lens' HttpGatewayRouteRewrite (Prelude.Maybe HttpGatewayRoutePrefixRewrite)
httpGatewayRouteRewrite_prefix = Lens.lens (\HttpGatewayRouteRewrite' {prefix} -> prefix) (\s@HttpGatewayRouteRewrite' {} a -> s {prefix = a} :: HttpGatewayRouteRewrite)

instance Core.FromJSON HttpGatewayRouteRewrite where
  parseJSON =
    Core.withObject
      "HttpGatewayRouteRewrite"
      ( \x ->
          HttpGatewayRouteRewrite'
            Prelude.<$> (x Core..:? "hostname")
            Prelude.<*> (x Core..:? "path")
            Prelude.<*> (x Core..:? "prefix")
      )

instance Prelude.Hashable HttpGatewayRouteRewrite

instance Prelude.NFData HttpGatewayRouteRewrite

instance Core.ToJSON HttpGatewayRouteRewrite where
  toJSON HttpGatewayRouteRewrite' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("hostname" Core..=) Prelude.<$> hostname,
            ("path" Core..=) Prelude.<$> path,
            ("prefix" Core..=) Prelude.<$> prefix
          ]
      )
