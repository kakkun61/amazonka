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
-- Module      : Network.AWS.IoTSiteWise.Types.GatewayPlatform
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.GatewayPlatform where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types.Greengrass
import Network.AWS.IoTSiteWise.Types.GreengrassV2
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains a gateway\'s platform information.
--
-- /See:/ 'newGatewayPlatform' smart constructor.
data GatewayPlatform = GatewayPlatform'
  { -- | A gateway that runs on IoT Greengrass.
    greengrass :: Prelude.Maybe Greengrass,
    -- | A gateway that runs on IoT Greengrass V2.
    greengrassV2 :: Prelude.Maybe GreengrassV2
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GatewayPlatform' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'greengrass', 'gatewayPlatform_greengrass' - A gateway that runs on IoT Greengrass.
--
-- 'greengrassV2', 'gatewayPlatform_greengrassV2' - A gateway that runs on IoT Greengrass V2.
newGatewayPlatform ::
  GatewayPlatform
newGatewayPlatform =
  GatewayPlatform'
    { greengrass = Prelude.Nothing,
      greengrassV2 = Prelude.Nothing
    }

-- | A gateway that runs on IoT Greengrass.
gatewayPlatform_greengrass :: Lens.Lens' GatewayPlatform (Prelude.Maybe Greengrass)
gatewayPlatform_greengrass = Lens.lens (\GatewayPlatform' {greengrass} -> greengrass) (\s@GatewayPlatform' {} a -> s {greengrass = a} :: GatewayPlatform)

-- | A gateway that runs on IoT Greengrass V2.
gatewayPlatform_greengrassV2 :: Lens.Lens' GatewayPlatform (Prelude.Maybe GreengrassV2)
gatewayPlatform_greengrassV2 = Lens.lens (\GatewayPlatform' {greengrassV2} -> greengrassV2) (\s@GatewayPlatform' {} a -> s {greengrassV2 = a} :: GatewayPlatform)

instance Core.FromJSON GatewayPlatform where
  parseJSON =
    Core.withObject
      "GatewayPlatform"
      ( \x ->
          GatewayPlatform'
            Prelude.<$> (x Core..:? "greengrass")
            Prelude.<*> (x Core..:? "greengrassV2")
      )

instance Prelude.Hashable GatewayPlatform

instance Prelude.NFData GatewayPlatform

instance Core.ToJSON GatewayPlatform where
  toJSON GatewayPlatform' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("greengrass" Core..=) Prelude.<$> greengrass,
            ("greengrassV2" Core..=) Prelude.<$> greengrassV2
          ]
      )
