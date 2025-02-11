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
-- Module      : Network.AWS.ChimeSDKIdentity.UpdateAppInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates @AppInstance@ metadata.
module Network.AWS.ChimeSDKIdentity.UpdateAppInstance
  ( -- * Creating a Request
    UpdateAppInstance (..),
    newUpdateAppInstance,

    -- * Request Lenses
    updateAppInstance_appInstanceArn,
    updateAppInstance_name,
    updateAppInstance_metadata,

    -- * Destructuring the Response
    UpdateAppInstanceResponse (..),
    newUpdateAppInstanceResponse,

    -- * Response Lenses
    updateAppInstanceResponse_appInstanceArn,
    updateAppInstanceResponse_httpStatus,
  )
where

import Network.AWS.ChimeSDKIdentity.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateAppInstance' smart constructor.
data UpdateAppInstance = UpdateAppInstance'
  { -- | The ARN of the @AppInstance@.
    appInstanceArn :: Prelude.Text,
    -- | The name that you want to change.
    name :: Core.Sensitive Prelude.Text,
    -- | The metadata that you want to change.
    metadata :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAppInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceArn', 'updateAppInstance_appInstanceArn' - The ARN of the @AppInstance@.
--
-- 'name', 'updateAppInstance_name' - The name that you want to change.
--
-- 'metadata', 'updateAppInstance_metadata' - The metadata that you want to change.
newUpdateAppInstance ::
  -- | 'appInstanceArn'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'metadata'
  Prelude.Text ->
  UpdateAppInstance
newUpdateAppInstance
  pAppInstanceArn_
  pName_
  pMetadata_ =
    UpdateAppInstance'
      { appInstanceArn =
          pAppInstanceArn_,
        name = Core._Sensitive Lens.# pName_,
        metadata = Core._Sensitive Lens.# pMetadata_
      }

-- | The ARN of the @AppInstance@.
updateAppInstance_appInstanceArn :: Lens.Lens' UpdateAppInstance Prelude.Text
updateAppInstance_appInstanceArn = Lens.lens (\UpdateAppInstance' {appInstanceArn} -> appInstanceArn) (\s@UpdateAppInstance' {} a -> s {appInstanceArn = a} :: UpdateAppInstance)

-- | The name that you want to change.
updateAppInstance_name :: Lens.Lens' UpdateAppInstance Prelude.Text
updateAppInstance_name = Lens.lens (\UpdateAppInstance' {name} -> name) (\s@UpdateAppInstance' {} a -> s {name = a} :: UpdateAppInstance) Prelude.. Core._Sensitive

-- | The metadata that you want to change.
updateAppInstance_metadata :: Lens.Lens' UpdateAppInstance Prelude.Text
updateAppInstance_metadata = Lens.lens (\UpdateAppInstance' {metadata} -> metadata) (\s@UpdateAppInstance' {} a -> s {metadata = a} :: UpdateAppInstance) Prelude.. Core._Sensitive

instance Core.AWSRequest UpdateAppInstance where
  type
    AWSResponse UpdateAppInstance =
      UpdateAppInstanceResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateAppInstanceResponse'
            Prelude.<$> (x Core..?> "AppInstanceArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateAppInstance

instance Prelude.NFData UpdateAppInstance

instance Core.ToHeaders UpdateAppInstance where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdateAppInstance where
  toJSON UpdateAppInstance' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Metadata" Core..= metadata)
          ]
      )

instance Core.ToPath UpdateAppInstance where
  toPath UpdateAppInstance' {..} =
    Prelude.mconcat
      ["/app-instances/", Core.toBS appInstanceArn]

instance Core.ToQuery UpdateAppInstance where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateAppInstanceResponse' smart constructor.
data UpdateAppInstanceResponse = UpdateAppInstanceResponse'
  { -- | The ARN of the @AppInstance@.
    appInstanceArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAppInstanceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceArn', 'updateAppInstanceResponse_appInstanceArn' - The ARN of the @AppInstance@.
--
-- 'httpStatus', 'updateAppInstanceResponse_httpStatus' - The response's http status code.
newUpdateAppInstanceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateAppInstanceResponse
newUpdateAppInstanceResponse pHttpStatus_ =
  UpdateAppInstanceResponse'
    { appInstanceArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the @AppInstance@.
updateAppInstanceResponse_appInstanceArn :: Lens.Lens' UpdateAppInstanceResponse (Prelude.Maybe Prelude.Text)
updateAppInstanceResponse_appInstanceArn = Lens.lens (\UpdateAppInstanceResponse' {appInstanceArn} -> appInstanceArn) (\s@UpdateAppInstanceResponse' {} a -> s {appInstanceArn = a} :: UpdateAppInstanceResponse)

-- | The response's http status code.
updateAppInstanceResponse_httpStatus :: Lens.Lens' UpdateAppInstanceResponse Prelude.Int
updateAppInstanceResponse_httpStatus = Lens.lens (\UpdateAppInstanceResponse' {httpStatus} -> httpStatus) (\s@UpdateAppInstanceResponse' {} a -> s {httpStatus = a} :: UpdateAppInstanceResponse)

instance Prelude.NFData UpdateAppInstanceResponse
