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
-- Module      : Network.AWS.IoT1ClickDevices.DescribeDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Given a device ID, returns a DescribeDeviceResponse object describing
-- the details of the device.
module Network.AWS.IoT1ClickDevices.DescribeDevice
  ( -- * Creating a Request
    DescribeDevice (..),
    newDescribeDevice,

    -- * Request Lenses
    describeDevice_deviceId,

    -- * Destructuring the Response
    DescribeDeviceResponse (..),
    newDescribeDeviceResponse,

    -- * Response Lenses
    describeDeviceResponse_deviceDescription,
    describeDeviceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT1ClickDevices.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeDevice' smart constructor.
data DescribeDevice = DescribeDevice'
  { -- | The unique identifier of the device.
    deviceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceId', 'describeDevice_deviceId' - The unique identifier of the device.
newDescribeDevice ::
  -- | 'deviceId'
  Prelude.Text ->
  DescribeDevice
newDescribeDevice pDeviceId_ =
  DescribeDevice' {deviceId = pDeviceId_}

-- | The unique identifier of the device.
describeDevice_deviceId :: Lens.Lens' DescribeDevice Prelude.Text
describeDevice_deviceId = Lens.lens (\DescribeDevice' {deviceId} -> deviceId) (\s@DescribeDevice' {} a -> s {deviceId = a} :: DescribeDevice)

instance Core.AWSRequest DescribeDevice where
  type
    AWSResponse DescribeDevice =
      DescribeDeviceResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDeviceResponse'
            Prelude.<$> (x Core..?> "deviceDescription")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDevice

instance Prelude.NFData DescribeDevice

instance Core.ToHeaders DescribeDevice where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeDevice where
  toPath DescribeDevice' {..} =
    Prelude.mconcat ["/devices/", Core.toBS deviceId]

instance Core.ToQuery DescribeDevice where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeDeviceResponse' smart constructor.
data DescribeDeviceResponse = DescribeDeviceResponse'
  { -- | Device details.
    deviceDescription :: Prelude.Maybe DeviceDescription,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDeviceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceDescription', 'describeDeviceResponse_deviceDescription' - Device details.
--
-- 'httpStatus', 'describeDeviceResponse_httpStatus' - The response's http status code.
newDescribeDeviceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDeviceResponse
newDescribeDeviceResponse pHttpStatus_ =
  DescribeDeviceResponse'
    { deviceDescription =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Device details.
describeDeviceResponse_deviceDescription :: Lens.Lens' DescribeDeviceResponse (Prelude.Maybe DeviceDescription)
describeDeviceResponse_deviceDescription = Lens.lens (\DescribeDeviceResponse' {deviceDescription} -> deviceDescription) (\s@DescribeDeviceResponse' {} a -> s {deviceDescription = a} :: DescribeDeviceResponse)

-- | The response's http status code.
describeDeviceResponse_httpStatus :: Lens.Lens' DescribeDeviceResponse Prelude.Int
describeDeviceResponse_httpStatus = Lens.lens (\DescribeDeviceResponse' {httpStatus} -> httpStatus) (\s@DescribeDeviceResponse' {} a -> s {httpStatus = a} :: DescribeDeviceResponse)

instance Prelude.NFData DescribeDeviceResponse
