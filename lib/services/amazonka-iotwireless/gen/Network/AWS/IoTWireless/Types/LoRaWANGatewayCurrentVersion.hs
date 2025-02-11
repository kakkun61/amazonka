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
-- Module      : Network.AWS.IoTWireless.Types.LoRaWANGatewayCurrentVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTWireless.Types.LoRaWANGatewayCurrentVersion where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types.LoRaWANGatewayVersion
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | LoRaWANGatewayCurrentVersion object.
--
-- /See:/ 'newLoRaWANGatewayCurrentVersion' smart constructor.
data LoRaWANGatewayCurrentVersion = LoRaWANGatewayCurrentVersion'
  { -- | The version of the gateways that should receive the update.
    currentVersion :: Prelude.Maybe LoRaWANGatewayVersion
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LoRaWANGatewayCurrentVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'currentVersion', 'loRaWANGatewayCurrentVersion_currentVersion' - The version of the gateways that should receive the update.
newLoRaWANGatewayCurrentVersion ::
  LoRaWANGatewayCurrentVersion
newLoRaWANGatewayCurrentVersion =
  LoRaWANGatewayCurrentVersion'
    { currentVersion =
        Prelude.Nothing
    }

-- | The version of the gateways that should receive the update.
loRaWANGatewayCurrentVersion_currentVersion :: Lens.Lens' LoRaWANGatewayCurrentVersion (Prelude.Maybe LoRaWANGatewayVersion)
loRaWANGatewayCurrentVersion_currentVersion = Lens.lens (\LoRaWANGatewayCurrentVersion' {currentVersion} -> currentVersion) (\s@LoRaWANGatewayCurrentVersion' {} a -> s {currentVersion = a} :: LoRaWANGatewayCurrentVersion)

instance Core.FromJSON LoRaWANGatewayCurrentVersion where
  parseJSON =
    Core.withObject
      "LoRaWANGatewayCurrentVersion"
      ( \x ->
          LoRaWANGatewayCurrentVersion'
            Prelude.<$> (x Core..:? "CurrentVersion")
      )

instance
  Prelude.Hashable
    LoRaWANGatewayCurrentVersion

instance Prelude.NFData LoRaWANGatewayCurrentVersion
