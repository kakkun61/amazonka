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
-- Module      : Network.AWS.IoT1ClickDevices.GetDeviceMethods
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Given a device ID, returns the invokable methods associated with the
-- device.
module Network.AWS.IoT1ClickDevices.GetDeviceMethods
  ( -- * Creating a Request
    GetDeviceMethods (..),
    newGetDeviceMethods,

    -- * Request Lenses
    getDeviceMethods_deviceId,

    -- * Destructuring the Response
    GetDeviceMethodsResponse (..),
    newGetDeviceMethodsResponse,

    -- * Response Lenses
    getDeviceMethodsResponse_deviceMethods,
    getDeviceMethodsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT1ClickDevices.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetDeviceMethods' smart constructor.
data GetDeviceMethods = GetDeviceMethods'
  { -- | The unique identifier of the device.
    deviceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDeviceMethods' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceId', 'getDeviceMethods_deviceId' - The unique identifier of the device.
newGetDeviceMethods ::
  -- | 'deviceId'
  Prelude.Text ->
  GetDeviceMethods
newGetDeviceMethods pDeviceId_ =
  GetDeviceMethods' {deviceId = pDeviceId_}

-- | The unique identifier of the device.
getDeviceMethods_deviceId :: Lens.Lens' GetDeviceMethods Prelude.Text
getDeviceMethods_deviceId = Lens.lens (\GetDeviceMethods' {deviceId} -> deviceId) (\s@GetDeviceMethods' {} a -> s {deviceId = a} :: GetDeviceMethods)

instance Core.AWSRequest GetDeviceMethods where
  type
    AWSResponse GetDeviceMethods =
      GetDeviceMethodsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDeviceMethodsResponse'
            Prelude.<$> (x Core..?> "deviceMethods" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDeviceMethods

instance Prelude.NFData GetDeviceMethods

instance Core.ToHeaders GetDeviceMethods where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetDeviceMethods where
  toPath GetDeviceMethods' {..} =
    Prelude.mconcat
      ["/devices/", Core.toBS deviceId, "/methods"]

instance Core.ToQuery GetDeviceMethods where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetDeviceMethodsResponse' smart constructor.
data GetDeviceMethodsResponse = GetDeviceMethodsResponse'
  { -- | List of available device APIs.
    deviceMethods :: Prelude.Maybe [DeviceMethod],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDeviceMethodsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceMethods', 'getDeviceMethodsResponse_deviceMethods' - List of available device APIs.
--
-- 'httpStatus', 'getDeviceMethodsResponse_httpStatus' - The response's http status code.
newGetDeviceMethodsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDeviceMethodsResponse
newGetDeviceMethodsResponse pHttpStatus_ =
  GetDeviceMethodsResponse'
    { deviceMethods =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | List of available device APIs.
getDeviceMethodsResponse_deviceMethods :: Lens.Lens' GetDeviceMethodsResponse (Prelude.Maybe [DeviceMethod])
getDeviceMethodsResponse_deviceMethods = Lens.lens (\GetDeviceMethodsResponse' {deviceMethods} -> deviceMethods) (\s@GetDeviceMethodsResponse' {} a -> s {deviceMethods = a} :: GetDeviceMethodsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getDeviceMethodsResponse_httpStatus :: Lens.Lens' GetDeviceMethodsResponse Prelude.Int
getDeviceMethodsResponse_httpStatus = Lens.lens (\GetDeviceMethodsResponse' {httpStatus} -> httpStatus) (\s@GetDeviceMethodsResponse' {} a -> s {httpStatus = a} :: GetDeviceMethodsResponse)

instance Prelude.NFData GetDeviceMethodsResponse
