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
-- Module      : Network.AWS.WorkMail.DeleteMobileDeviceAccessOverride
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the mobile device access override for the given WorkMail
-- organization, user, and device.
--
-- Deleting already deleted and non-existing overrides does not produce an
-- error. In those cases, the service sends back an HTTP 200 response with
-- an empty HTTP body.
module Network.AWS.WorkMail.DeleteMobileDeviceAccessOverride
  ( -- * Creating a Request
    DeleteMobileDeviceAccessOverride (..),
    newDeleteMobileDeviceAccessOverride,

    -- * Request Lenses
    deleteMobileDeviceAccessOverride_organizationId,
    deleteMobileDeviceAccessOverride_userId,
    deleteMobileDeviceAccessOverride_deviceId,

    -- * Destructuring the Response
    DeleteMobileDeviceAccessOverrideResponse (..),
    newDeleteMobileDeviceAccessOverrideResponse,

    -- * Response Lenses
    deleteMobileDeviceAccessOverrideResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'newDeleteMobileDeviceAccessOverride' smart constructor.
data DeleteMobileDeviceAccessOverride = DeleteMobileDeviceAccessOverride'
  { -- | The Amazon WorkMail organization for which the access override will be
    -- deleted.
    organizationId :: Prelude.Text,
    -- | The WorkMail user for which you want to delete the override. Accepts the
    -- following types of user identities:
    --
    -- -   User ID: @12345678-1234-1234-1234-123456789012@ or
    --     @S-1-1-12-1234567890-123456789-123456789-1234@
    --
    -- -   Email address: @user\@domain.tld@
    --
    -- -   User name: @user@
    userId :: Prelude.Text,
    -- | The mobile device for which you delete the override. @DeviceId@ is case
    -- insensitive.
    deviceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteMobileDeviceAccessOverride' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'organizationId', 'deleteMobileDeviceAccessOverride_organizationId' - The Amazon WorkMail organization for which the access override will be
-- deleted.
--
-- 'userId', 'deleteMobileDeviceAccessOverride_userId' - The WorkMail user for which you want to delete the override. Accepts the
-- following types of user identities:
--
-- -   User ID: @12345678-1234-1234-1234-123456789012@ or
--     @S-1-1-12-1234567890-123456789-123456789-1234@
--
-- -   Email address: @user\@domain.tld@
--
-- -   User name: @user@
--
-- 'deviceId', 'deleteMobileDeviceAccessOverride_deviceId' - The mobile device for which you delete the override. @DeviceId@ is case
-- insensitive.
newDeleteMobileDeviceAccessOverride ::
  -- | 'organizationId'
  Prelude.Text ->
  -- | 'userId'
  Prelude.Text ->
  -- | 'deviceId'
  Prelude.Text ->
  DeleteMobileDeviceAccessOverride
newDeleteMobileDeviceAccessOverride
  pOrganizationId_
  pUserId_
  pDeviceId_ =
    DeleteMobileDeviceAccessOverride'
      { organizationId =
          pOrganizationId_,
        userId = pUserId_,
        deviceId = pDeviceId_
      }

-- | The Amazon WorkMail organization for which the access override will be
-- deleted.
deleteMobileDeviceAccessOverride_organizationId :: Lens.Lens' DeleteMobileDeviceAccessOverride Prelude.Text
deleteMobileDeviceAccessOverride_organizationId = Lens.lens (\DeleteMobileDeviceAccessOverride' {organizationId} -> organizationId) (\s@DeleteMobileDeviceAccessOverride' {} a -> s {organizationId = a} :: DeleteMobileDeviceAccessOverride)

-- | The WorkMail user for which you want to delete the override. Accepts the
-- following types of user identities:
--
-- -   User ID: @12345678-1234-1234-1234-123456789012@ or
--     @S-1-1-12-1234567890-123456789-123456789-1234@
--
-- -   Email address: @user\@domain.tld@
--
-- -   User name: @user@
deleteMobileDeviceAccessOverride_userId :: Lens.Lens' DeleteMobileDeviceAccessOverride Prelude.Text
deleteMobileDeviceAccessOverride_userId = Lens.lens (\DeleteMobileDeviceAccessOverride' {userId} -> userId) (\s@DeleteMobileDeviceAccessOverride' {} a -> s {userId = a} :: DeleteMobileDeviceAccessOverride)

-- | The mobile device for which you delete the override. @DeviceId@ is case
-- insensitive.
deleteMobileDeviceAccessOverride_deviceId :: Lens.Lens' DeleteMobileDeviceAccessOverride Prelude.Text
deleteMobileDeviceAccessOverride_deviceId = Lens.lens (\DeleteMobileDeviceAccessOverride' {deviceId} -> deviceId) (\s@DeleteMobileDeviceAccessOverride' {} a -> s {deviceId = a} :: DeleteMobileDeviceAccessOverride)

instance
  Core.AWSRequest
    DeleteMobileDeviceAccessOverride
  where
  type
    AWSResponse DeleteMobileDeviceAccessOverride =
      DeleteMobileDeviceAccessOverrideResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteMobileDeviceAccessOverrideResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DeleteMobileDeviceAccessOverride

instance
  Prelude.NFData
    DeleteMobileDeviceAccessOverride

instance
  Core.ToHeaders
    DeleteMobileDeviceAccessOverride
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "WorkMailService.DeleteMobileDeviceAccessOverride" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteMobileDeviceAccessOverride where
  toJSON DeleteMobileDeviceAccessOverride' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("OrganizationId" Core..= organizationId),
            Prelude.Just ("UserId" Core..= userId),
            Prelude.Just ("DeviceId" Core..= deviceId)
          ]
      )

instance Core.ToPath DeleteMobileDeviceAccessOverride where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DeleteMobileDeviceAccessOverride
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteMobileDeviceAccessOverrideResponse' smart constructor.
data DeleteMobileDeviceAccessOverrideResponse = DeleteMobileDeviceAccessOverrideResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteMobileDeviceAccessOverrideResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteMobileDeviceAccessOverrideResponse_httpStatus' - The response's http status code.
newDeleteMobileDeviceAccessOverrideResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteMobileDeviceAccessOverrideResponse
newDeleteMobileDeviceAccessOverrideResponse
  pHttpStatus_ =
    DeleteMobileDeviceAccessOverrideResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
deleteMobileDeviceAccessOverrideResponse_httpStatus :: Lens.Lens' DeleteMobileDeviceAccessOverrideResponse Prelude.Int
deleteMobileDeviceAccessOverrideResponse_httpStatus = Lens.lens (\DeleteMobileDeviceAccessOverrideResponse' {httpStatus} -> httpStatus) (\s@DeleteMobileDeviceAccessOverrideResponse' {} a -> s {httpStatus = a} :: DeleteMobileDeviceAccessOverrideResponse)

instance
  Prelude.NFData
    DeleteMobileDeviceAccessOverrideResponse
