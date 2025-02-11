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
-- Module      : Network.AWS.SSOAdmin.UpdatePermissionSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing permission set.
module Network.AWS.SSOAdmin.UpdatePermissionSet
  ( -- * Creating a Request
    UpdatePermissionSet (..),
    newUpdatePermissionSet,

    -- * Request Lenses
    updatePermissionSet_relayState,
    updatePermissionSet_sessionDuration,
    updatePermissionSet_description,
    updatePermissionSet_instanceArn,
    updatePermissionSet_permissionSetArn,

    -- * Destructuring the Response
    UpdatePermissionSetResponse (..),
    newUpdatePermissionSetResponse,

    -- * Response Lenses
    updatePermissionSetResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSOAdmin.Types

-- | /See:/ 'newUpdatePermissionSet' smart constructor.
data UpdatePermissionSet = UpdatePermissionSet'
  { -- | Used to redirect users within the application during the federation
    -- authentication process.
    relayState :: Prelude.Maybe Prelude.Text,
    -- | The length of time that the application user sessions are valid for in
    -- the ISO-8601 standard.
    sessionDuration :: Prelude.Maybe Prelude.Text,
    -- | The description of the PermissionSet.
    description :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the SSO instance under which the operation will be executed.
    -- For more information about ARNs, see
    -- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
    -- in the /Amazon Web Services General Reference/.
    instanceArn :: Prelude.Text,
    -- | The ARN of the permission set.
    permissionSetArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePermissionSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'relayState', 'updatePermissionSet_relayState' - Used to redirect users within the application during the federation
-- authentication process.
--
-- 'sessionDuration', 'updatePermissionSet_sessionDuration' - The length of time that the application user sessions are valid for in
-- the ISO-8601 standard.
--
-- 'description', 'updatePermissionSet_description' - The description of the PermissionSet.
--
-- 'instanceArn', 'updatePermissionSet_instanceArn' - The ARN of the SSO instance under which the operation will be executed.
-- For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
--
-- 'permissionSetArn', 'updatePermissionSet_permissionSetArn' - The ARN of the permission set.
newUpdatePermissionSet ::
  -- | 'instanceArn'
  Prelude.Text ->
  -- | 'permissionSetArn'
  Prelude.Text ->
  UpdatePermissionSet
newUpdatePermissionSet
  pInstanceArn_
  pPermissionSetArn_ =
    UpdatePermissionSet'
      { relayState = Prelude.Nothing,
        sessionDuration = Prelude.Nothing,
        description = Prelude.Nothing,
        instanceArn = pInstanceArn_,
        permissionSetArn = pPermissionSetArn_
      }

-- | Used to redirect users within the application during the federation
-- authentication process.
updatePermissionSet_relayState :: Lens.Lens' UpdatePermissionSet (Prelude.Maybe Prelude.Text)
updatePermissionSet_relayState = Lens.lens (\UpdatePermissionSet' {relayState} -> relayState) (\s@UpdatePermissionSet' {} a -> s {relayState = a} :: UpdatePermissionSet)

-- | The length of time that the application user sessions are valid for in
-- the ISO-8601 standard.
updatePermissionSet_sessionDuration :: Lens.Lens' UpdatePermissionSet (Prelude.Maybe Prelude.Text)
updatePermissionSet_sessionDuration = Lens.lens (\UpdatePermissionSet' {sessionDuration} -> sessionDuration) (\s@UpdatePermissionSet' {} a -> s {sessionDuration = a} :: UpdatePermissionSet)

-- | The description of the PermissionSet.
updatePermissionSet_description :: Lens.Lens' UpdatePermissionSet (Prelude.Maybe Prelude.Text)
updatePermissionSet_description = Lens.lens (\UpdatePermissionSet' {description} -> description) (\s@UpdatePermissionSet' {} a -> s {description = a} :: UpdatePermissionSet)

-- | The ARN of the SSO instance under which the operation will be executed.
-- For more information about ARNs, see
-- </general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces>
-- in the /Amazon Web Services General Reference/.
updatePermissionSet_instanceArn :: Lens.Lens' UpdatePermissionSet Prelude.Text
updatePermissionSet_instanceArn = Lens.lens (\UpdatePermissionSet' {instanceArn} -> instanceArn) (\s@UpdatePermissionSet' {} a -> s {instanceArn = a} :: UpdatePermissionSet)

-- | The ARN of the permission set.
updatePermissionSet_permissionSetArn :: Lens.Lens' UpdatePermissionSet Prelude.Text
updatePermissionSet_permissionSetArn = Lens.lens (\UpdatePermissionSet' {permissionSetArn} -> permissionSetArn) (\s@UpdatePermissionSet' {} a -> s {permissionSetArn = a} :: UpdatePermissionSet)

instance Core.AWSRequest UpdatePermissionSet where
  type
    AWSResponse UpdatePermissionSet =
      UpdatePermissionSetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdatePermissionSetResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdatePermissionSet

instance Prelude.NFData UpdatePermissionSet

instance Core.ToHeaders UpdatePermissionSet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SWBExternalService.UpdatePermissionSet" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdatePermissionSet where
  toJSON UpdatePermissionSet' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RelayState" Core..=) Prelude.<$> relayState,
            ("SessionDuration" Core..=)
              Prelude.<$> sessionDuration,
            ("Description" Core..=) Prelude.<$> description,
            Prelude.Just ("InstanceArn" Core..= instanceArn),
            Prelude.Just
              ("PermissionSetArn" Core..= permissionSetArn)
          ]
      )

instance Core.ToPath UpdatePermissionSet where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdatePermissionSet where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdatePermissionSetResponse' smart constructor.
data UpdatePermissionSetResponse = UpdatePermissionSetResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePermissionSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updatePermissionSetResponse_httpStatus' - The response's http status code.
newUpdatePermissionSetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdatePermissionSetResponse
newUpdatePermissionSetResponse pHttpStatus_ =
  UpdatePermissionSetResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updatePermissionSetResponse_httpStatus :: Lens.Lens' UpdatePermissionSetResponse Prelude.Int
updatePermissionSetResponse_httpStatus = Lens.lens (\UpdatePermissionSetResponse' {httpStatus} -> httpStatus) (\s@UpdatePermissionSetResponse' {} a -> s {httpStatus = a} :: UpdatePermissionSetResponse)

instance Prelude.NFData UpdatePermissionSetResponse
