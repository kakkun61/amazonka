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
-- Module      : Network.AWS.AmplifyBackend.DeleteToken
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the challenge token based on the given appId and sessionId.
module Network.AWS.AmplifyBackend.DeleteToken
  ( -- * Creating a Request
    DeleteToken (..),
    newDeleteToken,

    -- * Request Lenses
    deleteToken_sessionId,
    deleteToken_appId,

    -- * Destructuring the Response
    DeleteTokenResponse (..),
    newDeleteTokenResponse,

    -- * Response Lenses
    deleteTokenResponse_isSuccess,
    deleteTokenResponse_httpStatus,
  )
where

import Network.AWS.AmplifyBackend.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteToken' smart constructor.
data DeleteToken = DeleteToken'
  { -- | The session ID.
    sessionId :: Prelude.Text,
    -- | The app ID.
    appId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteToken' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sessionId', 'deleteToken_sessionId' - The session ID.
--
-- 'appId', 'deleteToken_appId' - The app ID.
newDeleteToken ::
  -- | 'sessionId'
  Prelude.Text ->
  -- | 'appId'
  Prelude.Text ->
  DeleteToken
newDeleteToken pSessionId_ pAppId_ =
  DeleteToken'
    { sessionId = pSessionId_,
      appId = pAppId_
    }

-- | The session ID.
deleteToken_sessionId :: Lens.Lens' DeleteToken Prelude.Text
deleteToken_sessionId = Lens.lens (\DeleteToken' {sessionId} -> sessionId) (\s@DeleteToken' {} a -> s {sessionId = a} :: DeleteToken)

-- | The app ID.
deleteToken_appId :: Lens.Lens' DeleteToken Prelude.Text
deleteToken_appId = Lens.lens (\DeleteToken' {appId} -> appId) (\s@DeleteToken' {} a -> s {appId = a} :: DeleteToken)

instance Core.AWSRequest DeleteToken where
  type AWSResponse DeleteToken = DeleteTokenResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteTokenResponse'
            Prelude.<$> (x Core..?> "isSuccess")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteToken

instance Prelude.NFData DeleteToken

instance Core.ToHeaders DeleteToken where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteToken where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath DeleteToken where
  toPath DeleteToken' {..} =
    Prelude.mconcat
      [ "/backend/",
        Core.toBS appId,
        "/challenge/",
        Core.toBS sessionId,
        "/remove"
      ]

instance Core.ToQuery DeleteToken where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteTokenResponse' smart constructor.
data DeleteTokenResponse = DeleteTokenResponse'
  { -- | Indicates whether the request succeeded or failed.
    isSuccess :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteTokenResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isSuccess', 'deleteTokenResponse_isSuccess' - Indicates whether the request succeeded or failed.
--
-- 'httpStatus', 'deleteTokenResponse_httpStatus' - The response's http status code.
newDeleteTokenResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteTokenResponse
newDeleteTokenResponse pHttpStatus_ =
  DeleteTokenResponse'
    { isSuccess = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Indicates whether the request succeeded or failed.
deleteTokenResponse_isSuccess :: Lens.Lens' DeleteTokenResponse (Prelude.Maybe Prelude.Bool)
deleteTokenResponse_isSuccess = Lens.lens (\DeleteTokenResponse' {isSuccess} -> isSuccess) (\s@DeleteTokenResponse' {} a -> s {isSuccess = a} :: DeleteTokenResponse)

-- | The response's http status code.
deleteTokenResponse_httpStatus :: Lens.Lens' DeleteTokenResponse Prelude.Int
deleteTokenResponse_httpStatus = Lens.lens (\DeleteTokenResponse' {httpStatus} -> httpStatus) (\s@DeleteTokenResponse' {} a -> s {httpStatus = a} :: DeleteTokenResponse)

instance Prelude.NFData DeleteTokenResponse
