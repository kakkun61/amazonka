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
-- Module      : Network.AWS.MediaConnect.Types.DestinationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConnect.Types.DestinationConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConnect.Types.Interface
import qualified Network.AWS.Prelude as Prelude

-- | The transport parameters that are associated with an outbound media
-- stream.
--
-- /See:/ 'newDestinationConfiguration' smart constructor.
data DestinationConfiguration = DestinationConfiguration'
  { -- | The IP address where contents of the media stream will be sent.
    destinationIp :: Prelude.Text,
    -- | The port to use when the content of the media stream is distributed to
    -- the output.
    destinationPort :: Prelude.Int,
    -- | The VPC interface that is used for the media stream associated with the
    -- output.
    interface :: Interface,
    -- | The IP address that the receiver requires in order to establish a
    -- connection with the flow. This value is represented by the elastic
    -- network interface IP address of the VPC. This field applies only to
    -- outputs that use the CDI or ST 2110 JPEG XS protocol.
    outboundIp :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DestinationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'destinationIp', 'destinationConfiguration_destinationIp' - The IP address where contents of the media stream will be sent.
--
-- 'destinationPort', 'destinationConfiguration_destinationPort' - The port to use when the content of the media stream is distributed to
-- the output.
--
-- 'interface', 'destinationConfiguration_interface' - The VPC interface that is used for the media stream associated with the
-- output.
--
-- 'outboundIp', 'destinationConfiguration_outboundIp' - The IP address that the receiver requires in order to establish a
-- connection with the flow. This value is represented by the elastic
-- network interface IP address of the VPC. This field applies only to
-- outputs that use the CDI or ST 2110 JPEG XS protocol.
newDestinationConfiguration ::
  -- | 'destinationIp'
  Prelude.Text ->
  -- | 'destinationPort'
  Prelude.Int ->
  -- | 'interface'
  Interface ->
  -- | 'outboundIp'
  Prelude.Text ->
  DestinationConfiguration
newDestinationConfiguration
  pDestinationIp_
  pDestinationPort_
  pInterface_
  pOutboundIp_ =
    DestinationConfiguration'
      { destinationIp =
          pDestinationIp_,
        destinationPort = pDestinationPort_,
        interface = pInterface_,
        outboundIp = pOutboundIp_
      }

-- | The IP address where contents of the media stream will be sent.
destinationConfiguration_destinationIp :: Lens.Lens' DestinationConfiguration Prelude.Text
destinationConfiguration_destinationIp = Lens.lens (\DestinationConfiguration' {destinationIp} -> destinationIp) (\s@DestinationConfiguration' {} a -> s {destinationIp = a} :: DestinationConfiguration)

-- | The port to use when the content of the media stream is distributed to
-- the output.
destinationConfiguration_destinationPort :: Lens.Lens' DestinationConfiguration Prelude.Int
destinationConfiguration_destinationPort = Lens.lens (\DestinationConfiguration' {destinationPort} -> destinationPort) (\s@DestinationConfiguration' {} a -> s {destinationPort = a} :: DestinationConfiguration)

-- | The VPC interface that is used for the media stream associated with the
-- output.
destinationConfiguration_interface :: Lens.Lens' DestinationConfiguration Interface
destinationConfiguration_interface = Lens.lens (\DestinationConfiguration' {interface} -> interface) (\s@DestinationConfiguration' {} a -> s {interface = a} :: DestinationConfiguration)

-- | The IP address that the receiver requires in order to establish a
-- connection with the flow. This value is represented by the elastic
-- network interface IP address of the VPC. This field applies only to
-- outputs that use the CDI or ST 2110 JPEG XS protocol.
destinationConfiguration_outboundIp :: Lens.Lens' DestinationConfiguration Prelude.Text
destinationConfiguration_outboundIp = Lens.lens (\DestinationConfiguration' {outboundIp} -> outboundIp) (\s@DestinationConfiguration' {} a -> s {outboundIp = a} :: DestinationConfiguration)

instance Core.FromJSON DestinationConfiguration where
  parseJSON =
    Core.withObject
      "DestinationConfiguration"
      ( \x ->
          DestinationConfiguration'
            Prelude.<$> (x Core..: "destinationIp")
            Prelude.<*> (x Core..: "destinationPort")
            Prelude.<*> (x Core..: "interface")
            Prelude.<*> (x Core..: "outboundIp")
      )

instance Prelude.Hashable DestinationConfiguration

instance Prelude.NFData DestinationConfiguration
