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
-- Module      : Network.AWS.ECRPublic.PutRegistryCatalogData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create or updates the catalog data for a public registry.
module Network.AWS.ECRPublic.PutRegistryCatalogData
  ( -- * Creating a Request
    PutRegistryCatalogData (..),
    newPutRegistryCatalogData,

    -- * Request Lenses
    putRegistryCatalogData_displayName,

    -- * Destructuring the Response
    PutRegistryCatalogDataResponse (..),
    newPutRegistryCatalogDataResponse,

    -- * Response Lenses
    putRegistryCatalogDataResponse_httpStatus,
    putRegistryCatalogDataResponse_registryCatalogData,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ECRPublic.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutRegistryCatalogData' smart constructor.
data PutRegistryCatalogData = PutRegistryCatalogData'
  { -- | The display name for a public registry. The display name is shown as the
    -- repository author in the Amazon ECR Public Gallery.
    --
    -- The registry display name is only publicly visible in the Amazon ECR
    -- Public Gallery for verified accounts.
    displayName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutRegistryCatalogData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'displayName', 'putRegistryCatalogData_displayName' - The display name for a public registry. The display name is shown as the
-- repository author in the Amazon ECR Public Gallery.
--
-- The registry display name is only publicly visible in the Amazon ECR
-- Public Gallery for verified accounts.
newPutRegistryCatalogData ::
  PutRegistryCatalogData
newPutRegistryCatalogData =
  PutRegistryCatalogData'
    { displayName =
        Prelude.Nothing
    }

-- | The display name for a public registry. The display name is shown as the
-- repository author in the Amazon ECR Public Gallery.
--
-- The registry display name is only publicly visible in the Amazon ECR
-- Public Gallery for verified accounts.
putRegistryCatalogData_displayName :: Lens.Lens' PutRegistryCatalogData (Prelude.Maybe Prelude.Text)
putRegistryCatalogData_displayName = Lens.lens (\PutRegistryCatalogData' {displayName} -> displayName) (\s@PutRegistryCatalogData' {} a -> s {displayName = a} :: PutRegistryCatalogData)

instance Core.AWSRequest PutRegistryCatalogData where
  type
    AWSResponse PutRegistryCatalogData =
      PutRegistryCatalogDataResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutRegistryCatalogDataResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "registryCatalogData")
      )

instance Prelude.Hashable PutRegistryCatalogData

instance Prelude.NFData PutRegistryCatalogData

instance Core.ToHeaders PutRegistryCatalogData where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SpencerFrontendService.PutRegistryCatalogData" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutRegistryCatalogData where
  toJSON PutRegistryCatalogData' {..} =
    Core.object
      ( Prelude.catMaybes
          [("displayName" Core..=) Prelude.<$> displayName]
      )

instance Core.ToPath PutRegistryCatalogData where
  toPath = Prelude.const "/"

instance Core.ToQuery PutRegistryCatalogData where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutRegistryCatalogDataResponse' smart constructor.
data PutRegistryCatalogDataResponse = PutRegistryCatalogDataResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The catalog data for the public registry.
    registryCatalogData :: RegistryCatalogData
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutRegistryCatalogDataResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'putRegistryCatalogDataResponse_httpStatus' - The response's http status code.
--
-- 'registryCatalogData', 'putRegistryCatalogDataResponse_registryCatalogData' - The catalog data for the public registry.
newPutRegistryCatalogDataResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'registryCatalogData'
  RegistryCatalogData ->
  PutRegistryCatalogDataResponse
newPutRegistryCatalogDataResponse
  pHttpStatus_
  pRegistryCatalogData_ =
    PutRegistryCatalogDataResponse'
      { httpStatus =
          pHttpStatus_,
        registryCatalogData = pRegistryCatalogData_
      }

-- | The response's http status code.
putRegistryCatalogDataResponse_httpStatus :: Lens.Lens' PutRegistryCatalogDataResponse Prelude.Int
putRegistryCatalogDataResponse_httpStatus = Lens.lens (\PutRegistryCatalogDataResponse' {httpStatus} -> httpStatus) (\s@PutRegistryCatalogDataResponse' {} a -> s {httpStatus = a} :: PutRegistryCatalogDataResponse)

-- | The catalog data for the public registry.
putRegistryCatalogDataResponse_registryCatalogData :: Lens.Lens' PutRegistryCatalogDataResponse RegistryCatalogData
putRegistryCatalogDataResponse_registryCatalogData = Lens.lens (\PutRegistryCatalogDataResponse' {registryCatalogData} -> registryCatalogData) (\s@PutRegistryCatalogDataResponse' {} a -> s {registryCatalogData = a} :: PutRegistryCatalogDataResponse)

instance
  Prelude.NFData
    PutRegistryCatalogDataResponse
