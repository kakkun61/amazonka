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
-- Module      : Network.AWS.AppMesh.Types.VirtualGatewayPortMapping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualGatewayPortMapping where

import Network.AWS.AppMesh.Types.VirtualGatewayPortProtocol
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents a port mapping.
--
-- /See:/ 'newVirtualGatewayPortMapping' smart constructor.
data VirtualGatewayPortMapping = VirtualGatewayPortMapping'
  { -- | The port used for the port mapping. Specify one protocol.
    port :: Prelude.Natural,
    -- | The protocol used for the port mapping.
    protocol :: VirtualGatewayPortProtocol
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualGatewayPortMapping' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'port', 'virtualGatewayPortMapping_port' - The port used for the port mapping. Specify one protocol.
--
-- 'protocol', 'virtualGatewayPortMapping_protocol' - The protocol used for the port mapping.
newVirtualGatewayPortMapping ::
  -- | 'port'
  Prelude.Natural ->
  -- | 'protocol'
  VirtualGatewayPortProtocol ->
  VirtualGatewayPortMapping
newVirtualGatewayPortMapping pPort_ pProtocol_ =
  VirtualGatewayPortMapping'
    { port = pPort_,
      protocol = pProtocol_
    }

-- | The port used for the port mapping. Specify one protocol.
virtualGatewayPortMapping_port :: Lens.Lens' VirtualGatewayPortMapping Prelude.Natural
virtualGatewayPortMapping_port = Lens.lens (\VirtualGatewayPortMapping' {port} -> port) (\s@VirtualGatewayPortMapping' {} a -> s {port = a} :: VirtualGatewayPortMapping)

-- | The protocol used for the port mapping.
virtualGatewayPortMapping_protocol :: Lens.Lens' VirtualGatewayPortMapping VirtualGatewayPortProtocol
virtualGatewayPortMapping_protocol = Lens.lens (\VirtualGatewayPortMapping' {protocol} -> protocol) (\s@VirtualGatewayPortMapping' {} a -> s {protocol = a} :: VirtualGatewayPortMapping)

instance Core.FromJSON VirtualGatewayPortMapping where
  parseJSON =
    Core.withObject
      "VirtualGatewayPortMapping"
      ( \x ->
          VirtualGatewayPortMapping'
            Prelude.<$> (x Core..: "port")
            Prelude.<*> (x Core..: "protocol")
      )

instance Prelude.Hashable VirtualGatewayPortMapping

instance Prelude.NFData VirtualGatewayPortMapping

instance Core.ToJSON VirtualGatewayPortMapping where
  toJSON VirtualGatewayPortMapping' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("port" Core..= port),
            Prelude.Just ("protocol" Core..= protocol)
          ]
      )
