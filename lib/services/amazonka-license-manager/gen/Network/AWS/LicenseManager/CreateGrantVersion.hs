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
-- Module      : Network.AWS.LicenseManager.CreateGrantVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new version of the specified grant.
module Network.AWS.LicenseManager.CreateGrantVersion
  ( -- * Creating a Request
    CreateGrantVersion (..),
    newCreateGrantVersion,

    -- * Request Lenses
    createGrantVersion_status,
    createGrantVersion_allowedOperations,
    createGrantVersion_grantName,
    createGrantVersion_sourceVersion,
    createGrantVersion_statusReason,
    createGrantVersion_clientToken,
    createGrantVersion_grantArn,

    -- * Destructuring the Response
    CreateGrantVersionResponse (..),
    newCreateGrantVersionResponse,

    -- * Response Lenses
    createGrantVersionResponse_status,
    createGrantVersionResponse_version,
    createGrantVersionResponse_grantArn,
    createGrantVersionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LicenseManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateGrantVersion' smart constructor.
data CreateGrantVersion = CreateGrantVersion'
  { -- | Grant status.
    status :: Prelude.Maybe GrantStatus,
    -- | Allowed operations for the grant.
    allowedOperations :: Prelude.Maybe (Prelude.NonEmpty AllowedOperation),
    -- | Grant name.
    grantName :: Prelude.Maybe Prelude.Text,
    -- | Current version of the grant.
    sourceVersion :: Prelude.Maybe Prelude.Text,
    -- | Grant status reason.
    statusReason :: Prelude.Maybe Prelude.Text,
    -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientToken :: Prelude.Text,
    -- | Amazon Resource Name (ARN) of the grant.
    grantArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateGrantVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'createGrantVersion_status' - Grant status.
--
-- 'allowedOperations', 'createGrantVersion_allowedOperations' - Allowed operations for the grant.
--
-- 'grantName', 'createGrantVersion_grantName' - Grant name.
--
-- 'sourceVersion', 'createGrantVersion_sourceVersion' - Current version of the grant.
--
-- 'statusReason', 'createGrantVersion_statusReason' - Grant status reason.
--
-- 'clientToken', 'createGrantVersion_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
--
-- 'grantArn', 'createGrantVersion_grantArn' - Amazon Resource Name (ARN) of the grant.
newCreateGrantVersion ::
  -- | 'clientToken'
  Prelude.Text ->
  -- | 'grantArn'
  Prelude.Text ->
  CreateGrantVersion
newCreateGrantVersion pClientToken_ pGrantArn_ =
  CreateGrantVersion'
    { status = Prelude.Nothing,
      allowedOperations = Prelude.Nothing,
      grantName = Prelude.Nothing,
      sourceVersion = Prelude.Nothing,
      statusReason = Prelude.Nothing,
      clientToken = pClientToken_,
      grantArn = pGrantArn_
    }

-- | Grant status.
createGrantVersion_status :: Lens.Lens' CreateGrantVersion (Prelude.Maybe GrantStatus)
createGrantVersion_status = Lens.lens (\CreateGrantVersion' {status} -> status) (\s@CreateGrantVersion' {} a -> s {status = a} :: CreateGrantVersion)

-- | Allowed operations for the grant.
createGrantVersion_allowedOperations :: Lens.Lens' CreateGrantVersion (Prelude.Maybe (Prelude.NonEmpty AllowedOperation))
createGrantVersion_allowedOperations = Lens.lens (\CreateGrantVersion' {allowedOperations} -> allowedOperations) (\s@CreateGrantVersion' {} a -> s {allowedOperations = a} :: CreateGrantVersion) Prelude.. Lens.mapping Lens.coerced

-- | Grant name.
createGrantVersion_grantName :: Lens.Lens' CreateGrantVersion (Prelude.Maybe Prelude.Text)
createGrantVersion_grantName = Lens.lens (\CreateGrantVersion' {grantName} -> grantName) (\s@CreateGrantVersion' {} a -> s {grantName = a} :: CreateGrantVersion)

-- | Current version of the grant.
createGrantVersion_sourceVersion :: Lens.Lens' CreateGrantVersion (Prelude.Maybe Prelude.Text)
createGrantVersion_sourceVersion = Lens.lens (\CreateGrantVersion' {sourceVersion} -> sourceVersion) (\s@CreateGrantVersion' {} a -> s {sourceVersion = a} :: CreateGrantVersion)

-- | Grant status reason.
createGrantVersion_statusReason :: Lens.Lens' CreateGrantVersion (Prelude.Maybe Prelude.Text)
createGrantVersion_statusReason = Lens.lens (\CreateGrantVersion' {statusReason} -> statusReason) (\s@CreateGrantVersion' {} a -> s {statusReason = a} :: CreateGrantVersion)

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
createGrantVersion_clientToken :: Lens.Lens' CreateGrantVersion Prelude.Text
createGrantVersion_clientToken = Lens.lens (\CreateGrantVersion' {clientToken} -> clientToken) (\s@CreateGrantVersion' {} a -> s {clientToken = a} :: CreateGrantVersion)

-- | Amazon Resource Name (ARN) of the grant.
createGrantVersion_grantArn :: Lens.Lens' CreateGrantVersion Prelude.Text
createGrantVersion_grantArn = Lens.lens (\CreateGrantVersion' {grantArn} -> grantArn) (\s@CreateGrantVersion' {} a -> s {grantArn = a} :: CreateGrantVersion)

instance Core.AWSRequest CreateGrantVersion where
  type
    AWSResponse CreateGrantVersion =
      CreateGrantVersionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateGrantVersionResponse'
            Prelude.<$> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "Version")
            Prelude.<*> (x Core..?> "GrantArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateGrantVersion

instance Prelude.NFData CreateGrantVersion

instance Core.ToHeaders CreateGrantVersion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLicenseManager.CreateGrantVersion" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateGrantVersion where
  toJSON CreateGrantVersion' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Status" Core..=) Prelude.<$> status,
            ("AllowedOperations" Core..=)
              Prelude.<$> allowedOperations,
            ("GrantName" Core..=) Prelude.<$> grantName,
            ("SourceVersion" Core..=) Prelude.<$> sourceVersion,
            ("StatusReason" Core..=) Prelude.<$> statusReason,
            Prelude.Just ("ClientToken" Core..= clientToken),
            Prelude.Just ("GrantArn" Core..= grantArn)
          ]
      )

