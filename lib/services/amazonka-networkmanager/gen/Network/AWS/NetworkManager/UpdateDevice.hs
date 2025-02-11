{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.NetworkManager.UpdateDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the details for an existing device. To remove information for
-- any of the parameters, specify an empty string.
module Network.AWS.NetworkManager.UpdateDevice
  ( -- * Creating a Request
    UpdateDevice (..),
    newUpdateDevice,

    -- * Request Lenses
    updateDevice_vendor,
    updateDevice_location,
    updateDevice_aWSLocation,
    updateDevice_model,
    updateDevice_type,
    updateDevice_serialNumber,
    updateDevice_siteId,
    updateDevice_description,
    updateDevice_globalNetworkId,
    updateDevice_deviceId,

    -- * Destructuring the Response
    UpdateDeviceResponse (..),
    newUpdateDeviceResponse,

    -- * Response Lenses
    updateDeviceResponse_device,
    updateDeviceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateDevice' smart constructor.
data UpdateDevice = UpdateDevice'
  { -- | The vendor of the device.
    --
    -- Length Constraints: Maximum length of 128 characters.
    vendor :: Prelude.Maybe Prelude.Text,
    location :: Prelude.Maybe (Core.Sensitive Location),
    -- | The AWS location of the device.
    aWSLocation :: Prelude.Maybe AWSLocation,
    -- | The model of the device.
    --
    -- Length Constraints: Maximum length of 128 characters.
    model :: Prelude.Maybe Prelude.Text,
    -- | The type of the device.
    type' :: Prelude.Maybe Prelude.Text,
    -- | The serial number of the device.
    --
    -- Length Constraints: Maximum length of 128 characters.
    serialNumber :: Prelude.Maybe Prelude.Text,
    -- | The ID of the site.
    siteId :: Prelude.Maybe Prelude.Text,
    -- | A description of the device.
    --
    -- Length Constraints: Maximum length of 256 characters.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ID of the global network.
    globalNetworkId :: Prelude.Text,
    -- | The ID of the device.
    deviceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vendor', 'updateDevice_vendor' - The vendor of the device.
--
-- Length Constraints: Maximum length of 128 characters.
--
-- 'location', 'updateDevice_location' - Undocumented member.
--
-- 'aWSLocation', 'updateDevice_aWSLocation' - The AWS location of the device.
--
-- 'model', 'updateDevice_model' - The model of the device.
--
-- Length Constraints: Maximum length of 128 characters.
--
-- 'type'', 'updateDevice_type' - The type of the device.
--
-- 'serialNumber', 'updateDevice_serialNumber' - The serial number of the device.
--
-- Length Constraints: Maximum length of 128 characters.
--
-- 'siteId', 'updateDevice_siteId' - The ID of the site.
--
-- 'description', 'updateDevice_description' - A description of the device.
--
-- Length Constraints: Maximum length of 256 characters.
--
-- 'globalNetworkId', 'updateDevice_globalNetworkId' - The ID of the global network.
--
-- 'deviceId', 'updateDevice_deviceId' - The ID of the device.
newUpdateDevice ::
  -- | 'globalNetworkId'
  Prelude.Text ->
  -- | 'deviceId'
  Prelude.Text ->
  UpdateDevice
newUpdateDevice pGlobalNetworkId_ pDeviceId_ =
  UpdateDevice'
    { vendor = Prelude.Nothing,
      location = Prelude.Nothing,
      aWSLocation = Prelude.Nothing,
      model = Prelude.Nothing,
      type' = Prelude.Nothing,
      serialNumber = Prelude.Nothing,
      siteId = Prelude.Nothing,
      description = Prelude.Nothing,
      globalNetworkId = pGlobalNetworkId_,
      deviceId = pDeviceId_
    }

-- | The vendor of the device.
--
-- Length Constraints: Maximum length of 128 characters.
updateDevice_vendor :: Lens.Lens' UpdateDevice (Prelude.Maybe Prelude.Text)
updateDevice_vendor = Lens.lens (\UpdateDevice' {vendor} -> vendor) (\s@UpdateDevice' {} a -> s {vendor = a} :: UpdateDevice)

-- | Undocumented member.
updateDevice_location :: Lens.Lens' UpdateDevice (Prelude.Maybe Location)
updateDevice_location = Lens.lens (\UpdateDevice' {location} -> location) (\s@UpdateDevice' {} a -> s {location = a} :: UpdateDevice) Prelude.. Lens.mapping Core._Sensitive

-- | The AWS location of the device.
updateDevice_aWSLocation :: Lens.Lens' UpdateDevice (Prelude.Maybe AWSLocation)
updateDevice_aWSLocation = Lens.lens (\UpdateDevice' {aWSLocation} -> aWSLocation) (\s@UpdateDevice' {} a -> s {aWSLocation = a} :: UpdateDevice)

-- | The model of the device.
--
-- Length Constraints: Maximum length of 128 characters.
updateDevice_model :: Lens.Lens' UpdateDevice (Prelude.Maybe Prelude.Text)
updateDevice_model = Lens.lens (\UpdateDevice' {model} -> model) (\s@UpdateDevice' {} a -> s {model = a} :: UpdateDevice)

-- | The type of the device.
updateDevice_type :: Lens.Lens' UpdateDevice (Prelude.Maybe Prelude.Text)
updateDevice_type = Lens.lens (\UpdateDevice' {type'} -> type') (\s@UpdateDevice' {} a -> s {type' = a} :: UpdateDevice)

-- | The serial number of the device.
--
-- Length Constraints: Maximum length of 128 characters.
updateDevice_serialNumber :: Lens.Lens' UpdateDevice (Prelude.Maybe Prelude.Text)
updateDevice_serialNumber = Lens.lens (\UpdateDevice' {serialNumber} -> serialNumber) (\s@UpdateDevice' {} a -> s {serialNumber = a} :: UpdateDevice)

-- | The ID of the site.
updateDevice_siteId :: Lens.Lens' UpdateDevice (Prelude.Maybe Prelude.Text)
updateDevice_siteId = Lens.lens (\UpdateDevice' {siteId} -> siteId) (\s@UpdateDevice' {} a -> s {siteId = a} :: UpdateDevice)

-- | A description of the device.
--
-- Length Constraints: Maximum length of 256 characters.
updateDevice_description :: Lens.Lens' UpdateDevice (Prelude.Maybe Prelude.Text)
updateDevice_description = Lens.lens (\UpdateDevice' {description} -> description) (\s@UpdateDevice' {} a -> s {description = a} :: UpdateDevice)

-- | The ID of the global network.
updateDevice_globalNetworkId :: Lens.Lens' UpdateDevice Prelude.Text
updateDevice_globalNetworkId = Lens.lens (\UpdateDevice' {globalNetworkId} -> globalNetworkId) (\s@UpdateDevice' {} a -> s {globalNetworkId = a} :: UpdateDevice)

-- | The ID of the device.
updateDevice_deviceId :: Lens.Lens' UpdateDevice Prelude.Text
updateDevice_deviceId = Lens.lens (\UpdateDevice' {deviceId} -> deviceId) (\s@UpdateDevice' {} a -> s {deviceId = a} :: UpdateDevice)

instance Core.AWSRequest UpdateDevice where
  type AWSResponse UpdateDevice = UpdateDeviceResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateDeviceResponse'
            Prelude.<$> (x Core..?> "Device")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateDevice

instance Prelude.NFData UpdateDevice

instance Core.ToHeaders UpdateDevice where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateDevice where
  toJSON UpdateDevice' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Vendor" Core..=) Prelude.<$> vendor,
            ("Location" Core..=) Prelude.<$> location,
            ("AWSLocation" Core..=) Prelude.<$> aWSLocation,
            ("Model" Core..=) Prelude.<$> model,
            ("Type" Core..=) Prelude.<$> type',
            ("SerialNumber" Core..=) Prelude.<$> serialNumber,
            ("SiteId" Core..=) Prelude.<$> siteId,
            ("Description" Core..=) Prelude.<$> description
          ]
      )

instance Core.ToPath UpdateDevice where
  toPath UpdateDevice' {..} =
    Prelude.mconcat
      [ "/global-networks/",
        Core.toBS globalNetworkId,
        "/devices/",
        Core.toBS deviceId
      ]

instance Core.ToQuery UpdateDevice where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDeviceResponse' smart constructor.
data UpdateDeviceResponse = UpdateDeviceResponse'
  { -- | Information about the device.
    device :: Prelude.Maybe Device,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDeviceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'device', 'updateDeviceResponse_device' - Information about the device.
--
-- 'httpStatus', 'updateDeviceResponse_httpStatus' - The response's http status code.
newUpdateDeviceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateDeviceResponse
newUpdateDeviceResponse pHttpStatus_ =
  UpdateDeviceResponse'
    { device = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the device.
updateDeviceResponse_device :: Lens.Lens' UpdateDeviceResponse (Prelude.Maybe Device)
updateDeviceResponse_device = Lens.lens (\UpdateDeviceResponse' {device} -> device) (\s@UpdateDeviceResponse' {} a -> s {device = a} :: UpdateDeviceResponse)

-- | The response's http status code.
updateDeviceResponse_httpStatus :: Lens.Lens' UpdateDeviceResponse Prelude.Int
updateDeviceResponse_httpStatus = Lens.lens (\UpdateDeviceResponse' {httpStatus} -> httpStatus) (\s@UpdateDeviceResponse' {} a -> s {httpStatus = a} :: UpdateDeviceResponse)

instance Prelude.NFData UpdateDeviceResponse
