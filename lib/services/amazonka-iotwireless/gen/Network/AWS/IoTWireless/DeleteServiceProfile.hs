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
-- Module      : Network.AWS.IoTWireless.DeleteServiceProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a service profile.
module Network.AWS.IoTWireless.DeleteServiceProfile
  ( -- * Creating a Request
    DeleteServiceProfile (..),
    newDeleteServiceProfile,

    -- * Request Lenses
    deleteServiceProfile_id,

    -- * Destructuring the Response
    DeleteServiceProfileResponse (..),
    newDeleteServiceProfileResponse,

    -- * Response Lenses
    deleteServiceProfileResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteServiceProfile' smart constructor.
data DeleteServiceProfile = DeleteServiceProfile'
  { -- | The ID of the resource to delete.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteServiceProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'deleteServiceProfile_id' - The ID of the resource to delete.
newDeleteServiceProfile ::
  -- | 'id'
  Prelude.Text ->
  DeleteServiceProfile
newDeleteServiceProfile pId_ =
  DeleteServiceProfile' {id = pId_}

-- | The ID of the resource to delete.
deleteServiceProfile_id :: Lens.Lens' DeleteServiceProfile Prelude.Text
deleteServiceProfile_id = Lens.lens (\DeleteServiceProfile' {id} -> id) (\s@DeleteServiceProfile' {} a -> s {id = a} :: DeleteServiceProfile)

instance Core.AWSRequest DeleteServiceProfile where
  type
    AWSResponse DeleteServiceProfile =
      DeleteServiceProfileResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteServiceProfileResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteServiceProfile

instance Prelude.NFData DeleteServiceProfile

instance Core.ToHeaders DeleteServiceProfile where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteServiceProfile where
  toPath DeleteServiceProfile' {..} =
    Prelude.mconcat
      ["/service-profiles/", Core.toBS id]

instance Core.ToQuery DeleteServiceProfile where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteServiceProfileResponse' smart constructor.
data DeleteServiceProfileResponse = DeleteServiceProfileResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteServiceProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteServiceProfileResponse_httpStatus' - The response's http status code.
newDeleteServiceProfileResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteServiceProfileResponse
newDeleteServiceProfileResponse pHttpStatus_ =
  DeleteServiceProfileResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteServiceProfileResponse_httpStatus :: Lens.Lens' DeleteServiceProfileResponse Prelude.Int
deleteServiceProfileResponse_httpStatus = Lens.lens (\DeleteServiceProfileResponse' {httpStatus} -> httpStatus) (\s@DeleteServiceProfileResponse' {} a -> s {httpStatus = a} :: DeleteServiceProfileResponse)

instance Prelude.NFData DeleteServiceProfileResponse
