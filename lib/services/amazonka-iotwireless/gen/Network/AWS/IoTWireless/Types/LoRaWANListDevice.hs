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
-- Module      : Network.AWS.IoTWireless.Types.LoRaWANListDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTWireless.Types.LoRaWANListDevice where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | LoRaWAN object for list functions.
--
-- /See:/ 'newLoRaWANListDevice' smart constructor.
data LoRaWANListDevice = LoRaWANListDevice'
  { -- | The DevEUI value.
    devEui :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LoRaWANListDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'devEui', 'loRaWANListDevice_devEui' - The DevEUI value.
newLoRaWANListDevice ::
  LoRaWANListDevice
newLoRaWANListDevice =
  LoRaWANListDevice' {devEui = Prelude.Nothing}

-- | The DevEUI value.
loRaWANListDevice_devEui :: Lens.Lens' LoRaWANListDevice (Prelude.Maybe Prelude.Text)
loRaWANListDevice_devEui = Lens.lens (\LoRaWANListDevice' {devEui} -> devEui) (\s@LoRaWANListDevice' {} a -> s {devEui = a} :: LoRaWANListDevice)

instance Core.FromJSON LoRaWANListDevice where
  parseJSON =
    Core.withObject
      "LoRaWANListDevice"
      ( \x ->
          LoRaWANListDevice' Prelude.<$> (x Core..:? "DevEui")
      )

instance Prelude.Hashable LoRaWANListDevice

instance Prelude.NFData LoRaWANListDevice
