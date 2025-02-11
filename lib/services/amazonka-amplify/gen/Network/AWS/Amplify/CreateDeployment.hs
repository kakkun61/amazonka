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
-- Module      : Network.AWS.Amplify.CreateDeployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a deployment for a manually deployed Amplify app. Manually
-- deployed apps are not connected to a repository.
module Network.AWS.Amplify.CreateDeployment
  ( -- * Creating a Request
    CreateDeployment (..),
    newCreateDeployment,

    -- * Request Lenses
    createDeployment_fileMap,
    createDeployment_appId,
    createDeployment_branchName,

    -- * Destructuring the Response
    CreateDeploymentResponse (..),
    newCreateDeploymentResponse,

    -- * Response Lenses
    createDeploymentResponse_jobId,
    createDeploymentResponse_httpStatus,
    createDeploymentResponse_fileUploadUrls,
    createDeploymentResponse_zipUploadUrl,
  )
where

import Network.AWS.Amplify.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request structure for the create a new deployment request.
--
-- /See:/ 'newCreateDeployment' smart constructor.
data CreateDeployment = CreateDeployment'
  { -- | An optional file map that contains the file name as the key and the file
    -- content md5 hash as the value. If this argument is provided, the service
    -- will generate a unique upload URL per file. Otherwise, the service will
    -- only generate a single upload URL for the zipped files.
    fileMap :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The unique ID for an Amplify app.
    appId :: Prelude.Text,
    -- | The name for the branch, for the job.
    branchName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDeployment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fileMap', 'createDeployment_fileMap' - An optional file map that contains the file name as the key and the file
-- content md5 hash as the value. If this argument is provided, the service
-- will generate a unique upload URL per file. Otherwise, the service will
-- only generate a single upload URL for the zipped files.
--
-- 'appId', 'createDeployment_appId' - The unique ID for an Amplify app.
--
-- 'branchName', 'createDeployment_branchName' - The name for the branch, for the job.
newCreateDeployment ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'branchName'
  Prelude.Text ->
  CreateDeployment
newCreateDeployment pAppId_ pBranchName_ =
  CreateDeployment'
    { fileMap = Prelude.Nothing,
      appId = pAppId_,
      branchName = pBranchName_
    }

-- | An optional file map that contains the file name as the key and the file
-- content md5 hash as the value. If this argument is provided, the service
-- will generate a unique upload URL per file. Otherwise, the service will
-- only generate a single upload URL for the zipped files.
createDeployment_fileMap :: Lens.Lens' CreateDeployment (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createDeployment_fileMap = Lens.lens (\CreateDeployment' {fileMap} -> fileMap) (\s@CreateDeployment' {} a -> s {fileMap = a} :: CreateDeployment) Prelude.. Lens.mapping Lens.coerced

-- | The unique ID for an Amplify app.
createDeployment_appId :: Lens.Lens' CreateDeployment Prelude.Text
createDeployment_appId = Lens.lens (\CreateDeployment' {appId} -> appId) (\s@CreateDeployment' {} a -> s {appId = a} :: CreateDeployment)

-- | The name for the branch, for the job.
createDeployment_branchName :: Lens.Lens' CreateDeployment Prelude.Text
createDeployment_branchName = Lens.lens (\CreateDeployment' {branchName} -> branchName) (\s@CreateDeployment' {} a -> s {branchName = a} :: CreateDeployment)

instance Core.AWSRequest CreateDeployment where
  type
    AWSResponse CreateDeployment =
      CreateDeploymentResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDeploymentResponse'
            Prelude.<$> (x Core..?> "jobId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "fileUploadUrls" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..:> "zipUploadUrl")
      )

instance Prelude.Hashable CreateDeployment

instance Prelude.NFData CreateDeployment

instance Core.ToHeaders CreateDeployment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateDeployment where
  toJSON CreateDeployment' {..} =
    Core.object
      ( Prelude.catMaybes
          [("fileMap" Core..=) Prelude.<$> fileMap]
      )

instance Core.ToPath CreateDeployment where
  toPath CreateDeployment' {..} =
    Prelude.mconcat
      [ "/apps/",
        Core.toBS appId,
        "/branches/",
        Core.toBS branchName,
        "/deployments"
      ]

instance Core.ToQuery CreateDeployment where
  toQuery = Prelude.const Prelude.mempty

-- | The result structure for the create a new deployment request.
--
-- /See:/ 'newCreateDeploymentResponse' smart constructor.
data CreateDeploymentResponse = CreateDeploymentResponse'
  { -- | The job ID for this deployment. will supply to start deployment api.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | When the @fileMap@ argument is provided in the request, @fileUploadUrls@
    -- will contain a map of file names to upload URLs.
    fileUploadUrls :: Prelude.HashMap Prelude.Text Prelude.Text,
    -- | When the @fileMap@ argument is not provided in the request, this
    -- @zipUploadUrl@ is returned.
    zipUploadUrl :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDeploymentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'createDeploymentResponse_jobId' - The job ID for this deployment. will supply to start deployment api.
--
-- 'httpStatus', 'createDeploymentResponse_httpStatus' - The response's http status code.
--
-- 'fileUploadUrls', 'createDeploymentResponse_fileUploadUrls' - When the @fileMap@ argument is provided in the request, @fileUploadUrls@
-- will contain a map of file names to upload URLs.
--
-- 'zipUploadUrl', 'createDeploymentResponse_zipUploadUrl' - When the @fileMap@ argument is not provided in the request, this
-- @zipUploadUrl@ is returned.
newCreateDeploymentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'zipUploadUrl'
  Prelude.Text ->
  CreateDeploymentResponse
newCreateDeploymentResponse
  pHttpStatus_
  pZipUploadUrl_ =
    CreateDeploymentResponse'
      { jobId = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        fileUploadUrls = Prelude.mempty,
        zipUploadUrl = pZipUploadUrl_
      }

-- | The job ID for this deployment. will supply to start deployment api.
createDeploymentResponse_jobId :: Lens.Lens' CreateDeploymentResponse (Prelude.Maybe Prelude.Text)
createDeploymentResponse_jobId = Lens.lens (\CreateDeploymentResponse' {jobId} -> jobId) (\s@CreateDeploymentResponse' {} a -> s {jobId = a} :: CreateDeploymentResponse)

-- | The response's http status code.
createDeploymentResponse_httpStatus :: Lens.Lens' CreateDeploymentResponse Prelude.Int
createDeploymentResponse_httpStatus = Lens.lens (\CreateDeploymentResponse' {httpStatus} -> httpStatus) (\s@CreateDeploymentResponse' {} a -> s {httpStatus = a} :: CreateDeploymentResponse)

-- | When the @fileMap@ argument is provided in the request, @fileUploadUrls@
-- will contain a map of file names to upload URLs.
createDeploymentResponse_fileUploadUrls :: Lens.Lens' CreateDeploymentResponse (Prelude.HashMap Prelude.Text Prelude.Text)
createDeploymentResponse_fileUploadUrls = Lens.lens (\CreateDeploymentResponse' {fileUploadUrls} -> fileUploadUrls) (\s@CreateDeploymentResponse' {} a -> s {fileUploadUrls = a} :: CreateDeploymentResponse) Prelude.. Lens.coerced

-- | When the @fileMap@ argument is not provided in the request, this
-- @zipUploadUrl@ is returned.
createDeploymentResponse_zipUploadUrl :: Lens.Lens' CreateDeploymentResponse Prelude.Text
createDeploymentResponse_zipUploadUrl = Lens.lens (\CreateDeploymentResponse' {zipUploadUrl} -> zipUploadUrl) (\s@CreateDeploymentResponse' {} a -> s {zipUploadUrl = a} :: CreateDeploymentResponse)

instance Prelude.NFData CreateDeploymentResponse
