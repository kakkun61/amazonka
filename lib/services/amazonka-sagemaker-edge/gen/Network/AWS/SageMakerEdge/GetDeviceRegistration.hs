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
-- Module      : Network.AWS.SageMakerEdge.GetDeviceRegistration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Use to check if a device is registered with SageMaker Edge Manager.
module Network.AWS.SageMakerEdge.GetDeviceRegistration
  ( -- * Creating a Request
    GetDeviceRegistration (..),
    newGetDeviceRegistration,

    -- * Request Lenses
    getDeviceRegistration_deviceName,
    getDeviceRegistration_deviceFleetName,

    -- * Destructuring the Response
    GetDeviceRegistrationResponse (..),
    newGetDeviceRegistrationResponse,

    -- * Response Lenses
    getDeviceRegistrationResponse_cacheTTL,
    getDeviceRegistrationResponse_deviceRegistration,
    getDeviceRegistrationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMakerEdge.Types

-- | /See:/ 'newGetDeviceRegistration' smart constructor.
data GetDeviceRegistration = GetDeviceRegistration'
  { -- | The unique name of the device you want to get the registration status
    -- from.
    deviceName :: Prelude.Text,
    -- | The name of the fleet that the device belongs to.
    deviceFleetName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDeviceRegistration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceName', 'getDeviceRegistration_deviceName' - The unique name of the device you want to get the registration status
-- from.
--
-- 'deviceFleetName', 'getDeviceRegistration_deviceFleetName' - The name of the fleet that the device belongs to.
newGetDeviceRegistration ::
  -- | 'deviceName'
  Prelude.Text ->
  -- | 'deviceFleetName'
  Prelude.Text ->
  GetDeviceRegistration
newGetDeviceRegistration
  pDeviceName_
  pDeviceFleetName_ =
    GetDeviceRegistration'
      { deviceName = pDeviceName_,
        deviceFleetName = pDeviceFleetName_
      }

-- | The unique name of the device you want to get the registration status
-- from.
getDeviceRegistration_deviceName :: Lens.Lens' GetDeviceRegistration Prelude.Text
getDeviceRegistration_deviceName = Lens.lens (\GetDeviceRegistration' {deviceName} -> deviceName) (\s@GetDeviceRegistration' {} a -> s {deviceName = a} :: GetDeviceRegistration)

-- | The name of the fleet that the device belongs to.
getDeviceRegistration_deviceFleetName :: Lens.Lens' GetDeviceRegistration Prelude.Text
getDeviceRegistration_deviceFleetName = Lens.lens (\GetDeviceRegistration' {deviceFleetName} -> deviceFleetName) (\s@GetDeviceRegistration' {} a -> s {deviceFleetName = a} :: GetDeviceRegistration)

instance Core.AWSRequest GetDeviceRegistration where
  type
    AWSResponse GetDeviceRegistration =
      GetDeviceRegistrationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDeviceRegistrationResponse'
            Prelude.<$> (x Core..?> "CacheTTL")
            Prelude.<*> (x Core..?> "DeviceRegistration")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDeviceRegistration

instance Prelude.NFData GetDeviceRegistration

instance Core.ToHeaders GetDeviceRegistration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetDeviceRegistration where
  toJSON GetDeviceRegistration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("DeviceName" Core..= deviceName),
            Prelude.Just
              ("DeviceFleetName" Core..= deviceFleetName)
          ]
      )

instance Core.ToPath GetDeviceRegistration where
  toPath = Prelude.const "/GetDeviceRegistration"

instance Core.ToQuery GetDeviceRegistration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetDeviceRegistrationResponse' smart constructor.
data GetDeviceRegistrationResponse = GetDeviceRegistrationResponse'
  { -- | The amount of time, in seconds, that the registration status is stored
    -- on the device’s cache before it is refreshed.
    cacheTTL :: Prelude.Maybe Prelude.Text,
    -- | Describes if the device is currently registered with SageMaker Edge
    -- Manager.
    deviceRegistration :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDeviceRegistrationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cacheTTL', 'getDeviceRegistrationResponse_cacheTTL' - The amount of time, in seconds, that the registration status is stored
-- on the device’s cache before it is refreshed.
--
-- 'deviceRegistration', 'getDeviceRegistrationResponse_deviceRegistration' - Describes if the device is currently registered with SageMaker Edge
-- Manager.
--
-- 'httpStatus', 'getDeviceRegistrationResponse_httpStatus' - The response's http status code.
newGetDeviceRegistrationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDeviceRegistrationResponse
newGetDeviceRegistrationResponse pHttpStatus_ =
  GetDeviceRegistrationResponse'
    { cacheTTL =
        Prelude.Nothing,
      deviceRegistration = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The amount of time, in seconds, that the registration status is stored
-- on the device’s cache before it is refreshed.
getDeviceRegistrationResponse_cacheTTL :: Lens.Lens' GetDeviceRegistrationResponse (Prelude.Maybe Prelude.Text)
getDeviceRegistrationResponse_cacheTTL = Lens.lens (\GetDeviceRegistrationResponse' {cacheTTL} -> cacheTTL) (\s@GetDeviceRegistrationResponse' {} a -> s {cacheTTL = a} :: GetDeviceRegistrationResponse)

-- | Describes if the device is currently registered with SageMaker Edge
-- Manager.
getDeviceRegistrationResponse_deviceRegistration :: Lens.Lens' GetDeviceRegistrationResponse (Prelude.Maybe Prelude.Text)
getDeviceRegistrationResponse_deviceRegistration = Lens.lens (\GetDeviceRegistrationResponse' {deviceRegistration} -> deviceRegistration) (\s@GetDeviceRegistrationResponse' {} a -> s {deviceRegistration = a} :: GetDeviceRegistrationResponse)

-- | The response's http status code.
getDeviceRegistrationResponse_httpStatus :: Lens.Lens' GetDeviceRegistrationResponse Prelude.Int
getDeviceRegistrationResponse_httpStatus = Lens.lens (\GetDeviceRegistrationResponse' {httpStatus} -> httpStatus) (\s@GetDeviceRegistrationResponse' {} a -> s {httpStatus = a} :: GetDeviceRegistrationResponse)

instance Prelude.NFData GetDeviceRegistrationResponse
