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
-- Module      : Network.AWS.AppFlow.DeleteConnectorProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables you to delete an existing connector profile.
module Network.AWS.AppFlow.DeleteConnectorProfile
  ( -- * Creating a Request
    DeleteConnectorProfile (..),
    newDeleteConnectorProfile,

    -- * Request Lenses
    deleteConnectorProfile_forceDelete,
    deleteConnectorProfile_connectorProfileName,

    -- * Destructuring the Response
    DeleteConnectorProfileResponse (..),
    newDeleteConnectorProfileResponse,

    -- * Response Lenses
    deleteConnectorProfileResponse_httpStatus,
  )
where

import Network.AWS.AppFlow.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteConnectorProfile' smart constructor.
data DeleteConnectorProfile = DeleteConnectorProfile'
  { -- | Indicates whether Amazon AppFlow should delete the profile, even if it
    -- is currently in use in one or more flows.
    forceDelete :: Prelude.Maybe Prelude.Bool,
    -- | The name of the connector profile. The name is unique for each
    -- @ConnectorProfile@ in your account.
    connectorProfileName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteConnectorProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'forceDelete', 'deleteConnectorProfile_forceDelete' - Indicates whether Amazon AppFlow should delete the profile, even if it
-- is currently in use in one or more flows.
--
-- 'connectorProfileName', 'deleteConnectorProfile_connectorProfileName' - The name of the connector profile. The name is unique for each
-- @ConnectorProfile@ in your account.
newDeleteConnectorProfile ::
  -- | 'connectorProfileName'
  Prelude.Text ->
  DeleteConnectorProfile
newDeleteConnectorProfile pConnectorProfileName_ =
  DeleteConnectorProfile'
    { forceDelete =
        Prelude.Nothing,
      connectorProfileName = pConnectorProfileName_
    }

-- | Indicates whether Amazon AppFlow should delete the profile, even if it
-- is currently in use in one or more flows.
deleteConnectorProfile_forceDelete :: Lens.Lens' DeleteConnectorProfile (Prelude.Maybe Prelude.Bool)
deleteConnectorProfile_forceDelete = Lens.lens (\DeleteConnectorProfile' {forceDelete} -> forceDelete) (\s@DeleteConnectorProfile' {} a -> s {forceDelete = a} :: DeleteConnectorProfile)

-- | The name of the connector profile. The name is unique for each
-- @ConnectorProfile@ in your account.
deleteConnectorProfile_connectorProfileName :: Lens.Lens' DeleteConnectorProfile Prelude.Text
deleteConnectorProfile_connectorProfileName = Lens.lens (\DeleteConnectorProfile' {connectorProfileName} -> connectorProfileName) (\s@DeleteConnectorProfile' {} a -> s {connectorProfileName = a} :: DeleteConnectorProfile)

instance Core.AWSRequest DeleteConnectorProfile where
  type
    AWSResponse DeleteConnectorProfile =
      DeleteConnectorProfileResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteConnectorProfileResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteConnectorProfile

instance Prelude.NFData DeleteConnectorProfile

instance Core.ToHeaders DeleteConnectorProfile where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteConnectorProfile where
  toJSON DeleteConnectorProfile' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("forceDelete" Core..=) Prelude.<$> forceDelete,
            Prelude.Just
              ( "connectorProfileName"
                  Core..= connectorProfileName
              )
          ]
      )

instance Core.ToPath DeleteConnectorProfile where
  toPath = Prelude.const "/delete-connector-profile"

instance Core.ToQuery DeleteConnectorProfile where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteConnectorProfileResponse' smart constructor.
data DeleteConnectorProfileResponse = DeleteConnectorProfileResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteConnectorProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteConnectorProfileResponse_httpStatus' - The response's http status code.
newDeleteConnectorProfileResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteConnectorProfileResponse
newDeleteConnectorProfileResponse pHttpStatus_ =
  DeleteConnectorProfileResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteConnectorProfileResponse_httpStatus :: Lens.Lens' DeleteConnectorProfileResponse Prelude.Int
deleteConnectorProfileResponse_httpStatus = Lens.lens (\DeleteConnectorProfileResponse' {httpStatus} -> httpStatus) (\s@DeleteConnectorProfileResponse' {} a -> s {httpStatus = a} :: DeleteConnectorProfileResponse)

instance
  Prelude.NFData
    DeleteConnectorProfileResponse
