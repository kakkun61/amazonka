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
-- Module      : Network.AWS.GlobalAccelerator.Types.CustomRoutingDestinationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GlobalAccelerator.Types.CustomRoutingDestinationConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.GlobalAccelerator.Types.CustomRoutingProtocol
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | For a custom routing accelerator, sets the port range and protocol for
-- all endpoints (virtual private cloud subnets) in an endpoint group to
-- accept client traffic on.
--
-- /See:/ 'newCustomRoutingDestinationConfiguration' smart constructor.
data CustomRoutingDestinationConfiguration = CustomRoutingDestinationConfiguration'
  { -- | The first port, inclusive, in the range of ports for the endpoint group
    -- that is associated with a custom routing accelerator.
    fromPort :: Prelude.Natural,
    -- | The last port, inclusive, in the range of ports for the endpoint group
    -- that is associated with a custom routing accelerator.
    toPort :: Prelude.Natural,
    -- | The protocol for the endpoint group that is associated with a custom
    -- routing accelerator. The protocol can be either TCP or UDP.
    protocols :: Prelude.NonEmpty CustomRoutingProtocol
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CustomRoutingDestinationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fromPort', 'customRoutingDestinationConfiguration_fromPort' - The first port, inclusive, in the range of ports for the endpoint group
-- that is associated with a custom routing accelerator.
--
-- 'toPort', 'customRoutingDestinationConfiguration_toPort' - The last port, inclusive, in the range of ports for the endpoint group
-- that is associated with a custom routing accelerator.
--
-- 'protocols', 'customRoutingDestinationConfiguration_protocols' - The protocol for the endpoint group that is associated with a custom
-- routing accelerator. The protocol can be either TCP or UDP.
newCustomRoutingDestinationConfiguration ::
  -- | 'fromPort'
  Prelude.Natural ->
  -- | 'toPort'
  Prelude.Natural ->
  -- | 'protocols'
  Prelude.NonEmpty CustomRoutingProtocol ->
  CustomRoutingDestinationConfiguration
newCustomRoutingDestinationConfiguration
  pFromPort_
  pToPort_
  pProtocols_ =
    CustomRoutingDestinationConfiguration'
      { fromPort =
          pFromPort_,
        toPort = pToPort_,
        protocols =
          Lens.coerced Lens.# pProtocols_
      }

-- | The first port, inclusive, in the range of ports for the endpoint group
-- that is associated with a custom routing accelerator.
customRoutingDestinationConfiguration_fromPort :: Lens.Lens' CustomRoutingDestinationConfiguration Prelude.Natural
customRoutingDestinationConfiguration_fromPort = Lens.lens (\CustomRoutingDestinationConfiguration' {fromPort} -> fromPort) (\s@CustomRoutingDestinationConfiguration' {} a -> s {fromPort = a} :: CustomRoutingDestinationConfiguration)

-- | The last port, inclusive, in the range of ports for the endpoint group
-- that is associated with a custom routing accelerator.
customRoutingDestinationConfiguration_toPort :: Lens.Lens' CustomRoutingDestinationConfiguration Prelude.Natural
customRoutingDestinationConfiguration_toPort = Lens.lens (\CustomRoutingDestinationConfiguration' {toPort} -> toPort) (\s@CustomRoutingDestinationConfiguration' {} a -> s {toPort = a} :: CustomRoutingDestinationConfiguration)

-- | The protocol for the endpoint group that is associated with a custom
-- routing accelerator. The protocol can be either TCP or UDP.
customRoutingDestinationConfiguration_protocols :: Lens.Lens' CustomRoutingDestinationConfiguration (Prelude.NonEmpty CustomRoutingProtocol)
customRoutingDestinationConfiguration_protocols = Lens.lens (\CustomRoutingDestinationConfiguration' {protocols} -> protocols) (\s@CustomRoutingDestinationConfiguration' {} a -> s {protocols = a} :: CustomRoutingDestinationConfiguration) Prelude.. Lens.coerced

instance
  Prelude.Hashable
    CustomRoutingDestinationConfiguration

instance
  Prelude.NFData
    CustomRoutingDestinationConfiguration

instance
  Core.ToJSON
    CustomRoutingDestinationConfiguration
  where
  toJSON CustomRoutingDestinationConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("FromPort" Core..= fromPort),
            Prelude.Just ("ToPort" Core..= toPort),
            Prelude.Just ("Protocols" Core..= protocols)
          ]
      )
