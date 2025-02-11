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
-- Module      : Network.AWS.MediaLive.ClaimDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Send a request to claim an AWS Elemental device that you have purchased
-- from a third-party vendor. After the request succeeds, you will own the
-- device.
module Network.AWS.MediaLive.ClaimDevice
  ( -- * Creating a Request
    ClaimDevice (..),
    newClaimDevice,

    -- * Request Lenses
    claimDevice_id,

    -- * Destructuring the Response
    ClaimDeviceResponse (..),
    newClaimDeviceResponse,

    -- * Response Lenses
    claimDeviceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | A request to claim an AWS Elemental device that you have purchased from
-- a third-party vendor.
--
-- /See:/ 'newClaimDevice' smart constructor.
data ClaimDevice = ClaimDevice'
  { -- | The id of the device you want to claim.
    id :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClaimDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'claimDevice_id' - The id of the device you want to claim.
newClaimDevice ::
  ClaimDevice
newClaimDevice = ClaimDevice' {id = Prelude.Nothing}

-- | The id of the device you want to claim.
claimDevice_id :: Lens.Lens' ClaimDevice (Prelude.Maybe Prelude.Text)
claimDevice_id = Lens.lens (\ClaimDevice' {id} -> id) (\s@ClaimDevice' {} a -> s {id = a} :: ClaimDevice)

instance Core.AWSRequest ClaimDevice where
  type AWSResponse ClaimDevice = ClaimDeviceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          ClaimDeviceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ClaimDevice

instance Prelude.NFData ClaimDevice

instance Core.ToHeaders ClaimDevice where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ClaimDevice where
  toJSON ClaimDevice' {..} =
    Core.object
      (Prelude.catMaybes [("id" Core..=) Prelude.<$> id])

instance Core.ToPath ClaimDevice where
  toPath = Prelude.const "/prod/claimDevice"

instance Core.ToQuery ClaimDevice where
  toQuery = Prelude.const Prelude.mempty

-- | Placeholder documentation for ClaimDeviceResponse
--
-- /See:/ 'newClaimDeviceResponse' smart constructor.
data ClaimDeviceResponse = ClaimDeviceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClaimDeviceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'claimDeviceResponse_httpStatus' - The response's http status code.
newClaimDeviceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ClaimDeviceResponse
newClaimDeviceResponse pHttpStatus_ =
  ClaimDeviceResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
claimDeviceResponse_httpStatus :: Lens.Lens' ClaimDeviceResponse Prelude.Int
claimDeviceResponse_httpStatus = Lens.lens (\ClaimDeviceResponse' {httpStatus} -> httpStatus) (\s@ClaimDeviceResponse' {} a -> s {httpStatus = a} :: ClaimDeviceResponse)

instance Prelude.NFData ClaimDeviceResponse
