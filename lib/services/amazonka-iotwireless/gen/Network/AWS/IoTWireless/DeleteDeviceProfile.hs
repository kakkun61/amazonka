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
-- Module      : Network.AWS.IoTWireless.DeleteDeviceProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a device profile.
module Network.AWS.IoTWireless.DeleteDeviceProfile
  ( -- * Creating a Request
    DeleteDeviceProfile (..),
    newDeleteDeviceProfile,

    -- * Request Lenses
    deleteDeviceProfile_id,

    -- * Destructuring the Response
    DeleteDeviceProfileResponse (..),
    newDeleteDeviceProfileResponse,

    -- * Response Lenses
    deleteDeviceProfileResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDeviceProfile' smart constructor.
data DeleteDeviceProfile = DeleteDeviceProfile'
  { -- | The ID of the resource to delete.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDeviceProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'deleteDeviceProfile_id' - The ID of the resource to delete.
newDeleteDeviceProfile ::
  -- | 'id'
  Prelude.Text ->
  DeleteDeviceProfile
newDeleteDeviceProfile pId_ =
  DeleteDeviceProfile' {id = pId_}

-- | The ID of the resource to delete.
deleteDeviceProfile_id :: Lens.Lens' DeleteDeviceProfile Prelude.Text
deleteDeviceProfile_id = Lens.lens (\DeleteDeviceProfile' {id} -> id) (\s@DeleteDeviceProfile' {} a -> s {id = a} :: DeleteDeviceProfile)

instance Core.AWSRequest DeleteDeviceProfile where
  type
    AWSResponse DeleteDeviceProfile =
      DeleteDeviceProfileResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteDeviceProfileResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteDeviceProfile

instance Prelude.NFData DeleteDeviceProfile

instance Core.ToHeaders DeleteDeviceProfile where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteDeviceProfile where
  toPath DeleteDeviceProfile' {..} =
    Prelude.mconcat ["/device-profiles/", Core.toBS id]

instance Core.ToQuery DeleteDeviceProfile where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDeviceProfileResponse' smart constructor.
data DeleteDeviceProfileResponse = DeleteDeviceProfileResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDeviceProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteDeviceProfileResponse_httpStatus' - The response's http status code.
newDeleteDeviceProfileResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteDeviceProfileResponse
newDeleteDeviceProfileResponse pHttpStatus_ =
  DeleteDeviceProfileResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteDeviceProfileResponse_httpStatus :: Lens.Lens' DeleteDeviceProfileResponse Prelude.Int
deleteDeviceProfileResponse_httpStatus = Lens.lens (\DeleteDeviceProfileResponse' {httpStatus} -> httpStatus) (\s@DeleteDeviceProfileResponse' {} a -> s {httpStatus = a} :: DeleteDeviceProfileResponse)

instance Prelude.NFData DeleteDeviceProfileResponse
