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
-- Module      : Network.AWS.AmplifyBackend.DeleteBackendAuth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing backend authentication resource.
module Network.AWS.AmplifyBackend.DeleteBackendAuth
  ( -- * Creating a Request
    DeleteBackendAuth (..),
    newDeleteBackendAuth,

    -- * Request Lenses
    deleteBackendAuth_appId,
    deleteBackendAuth_backendEnvironmentName,
    deleteBackendAuth_resourceName,

    -- * Destructuring the Response
    DeleteBackendAuthResponse (..),
    newDeleteBackendAuthResponse,

    -- * Response Lenses
    deleteBackendAuthResponse_status,
    deleteBackendAuthResponse_jobId,
    deleteBackendAuthResponse_operation,
    deleteBackendAuthResponse_error,
    deleteBackendAuthResponse_appId,
    deleteBackendAuthResponse_backendEnvironmentName,
    deleteBackendAuthResponse_httpStatus,
  )
where

import Network.AWS.AmplifyBackend.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request body for DeleteBackendAuth.
--
-- /See:/ 'newDeleteBackendAuth' smart constructor.
data DeleteBackendAuth = DeleteBackendAuth'
  { -- | The app ID.
    appId :: Prelude.Text,
    -- | The name of the backend environment.
    backendEnvironmentName :: Prelude.Text,
    -- | The name of this resource.
    resourceName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteBackendAuth' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appId', 'deleteBackendAuth_appId' - The app ID.
--
-- 'backendEnvironmentName', 'deleteBackendAuth_backendEnvironmentName' - The name of the backend environment.
--
-- 'resourceName', 'deleteBackendAuth_resourceName' - The name of this resource.
newDeleteBackendAuth ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'backendEnvironmentName'
  Prelude.Text ->
  -- | 'resourceName'
  Prelude.Text ->
  DeleteBackendAuth
newDeleteBackendAuth
  pAppId_
  pBackendEnvironmentName_
  pResourceName_ =
    DeleteBackendAuth'
      { appId = pAppId_,
        backendEnvironmentName = pBackendEnvironmentName_,
        resourceName = pResourceName_
      }

-- | The app ID.
deleteBackendAuth_appId :: Lens.Lens' DeleteBackendAuth Prelude.Text
deleteBackendAuth_appId = Lens.lens (\DeleteBackendAuth' {appId} -> appId) (\s@DeleteBackendAuth' {} a -> s {appId = a} :: DeleteBackendAuth)

-- | The name of the backend environment.
deleteBackendAuth_backendEnvironmentName :: Lens.Lens' DeleteBackendAuth Prelude.Text
deleteBackendAuth_backendEnvironmentName = Lens.lens (\DeleteBackendAuth' {backendEnvironmentName} -> backendEnvironmentName) (\s@DeleteBackendAuth' {} a -> s {backendEnvironmentName = a} :: DeleteBackendAuth)

-- | The name of this resource.
deleteBackendAuth_resourceName :: Lens.Lens' DeleteBackendAuth Prelude.Text
deleteBackendAuth_resourceName = Lens.lens (\DeleteBackendAuth' {resourceName} -> resourceName) (\s@DeleteBackendAuth' {} a -> s {resourceName = a} :: DeleteBackendAuth)

instance Core.AWSRequest DeleteBackendAuth where
  type
    AWSResponse DeleteBackendAuth =
      DeleteBackendAuthResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteBackendAuthResponse'
            Prelude.<$> (x Core..?> "status")
            Prelude.<*> (x Core..?> "jobId")
            Prelude.<*> (x Core..?> "operation")
            Prelude.<*> (x Core..?> "error")
            Prelude.<*> (x Core..?> "appId")
            Prelude.<*> (x Core..?> "backendEnvironmentName")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteBackendAuth

instance Prelude.NFData DeleteBackendAuth

instance Core.ToHeaders DeleteBackendAuth where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteBackendAuth where
  toJSON DeleteBackendAuth' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("resourceName" Core..= resourceName)]
      )

instance Core.ToPath DeleteBackendAuth where
  toPath DeleteBackendAuth' {..} =
    Prelude.mconcat
      [ "/backend/",
        Core.toBS appId,
        "/auth/",
        Core.toBS backendEnvironmentName,
        "/remove"
      ]

