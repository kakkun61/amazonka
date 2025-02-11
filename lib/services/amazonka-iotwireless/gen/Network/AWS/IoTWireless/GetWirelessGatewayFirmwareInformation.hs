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
-- Module      : Network.AWS.IoTWireless.GetWirelessGatewayFirmwareInformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the firmware version and other information about a wireless
-- gateway.
module Network.AWS.IoTWireless.GetWirelessGatewayFirmwareInformation
  ( -- * Creating a Request
    GetWirelessGatewayFirmwareInformation (..),
    newGetWirelessGatewayFirmwareInformation,

    -- * Request Lenses
    getWirelessGatewayFirmwareInformation_id,

    -- * Destructuring the Response
    GetWirelessGatewayFirmwareInformationResponse (..),
    newGetWirelessGatewayFirmwareInformationResponse,

    -- * Response Lenses
    getWirelessGatewayFirmwareInformationResponse_loRaWAN,
    getWirelessGatewayFirmwareInformationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetWirelessGatewayFirmwareInformation' smart constructor.
data GetWirelessGatewayFirmwareInformation = GetWirelessGatewayFirmwareInformation'
  { -- | The ID of the resource to get.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetWirelessGatewayFirmwareInformation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'getWirelessGatewayFirmwareInformation_id' - The ID of the resource to get.
newGetWirelessGatewayFirmwareInformation ::
  -- | 'id'
  Prelude.Text ->
  GetWirelessGatewayFirmwareInformation
newGetWirelessGatewayFirmwareInformation pId_ =
  GetWirelessGatewayFirmwareInformation' {id = pId_}

-- | The ID of the resource to get.
getWirelessGatewayFirmwareInformation_id :: Lens.Lens' GetWirelessGatewayFirmwareInformation Prelude.Text
getWirelessGatewayFirmwareInformation_id = Lens.lens (\GetWirelessGatewayFirmwareInformation' {id} -> id) (\s@GetWirelessGatewayFirmwareInformation' {} a -> s {id = a} :: GetWirelessGatewayFirmwareInformation)

instance
  Core.AWSRequest
    GetWirelessGatewayFirmwareInformation
  where
  type
    AWSResponse
      GetWirelessGatewayFirmwareInformation =
      GetWirelessGatewayFirmwareInformationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetWirelessGatewayFirmwareInformationResponse'
            Prelude.<$> (x Core..?> "LoRaWAN")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetWirelessGatewayFirmwareInformation

instance
  Prelude.NFData
    GetWirelessGatewayFirmwareInformation

instance
  Core.ToHeaders
    GetWirelessGatewayFirmwareInformation
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    GetWirelessGatewayFirmwareInformation
  where
  toPath GetWirelessGatewayFirmwareInformation' {..} =
    Prelude.mconcat
      [ "/wireless-gateways/",
        Core.toBS id,
        "/firmware-information"
      ]

instance
  Core.ToQuery
    GetWirelessGatewayFirmwareInformation
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetWirelessGatewayFirmwareInformationResponse' smart constructor.
data GetWirelessGatewayFirmwareInformationResponse = GetWirelessGatewayFirmwareInformationResponse'
  { -- | Information about the wireless gateway\'s firmware.
    loRaWAN :: Prelude.Maybe LoRaWANGatewayCurrentVersion,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetWirelessGatewayFirmwareInformationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'loRaWAN', 'getWirelessGatewayFirmwareInformationResponse_loRaWAN' - Information about the wireless gateway\'s firmware.
--
-- 'httpStatus', 'getWirelessGatewayFirmwareInformationResponse_httpStatus' - The response's http status code.
newGetWirelessGatewayFirmwareInformationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetWirelessGatewayFirmwareInformationResponse
newGetWirelessGatewayFirmwareInformationResponse
  pHttpStatus_ =
    GetWirelessGatewayFirmwareInformationResponse'
      { loRaWAN =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Information about the wireless gateway\'s firmware.
getWirelessGatewayFirmwareInformationResponse_loRaWAN :: Lens.Lens' GetWirelessGatewayFirmwareInformationResponse (Prelude.Maybe LoRaWANGatewayCurrentVersion)
getWirelessGatewayFirmwareInformationResponse_loRaWAN = Lens.lens (\GetWirelessGatewayFirmwareInformationResponse' {loRaWAN} -> loRaWAN) (\s@GetWirelessGatewayFirmwareInformationResponse' {} a -> s {loRaWAN = a} :: GetWirelessGatewayFirmwareInformationResponse)

-- | The response's http status code.
getWirelessGatewayFirmwareInformationResponse_httpStatus :: Lens.Lens' GetWirelessGatewayFirmwareInformationResponse Prelude.Int
getWirelessGatewayFirmwareInformationResponse_httpStatus = Lens.lens (\GetWirelessGatewayFirmwareInformationResponse' {httpStatus} -> httpStatus) (\s@GetWirelessGatewayFirmwareInformationResponse' {} a -> s {httpStatus = a} :: GetWirelessGatewayFirmwareInformationResponse)

instance
  Prelude.NFData
    GetWirelessGatewayFirmwareInformationResponse
