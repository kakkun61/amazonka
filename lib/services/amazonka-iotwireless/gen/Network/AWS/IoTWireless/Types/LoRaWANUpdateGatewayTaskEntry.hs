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
-- Module      : Network.AWS.IoTWireless.Types.LoRaWANUpdateGatewayTaskEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTWireless.Types.LoRaWANUpdateGatewayTaskEntry where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types.LoRaWANGatewayVersion
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | LoRaWANUpdateGatewayTaskEntry object.
--
-- /See:/ 'newLoRaWANUpdateGatewayTaskEntry' smart constructor.
data LoRaWANUpdateGatewayTaskEntry = LoRaWANUpdateGatewayTaskEntry'
  { -- | The version of the gateways that should receive the update.
    currentVersion :: Prelude.Maybe LoRaWANGatewayVersion,
    -- | The firmware version to update the gateway to.
    updateVersion :: Prelude.Maybe LoRaWANGatewayVersion
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LoRaWANUpdateGatewayTaskEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'currentVersion', 'loRaWANUpdateGatewayTaskEntry_currentVersion' - The version of the gateways that should receive the update.
--
-- 'updateVersion', 'loRaWANUpdateGatewayTaskEntry_updateVersion' - The firmware version to update the gateway to.
newLoRaWANUpdateGatewayTaskEntry ::
  LoRaWANUpdateGatewayTaskEntry
newLoRaWANUpdateGatewayTaskEntry =
  LoRaWANUpdateGatewayTaskEntry'
    { currentVersion =
        Prelude.Nothing,
      updateVersion = Prelude.Nothing
    }

-- | The version of the gateways that should receive the update.
loRaWANUpdateGatewayTaskEntry_currentVersion :: Lens.Lens' LoRaWANUpdateGatewayTaskEntry (Prelude.Maybe LoRaWANGatewayVersion)
loRaWANUpdateGatewayTaskEntry_currentVersion = Lens.lens (\LoRaWANUpdateGatewayTaskEntry' {currentVersion} -> currentVersion) (\s@LoRaWANUpdateGatewayTaskEntry' {} a -> s {currentVersion = a} :: LoRaWANUpdateGatewayTaskEntry)

-- | The firmware version to update the gateway to.
loRaWANUpdateGatewayTaskEntry_updateVersion :: Lens.Lens' LoRaWANUpdateGatewayTaskEntry (Prelude.Maybe LoRaWANGatewayVersion)
loRaWANUpdateGatewayTaskEntry_updateVersion = Lens.lens (\LoRaWANUpdateGatewayTaskEntry' {updateVersion} -> updateVersion) (\s@LoRaWANUpdateGatewayTaskEntry' {} a -> s {updateVersion = a} :: LoRaWANUpdateGatewayTaskEntry)

instance Core.FromJSON LoRaWANUpdateGatewayTaskEntry where
  parseJSON =
    Core.withObject
      "LoRaWANUpdateGatewayTaskEntry"
      ( \x ->
          LoRaWANUpdateGatewayTaskEntry'
            Prelude.<$> (x Core..:? "CurrentVersion")
            Prelude.<*> (x Core..:? "UpdateVersion")
      )

instance
  Prelude.Hashable
    LoRaWANUpdateGatewayTaskEntry

instance Prelude.NFData LoRaWANUpdateGatewayTaskEntry
