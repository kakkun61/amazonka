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
-- Module      : Network.AWS.LicenseManager.GetGrant
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets detailed information about the specified grant.
module Network.AWS.LicenseManager.GetGrant
  ( -- * Creating a Request
    GetGrant (..),
    newGetGrant,

    -- * Request Lenses
    getGrant_version,
    getGrant_grantArn,

    -- * Destructuring the Response
    GetGrantResponse (..),
    newGetGrantResponse,

    -- * Response Lenses
    getGrantResponse_grant,
    getGrantResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LicenseManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetGrant' smart constructor.
data GetGrant = GetGrant'
  { -- | Grant version.
    version :: Prelude.Maybe Prelude.Text,
    -- | Amazon Resource Name (ARN) of the grant.
    grantArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetGrant' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'version', 'getGrant_version' - Grant version.
--
-- 'grantArn', 'getGrant_grantArn' - Amazon Resource Name (ARN) of the grant.
newGetGrant ::
  -- | 'grantArn'
  Prelude.Text ->
  GetGrant
newGetGrant pGrantArn_ =
  GetGrant'
    { version = Prelude.Nothing,
      grantArn = pGrantArn_
    }

-- | Grant version.
getGrant_version :: Lens.Lens' GetGrant (Prelude.Maybe Prelude.Text)
getGrant_version = Lens.lens (\GetGrant' {version} -> version) (\s@GetGrant' {} a -> s {version = a} :: GetGrant)

-- | Amazon Resource Name (ARN) of the grant.
getGrant_grantArn :: Lens.Lens' GetGrant Prelude.Text
getGrant_grantArn = Lens.lens (\GetGrant' {grantArn} -> grantArn) (\s@GetGrant' {} a -> s {grantArn = a} :: GetGrant)

instance Core.AWSRequest GetGrant where
  type AWSResponse GetGrant = GetGrantResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetGrantResponse'
            Prelude.<$> (x Core..?> "Grant")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetGrant

instance Prelude.NFData GetGrant

instance Core.ToHeaders GetGrant where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSLicenseManager.GetGrant" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetGrant where
  toJSON GetGrant' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Version" Core..=) Prelude.<$> version,
            Prelude.Just ("GrantArn" Core..= grantArn)
          ]
      )

instance Core.ToPath GetGrant where
  toPath = Prelude.const "/"

instance Core.ToQuery GetGrant where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetGrantResponse' smart constructor.
data GetGrantResponse = GetGrantResponse'
  { -- | Grant details.
    grant :: Prelude.Maybe Grant,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetGrantResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'grant', 'getGrantResponse_grant' - Grant details.
--
-- 'httpStatus', 'getGrantResponse_httpStatus' - The response's http status code.
newGetGrantResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetGrantResponse
newGetGrantResponse pHttpStatus_ =
  GetGrantResponse'
    { grant = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Grant details.
getGrantResponse_grant :: Lens.Lens' GetGrantResponse (Prelude.Maybe Grant)
getGrantResponse_grant = Lens.lens (\GetGrantResponse' {grant} -> grant) (\s@GetGrantResponse' {} a -> s {grant = a} :: GetGrantResponse)

-- | The response's http status code.
getGrantResponse_httpStatus :: Lens.Lens' GetGrantResponse Prelude.Int
getGrantResponse_httpStatus = Lens.lens (\GetGrantResponse' {httpStatus} -> httpStatus) (\s@GetGrantResponse' {} a -> s {httpStatus = a} :: GetGrantResponse)

instance Prelude.NFData GetGrantResponse
