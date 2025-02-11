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
-- Module      : Network.AWS.Amplify.DeleteBackendEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a backend environment for an Amplify app.
module Network.AWS.Amplify.DeleteBackendEnvironment
  ( -- * Creating a Request
    DeleteBackendEnvironment (..),
    newDeleteBackendEnvironment,

    -- * Request Lenses
    deleteBackendEnvironment_appId,
    deleteBackendEnvironment_environmentName,

    -- * Destructuring the Response
    DeleteBackendEnvironmentResponse (..),
    newDeleteBackendEnvironmentResponse,

    -- * Response Lenses
    deleteBackendEnvironmentResponse_httpStatus,
    deleteBackendEnvironmentResponse_backendEnvironment,
  )
where

import Network.AWS.Amplify.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request structure for the delete backend environment request.
--
-- /See:/ 'newDeleteBackendEnvironment' smart constructor.
data DeleteBackendEnvironment = DeleteBackendEnvironment'
  { -- | The unique ID of an Amplify app.
    appId :: Prelude.Text,
    -- | The name of a backend environment of an Amplify app.
    environmentName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteBackendEnvironment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appId', 'deleteBackendEnvironment_appId' - The unique ID of an Amplify app.
--
-- 'environmentName', 'deleteBackendEnvironment_environmentName' - The name of a backend environment of an Amplify app.
newDeleteBackendEnvironment ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'environmentName'
  Prelude.Text ->
  DeleteBackendEnvironment
newDeleteBackendEnvironment pAppId_ pEnvironmentName_ =
  DeleteBackendEnvironment'
    { appId = pAppId_,
      environmentName = pEnvironmentName_
    }

-- | The unique ID of an Amplify app.
deleteBackendEnvironment_appId :: Lens.Lens' DeleteBackendEnvironment Prelude.Text
deleteBackendEnvironment_appId = Lens.lens (\DeleteBackendEnvironment' {appId} -> appId) (\s@DeleteBackendEnvironment' {} a -> s {appId = a} :: DeleteBackendEnvironment)

-- | The name of a backend environment of an Amplify app.
deleteBackendEnvironment_environmentName :: Lens.Lens' DeleteBackendEnvironment Prelude.Text
deleteBackendEnvironment_environmentName = Lens.lens (\DeleteBackendEnvironment' {environmentName} -> environmentName) (\s@DeleteBackendEnvironment' {} a -> s {environmentName = a} :: DeleteBackendEnvironment)

instance Core.AWSRequest DeleteBackendEnvironment where
  type
    AWSResponse DeleteBackendEnvironment =
      DeleteBackendEnvironmentResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteBackendEnvironmentResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "backendEnvironment")
      )

instance Prelude.Hashable DeleteBackendEnvironment

instance Prelude.NFData DeleteBackendEnvironment

instance Core.ToHeaders DeleteBackendEnvironment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteBackendEnvironment where
  toPath DeleteBackendEnvironment' {..} =
    Prelude.mconcat
      [ "/apps/",
        Core.toBS appId,
        "/backendenvironments/",
        Core.toBS environmentName
      ]

instance Core.ToQuery DeleteBackendEnvironment where
  toQuery = Prelude.const Prelude.mempty

-- | The result structure of the delete backend environment result.
--
-- /See:/ 'newDeleteBackendEnvironmentResponse' smart constructor.
data DeleteBackendEnvironmentResponse = DeleteBackendEnvironmentResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Describes the backend environment for an Amplify app.
    backendEnvironment :: BackendEnvironment
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteBackendEnvironmentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteBackendEnvironmentResponse_httpStatus' - The response's http status code.
--
-- 'backendEnvironment', 'deleteBackendEnvironmentResponse_backendEnvironment' - Describes the backend environment for an Amplify app.
newDeleteBackendEnvironmentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'backendEnvironment'
  BackendEnvironment ->
  DeleteBackendEnvironmentResponse
newDeleteBackendEnvironmentResponse
  pHttpStatus_
  pBackendEnvironment_ =
    DeleteBackendEnvironmentResponse'
      { httpStatus =
          pHttpStatus_,
        backendEnvironment = pBackendEnvironment_
      }

-- | The response's http status code.
deleteBackendEnvironmentResponse_httpStatus :: Lens.Lens' DeleteBackendEnvironmentResponse Prelude.Int
deleteBackendEnvironmentResponse_httpStatus = Lens.lens (\DeleteBackendEnvironmentResponse' {httpStatus} -> httpStatus) (\s@DeleteBackendEnvironmentResponse' {} a -> s {httpStatus = a} :: DeleteBackendEnvironmentResponse)

-- | Describes the backend environment for an Amplify app.
deleteBackendEnvironmentResponse_backendEnvironment :: Lens.Lens' DeleteBackendEnvironmentResponse BackendEnvironment
deleteBackendEnvironmentResponse_backendEnvironment = Lens.lens (\DeleteBackendEnvironmentResponse' {backendEnvironment} -> backendEnvironment) (\s@DeleteBackendEnvironmentResponse' {} a -> s {backendEnvironment = a} :: DeleteBackendEnvironmentResponse)

instance
  Prelude.NFData
    DeleteBackendEnvironmentResponse
