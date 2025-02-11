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
-- Module      : Network.AWS.ECRPublic.PutRepositoryCatalogData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates the catalog data for a repository in a public
-- registry.
module Network.AWS.ECRPublic.PutRepositoryCatalogData
  ( -- * Creating a Request
    PutRepositoryCatalogData (..),
    newPutRepositoryCatalogData,

    -- * Request Lenses
    putRepositoryCatalogData_registryId,
    putRepositoryCatalogData_repositoryName,
    putRepositoryCatalogData_catalogData,

    -- * Destructuring the Response
    PutRepositoryCatalogDataResponse (..),
    newPutRepositoryCatalogDataResponse,

    -- * Response Lenses
    putRepositoryCatalogDataResponse_catalogData,
    putRepositoryCatalogDataResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ECRPublic.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutRepositoryCatalogData' smart constructor.
data PutRepositoryCatalogData = PutRepositoryCatalogData'
  { -- | The AWS account ID associated with the public registry the repository is
    -- in. If you do not specify a registry, the default public registry is
    -- assumed.
    registryId :: Prelude.Maybe Prelude.Text,
    -- | The name of the repository to create or update the catalog data for.
    repositoryName :: Prelude.Text,
    -- | An object containing the catalog data for a repository. This data is
    -- publicly visible in the Amazon ECR Public Gallery.
    catalogData :: RepositoryCatalogDataInput
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutRepositoryCatalogData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'registryId', 'putRepositoryCatalogData_registryId' - The AWS account ID associated with the public registry the repository is
-- in. If you do not specify a registry, the default public registry is
-- assumed.
--
-- 'repositoryName', 'putRepositoryCatalogData_repositoryName' - The name of the repository to create or update the catalog data for.
--
-- 'catalogData', 'putRepositoryCatalogData_catalogData' - An object containing the catalog data for a repository. This data is
-- publicly visible in the Amazon ECR Public Gallery.
newPutRepositoryCatalogData ::
  -- | 'repositoryName'
  Prelude.Text ->
  -- | 'catalogData'
  RepositoryCatalogDataInput ->
  PutRepositoryCatalogData
newPutRepositoryCatalogData
  pRepositoryName_
  pCatalogData_ =
    PutRepositoryCatalogData'
      { registryId =
          Prelude.Nothing,
        repositoryName = pRepositoryName_,
        catalogData = pCatalogData_
      }

-- | The AWS account ID associated with the public registry the repository is
-- in. If you do not specify a registry, the default public registry is
-- assumed.
putRepositoryCatalogData_registryId :: Lens.Lens' PutRepositoryCatalogData (Prelude.Maybe Prelude.Text)
putRepositoryCatalogData_registryId = Lens.lens (\PutRepositoryCatalogData' {registryId} -> registryId) (\s@PutRepositoryCatalogData' {} a -> s {registryId = a} :: PutRepositoryCatalogData)

-- | The name of the repository to create or update the catalog data for.
putRepositoryCatalogData_repositoryName :: Lens.Lens' PutRepositoryCatalogData Prelude.Text
putRepositoryCatalogData_repositoryName = Lens.lens (\PutRepositoryCatalogData' {repositoryName} -> repositoryName) (\s@PutRepositoryCatalogData' {} a -> s {repositoryName = a} :: PutRepositoryCatalogData)

-- | An object containing the catalog data for a repository. This data is
-- publicly visible in the Amazon ECR Public Gallery.
putRepositoryCatalogData_catalogData :: Lens.Lens' PutRepositoryCatalogData RepositoryCatalogDataInput
putRepositoryCatalogData_catalogData = Lens.lens (\PutRepositoryCatalogData' {catalogData} -> catalogData) (\s@PutRepositoryCatalogData' {} a -> s {catalogData = a} :: PutRepositoryCatalogData)

instance Core.AWSRequest PutRepositoryCatalogData where
  type
    AWSResponse PutRepositoryCatalogData =
      PutRepositoryCatalogDataResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutRepositoryCatalogDataResponse'
            Prelude.<$> (x Core..?> "catalogData")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutRepositoryCatalogData

instance Prelude.NFData PutRepositoryCatalogData

instance Core.ToHeaders PutRepositoryCatalogData where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SpencerFrontendService.PutRepositoryCatalogData" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutRepositoryCatalogData where
  toJSON PutRepositoryCatalogData' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("registryId" Core..=) Prelude.<$> registryId,
            Prelude.Just
              ("repositoryName" Core..= repositoryName),
            Prelude.Just ("catalogData" Core..= catalogData)
          ]
      )

instance Core.ToPath PutRepositoryCatalogData where
  toPath = Prelude.const "/"

instance Core.ToQuery PutRepositoryCatalogData where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutRepositoryCatalogDataResponse' smart constructor.
data PutRepositoryCatalogDataResponse = PutRepositoryCatalogDataResponse'
  { -- | The catalog data for the repository.
    catalogData :: Prelude.Maybe RepositoryCatalogData,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutRepositoryCatalogDataResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'catalogData', 'putRepositoryCatalogDataResponse_catalogData' - The catalog data for the repository.
--
-- 'httpStatus', 'putRepositoryCatalogDataResponse_httpStatus' - The response's http status code.
newPutRepositoryCatalogDataResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutRepositoryCatalogDataResponse
newPutRepositoryCatalogDataResponse pHttpStatus_ =
  PutRepositoryCatalogDataResponse'
    { catalogData =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The catalog data for the repository.
putRepositoryCatalogDataResponse_catalogData :: Lens.Lens' PutRepositoryCatalogDataResponse (Prelude.Maybe RepositoryCatalogData)
putRepositoryCatalogDataResponse_catalogData = Lens.lens (\PutRepositoryCatalogDataResponse' {catalogData} -> catalogData) (\s@PutRepositoryCatalogDataResponse' {} a -> s {catalogData = a} :: PutRepositoryCatalogDataResponse)

-- | The response's http status code.
putRepositoryCatalogDataResponse_httpStatus :: Lens.Lens' PutRepositoryCatalogDataResponse Prelude.Int
putRepositoryCatalogDataResponse_httpStatus = Lens.lens (\PutRepositoryCatalogDataResponse' {httpStatus} -> httpStatus) (\s@PutRepositoryCatalogDataResponse' {} a -> s {httpStatus = a} :: PutRepositoryCatalogDataResponse)

instance
  Prelude.NFData
    PutRepositoryCatalogDataResponse
