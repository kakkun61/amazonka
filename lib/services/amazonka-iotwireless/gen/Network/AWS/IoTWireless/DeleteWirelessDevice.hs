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
-- Module      : Network.AWS.IoTWireless.DeleteWirelessDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a wireless device.
module Network.AWS.IoTWireless.DeleteWirelessDevice
  ( -- * Creating a Request
    DeleteWirelessDevice (..),
    newDeleteWirelessDevice,

    -- * Request Lenses
    deleteWirelessDevice_id,

    -- * Destructuring the Response
    DeleteWirelessDeviceResponse (..),
    newDeleteWirelessDeviceResponse,

    -- * Response Lenses
    deleteWirelessDeviceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteWirelessDevice' smart constructor.
data DeleteWirelessDevice = DeleteWirelessDevice'
  { -- | The ID of the resource to delete.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteWirelessDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'deleteWirelessDevice_id' - The ID of the resource to delete.
newDeleteWirelessDevice ::
  -- | 'id'
  Prelude.Text ->
  DeleteWirelessDevice
newDeleteWirelessDevice pId_ =
  DeleteWirelessDevice' {id = pId_}

-- | The ID of the resource to delete.
deleteWirelessDevice_id :: Lens.Lens' DeleteWirelessDevice Prelude.Text
deleteWirelessDevice_id = Lens.lens (\DeleteWirelessDevice' {id} -> id) (\s@DeleteWirelessDevice' {} a -> s {id = a} :: DeleteWirelessDevice)

instance Core.AWSRequest DeleteWirelessDevice where
  type
    AWSResponse DeleteWirelessDevice =
      DeleteWirelessDeviceResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteWirelessDeviceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteWirelessDevice

instance Prelude.NFData DeleteWirelessDevice

instance Core.ToHeaders DeleteWirelessDevice where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteWirelessDevice where
  toPath DeleteWirelessDevice' {..} =
    Prelude.mconcat
      ["/wireless-devices/", Core.toBS id]

instance Core.ToQuery DeleteWirelessDevice where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteWirelessDeviceResponse' smart constructor.
data DeleteWirelessDeviceResponse = DeleteWirelessDeviceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteWirelessDeviceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteWirelessDeviceResponse_httpStatus' - The response's http status code.
newDeleteWirelessDeviceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteWirelessDeviceResponse
newDeleteWirelessDeviceResponse pHttpStatus_ =
  DeleteWirelessDeviceResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteWirelessDeviceResponse_httpStatus :: Lens.Lens' DeleteWirelessDeviceResponse Prelude.Int
deleteWirelessDeviceResponse_httpStatus = Lens.lens (\DeleteWirelessDeviceResponse' {httpStatus} -> httpStatus) (\s@DeleteWirelessDeviceResponse' {} a -> s {httpStatus = a} :: DeleteWirelessDeviceResponse)

instance Prelude.NFData DeleteWirelessDeviceResponse
