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
-- Module      : Network.AWS.LicenseManager.DeleteLicense
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified license.
module Network.AWS.LicenseManager.DeleteLicense
  ( -- * Creating a Request
    DeleteLicense (..),
    newDeleteLicense,

    -- * Request Lenses
    deleteLicense_licenseArn,
    deleteLicense_sourceVersion,

    -- * Destructuring the Response
    DeleteLicenseResponse (..),
    newDeleteLicenseResponse,

    -- * Response Lenses
    deleteLicenseResponse_status,
    deleteLicenseResponse_deletionDate,
    deleteLicenseResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LicenseManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteLicense' smart constructor.
data DeleteLicense = DeleteLicense'
  { -- | Amazon Resource Name (ARN) of the license.
    licenseArn :: Prelude.Text,
    -- | Current version of the license.
    sourceVersion :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLicense' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'licenseArn', 'deleteLicense_licenseArn' - Amazon Resource Name (ARN) of the license.
--
-- 'sourceVersion', 'deleteLicense_sourceVersion' - Current version of the license.
newDeleteLicense ::
  -- | 'licenseArn'
  Prelude.Text ->
  -- | 'sourceVersion'
  Prelude.Text ->
  DeleteLicense
newDeleteLicense pLicenseArn_ pSourceVersion_ =
  DeleteLicense'
    { licenseArn = pLicenseArn_,
      sourceVersion = pSourceVersion_
    }

-- | Amazon Resource Name (ARN) of the license.
deleteLicense_licenseArn :: Lens.Lens' DeleteLicense Prelude.Text
deleteLicense_licenseArn = Lens.lens (\DeleteLicense' {licenseArn} -> licenseArn) (\s@DeleteLicense' {} a -> s {licenseArn = a} :: DeleteLicense)

-- | Current version of the license.
deleteLicense_sourceVersion :: Lens.Lens' DeleteLicense Prelude.Text
deleteLicense_sourceVersion = Lens.lens (\DeleteLicense' {sourceVersion} -> sourceVersion) (\s@DeleteLicense' {} a -> s {sourceVersion = a} :: DeleteLicense)

instance Core.AWSRequest DeleteLicense where
  type
    AWSResponse DeleteLicense =
      DeleteLicenseResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteLicenseResponse'
            Prelude.<$> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "DeletionDate")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteLicense

instance Prelude.NFData DeleteLicense

instance Core.ToHeaders DeleteLicense where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLicenseManager.DeleteLicense" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteLicense where
  toJSON DeleteLicense' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("LicenseArn" Core..= licenseArn),
            Prelude.Just
              ("SourceVersion" Core..= sourceVersion)
          ]
      )

instance Core.ToPath DeleteLicense where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteLicense where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteLicenseResponse' smart constructor.
data DeleteLicenseResponse = DeleteLicenseResponse'
  { -- | License status.
    status :: Prelude.Maybe LicenseDeletionStatus,
    -- | Date when the license is deleted.
    deletionDate :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLicenseResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'deleteLicenseResponse_status' - License status.
--
-- 'deletionDate', 'deleteLicenseResponse_deletionDate' - Date when the license is deleted.
--
-- 'httpStatus', 'deleteLicenseResponse_httpStatus' - The response's http status code.
newDeleteLicenseResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteLicenseResponse
newDeleteLicenseResponse pHttpStatus_ =
  DeleteLicenseResponse'
    { status = Prelude.Nothing,
      deletionDate = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | License status.
deleteLicenseResponse_status :: Lens.Lens' DeleteLicenseResponse (Prelude.Maybe LicenseDeletionStatus)
deleteLicenseResponse_status = Lens.lens (\DeleteLicenseResponse' {status} -> status) (\s@DeleteLicenseResponse' {} a -> s {status = a} :: DeleteLicenseResponse)

-- | Date when the license is deleted.
deleteLicenseResponse_deletionDate :: Lens.Lens' DeleteLicenseResponse (Prelude.Maybe Prelude.Text)
deleteLicenseResponse_deletionDate = Lens.lens (\DeleteLicenseResponse' {deletionDate} -> deletionDate) (\s@DeleteLicenseResponse' {} a -> s {deletionDate = a} :: DeleteLicenseResponse)

-- | The response's http status code.
deleteLicenseResponse_httpStatus :: Lens.Lens' DeleteLicenseResponse Prelude.Int
deleteLicenseResponse_httpStatus = Lens.lens (\DeleteLicenseResponse' {httpStatus} -> httpStatus) (\s@DeleteLicenseResponse' {} a -> s {httpStatus = a} :: DeleteLicenseResponse)

instance Prelude.NFData DeleteLicenseResponse
