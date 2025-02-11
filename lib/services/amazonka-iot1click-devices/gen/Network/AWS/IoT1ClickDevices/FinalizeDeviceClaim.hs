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
-- Module      : Network.AWS.IoT1ClickDevices.FinalizeDeviceClaim
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Given a device ID, finalizes the claim request for the associated
-- device.
--
-- Claiming a device consists of initiating a claim, then publishing a
-- device event, and finalizing the claim. For a device of type button, a
-- device event can be published by simply clicking the device.
module Network.AWS.IoT1ClickDevices.FinalizeDeviceClaim
  ( -- * Creating a Request
    FinalizeDeviceClaim (..),
    newFinalizeDeviceClaim,

    -- * Request Lenses
    finalizeDeviceClaim_tags,
    finalizeDeviceClaim_deviceId,

    -- * Destructuring the Response
    FinalizeDeviceClaimResponse (..),
    newFinalizeDeviceClaimResponse,

    -- * Response Lenses
    finalizeDeviceClaimResponse_state,
    finalizeDeviceClaimResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT1ClickDevices.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newFinalizeDeviceClaim' smart constructor.
data FinalizeDeviceClaim = FinalizeDeviceClaim'
  { -- | A collection of key\/value pairs defining the resource tags. For
    -- example, { \"tags\": {\"key1\": \"value1\", \"key2\": \"value2\"} }. For
    -- more information, see
    -- <https://aws.amazon.com/answers/account-management/aws-tagging-strategies/ AWS Tagging Strategies>.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The unique identifier of the device.
    deviceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FinalizeDeviceClaim' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'finalizeDeviceClaim_tags' - A collection of key\/value pairs defining the resource tags. For
-- example, { \"tags\": {\"key1\": \"value1\", \"key2\": \"value2\"} }. For
-- more information, see
-- <https://aws.amazon.com/answers/account-management/aws-tagging-strategies/ AWS Tagging Strategies>.
--
-- 'deviceId', 'finalizeDeviceClaim_deviceId' - The unique identifier of the device.
newFinalizeDeviceClaim ::
  -- | 'deviceId'
  Prelude.Text ->
  FinalizeDeviceClaim
newFinalizeDeviceClaim pDeviceId_ =
  FinalizeDeviceClaim'
    { tags = Prelude.Nothing,
      deviceId = pDeviceId_
    }

-- | A collection of key\/value pairs defining the resource tags. For
-- example, { \"tags\": {\"key1\": \"value1\", \"key2\": \"value2\"} }. For
-- more information, see
-- <https://aws.amazon.com/answers/account-management/aws-tagging-strategies/ AWS Tagging Strategies>.
finalizeDeviceClaim_tags :: Lens.Lens' FinalizeDeviceClaim (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
finalizeDeviceClaim_tags = Lens.lens (\FinalizeDeviceClaim' {tags} -> tags) (\s@FinalizeDeviceClaim' {} a -> s {tags = a} :: FinalizeDeviceClaim) Prelude.. Lens.mapping Lens.coerced

-- | The unique identifier of the device.
finalizeDeviceClaim_deviceId :: Lens.Lens' FinalizeDeviceClaim Prelude.Text
finalizeDeviceClaim_deviceId = Lens.lens (\FinalizeDeviceClaim' {deviceId} -> deviceId) (\s@FinalizeDeviceClaim' {} a -> s {deviceId = a} :: FinalizeDeviceClaim)

instance Core.AWSRequest FinalizeDeviceClaim where
  type
    AWSResponse FinalizeDeviceClaim =
      FinalizeDeviceClaimResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          FinalizeDeviceClaimResponse'
            Prelude.<$> (x Core..?> "state")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable FinalizeDeviceClaim

instance Prelude.NFData FinalizeDeviceClaim

instance Core.ToHeaders FinalizeDeviceClaim where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON FinalizeDeviceClaim where
  toJSON FinalizeDeviceClaim' {..} =
    Core.object
      ( Prelude.catMaybes
          [("tags" Core..=) Prelude.<$> tags]
      )

instance Core.ToPath FinalizeDeviceClaim where
  toPath FinalizeDeviceClaim' {..} =
    Prelude.mconcat
      ["/devices/", Core.toBS deviceId, "/finalize-claim"]

instance Core.ToQuery FinalizeDeviceClaim where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newFinalizeDeviceClaimResponse' smart constructor.
data FinalizeDeviceClaimResponse = FinalizeDeviceClaimResponse'
  { -- | The device\'s final claim state.
    state :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FinalizeDeviceClaimResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'finalizeDeviceClaimResponse_state' - The device\'s final claim state.
--
-- 'httpStatus', 'finalizeDeviceClaimResponse_httpStatus' - The response's http status code.
newFinalizeDeviceClaimResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  FinalizeDeviceClaimResponse
newFinalizeDeviceClaimResponse pHttpStatus_ =
  FinalizeDeviceClaimResponse'
    { state =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The device\'s final claim state.
finalizeDeviceClaimResponse_state :: Lens.Lens' FinalizeDeviceClaimResponse (Prelude.Maybe Prelude.Text)
finalizeDeviceClaimResponse_state = Lens.lens (\FinalizeDeviceClaimResponse' {state} -> state) (\s@FinalizeDeviceClaimResponse' {} a -> s {state = a} :: FinalizeDeviceClaimResponse)

-- | The response's http status code.
finalizeDeviceClaimResponse_httpStatus :: Lens.Lens' FinalizeDeviceClaimResponse Prelude.Int
finalizeDeviceClaimResponse_httpStatus = Lens.lens (\FinalizeDeviceClaimResponse' {httpStatus} -> httpStatus) (\s@FinalizeDeviceClaimResponse' {} a -> s {httpStatus = a} :: FinalizeDeviceClaimResponse)

instance Prelude.NFData FinalizeDeviceClaimResponse