instance Core.ToQuery DeleteBackendAuth where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteBackendAuthResponse' smart constructor.
data DeleteBackendAuthResponse = DeleteBackendAuthResponse'
  { -- | The current status of the request.
    status :: Prelude.Maybe Prelude.Text,
    -- | The ID for the job.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | The name of the operation.
    operation :: Prelude.Maybe Prelude.Text,
    -- | If the request fails, this error is returned.
    error :: Prelude.Maybe Prelude.Text,
    -- | The app ID.
    appId :: Prelude.Maybe Prelude.Text,
    -- | The name of the backend environment.
    backendEnvironmentName :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteBackendAuthResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'deleteBackendAuthResponse_status' - The current status of the request.
--
-- 'jobId', 'deleteBackendAuthResponse_jobId' - The ID for the job.
--
-- 'operation', 'deleteBackendAuthResponse_operation' - The name of the operation.
--
-- 'error', 'deleteBackendAuthResponse_error' - If the request fails, this error is returned.
--
-- 'appId', 'deleteBackendAuthResponse_appId' - The app ID.
--
-- 'backendEnvironmentName', 'deleteBackendAuthResponse_backendEnvironmentName' - The name of the backend environment.
--
-- 'httpStatus', 'deleteBackendAuthResponse_httpStatus' - The response's http status code.
newDeleteBackendAuthResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteBackendAuthResponse
newDeleteBackendAuthResponse pHttpStatus_ =
  DeleteBackendAuthResponse'
    { status =
        Prelude.Nothing,
      jobId = Prelude.Nothing,
      operation = Prelude.Nothing,
      error = Prelude.Nothing,
      appId = Prelude.Nothing,
      backendEnvironmentName = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The current status of the request.
deleteBackendAuthResponse_status :: Lens.Lens' DeleteBackendAuthResponse (Prelude.Maybe Prelude.Text)
deleteBackendAuthResponse_status = Lens.lens (\DeleteBackendAuthResponse' {status} -> status) (\s@DeleteBackendAuthResponse' {} a -> s {status = a} :: DeleteBackendAuthResponse)

-- | The ID for the job.
deleteBackendAuthResponse_jobId :: Lens.Lens' DeleteBackendAuthResponse (Prelude.Maybe Prelude.Text)
deleteBackendAuthResponse_jobId = Lens.lens (\DeleteBackendAuthResponse' {jobId} -> jobId) (\s@DeleteBackendAuthResponse' {} a -> s {jobId = a} :: DeleteBackendAuthResponse)

-- | The name of the operation.
deleteBackendAuthResponse_operation :: Lens.Lens' DeleteBackendAuthResponse (Prelude.Maybe Prelude.Text)
deleteBackendAuthResponse_operation = Lens.lens (\DeleteBackendAuthResponse' {operation} -> operation) (\s@DeleteBackendAuthResponse' {} a -> s {operation = a} :: DeleteBackendAuthResponse)

-- | If the request fails, this error is returned.
deleteBackendAuthResponse_error :: Lens.Lens' DeleteBackendAuthResponse (Prelude.Maybe Prelude.Text)
deleteBackendAuthResponse_error = Lens.lens (\DeleteBackendAuthResponse' {error} -> error) (\s@DeleteBackendAuthResponse' {} a -> s {error = a} :: DeleteBackendAuthResponse)

-- | The app ID.
deleteBackendAuthResponse_appId :: Lens.Lens' DeleteBackendAuthResponse (Prelude.Maybe Prelude.Text)
deleteBackendAuthResponse_appId = Lens.lens (\DeleteBackendAuthResponse' {appId} -> appId) (\s@DeleteBackendAuthResponse' {} a -> s {appId = a} :: DeleteBackendAuthResponse)

-- | The name of the backend environment.
deleteBackendAuthResponse_backendEnvironmentName :: Lens.Lens' DeleteBackendAuthResponse (Prelude.Maybe Prelude.Text)
deleteBackendAuthResponse_backendEnvironmentName = Lens.lens (\DeleteBackendAuthResponse' {backendEnvironmentName} -> backendEnvironmentName) (\s@DeleteBackendAuthResponse' {} a -> s {backendEnvironmentName = a} :: DeleteBackendAuthResponse)

-- | The response's http status code.
deleteBackendAuthResponse_httpStatus :: Lens.Lens' DeleteBackendAuthResponse Prelude.Int
deleteBackendAuthResponse_httpStatus = Lens.lens (\DeleteBackendAuthResponse' {httpStatus} -> httpStatus) (\s@DeleteBackendAuthResponse' {} a -> s {httpStatus = a} :: DeleteBackendAuthResponse)

instance Prelude.NFData DeleteBackendAuthResponse
