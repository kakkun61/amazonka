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
-- Module      : Network.AWS.GlobalAccelerator.Types.PortMapping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GlobalAccelerator.Types.PortMapping where

import qualified Network.AWS.Core as Core
import Network.AWS.GlobalAccelerator.Types.CustomRoutingDestinationTrafficState
import Network.AWS.GlobalAccelerator.Types.CustomRoutingProtocol
import Network.AWS.GlobalAccelerator.Types.SocketAddress
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Returns the ports and associated IP addresses and ports of Amazon EC2
-- instances in your virtual private cloud (VPC) subnets. Custom routing is
-- a port mapping protocol in AWS Global Accelerator that statically
-- associates port ranges with VPC subnets, which allows Global Accelerator
-- to route to specific instances and ports within one or more subnets.
--
-- /See:/ 'newPortMapping' smart constructor.
data PortMapping = PortMapping'
  { -- | The EC2 instance IP address and port number in the virtual private cloud
    -- (VPC) subnet.
    destinationSocketAddress :: Prelude.Maybe SocketAddress,
    -- | The protocols supported by the endpoint group.
    protocols :: Prelude.Maybe (Prelude.NonEmpty CustomRoutingProtocol),
    -- | The Amazon Resource Name (ARN) of the endpoint group.
    endpointGroupArn :: Prelude.Maybe Prelude.Text,
    -- | The IP address of the VPC subnet (the subnet ID).
    endpointId :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether or not a port mapping destination can receive traffic.
    -- The value is either ALLOW, if traffic is allowed to the destination, or
    -- DENY, if traffic is not allowed to the destination.
    destinationTrafficState :: Prelude.Maybe CustomRoutingDestinationTrafficState,
    -- | The accelerator port.
    acceleratorPort :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PortMapping' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'destinationSocketAddress', 'portMapping_destinationSocketAddress' - The EC2 instance IP address and port number in the virtual private cloud
-- (VPC) subnet.
--
-- 'protocols', 'portMapping_protocols' - The protocols supported by the endpoint group.
--
-- 'endpointGroupArn', 'portMapping_endpointGroupArn' - The Amazon Resource Name (ARN) of the endpoint group.
--
-- 'endpointId', 'portMapping_endpointId' - The IP address of the VPC subnet (the subnet ID).
--
-- 'destinationTrafficState', 'portMapping_destinationTrafficState' - Indicates whether or not a port mapping destination can receive traffic.
-- The value is either ALLOW, if traffic is allowed to the destination, or
-- DENY, if traffic is not allowed to the destination.
--
-- 'acceleratorPort', 'portMapping_acceleratorPort' - The accelerator port.
newPortMapping ::
  PortMapping
newPortMapping =
  PortMapping'
    { destinationSocketAddress =
        Prelude.Nothing,
      protocols = Prelude.Nothing,
      endpointGroupArn = Prelude.Nothing,
      endpointId = Prelude.Nothing,
      destinationTrafficState = Prelude.Nothing,
      acceleratorPort = Prelude.Nothing
    }

-- | The EC2 instance IP address and port number in the virtual private cloud
-- (VPC) subnet.
portMapping_destinationSocketAddress :: Lens.Lens' PortMapping (Prelude.Maybe SocketAddress)
portMapping_destinationSocketAddress = Lens.lens (\PortMapping' {destinationSocketAddress} -> destinationSocketAddress) (\s@PortMapping' {} a -> s {destinationSocketAddress = a} :: PortMapping)

-- | The protocols supported by the endpoint group.
portMapping_protocols :: Lens.Lens' PortMapping (Prelude.Maybe (Prelude.NonEmpty CustomRoutingProtocol))
portMapping_protocols = Lens.lens (\PortMapping' {protocols} -> protocols) (\s@PortMapping' {} a -> s {protocols = a} :: PortMapping) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the endpoint group.
portMapping_endpointGroupArn :: Lens.Lens' PortMapping (Prelude.Maybe Prelude.Text)
portMapping_endpointGroupArn = Lens.lens (\PortMapping' {endpointGroupArn} -> endpointGroupArn) (\s@PortMapping' {} a -> s {endpointGroupArn = a} :: PortMapping)

-- | The IP address of the VPC subnet (the subnet ID).
portMapping_endpointId :: Lens.Lens' PortMapping (Prelude.Maybe Prelude.Text)
portMapping_endpointId = Lens.lens (\PortMapping' {endpointId} -> endpointId) (\s@PortMapping' {} a -> s {endpointId = a} :: PortMapping)

-- | Indicates whether or not a port mapping destination can receive traffic.
-- The value is either ALLOW, if traffic is allowed to the destination, or
-- DENY, if traffic is not allowed to the destination.
portMapping_destinationTrafficState :: Lens.Lens' PortMapping (Prelude.Maybe CustomRoutingDestinationTrafficState)
portMapping_destinationTrafficState = Lens.lens (\PortMapping' {destinationTrafficState} -> destinationTrafficState) (\s@PortMapping' {} a -> s {destinationTrafficState = a} :: PortMapping)

-- | The accelerator port.
portMapping_acceleratorPort :: Lens.Lens' PortMapping (Prelude.Maybe Prelude.Natural)
portMapping_acceleratorPort = Lens.lens (\PortMapping' {acceleratorPort} -> acceleratorPort) (\s@PortMapping' {} a -> s {acceleratorPort = a} :: PortMapping)

instance Core.FromJSON PortMapping where
  parseJSON =
    Core.withObject
      "PortMapping"
      ( \x ->
          PortMapping'
            Prelude.<$> (x Core..:? "DestinationSocketAddress")
            Prelude.<*> (x Core..:? "Protocols")
            Prelude.<*> (x Core..:? "EndpointGroupArn")
            Prelude.<*> (x Core..:? "EndpointId")
            Prelude.<*> (x Core..:? "DestinationTrafficState")
            Prelude.<*> (x Core..:? "AcceleratorPort")
      )

instance Prelude.Hashable PortMapping

instance Prelude.NFData PortMapping
