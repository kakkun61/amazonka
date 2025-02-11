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
-- Module      : Network.AWS.AmplifyBackend.RemoveBackendConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the AWS resources required to access the Amplify Admin UI.
module Network.AWS.AmplifyBackend.RemoveBackendConfig
  ( -- * Creating a Request
    RemoveBackendConfig (..),
    newRemoveBackendConfig,

    -- * Request Lenses
    removeBackendConfig_appId,

    -- * Destructuring the Response
    RemoveBackendConfigResponse (..),
    newRemoveBackendConfigResponse,

    -- * Response Lenses
    removeBackendConfigResponse_error,
    removeBackendConfigResponse_httpStatus,
  )
where

import Network.AWS.AmplifyBackend.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newRemoveBackendConfig' smart constructor.
data RemoveBackendConfig = RemoveBackendConfig'
  { -- | The app ID.
    appId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemoveBackendConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appId', 'removeBackendConfig_appId' - The app ID.
newRemoveBackendConfig ::
  -- | 'appId'
  Prelude.Text ->
  RemoveBackendConfig
newRemoveBackendConfig pAppId_ =
  RemoveBackendConfig' {appId = pAppId_}

-- | The app ID.
removeBackendConfig_appId :: Lens.Lens' RemoveBackendConfig Prelude.Text
removeBackendConfig_appId = Lens.lens (\RemoveBackendConfig' {appId} -> appId) (\s@RemoveBackendConfig' {} a -> s {appId = a} :: RemoveBackendConfig)

instance Core.AWSRequest RemoveBackendConfig where
  type
    AWSResponse RemoveBackendConfig =
      RemoveBackendConfigResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          RemoveBackendConfigResponse'
            Prelude.<$> (x Core..?> "error")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RemoveBackendConfig

instance Prelude.NFData RemoveBackendConfig

instance Core.ToHeaders RemoveBackendConfig where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RemoveBackendConfig where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath RemoveBackendConfig where
  toPath RemoveBackendConfig' {..} =
    Prelude.mconcat
      ["/backend/", Core.toBS appId, "/config/remove"]

instance Core.ToQuery RemoveBackendConfig where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRemoveBackendConfigResponse' smart constructor.
data RemoveBackendConfigResponse = RemoveBackendConfigResponse'
  { -- | If the request fails, this error is returned.
    error :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemoveBackendConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'error', 'removeBackendConfigResponse_error' - If the request fails, this error is returned.
--
-- 'httpStatus', 'removeBackendConfigResponse_httpStatus' - The response's http status code.
newRemoveBackendConfigResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RemoveBackendConfigResponse
newRemoveBackendConfigResponse pHttpStatus_ =
  RemoveBackendConfigResponse'
    { error =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the request fails, this error is returned.
removeBackendConfigResponse_error :: Lens.Lens' RemoveBackendConfigResponse (Prelude.Maybe Prelude.Text)
removeBackendConfigResponse_error = Lens.lens (\RemoveBackendConfigResponse' {error} -> error) (\s@RemoveBackendConfigResponse' {} a -> s {error = a} :: RemoveBackendConfigResponse)

-- | The response's http status code.
removeBackendConfigResponse_httpStatus :: Lens.Lens' RemoveBackendConfigResponse Prelude.Int
removeBackendConfigResponse_httpStatus = Lens.lens (\RemoveBackendConfigResponse' {httpStatus} -> httpStatus) (\s@RemoveBackendConfigResponse' {} a -> s {httpStatus = a} :: RemoveBackendConfigResponse)

instance Prelude.NFData RemoveBackendConfigResponse
