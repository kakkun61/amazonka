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
-- Module      : Network.AWS.LicenseManager.GetLicense
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets detailed information about the specified license.
module Network.AWS.LicenseManager.GetLicense
  ( -- * Creating a Request
    GetLicense (..),
    newGetLicense,

    -- * Request Lenses
    getLicense_version,
    getLicense_licenseArn,

    -- * Destructuring the Response
    GetLicenseResponse (..),
    newGetLicenseResponse,

    -- * Response Lenses
    getLicenseResponse_license,
    getLicenseResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LicenseManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetLicense' smart constructor.
data GetLicense = GetLicense'
  { -- | License version.
    version :: Prelude.Maybe Prelude.Text,
    -- | Amazon Resource Name (ARN) of the license.
    licenseArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetLicense' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'version', 'getLicense_version' - License version.
--
-- 'licenseArn', 'getLicense_licenseArn' - Amazon Resource Name (ARN) of the license.
newGetLicense ::
  -- | 'licenseArn'
  Prelude.Text ->
  GetLicense
newGetLicense pLicenseArn_ =
  GetLicense'
    { version = Prelude.Nothing,
      licenseArn = pLicenseArn_
    }

-- | License version.
getLicense_version :: Lens.Lens' GetLicense (Prelude.Maybe Prelude.Text)
getLicense_version = Lens.lens (\GetLicense' {version} -> version) (\s@GetLicense' {} a -> s {version = a} :: GetLicense)

-- | Amazon Resource Name (ARN) of the license.
getLicense_licenseArn :: Lens.Lens' GetLicense Prelude.Text
getLicense_licenseArn = Lens.lens (\GetLicense' {licenseArn} -> licenseArn) (\s@GetLicense' {} a -> s {licenseArn = a} :: GetLicense)

instance Core.AWSRequest GetLicense where
  type AWSResponse GetLicense = GetLicenseResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetLicenseResponse'
            Prelude.<$> (x Core..?> "License")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetLicense

instance Prelude.NFData GetLicense

instance Core.ToHeaders GetLicense where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLicenseManager.GetLicense" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetLicense where
  toJSON GetLicense' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Version" Core..=) Prelude.<$> version,
            Prelude.Just ("LicenseArn" Core..= licenseArn)
          ]
      )

instance Core.ToPath GetLicense where
  toPath = Prelude.const "/"

instance Core.ToQuery GetLicense where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetLicenseResponse' smart constructor.
data GetLicenseResponse = GetLicenseResponse'
  { -- | License details.
    license :: Prelude.Maybe License,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetLicenseResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'license', 'getLicenseResponse_license' - License details.
--
-- 'httpStatus', 'getLicenseResponse_httpStatus' - The response's http status code.
newGetLicenseResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetLicenseResponse
newGetLicenseResponse pHttpStatus_ =
  GetLicenseResponse'
    { license = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | License details.
getLicenseResponse_license :: Lens.Lens' GetLicenseResponse (Prelude.Maybe License)
getLicenseResponse_license = Lens.lens (\GetLicenseResponse' {license} -> license) (\s@GetLicenseResponse' {} a -> s {license = a} :: GetLicenseResponse)

-- | The response's http status code.
getLicenseResponse_httpStatus :: Lens.Lens' GetLicenseResponse Prelude.Int
getLicenseResponse_httpStatus = Lens.lens (\GetLicenseResponse' {httpStatus} -> httpStatus) (\s@GetLicenseResponse' {} a -> s {httpStatus = a} :: GetLicenseResponse)

instance Prelude.NFData GetLicenseResponse
