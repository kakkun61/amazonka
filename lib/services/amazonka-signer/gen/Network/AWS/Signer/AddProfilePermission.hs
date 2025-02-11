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
-- Module      : Network.AWS.Signer.AddProfilePermission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds cross-account permissions to a signing profile.
module Network.AWS.Signer.AddProfilePermission
  ( -- * Creating a Request
    AddProfilePermission (..),
    newAddProfilePermission,

    -- * Request Lenses
    addProfilePermission_profileVersion,
    addProfilePermission_revisionId,
    addProfilePermission_action,
    addProfilePermission_principal,
    addProfilePermission_statementId,
    addProfilePermission_profileName,

    -- * Destructuring the Response
    AddProfilePermissionResponse (..),
    newAddProfilePermissionResponse,

    -- * Response Lenses
    addProfilePermissionResponse_revisionId,
    addProfilePermissionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Signer.Types

-- | /See:/ 'newAddProfilePermission' smart constructor.
data AddProfilePermission = AddProfilePermission'
  { -- | The version of the signing profile.
    profileVersion :: Prelude.Maybe Prelude.Text,
    -- | A unique identifier for the current profile revision.
    revisionId :: Prelude.Maybe Prelude.Text,
    -- | The AWS Signer action permitted as part of cross-account permissions.
    action :: Prelude.Text,
    -- | The AWS principal receiving cross-account permissions. This may be an
    -- IAM role or another AWS account ID.
    principal :: Prelude.Text,
    -- | A unique identifier for the cross-account permission statement.
    statementId :: Prelude.Text,
    -- | The human-readable name of the signing profile.
    profileName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AddProfilePermission' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'profileVersion', 'addProfilePermission_profileVersion' - The version of the signing profile.
--
-- 'revisionId', 'addProfilePermission_revisionId' - A unique identifier for the current profile revision.
--
-- 'action', 'addProfilePermission_action' - The AWS Signer action permitted as part of cross-account permissions.
--
-- 'principal', 'addProfilePermission_principal' - The AWS principal receiving cross-account permissions. This may be an
-- IAM role or another AWS account ID.
--
-- 'statementId', 'addProfilePermission_statementId' - A unique identifier for the cross-account permission statement.
--
-- 'profileName', 'addProfilePermission_profileName' - The human-readable name of the signing profile.
newAddProfilePermission ::
  -- | 'action'
  Prelude.Text ->
  -- | 'principal'
  Prelude.Text ->
  -- | 'statementId'
  Prelude.Text ->
  -- | 'profileName'
  Prelude.Text ->
  AddProfilePermission
newAddProfilePermission
  pAction_
  pPrincipal_
  pStatementId_
  pProfileName_ =
    AddProfilePermission'
      { profileVersion =
          Prelude.Nothing,
        revisionId = Prelude.Nothing,
        action = pAction_,
        principal = pPrincipal_,
        statementId = pStatementId_,
        profileName = pProfileName_
      }

-- | The version of the signing profile.
addProfilePermission_profileVersion :: Lens.Lens' AddProfilePermission (Prelude.Maybe Prelude.Text)
addProfilePermission_profileVersion = Lens.lens (\AddProfilePermission' {profileVersion} -> profileVersion) (\s@AddProfilePermission' {} a -> s {profileVersion = a} :: AddProfilePermission)

-- | A unique identifier for the current profile revision.
addProfilePermission_revisionId :: Lens.Lens' AddProfilePermission (Prelude.Maybe Prelude.Text)
addProfilePermission_revisionId = Lens.lens (\AddProfilePermission' {revisionId} -> revisionId) (\s@AddProfilePermission' {} a -> s {revisionId = a} :: AddProfilePermission)

-- | The AWS Signer action permitted as part of cross-account permissions.
addProfilePermission_action :: Lens.Lens' AddProfilePermission Prelude.Text
addProfilePermission_action = Lens.lens (\AddProfilePermission' {action} -> action) (\s@AddProfilePermission' {} a -> s {action = a} :: AddProfilePermission)

-- | The AWS principal receiving cross-account permissions. This may be an
-- IAM role or another AWS account ID.
addProfilePermission_principal :: Lens.Lens' AddProfilePermission Prelude.Text
addProfilePermission_principal = Lens.lens (\AddProfilePermission' {principal} -> principal) (\s@AddProfilePermission' {} a -> s {principal = a} :: AddProfilePermission)

-- | A unique identifier for the cross-account permission statement.
addProfilePermission_statementId :: Lens.Lens' AddProfilePermission Prelude.Text
addProfilePermission_statementId = Lens.lens (\AddProfilePermission' {statementId} -> statementId) (\s@AddProfilePermission' {} a -> s {statementId = a} :: AddProfilePermission)

-- | The human-readable name of the signing profile.
addProfilePermission_profileName :: Lens.Lens' AddProfilePermission Prelude.Text
addProfilePermission_profileName = Lens.lens (\AddProfilePermission' {profileName} -> profileName) (\s@AddProfilePermission' {} a -> s {profileName = a} :: AddProfilePermission)

instance Core.AWSRequest AddProfilePermission where
  type
    AWSResponse AddProfilePermission =
      AddProfilePermissionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          AddProfilePermissionResponse'
            Prelude.<$> (x Core..?> "revisionId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AddProfilePermission

instance Prelude.NFData AddProfilePermission

instance Core.ToHeaders AddProfilePermission where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON AddProfilePermission where
  toJSON AddProfilePermission' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("profileVersion" Core..=)
              Prelude.<$> profileVersion,
            ("revisionId" Core..=) Prelude.<$> revisionId,
            Prelude.Just ("action" Core..= action),
            Prelude.Just ("principal" Core..= principal),
            Prelude.Just ("statementId" Core..= statementId)
          ]
      )

instance Core.ToPath AddProfilePermission where
  toPath AddProfilePermission' {..} =
    Prelude.mconcat
      [ "/signing-profiles/",
        Core.toBS profileName,
        "/permissions"
      ]

instance Core.ToQuery AddProfilePermission where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAddProfilePermissionResponse' smart constructor.
data AddProfilePermissionResponse = AddProfilePermissionResponse'
  { -- | A unique identifier for the current profile revision.
    revisionId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AddProfilePermissionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'revisionId', 'addProfilePermissionResponse_revisionId' - A unique identifier for the current profile revision.
--
-- 'httpStatus', 'addProfilePermissionResponse_httpStatus' - The response's http status code.
newAddProfilePermissionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AddProfilePermissionResponse
newAddProfilePermissionResponse pHttpStatus_ =
  AddProfilePermissionResponse'
    { revisionId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A unique identifier for the current profile revision.
addProfilePermissionResponse_revisionId :: Lens.Lens' AddProfilePermissionResponse (Prelude.Maybe Prelude.Text)
addProfilePermissionResponse_revisionId = Lens.lens (\AddProfilePermissionResponse' {revisionId} -> revisionId) (\s@AddProfilePermissionResponse' {} a -> s {revisionId = a} :: AddProfilePermissionResponse)

-- | The response's http status code.
addProfilePermissionResponse_httpStatus :: Lens.Lens' AddProfilePermissionResponse Prelude.Int
addProfilePermissionResponse_httpStatus = Lens.lens (\AddProfilePermissionResponse' {httpStatus} -> httpStatus) (\s@AddProfilePermissionResponse' {} a -> s {httpStatus = a} :: AddProfilePermissionResponse)

instance Prelude.NFData AddProfilePermissionResponse
