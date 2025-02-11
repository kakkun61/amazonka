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
-- Module      : Network.AWS.ChimeSDKIdentity.DeleteAppInstanceAdmin
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Demotes an @AppInstanceAdmin@ to an @AppInstanceUser@. This action does
-- not delete the user.
module Network.AWS.ChimeSDKIdentity.DeleteAppInstanceAdmin
  ( -- * Creating a Request
    DeleteAppInstanceAdmin (..),
    newDeleteAppInstanceAdmin,

    -- * Request Lenses
    deleteAppInstanceAdmin_appInstanceAdminArn,
    deleteAppInstanceAdmin_appInstanceArn,

    -- * Destructuring the Response
    DeleteAppInstanceAdminResponse (..),
    newDeleteAppInstanceAdminResponse,
  )
where

import Network.AWS.ChimeSDKIdentity.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteAppInstanceAdmin' smart constructor.
data DeleteAppInstanceAdmin = DeleteAppInstanceAdmin'
  { -- | The ARN of the @AppInstance@\'s administrator.
    appInstanceAdminArn :: Prelude.Text,
    -- | The ARN of the @AppInstance@.
    appInstanceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAppInstanceAdmin' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceAdminArn', 'deleteAppInstanceAdmin_appInstanceAdminArn' - The ARN of the @AppInstance@\'s administrator.
--
-- 'appInstanceArn', 'deleteAppInstanceAdmin_appInstanceArn' - The ARN of the @AppInstance@.
newDeleteAppInstanceAdmin ::
  -- | 'appInstanceAdminArn'
  Prelude.Text ->
  -- | 'appInstanceArn'
  Prelude.Text ->
  DeleteAppInstanceAdmin
newDeleteAppInstanceAdmin
  pAppInstanceAdminArn_
  pAppInstanceArn_ =
    DeleteAppInstanceAdmin'
      { appInstanceAdminArn =
          pAppInstanceAdminArn_,
        appInstanceArn = pAppInstanceArn_
      }

-- | The ARN of the @AppInstance@\'s administrator.
deleteAppInstanceAdmin_appInstanceAdminArn :: Lens.Lens' DeleteAppInstanceAdmin Prelude.Text
deleteAppInstanceAdmin_appInstanceAdminArn = Lens.lens (\DeleteAppInstanceAdmin' {appInstanceAdminArn} -> appInstanceAdminArn) (\s@DeleteAppInstanceAdmin' {} a -> s {appInstanceAdminArn = a} :: DeleteAppInstanceAdmin)

-- | The ARN of the @AppInstance@.
deleteAppInstanceAdmin_appInstanceArn :: Lens.Lens' DeleteAppInstanceAdmin Prelude.Text
deleteAppInstanceAdmin_appInstanceArn = Lens.lens (\DeleteAppInstanceAdmin' {appInstanceArn} -> appInstanceArn) (\s@DeleteAppInstanceAdmin' {} a -> s {appInstanceArn = a} :: DeleteAppInstanceAdmin)

instance Core.AWSRequest DeleteAppInstanceAdmin where
  type
    AWSResponse DeleteAppInstanceAdmin =
      DeleteAppInstanceAdminResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull
      DeleteAppInstanceAdminResponse'

instance Prelude.Hashable DeleteAppInstanceAdmin

instance Prelude.NFData DeleteAppInstanceAdmin

instance Core.ToHeaders DeleteAppInstanceAdmin where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteAppInstanceAdmin where
  toPath DeleteAppInstanceAdmin' {..} =
    Prelude.mconcat
      [ "/app-instances/",
        Core.toBS appInstanceArn,
        "/admins/",
        Core.toBS appInstanceAdminArn
      ]

instance Core.ToQuery DeleteAppInstanceAdmin where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteAppInstanceAdminResponse' smart constructor.
data DeleteAppInstanceAdminResponse = DeleteAppInstanceAdminResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAppInstanceAdminResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteAppInstanceAdminResponse ::
  DeleteAppInstanceAdminResponse
newDeleteAppInstanceAdminResponse =
  DeleteAppInstanceAdminResponse'

instance
  Prelude.NFData
    DeleteAppInstanceAdminResponse
