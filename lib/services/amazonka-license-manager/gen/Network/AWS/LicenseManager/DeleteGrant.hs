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
-- Module      : Network.AWS.LicenseManager.DeleteGrant
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified grant.
module Network.AWS.LicenseManager.DeleteGrant
  ( -- * Creating a Request
    DeleteGrant (..),
    newDeleteGrant,

    -- * Request Lenses
    deleteGrant_statusReason,
    deleteGrant_grantArn,
    deleteGrant_version,

    -- * Destructuring the Response
    DeleteGrantResponse (..),
    newDeleteGrantResponse,

    -- * Response Lenses
    deleteGrantResponse_status,
    deleteGrantResponse_version,
    deleteGrantResponse_grantArn,
    deleteGrantResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LicenseManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteGrant' smart constructor.
data DeleteGrant = DeleteGrant'
  { -- | The Status reason for the delete request.
    statusReason :: Prelude.Maybe Prelude.Text,
    -- | Amazon Resource Name (ARN) of the grant.
    grantArn :: Prelude.Text,
    -- | Current version of the grant.
    version :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteGrant' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'statusReason', 'deleteGrant_statusReason' - The Status reason for the delete request.
--
-- 'grantArn', 'deleteGrant_grantArn' - Amazon Resource Name (ARN) of the grant.
--
-- 'version', 'deleteGrant_version' - Current version of the grant.
newDeleteGrant ::
  -- | 'grantArn'
  Prelude.Text ->
  -- | 'version'
  Prelude.Text ->
  DeleteGrant
newDeleteGrant pGrantArn_ pVersion_ =
  DeleteGrant'
    { statusReason = Prelude.Nothing,
      grantArn = pGrantArn_,
      version = pVersion_
    }

-- | The Status reason for the delete request.
deleteGrant_statusReason :: Lens.Lens' DeleteGrant (Prelude.Maybe Prelude.Text)
deleteGrant_statusReason = Lens.lens (\DeleteGrant' {statusReason} -> statusReason) (\s@DeleteGrant' {} a -> s {statusReason = a} :: DeleteGrant)

-- | Amazon Resource Name (ARN) of the grant.
deleteGrant_grantArn :: Lens.Lens' DeleteGrant Prelude.Text
deleteGrant_grantArn = Lens.lens (\DeleteGrant' {grantArn} -> grantArn) (\s@DeleteGrant' {} a -> s {grantArn = a} :: DeleteGrant)

-- | Current version of the grant.
deleteGrant_version :: Lens.Lens' DeleteGrant Prelude.Text
deleteGrant_version = Lens.lens (\DeleteGrant' {version} -> version) (\s@DeleteGrant' {} a -> s {version = a} :: DeleteGrant)

instance Core.AWSRequest DeleteGrant where
  type AWSResponse DeleteGrant = DeleteGrantResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteGrantResponse'
            Prelude.<$> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "Version")
            Prelude.<*> (x Core..?> "GrantArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteGrant

instance Prelude.NFData DeleteGrant

instance Core.ToHeaders DeleteGrant where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLicenseManager.DeleteGrant" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteGrant where
  toJSON DeleteGrant' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("StatusReason" Core..=) Prelude.<$> statusReason,
            Prelude.Just ("GrantArn" Core..= grantArn),
            Prelude.Just ("Version" Core..= version)
          ]
      )

instance Core.ToPath DeleteGrant where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteGrant where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteGrantResponse' smart constructor.
data DeleteGrantResponse = DeleteGrantResponse'
  { -- | Grant status.
    status :: Prelude.Maybe GrantStatus,
    -- | Grant version.
    version :: Prelude.Maybe Prelude.Text,
    -- | Grant ARN.
    grantArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteGrantResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'deleteGrantResponse_status' - Grant status.
--
-- 'version', 'deleteGrantResponse_version' - Grant version.
--
-- 'grantArn', 'deleteGrantResponse_grantArn' - Grant ARN.
--
-- 'httpStatus', 'deleteGrantResponse_httpStatus' - The response's http status code.
newDeleteGrantResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteGrantResponse
newDeleteGrantResponse pHttpStatus_ =
  DeleteGrantResponse'
    { status = Prelude.Nothing,
      version = Prelude.Nothing,
      grantArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Grant status.
deleteGrantResponse_status :: Lens.Lens' DeleteGrantResponse (Prelude.Maybe GrantStatus)
deleteGrantResponse_status = Lens.lens (\DeleteGrantResponse' {status} -> status) (\s@DeleteGrantResponse' {} a -> s {status = a} :: DeleteGrantResponse)

-- | Grant version.
deleteGrantResponse_version :: Lens.Lens' DeleteGrantResponse (Prelude.Maybe Prelude.Text)
deleteGrantResponse_version = Lens.lens (\DeleteGrantResponse' {version} -> version) (\s@DeleteGrantResponse' {} a -> s {version = a} :: DeleteGrantResponse)

-- | Grant ARN.
deleteGrantResponse_grantArn :: Lens.Lens' DeleteGrantResponse (Prelude.Maybe Prelude.Text)
deleteGrantResponse_grantArn = Lens.lens (\DeleteGrantResponse' {grantArn} -> grantArn) (\s@DeleteGrantResponse' {} a -> s {grantArn = a} :: DeleteGrantResponse)

-- | The response's http status code.
deleteGrantResponse_httpStatus :: Lens.Lens' DeleteGrantResponse Prelude.Int
deleteGrantResponse_httpStatus = Lens.lens (\DeleteGrantResponse' {httpStatus} -> httpStatus) (\s@DeleteGrantResponse' {} a -> s {httpStatus = a} :: DeleteGrantResponse)

instance Prelude.NFData DeleteGrantResponse
