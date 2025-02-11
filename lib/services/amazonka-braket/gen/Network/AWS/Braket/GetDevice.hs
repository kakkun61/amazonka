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
-- Module      : Network.AWS.Braket.GetDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the devices available in Amazon Braket.
module Network.AWS.Braket.GetDevice
  ( -- * Creating a Request
    GetDevice (..),
    newGetDevice,

    -- * Request Lenses
    getDevice_deviceArn,

    -- * Destructuring the Response
    GetDeviceResponse (..),
    newGetDeviceResponse,

    -- * Response Lenses
    getDeviceResponse_httpStatus,
    getDeviceResponse_deviceArn,
    getDeviceResponse_deviceCapabilities,
    getDeviceResponse_deviceName,
    getDeviceResponse_deviceStatus,
    getDeviceResponse_deviceType,
    getDeviceResponse_providerName,
  )
where

import Network.AWS.Braket.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetDevice' smart constructor.
data GetDevice = GetDevice'
  { -- | The ARN of the device to retrieve.
    deviceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceArn', 'getDevice_deviceArn' - The ARN of the device to retrieve.
newGetDevice ::
  -- | 'deviceArn'
  Prelude.Text ->
  GetDevice
newGetDevice pDeviceArn_ =
  GetDevice' {deviceArn = pDeviceArn_}

-- | The ARN of the device to retrieve.
getDevice_deviceArn :: Lens.Lens' GetDevice Prelude.Text
getDevice_deviceArn = Lens.lens (\GetDevice' {deviceArn} -> deviceArn) (\s@GetDevice' {} a -> s {deviceArn = a} :: GetDevice)

instance Core.AWSRequest GetDevice where
  type AWSResponse GetDevice = GetDeviceResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDeviceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "deviceArn")
            Prelude.<*> (x Core..:> "deviceCapabilities")
            Prelude.<*> (x Core..:> "deviceName")
            Prelude.<*> (x Core..:> "deviceStatus")
            Prelude.<*> (x Core..:> "deviceType")
            Prelude.<*> (x Core..:> "providerName")
      )

instance Prelude.Hashable GetDevice

instance Prelude.NFData GetDevice

instance Core.ToHeaders GetDevice where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetDevice where
  toPath GetDevice' {..} =
    Prelude.mconcat ["/device/", Core.toBS deviceArn]

instance Core.ToQuery GetDevice where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetDeviceResponse' smart constructor.
data GetDeviceResponse = GetDeviceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ARN of the device.
    deviceArn :: Prelude.Text,
    -- | Details about the capabilities of the device.
    deviceCapabilities :: Prelude.Text,
    -- | The name of the device.
    deviceName :: Prelude.Text,
    -- | The status of the device.
    deviceStatus :: DeviceStatus,
    -- | The type of the device.
    deviceType :: DeviceType,
    -- | The name of the partner company for the device.
    providerName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDeviceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getDeviceResponse_httpStatus' - The response's http status code.
--
-- 'deviceArn', 'getDeviceResponse_deviceArn' - The ARN of the device.
--
-- 'deviceCapabilities', 'getDeviceResponse_deviceCapabilities' - Details about the capabilities of the device.
--
-- 'deviceName', 'getDeviceResponse_deviceName' - The name of the device.
--
-- 'deviceStatus', 'getDeviceResponse_deviceStatus' - The status of the device.
--
-- 'deviceType', 'getDeviceResponse_deviceType' - The type of the device.
--
-- 'providerName', 'getDeviceResponse_providerName' - The name of the partner company for the device.
newGetDeviceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'deviceArn'
  Prelude.Text ->
  -- | 'deviceCapabilities'
  Prelude.Text ->
  -- | 'deviceName'
  Prelude.Text ->
  -- | 'deviceStatus'
  DeviceStatus ->
  -- | 'deviceType'
  DeviceType ->
  -- | 'providerName'
  Prelude.Text ->
  GetDeviceResponse
newGetDeviceResponse
  pHttpStatus_
  pDeviceArn_
  pDeviceCapabilities_
  pDeviceName_
  pDeviceStatus_
  pDeviceType_
  pProviderName_ =
    GetDeviceResponse'
      { httpStatus = pHttpStatus_,
        deviceArn = pDeviceArn_,
        deviceCapabilities = pDeviceCapabilities_,
        deviceName = pDeviceName_,
        deviceStatus = pDeviceStatus_,
        deviceType = pDeviceType_,
        providerName = pProviderName_
      }

-- | The response's http status code.
getDeviceResponse_httpStatus :: Lens.Lens' GetDeviceResponse Prelude.Int
getDeviceResponse_httpStatus = Lens.lens (\GetDeviceResponse' {httpStatus} -> httpStatus) (\s@GetDeviceResponse' {} a -> s {httpStatus = a} :: GetDeviceResponse)

-- | The ARN of the device.
getDeviceResponse_deviceArn :: Lens.Lens' GetDeviceResponse Prelude.Text
getDeviceResponse_deviceArn = Lens.lens (\GetDeviceResponse' {deviceArn} -> deviceArn) (\s@GetDeviceResponse' {} a -> s {deviceArn = a} :: GetDeviceResponse)

-- | Details about the capabilities of the device.
getDeviceResponse_deviceCapabilities :: Lens.Lens' GetDeviceResponse Prelude.Text
getDeviceResponse_deviceCapabilities = Lens.lens (\GetDeviceResponse' {deviceCapabilities} -> deviceCapabilities) (\s@GetDeviceResponse' {} a -> s {deviceCapabilities = a} :: GetDeviceResponse)

-- | The name of the device.
getDeviceResponse_deviceName :: Lens.Lens' GetDeviceResponse Prelude.Text
getDeviceResponse_deviceName = Lens.lens (\GetDeviceResponse' {deviceName} -> deviceName) (\s@GetDeviceResponse' {} a -> s {deviceName = a} :: GetDeviceResponse)

-- | The status of the device.
getDeviceResponse_deviceStatus :: Lens.Lens' GetDeviceResponse DeviceStatus
getDeviceResponse_deviceStatus = Lens.lens (\GetDeviceResponse' {deviceStatus} -> deviceStatus) (\s@GetDeviceResponse' {} a -> s {deviceStatus = a} :: GetDeviceResponse)

-- | The type of the device.
getDeviceResponse_deviceType :: Lens.Lens' GetDeviceResponse DeviceType
getDeviceResponse_deviceType = Lens.lens (\GetDeviceResponse' {deviceType} -> deviceType) (\s@GetDeviceResponse' {} a -> s {deviceType = a} :: GetDeviceResponse)

-- | The name of the partner company for the device.
getDeviceResponse_providerName :: Lens.Lens' GetDeviceResponse Prelude.Text
getDeviceResponse_providerName = Lens.lens (\GetDeviceResponse' {providerName} -> providerName) (\s@GetDeviceResponse' {} a -> s {providerName = a} :: GetDeviceResponse)

instance Prelude.NFData GetDeviceResponse
