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
-- Module      : Network.AWS.IoTWireless.GetDeviceProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a device profile.
module Network.AWS.IoTWireless.GetDeviceProfile
  ( -- * Creating a Request
    GetDeviceProfile (..),
    newGetDeviceProfile,

    -- * Request Lenses
    getDeviceProfile_id,

    -- * Destructuring the Response
    GetDeviceProfileResponse (..),
    newGetDeviceProfileResponse,

    -- * Response Lenses
    getDeviceProfileResponse_arn,
    getDeviceProfileResponse_loRaWAN,
    getDeviceProfileResponse_name,
    getDeviceProfileResponse_id,
    getDeviceProfileResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetDeviceProfile' smart constructor.
data GetDeviceProfile = GetDeviceProfile'
  { -- | The ID of the resource to get.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDeviceProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'getDeviceProfile_id' - The ID of the resource to get.
newGetDeviceProfile ::
  -- | 'id'
  Prelude.Text ->
  GetDeviceProfile
newGetDeviceProfile pId_ =
  GetDeviceProfile' {id = pId_}

-- | The ID of the resource to get.
getDeviceProfile_id :: Lens.Lens' GetDeviceProfile Prelude.Text
getDeviceProfile_id = Lens.lens (\GetDeviceProfile' {id} -> id) (\s@GetDeviceProfile' {} a -> s {id = a} :: GetDeviceProfile)

instance Core.AWSRequest GetDeviceProfile where
  type
    AWSResponse GetDeviceProfile =
      GetDeviceProfileResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDeviceProfileResponse'
            Prelude.<$> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "LoRaWAN")
            Prelude.<*> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "Id")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDeviceProfile

instance Prelude.NFData GetDeviceProfile

instance Core.ToHeaders GetDeviceProfile where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetDeviceProfile where
  toPath GetDeviceProfile' {..} =
    Prelude.mconcat ["/device-profiles/", Core.toBS id]

instance Core.ToQuery GetDeviceProfile where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetDeviceProfileResponse' smart constructor.
data GetDeviceProfileResponse = GetDeviceProfileResponse'
  { -- | The Amazon Resource Name of the resource.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Information about the device profile.
    loRaWAN :: Prelude.Maybe LoRaWANDeviceProfile,
    -- | The name of the resource.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ID of the device profile.
    id :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDeviceProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'getDeviceProfileResponse_arn' - The Amazon Resource Name of the resource.
--
-- 'loRaWAN', 'getDeviceProfileResponse_loRaWAN' - Information about the device profile.
--
-- 'name', 'getDeviceProfileResponse_name' - The name of the resource.
--
-- 'id', 'getDeviceProfileResponse_id' - The ID of the device profile.
--
-- 'httpStatus', 'getDeviceProfileResponse_httpStatus' - The response's http status code.
newGetDeviceProfileResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDeviceProfileResponse
newGetDeviceProfileResponse pHttpStatus_ =
  GetDeviceProfileResponse'
    { arn = Prelude.Nothing,
      loRaWAN = Prelude.Nothing,
      name = Prelude.Nothing,
      id = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name of the resource.
getDeviceProfileResponse_arn :: Lens.Lens' GetDeviceProfileResponse (Prelude.Maybe Prelude.Text)
getDeviceProfileResponse_arn = Lens.lens (\GetDeviceProfileResponse' {arn} -> arn) (\s@GetDeviceProfileResponse' {} a -> s {arn = a} :: GetDeviceProfileResponse)

-- | Information about the device profile.
getDeviceProfileResponse_loRaWAN :: Lens.Lens' GetDeviceProfileResponse (Prelude.Maybe LoRaWANDeviceProfile)
getDeviceProfileResponse_loRaWAN = Lens.lens (\GetDeviceProfileResponse' {loRaWAN} -> loRaWAN) (\s@GetDeviceProfileResponse' {} a -> s {loRaWAN = a} :: GetDeviceProfileResponse)

-- | The name of the resource.
getDeviceProfileResponse_name :: Lens.Lens' GetDeviceProfileResponse (Prelude.Maybe Prelude.Text)
getDeviceProfileResponse_name = Lens.lens (\GetDeviceProfileResponse' {name} -> name) (\s@GetDeviceProfileResponse' {} a -> s {name = a} :: GetDeviceProfileResponse)

-- | The ID of the device profile.
getDeviceProfileResponse_id :: Lens.Lens' GetDeviceProfileResponse (Prelude.Maybe Prelude.Text)
getDeviceProfileResponse_id = Lens.lens (\GetDeviceProfileResponse' {id} -> id) (\s@GetDeviceProfileResponse' {} a -> s {id = a} :: GetDeviceProfileResponse)

-- | The response's http status code.
getDeviceProfileResponse_httpStatus :: Lens.Lens' GetDeviceProfileResponse Prelude.Int
getDeviceProfileResponse_httpStatus = Lens.lens (\GetDeviceProfileResponse' {httpStatus} -> httpStatus) (\s@GetDeviceProfileResponse' {} a -> s {httpStatus = a} :: GetDeviceProfileResponse)

instance Prelude.NFData GetDeviceProfileResponse
