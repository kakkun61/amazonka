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
-- Module      : Network.AWS.NetworkManager.DeleteDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing device. You must first disassociate the device from
-- any links and customer gateways.
module Network.AWS.NetworkManager.DeleteDevice
  ( -- * Creating a Request
    DeleteDevice (..),
    newDeleteDevice,

    -- * Request Lenses
    deleteDevice_globalNetworkId,
    deleteDevice_deviceId,

    -- * Destructuring the Response
    DeleteDeviceResponse (..),
    newDeleteDeviceResponse,

    -- * Response Lenses
    deleteDeviceResponse_device,
    deleteDeviceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDevice' smart constructor.
data DeleteDevice = DeleteDevice'
  { -- | The ID of the global network.
    globalNetworkId :: Prelude.Text,
    -- | The ID of the device.
    deviceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'globalNetworkId', 'deleteDevice_globalNetworkId' - The ID of the global network.
--
-- 'deviceId', 'deleteDevice_deviceId' - The ID of the device.
newDeleteDevice ::
  -- | 'globalNetworkId'
  Prelude.Text ->
  -- | 'deviceId'
  Prelude.Text ->
  DeleteDevice
newDeleteDevice pGlobalNetworkId_ pDeviceId_ =
  DeleteDevice'
    { globalNetworkId = pGlobalNetworkId_,
      deviceId = pDeviceId_
    }

-- | The ID of the global network.
deleteDevice_globalNetworkId :: Lens.Lens' DeleteDevice Prelude.Text
deleteDevice_globalNetworkId = Lens.lens (\DeleteDevice' {globalNetworkId} -> globalNetworkId) (\s@DeleteDevice' {} a -> s {globalNetworkId = a} :: DeleteDevice)

-- | The ID of the device.
deleteDevice_deviceId :: Lens.Lens' DeleteDevice Prelude.Text
deleteDevice_deviceId = Lens.lens (\DeleteDevice' {deviceId} -> deviceId) (\s@DeleteDevice' {} a -> s {deviceId = a} :: DeleteDevice)

instance Core.AWSRequest DeleteDevice where
  type AWSResponse DeleteDevice = DeleteDeviceResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteDeviceResponse'
            Prelude.<$> (x Core..?> "Device")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteDevice

instance Prelude.NFData DeleteDevice

instance Core.ToHeaders DeleteDevice where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteDevice where
  toPath DeleteDevice' {..} =
    Prelude.mconcat
      [ "/global-networks/",
        Core.toBS globalNetworkId,
        "/devices/",
        Core.toBS deviceId
      ]

instance Core.ToQuery DeleteDevice where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDeviceResponse' smart constructor.
data DeleteDeviceResponse = DeleteDeviceResponse'
  { -- | Information about the device.
    device :: Prelude.Maybe Device,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDeviceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'device', 'deleteDeviceResponse_device' - Information about the device.
--
-- 'httpStatus', 'deleteDeviceResponse_httpStatus' - The response's http status code.
newDeleteDeviceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteDeviceResponse
newDeleteDeviceResponse pHttpStatus_ =
  DeleteDeviceResponse'
    { device = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the device.
deleteDeviceResponse_device :: Lens.Lens' DeleteDeviceResponse (Prelude.Maybe Device)
deleteDeviceResponse_device = Lens.lens (\DeleteDeviceResponse' {device} -> device) (\s@DeleteDeviceResponse' {} a -> s {device = a} :: DeleteDeviceResponse)

-- | The response's http status code.
deleteDeviceResponse_httpStatus :: Lens.Lens' DeleteDeviceResponse Prelude.Int
deleteDeviceResponse_httpStatus = Lens.lens (\DeleteDeviceResponse' {httpStatus} -> httpStatus) (\s@DeleteDeviceResponse' {} a -> s {httpStatus = a} :: DeleteDeviceResponse)

instance Prelude.NFData DeleteDeviceResponse