instance Core.ToPath CreateGrantVersion where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateGrantVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateGrantVersionResponse' smart constructor.
data CreateGrantVersionResponse = CreateGrantVersionResponse'
  { -- | Grant status.
    status :: Prelude.Maybe GrantStatus,
    -- | New version of the grant.
    version :: Prelude.Maybe Prelude.Text,
    -- | Grant ARN.
    grantArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateGrantVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'createGrantVersionResponse_status' - Grant status.
--
-- 'version', 'createGrantVersionResponse_version' - New version of the grant.
--
-- 'grantArn', 'createGrantVersionResponse_grantArn' - Grant ARN.
--
-- 'httpStatus', 'createGrantVersionResponse_httpStatus' - The response's http status code.
newCreateGrantVersionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateGrantVersionResponse
newCreateGrantVersionResponse pHttpStatus_ =
  CreateGrantVersionResponse'
    { status =
        Prelude.Nothing,
      version = Prelude.Nothing,
      grantArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Grant status.
createGrantVersionResponse_status :: Lens.Lens' CreateGrantVersionResponse (Prelude.Maybe GrantStatus)
createGrantVersionResponse_status = Lens.lens (\CreateGrantVersionResponse' {status} -> status) (\s@CreateGrantVersionResponse' {} a -> s {status = a} :: CreateGrantVersionResponse)

-- | New version of the grant.
createGrantVersionResponse_version :: Lens.Lens' CreateGrantVersionResponse (Prelude.Maybe Prelude.Text)
createGrantVersionResponse_version = Lens.lens (\CreateGrantVersionResponse' {version} -> version) (\s@CreateGrantVersionResponse' {} a -> s {version = a} :: CreateGrantVersionResponse)

-- | Grant ARN.
createGrantVersionResponse_grantArn :: Lens.Lens' CreateGrantVersionResponse (Prelude.Maybe Prelude.Text)
createGrantVersionResponse_grantArn = Lens.lens (\CreateGrantVersionResponse' {grantArn} -> grantArn) (\s@CreateGrantVersionResponse' {} a -> s {grantArn = a} :: CreateGrantVersionResponse)

-- | The response's http status code.
createGrantVersionResponse_httpStatus :: Lens.Lens' CreateGrantVersionResponse Prelude.Int
createGrantVersionResponse_httpStatus = Lens.lens (\CreateGrantVersionResponse' {httpStatus} -> httpStatus) (\s@CreateGrantVersionResponse' {} a -> s {httpStatus = a} :: CreateGrantVersionResponse)

instance Prelude.NFData CreateGrantVersionResponse
