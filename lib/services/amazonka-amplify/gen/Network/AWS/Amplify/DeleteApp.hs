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
-- Module      : Network.AWS.Amplify.DeleteApp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing Amplify app specified by an app ID.
module Network.AWS.Amplify.DeleteApp
  ( -- * Creating a Request
    DeleteApp (..),
    newDeleteApp,

    -- * Request Lenses
    deleteApp_appId,

    -- * Destructuring the Response
    DeleteAppResponse (..),
    newDeleteAppResponse,

    -- * Response Lenses
    deleteAppResponse_httpStatus,
    deleteAppResponse_app,
  )
where

import Network.AWS.Amplify.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Describes the request structure for the delete app request.
--
-- /See:/ 'newDeleteApp' smart constructor.
data DeleteApp = DeleteApp'
  { -- | The unique ID for an Amplify app.
    appId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteApp' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appId', 'deleteApp_appId' - The unique ID for an Amplify app.
newDeleteApp ::
  -- | 'appId'
  Prelude.Text ->
  DeleteApp
newDeleteApp pAppId_ = DeleteApp' {appId = pAppId_}

-- | The unique ID for an Amplify app.
deleteApp_appId :: Lens.Lens' DeleteApp Prelude.Text
deleteApp_appId = Lens.lens (\DeleteApp' {appId} -> appId) (\s@DeleteApp' {} a -> s {appId = a} :: DeleteApp)

instance Core.AWSRequest DeleteApp where
  type AWSResponse DeleteApp = DeleteAppResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteAppResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "app")
      )

instance Prelude.Hashable DeleteApp

instance Prelude.NFData DeleteApp

instance Core.ToHeaders DeleteApp where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteApp where
  toPath DeleteApp' {..} =
    Prelude.mconcat ["/apps/", Core.toBS appId]

instance Core.ToQuery DeleteApp where
  toQuery = Prelude.const Prelude.mempty

-- | The result structure for the delete app request.
--
-- /See:/ 'newDeleteAppResponse' smart constructor.
data DeleteAppResponse = DeleteAppResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    app :: App
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAppResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteAppResponse_httpStatus' - The response's http status code.
--
-- 'app', 'deleteAppResponse_app' - Undocumented member.
newDeleteAppResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'app'
  App ->
  DeleteAppResponse
newDeleteAppResponse pHttpStatus_ pApp_ =
  DeleteAppResponse'
    { httpStatus = pHttpStatus_,
      app = pApp_
    }

-- | The response's http status code.
deleteAppResponse_httpStatus :: Lens.Lens' DeleteAppResponse Prelude.Int
deleteAppResponse_httpStatus = Lens.lens (\DeleteAppResponse' {httpStatus} -> httpStatus) (\s@DeleteAppResponse' {} a -> s {httpStatus = a} :: DeleteAppResponse)

-- | Undocumented member.
deleteAppResponse_app :: Lens.Lens' DeleteAppResponse App
deleteAppResponse_app = Lens.lens (\DeleteAppResponse' {app} -> app) (\s@DeleteAppResponse' {} a -> s {app = a} :: DeleteAppResponse)

instance Prelude.NFData DeleteAppResponse
