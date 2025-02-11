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
-- Module      : Network.AWS.IoTWireless.TestWirelessDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Simulates a provisioned device by sending an uplink data payload of
-- @Hello@.
module Network.AWS.IoTWireless.TestWirelessDevice
  ( -- * Creating a Request
    TestWirelessDevice (..),
    newTestWirelessDevice,

    -- * Request Lenses
    testWirelessDevice_id,

    -- * Destructuring the Response
    TestWirelessDeviceResponse (..),
    newTestWirelessDeviceResponse,

    -- * Response Lenses
    testWirelessDeviceResponse_result,
    testWirelessDeviceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newTestWirelessDevice' smart constructor.
data TestWirelessDevice = TestWirelessDevice'
  { -- | The ID of the wireless device to test.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TestWirelessDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'testWirelessDevice_id' - The ID of the wireless device to test.
newTestWirelessDevice ::
  -- | 'id'
  Prelude.Text ->
  TestWirelessDevice
newTestWirelessDevice pId_ =
  TestWirelessDevice' {id = pId_}

-- | The ID of the wireless device to test.
testWirelessDevice_id :: Lens.Lens' TestWirelessDevice Prelude.Text
testWirelessDevice_id = Lens.lens (\TestWirelessDevice' {id} -> id) (\s@TestWirelessDevice' {} a -> s {id = a} :: TestWirelessDevice)

instance Core.AWSRequest TestWirelessDevice where
  type
    AWSResponse TestWirelessDevice =
      TestWirelessDeviceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          TestWirelessDeviceResponse'
            Prelude.<$> (x Core..?> "Result")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable TestWirelessDevice

instance Prelude.NFData TestWirelessDevice

instance Core.ToHeaders TestWirelessDevice where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON TestWirelessDevice where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath TestWirelessDevice where
  toPath TestWirelessDevice' {..} =
    Prelude.mconcat
      ["/wireless-devices/", Core.toBS id, "/test"]

instance Core.ToQuery TestWirelessDevice where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newTestWirelessDeviceResponse' smart constructor.
data TestWirelessDeviceResponse = TestWirelessDeviceResponse'
  { -- | The result returned by the test.
    result :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TestWirelessDeviceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'result', 'testWirelessDeviceResponse_result' - The result returned by the test.
--
-- 'httpStatus', 'testWirelessDeviceResponse_httpStatus' - The response's http status code.
newTestWirelessDeviceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  TestWirelessDeviceResponse
newTestWirelessDeviceResponse pHttpStatus_ =
  TestWirelessDeviceResponse'
    { result =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The result returned by the test.
testWirelessDeviceResponse_result :: Lens.Lens' TestWirelessDeviceResponse (Prelude.Maybe Prelude.Text)
testWirelessDeviceResponse_result = Lens.lens (\TestWirelessDeviceResponse' {result} -> result) (\s@TestWirelessDeviceResponse' {} a -> s {result = a} :: TestWirelessDeviceResponse)

-- | The response's http status code.
testWirelessDeviceResponse_httpStatus :: Lens.Lens' TestWirelessDeviceResponse Prelude.Int
testWirelessDeviceResponse_httpStatus = Lens.lens (\TestWirelessDeviceResponse' {httpStatus} -> httpStatus) (\s@TestWirelessDeviceResponse' {} a -> s {httpStatus = a} :: TestWirelessDeviceResponse)

instance Prelude.NFData TestWirelessDeviceResponse
