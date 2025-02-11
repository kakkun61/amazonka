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
-- Module      : Network.AWS.IoTSiteWise.Types.GreengrassV2
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.GreengrassV2 where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains details for a gateway that runs on IoT Greengrass V2. To create
-- a gateway that runs on IoT Greengrass V2, you must deploy the IoT
-- SiteWise Edge component to your gateway device. Your
-- <https://docs.aws.amazon.com/greengrass/v2/developerguide/device-service-role.html Greengrass device role>
-- must use the @AWSIoTSiteWiseEdgeAccess@ policy. For more information,
-- see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/sw-gateways.html Using IoT SiteWise at the edge>
-- in the /IoT SiteWise User Guide/.
--
-- /See:/ 'newGreengrassV2' smart constructor.
data GreengrassV2 = GreengrassV2'
  { -- | The name of the IoT thing for your IoT Greengrass V2 core device.
    coreDeviceThingName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GreengrassV2' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'coreDeviceThingName', 'greengrassV2_coreDeviceThingName' - The name of the IoT thing for your IoT Greengrass V2 core device.
newGreengrassV2 ::
  -- | 'coreDeviceThingName'
  Prelude.Text ->
  GreengrassV2
newGreengrassV2 pCoreDeviceThingName_ =
  GreengrassV2'
    { coreDeviceThingName =
        pCoreDeviceThingName_
    }

-- | The name of the IoT thing for your IoT Greengrass V2 core device.
greengrassV2_coreDeviceThingName :: Lens.Lens' GreengrassV2 Prelude.Text
greengrassV2_coreDeviceThingName = Lens.lens (\GreengrassV2' {coreDeviceThingName} -> coreDeviceThingName) (\s@GreengrassV2' {} a -> s {coreDeviceThingName = a} :: GreengrassV2)

instance Core.FromJSON GreengrassV2 where
  parseJSON =
    Core.withObject
      "GreengrassV2"
      ( \x ->
          GreengrassV2'
            Prelude.<$> (x Core..: "coreDeviceThingName")
      )

instance Prelude.Hashable GreengrassV2

instance Prelude.NFData GreengrassV2

instance Core.ToJSON GreengrassV2 where
  toJSON GreengrassV2' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("coreDeviceThingName" Core..= coreDeviceThingName)
          ]
      )
