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
-- Module      : Network.AWS.Chime.DeleteAppInstanceUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an @AppInstanceUser@.
module Network.AWS.Chime.DeleteAppInstanceUser
  ( -- * Creating a Request
    DeleteAppInstanceUser (..),
    newDeleteAppInstanceUser,

    -- * Request Lenses
    deleteAppInstanceUser_appInstanceUserArn,

    -- * Destructuring the Response
    DeleteAppInstanceUserResponse (..),
    newDeleteAppInstanceUserResponse,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteAppInstanceUser' smart constructor.
data DeleteAppInstanceUser = DeleteAppInstanceUser'
  { -- | The ARN of the user request being deleted.
    appInstanceUserArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAppInstanceUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceUserArn', 'deleteAppInstanceUser_appInstanceUserArn' - The ARN of the user request being deleted.
newDeleteAppInstanceUser ::
  -- | 'appInstanceUserArn'
  Prelude.Text ->
  DeleteAppInstanceUser
newDeleteAppInstanceUser pAppInstanceUserArn_ =
  DeleteAppInstanceUser'
    { appInstanceUserArn =
        pAppInstanceUserArn_
    }

-- | The ARN of the user request being deleted.
deleteAppInstanceUser_appInstanceUserArn :: Lens.Lens' DeleteAppInstanceUser Prelude.Text
deleteAppInstanceUser_appInstanceUserArn = Lens.lens (\DeleteAppInstanceUser' {appInstanceUserArn} -> appInstanceUserArn) (\s@DeleteAppInstanceUser' {} a -> s {appInstanceUserArn = a} :: DeleteAppInstanceUser)

instance Core.AWSRequest DeleteAppInstanceUser where
  type
    AWSResponse DeleteAppInstanceUser =
      DeleteAppInstanceUserResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeleteAppInstanceUserResponse'

instance Prelude.Hashable DeleteAppInstanceUser

instance Prelude.NFData DeleteAppInstanceUser

instance Core.ToHeaders DeleteAppInstanceUser where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteAppInstanceUser where
  toPath DeleteAppInstanceUser' {..} =
    Prelude.mconcat
      [ "/app-instance-users/",
        Core.toBS appInstanceUserArn
      ]

instance Core.ToQuery DeleteAppInstanceUser where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteAppInstanceUserResponse' smart constructor.
data DeleteAppInstanceUserResponse = DeleteAppInstanceUserResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAppInstanceUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteAppInstanceUserResponse ::
  DeleteAppInstanceUserResponse
newDeleteAppInstanceUserResponse =
  DeleteAppInstanceUserResponse'

instance Prelude.NFData DeleteAppInstanceUserResponse
