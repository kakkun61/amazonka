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
-- Module      : Network.AWS.IoTWireless.Types.LoRaWANDeviceMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTWireless.Types.LoRaWANDeviceMetadata where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types.LoRaWANGatewayMetadata
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | LoRaWAN device metatdata.
--
-- /See:/ 'newLoRaWANDeviceMetadata' smart constructor.
data LoRaWANDeviceMetadata = LoRaWANDeviceMetadata'
  { -- | The device\'s channel frequency in Hz.
    frequency :: Prelude.Maybe Prelude.Int,
    -- | The FPort value.
    fPort :: Prelude.Maybe Prelude.Int,
    -- | The DataRate value.
    dataRate :: Prelude.Maybe Prelude.Int,
    -- | Information about the gateways accessed by the device.
    gateways :: Prelude.Maybe [LoRaWANGatewayMetadata],
    -- | The date and time of the metadata.
    timestamp :: Prelude.Maybe Prelude.Text,
    -- | The DevEUI value.
    devEui :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LoRaWANDeviceMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'frequency', 'loRaWANDeviceMetadata_frequency' - The device\'s channel frequency in Hz.
--
-- 'fPort', 'loRaWANDeviceMetadata_fPort' - The FPort value.
--
-- 'dataRate', 'loRaWANDeviceMetadata_dataRate' - The DataRate value.
--
-- 'gateways', 'loRaWANDeviceMetadata_gateways' - Information about the gateways accessed by the device.
--
-- 'timestamp', 'loRaWANDeviceMetadata_timestamp' - The date and time of the metadata.
--
-- 'devEui', 'loRaWANDeviceMetadata_devEui' - The DevEUI value.
newLoRaWANDeviceMetadata ::
  LoRaWANDeviceMetadata
newLoRaWANDeviceMetadata =
  LoRaWANDeviceMetadata'
    { frequency = Prelude.Nothing,
      fPort = Prelude.Nothing,
      dataRate = Prelude.Nothing,
      gateways = Prelude.Nothing,
      timestamp = Prelude.Nothing,
      devEui = Prelude.Nothing
    }

-- | The device\'s channel frequency in Hz.
loRaWANDeviceMetadata_frequency :: Lens.Lens' LoRaWANDeviceMetadata (Prelude.Maybe Prelude.Int)
loRaWANDeviceMetadata_frequency = Lens.lens (\LoRaWANDeviceMetadata' {frequency} -> frequency) (\s@LoRaWANDeviceMetadata' {} a -> s {frequency = a} :: LoRaWANDeviceMetadata)

-- | The FPort value.
loRaWANDeviceMetadata_fPort :: Lens.Lens' LoRaWANDeviceMetadata (Prelude.Maybe Prelude.Int)
loRaWANDeviceMetadata_fPort = Lens.lens (\LoRaWANDeviceMetadata' {fPort} -> fPort) (\s@LoRaWANDeviceMetadata' {} a -> s {fPort = a} :: LoRaWANDeviceMetadata)

-- | The DataRate value.
loRaWANDeviceMetadata_dataRate :: Lens.Lens' LoRaWANDeviceMetadata (Prelude.Maybe Prelude.Int)
loRaWANDeviceMetadata_dataRate = Lens.lens (\LoRaWANDeviceMetadata' {dataRate} -> dataRate) (\s@LoRaWANDeviceMetadata' {} a -> s {dataRate = a} :: LoRaWANDeviceMetadata)

-- | Information about the gateways accessed by the device.
loRaWANDeviceMetadata_gateways :: Lens.Lens' LoRaWANDeviceMetadata (Prelude.Maybe [LoRaWANGatewayMetadata])
loRaWANDeviceMetadata_gateways = Lens.lens (\LoRaWANDeviceMetadata' {gateways} -> gateways) (\s@LoRaWANDeviceMetadata' {} a -> s {gateways = a} :: LoRaWANDeviceMetadata) Prelude.. Lens.mapping Lens.coerced

-- | The date and time of the metadata.
loRaWANDeviceMetadata_timestamp :: Lens.Lens' LoRaWANDeviceMetadata (Prelude.Maybe Prelude.Text)
loRaWANDeviceMetadata_timestamp = Lens.lens (\LoRaWANDeviceMetadata' {timestamp} -> timestamp) (\s@LoRaWANDeviceMetadata' {} a -> s {timestamp = a} :: LoRaWANDeviceMetadata)

-- | The DevEUI value.
loRaWANDeviceMetadata_devEui :: Lens.Lens' LoRaWANDeviceMetadata (Prelude.Maybe Prelude.Text)
loRaWANDeviceMetadata_devEui = Lens.lens (\LoRaWANDeviceMetadata' {devEui} -> devEui) (\s@LoRaWANDeviceMetadata' {} a -> s {devEui = a} :: LoRaWANDeviceMetadata)

instance Core.FromJSON LoRaWANDeviceMetadata where
  parseJSON =
    Core.withObject
      "LoRaWANDeviceMetadata"
      ( \x ->
          LoRaWANDeviceMetadata'
            Prelude.<$> (x Core..:? "Frequency")
            Prelude.<*> (x Core..:? "FPort")
            Prelude.<*> (x Core..:? "DataRate")
            Prelude.<*> (x Core..:? "Gateways" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Timestamp")
            Prelude.<*> (x Core..:? "DevEui")
      )

instance Prelude.Hashable LoRaWANDeviceMetadata

instance Prelude.NFData LoRaWANDeviceMetadata
