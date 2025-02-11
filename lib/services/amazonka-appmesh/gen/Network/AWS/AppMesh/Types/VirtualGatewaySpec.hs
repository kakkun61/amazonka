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
-- Module      : Network.AWS.AppMesh.Types.VirtualGatewaySpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualGatewaySpec where

import Network.AWS.AppMesh.Types.VirtualGatewayBackendDefaults
import Network.AWS.AppMesh.Types.VirtualGatewayListener
import Network.AWS.AppMesh.Types.VirtualGatewayLogging
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the specification of a service mesh resource.
--
-- /See:/ 'newVirtualGatewaySpec' smart constructor.
data VirtualGatewaySpec = VirtualGatewaySpec'
  { -- | A reference to an object that represents the defaults for backends.
    backendDefaults :: Prelude.Maybe VirtualGatewayBackendDefaults,
    logging :: Prelude.Maybe VirtualGatewayLogging,
    -- | The listeners that the mesh endpoint is expected to receive inbound
    -- traffic from. You can specify one listener.
    listeners :: [VirtualGatewayListener]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualGatewaySpec' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backendDefaults', 'virtualGatewaySpec_backendDefaults' - A reference to an object that represents the defaults for backends.
--
-- 'logging', 'virtualGatewaySpec_logging' - Undocumented member.
--
-- 'listeners', 'virtualGatewaySpec_listeners' - The listeners that the mesh endpoint is expected to receive inbound
-- traffic from. You can specify one listener.
newVirtualGatewaySpec ::
  VirtualGatewaySpec
newVirtualGatewaySpec =
  VirtualGatewaySpec'
    { backendDefaults =
        Prelude.Nothing,
      logging = Prelude.Nothing,
      listeners = Prelude.mempty
    }

-- | A reference to an object that represents the defaults for backends.
virtualGatewaySpec_backendDefaults :: Lens.Lens' VirtualGatewaySpec (Prelude.Maybe VirtualGatewayBackendDefaults)
virtualGatewaySpec_backendDefaults = Lens.lens (\VirtualGatewaySpec' {backendDefaults} -> backendDefaults) (\s@VirtualGatewaySpec' {} a -> s {backendDefaults = a} :: VirtualGatewaySpec)

-- | Undocumented member.
virtualGatewaySpec_logging :: Lens.Lens' VirtualGatewaySpec (Prelude.Maybe VirtualGatewayLogging)
virtualGatewaySpec_logging = Lens.lens (\VirtualGatewaySpec' {logging} -> logging) (\s@VirtualGatewaySpec' {} a -> s {logging = a} :: VirtualGatewaySpec)

-- | The listeners that the mesh endpoint is expected to receive inbound
-- traffic from. You can specify one listener.
virtualGatewaySpec_listeners :: Lens.Lens' VirtualGatewaySpec [VirtualGatewayListener]
virtualGatewaySpec_listeners = Lens.lens (\VirtualGatewaySpec' {listeners} -> listeners) (\s@VirtualGatewaySpec' {} a -> s {listeners = a} :: VirtualGatewaySpec) Prelude.. Lens.coerced

instance Core.FromJSON VirtualGatewaySpec where
  parseJSON =
    Core.withObject
      "VirtualGatewaySpec"
      ( \x ->
          VirtualGatewaySpec'
            Prelude.<$> (x Core..:? "backendDefaults")
            Prelude.<*> (x Core..:? "logging")
            Prelude.<*> (x Core..:? "listeners" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable VirtualGatewaySpec

instance Prelude.NFData VirtualGatewaySpec

instance Core.ToJSON VirtualGatewaySpec where
  toJSON VirtualGatewaySpec' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("backendDefaults" Core..=)
              Prelude.<$> backendDefaults,
            ("logging" Core..=) Prelude.<$> logging,
            Prelude.Just ("listeners" Core..= listeners)
          ]
      )
