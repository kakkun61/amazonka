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
-- Module      : Network.AWS.AmplifyBackend.DeleteBackend
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an existing environment from your Amplify project.
module Network.AWS.AmplifyBackend.DeleteBackend
  ( -- * Creating a Request
    DeleteBackend (..),
    newDeleteBackend,

    -- * Request Lenses
    deleteBackend_appId,
    deleteBackend_backendEnvironmentName,

    -- * Destructuring the Response
    DeleteBackendResponse (..),
    newDeleteBackendResponse,

    -- * Response Lenses
    deleteBackendResponse_status,
    deleteBackendResponse_jobId,
    deleteBackendResponse_operation,
    deleteBackendResponse_error,
    deleteBackendResponse_appId,
    deleteBackendResponse_backendEnvironmentName,
    deleteBackendResponse_httpStatus,
  )
where

import Network.AWS.AmplifyBackend.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteBackend' smart constructor.
data DeleteBackend = DeleteBackend'
  { -- | The app ID.
    appId :: Prelude.Text,
    -- | The name of the backend environment.
    backendEnvironmentName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteBackend' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appId', 'deleteBackend_appId' - The app ID.
--
-- 'backendEnvironmentName', 'deleteBackend_backendEnvironmentName' - The name of the backend environment.
newDeleteBackend ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'backendEnvironmentName'
  Prelude.Text ->
  DeleteBackend
newDeleteBackend pAppId_ pBackendEnvironmentName_ =
  DeleteBackend'
    { appId = pAppId_,
      backendEnvironmentName = pBackendEnvironmentName_
    }

-- | The app ID.
deleteBackend_appId :: Lens.Lens' DeleteBackend Prelude.Text
deleteBackend_appId = Lens.lens (\DeleteBackend' {appId} -> appId) (\s@DeleteBackend' {} a -> s {appId = a} :: DeleteBackend)

-- | The name of the backend environment.
deleteBackend_backendEnvironmentName :: Lens.Lens' DeleteBackend Prelude.Text
deleteBackend_backendEnvironmentName = Lens.lens (\DeleteBackend' {backendEnvironmentName} -> backendEnvironmentName) (\s@DeleteBackend' {} a -> s {backendEnvironmentName = a} :: DeleteBackend)

instance Core.AWSRequest DeleteBackend where
  type
    AWSResponse DeleteBackend =
      DeleteBackendResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteBackendResponse'
            Prelude.<$> (x Core..?> "status")
            Prelude.<*> (x Core..?> "jobId")
            Prelude.<*> (x Core..?> "operation")
            Prelude.<*> (x Core..?> "error")
            Prelude.<*> (x Core..?> "appId")
            Prelude.<*> (x Core..?> "backendEnvironmentName")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteBackend

instance Prelude.NFData DeleteBackend

instance Core.ToHeaders DeleteBackend where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteBackend where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath DeleteBackend where
  toPath DeleteBackend' {..} =
    Prelude.mconcat
      [ "/backend/",
        Core.toBS appId,
        "/environments/",
        Core.toBS backendEnvironmentName,
        "/remove"
      ]

instance Core.ToQuery DeleteBackend where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteBackendResponse' smart constructor.
data DeleteBackendResponse = DeleteBackendResponse'
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
-- Create a value of 'DeleteBackendResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'deleteBackendResponse_status' - The current status of the request.
--
-- 'jobId', 'deleteBackendResponse_jobId' - The ID for the job.
--
-- 'operation', 'deleteBackendResponse_operation' - The name of the operation.
--
-- 'error', 'deleteBackendResponse_error' - If the request fails, this error is returned.
--
-- 'appId', 'deleteBackendResponse_appId' - The app ID.
--
-- 'backendEnvironmentName', 'deleteBackendResponse_backendEnvironmentName' - The name of the backend environment.
--
-- 'httpStatus', 'deleteBackendResponse_httpStatus' - The response's http status code.
newDeleteBackendResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteBackendResponse
newDeleteBackendResponse pHttpStatus_ =
  DeleteBackendResponse'
    { status = Prelude.Nothing,
      jobId = Prelude.Nothing,
      operation = Prelude.Nothing,
      error = Prelude.Nothing,
      appId = Prelude.Nothing,
      backendEnvironmentName = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The current status of the request.
deleteBackendResponse_status :: Lens.Lens' DeleteBackendResponse (Prelude.Maybe Prelude.Text)
deleteBackendResponse_status = Lens.lens (\DeleteBackendResponse' {status} -> status) (\s@DeleteBackendResponse' {} a -> s {status = a} :: DeleteBackendResponse)

-- | The ID for the job.
deleteBackendResponse_jobId :: Lens.Lens' DeleteBackendResponse (Prelude.Maybe Prelude.Text)
deleteBackendResponse_jobId = Lens.lens (\DeleteBackendResponse' {jobId} -> jobId) (\s@DeleteBackendResponse' {} a -> s {jobId = a} :: DeleteBackendResponse)

-- | The name of the operation.
deleteBackendResponse_operation :: Lens.Lens' DeleteBackendResponse (Prelude.Maybe Prelude.Text)
deleteBackendResponse_operation = Lens.lens (\DeleteBackendResponse' {operation} -> operation) (\s@DeleteBackendResponse' {} a -> s {operation = a} :: DeleteBackendResponse)

-- | If the request fails, this error is returned.
deleteBackendResponse_error :: Lens.Lens' DeleteBackendResponse (Prelude.Maybe Prelude.Text)
deleteBackendResponse_error = Lens.lens (\DeleteBackendResponse' {error} -> error) (\s@DeleteBackendResponse' {} a -> s {error = a} :: DeleteBackendResponse)

-- | The app ID.
deleteBackendResponse_appId :: Lens.Lens' DeleteBackendResponse (Prelude.Maybe Prelude.Text)
deleteBackendResponse_appId = Lens.lens (\DeleteBackendResponse' {appId} -> appId) (\s@DeleteBackendResponse' {} a -> s {appId = a} :: DeleteBackendResponse)

-- | The name of the backend environment.
deleteBackendResponse_backendEnvironmentName :: Lens.Lens' DeleteBackendResponse (Prelude.Maybe Prelude.Text)
deleteBackendResponse_backendEnvironmentName = Lens.lens (\DeleteBackendResponse' {backendEnvironmentName} -> backendEnvironmentName) (\s@DeleteBackendResponse' {} a -> s {backendEnvironmentName = a} :: DeleteBackendResponse)

-- | The response's http status code.
deleteBackendResponse_httpStatus :: Lens.Lens' DeleteBackendResponse Prelude.Int
deleteBackendResponse_httpStatus = Lens.lens (\DeleteBackendResponse' {httpStatus} -> httpStatus) (\s@DeleteBackendResponse' {} a -> s {httpStatus = a} :: DeleteBackendResponse)

instance Prelude.NFData DeleteBackendResponse
