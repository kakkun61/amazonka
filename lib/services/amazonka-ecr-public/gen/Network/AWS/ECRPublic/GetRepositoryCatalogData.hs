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
-- Module      : Network.AWS.ECRPublic.GetRepositoryCatalogData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve catalog metadata for a repository in a public registry. This
-- metadata is displayed publicly in the Amazon ECR Public Gallery.
module Network.AWS.ECRPublic.GetRepositoryCatalogData
  ( -- * Creating a Request
    GetRepositoryCatalogData (..),
    newGetRepositoryCatalogData,

    -- * Request Lenses
    getRepositoryCatalogData_registryId,
    getRepositoryCatalogData_repositoryName,

    -- * Destructuring the Response
    GetRepositoryCatalogDataResponse (..),
    newGetRepositoryCatalogDataResponse,

    -- * Response Lenses
    getRepositoryCatalogDataResponse_catalogData,
    getRepositoryCatalogDataResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ECRPublic.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetRepositoryCatalogData' smart constructor.
data GetRepositoryCatalogData = GetRepositoryCatalogData'
  { -- | The AWS account ID associated with the registry that contains the
    -- repositories to be described. If you do not specify a registry, the
    -- default public registry is assumed.
    registryId :: Prelude.Maybe Prelude.Text,
    -- | The name of the repository to retrieve the catalog metadata for.
    repositoryName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRepositoryCatalogData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'registryId', 'getRepositoryCatalogData_registryId' - The AWS account ID associated with the registry that contains the
-- repositories to be described. If you do not specify a registry, the
-- default public registry is assumed.
--
-- 'repositoryName', 'getRepositoryCatalogData_repositoryName' - The name of the repository to retrieve the catalog metadata for.
newGetRepositoryCatalogData ::
  -- | 'repositoryName'
  Prelude.Text ->
  GetRepositoryCatalogData
newGetRepositoryCatalogData pRepositoryName_ =
  GetRepositoryCatalogData'
    { registryId =
        Prelude.Nothing,
      repositoryName = pRepositoryName_
    }

-- | The AWS account ID associated with the registry that contains the
-- repositories to be described. If you do not specify a registry, the
-- default public registry is assumed.
getRepositoryCatalogData_registryId :: Lens.Lens' GetRepositoryCatalogData (Prelude.Maybe Prelude.Text)
getRepositoryCatalogData_registryId = Lens.lens (\GetRepositoryCatalogData' {registryId} -> registryId) (\s@GetRepositoryCatalogData' {} a -> s {registryId = a} :: GetRepositoryCatalogData)

-- | The name of the repository to retrieve the catalog metadata for.
getRepositoryCatalogData_repositoryName :: Lens.Lens' GetRepositoryCatalogData Prelude.Text
getRepositoryCatalogData_repositoryName = Lens.lens (\GetRepositoryCatalogData' {repositoryName} -> repositoryName) (\s@GetRepositoryCatalogData' {} a -> s {repositoryName = a} :: GetRepositoryCatalogData)

instance Core.AWSRequest GetRepositoryCatalogData where
  type
    AWSResponse GetRepositoryCatalogData =
      GetRepositoryCatalogDataResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRepositoryCatalogDataResponse'
            Prelude.<$> (x Core..?> "catalogData")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetRepositoryCatalogData

instance Prelude.NFData GetRepositoryCatalogData

instance Core.ToHeaders GetRepositoryCatalogData where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SpencerFrontendService.GetRepositoryCatalogData" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetRepositoryCatalogData where
  toJSON GetRepositoryCatalogData' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("registryId" Core..=) Prelude.<$> registryId,
            Prelude.Just
              ("repositoryName" Core..= repositoryName)
          ]
      )

instance Core.ToPath GetRepositoryCatalogData where
  toPath = Prelude.const "/"

instance Core.ToQuery GetRepositoryCatalogData where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetRepositoryCatalogDataResponse' smart constructor.
data GetRepositoryCatalogDataResponse = GetRepositoryCatalogDataResponse'
  { -- | The catalog metadata for the repository.
    catalogData :: Prelude.Maybe RepositoryCatalogData,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRepositoryCatalogDataResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'catalogData', 'getRepositoryCatalogDataResponse_catalogData' - The catalog metadata for the repository.
--
-- 'httpStatus', 'getRepositoryCatalogDataResponse_httpStatus' - The response's http status code.
newGetRepositoryCatalogDataResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetRepositoryCatalogDataResponse
newGetRepositoryCatalogDataResponse pHttpStatus_ =
  GetRepositoryCatalogDataResponse'
    { catalogData =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The catalog metadata for the repository.
getRepositoryCatalogDataResponse_catalogData :: Lens.Lens' GetRepositoryCatalogDataResponse (Prelude.Maybe RepositoryCatalogData)
getRepositoryCatalogDataResponse_catalogData = Lens.lens (\GetRepositoryCatalogDataResponse' {catalogData} -> catalogData) (\s@GetRepositoryCatalogDataResponse' {} a -> s {catalogData = a} :: GetRepositoryCatalogDataResponse)

-- | The response's http status code.
getRepositoryCatalogDataResponse_httpStatus :: Lens.Lens' GetRepositoryCatalogDataResponse Prelude.Int
getRepositoryCatalogDataResponse_httpStatus = Lens.lens (\GetRepositoryCatalogDataResponse' {httpStatus} -> httpStatus) (\s@GetRepositoryCatalogDataResponse' {} a -> s {httpStatus = a} :: GetRepositoryCatalogDataResponse)

instance
  Prelude.NFData
    GetRepositoryCatalogDataResponse
