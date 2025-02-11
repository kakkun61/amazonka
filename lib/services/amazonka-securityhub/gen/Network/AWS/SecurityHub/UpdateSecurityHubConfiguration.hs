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
-- Module      : Network.AWS.SecurityHub.UpdateSecurityHubConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates configuration options for Security Hub.
module Network.AWS.SecurityHub.UpdateSecurityHubConfiguration
  ( -- * Creating a Request
    UpdateSecurityHubConfiguration (..),
    newUpdateSecurityHubConfiguration,

    -- * Request Lenses
    updateSecurityHubConfiguration_autoEnableControls,

    -- * Destructuring the Response
    UpdateSecurityHubConfigurationResponse (..),
    newUpdateSecurityHubConfigurationResponse,

    -- * Response Lenses
    updateSecurityHubConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newUpdateSecurityHubConfiguration' smart constructor.
data UpdateSecurityHubConfiguration = UpdateSecurityHubConfiguration'
  { -- | Whether to automatically enable new controls when they are added to
    -- standards that are enabled.
    --
    -- By default, this is set to @true@, and new controls are enabled
    -- automatically. To not automatically enable new controls, set this to
    -- @false@.
    autoEnableControls :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateSecurityHubConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'autoEnableControls', 'updateSecurityHubConfiguration_autoEnableControls' - Whether to automatically enable new controls when they are added to
-- standards that are enabled.
--
-- By default, this is set to @true@, and new controls are enabled
-- automatically. To not automatically enable new controls, set this to
-- @false@.
newUpdateSecurityHubConfiguration ::
  UpdateSecurityHubConfiguration
newUpdateSecurityHubConfiguration =
  UpdateSecurityHubConfiguration'
    { autoEnableControls =
        Prelude.Nothing
    }

-- | Whether to automatically enable new controls when they are added to
-- standards that are enabled.
--
-- By default, this is set to @true@, and new controls are enabled
-- automatically. To not automatically enable new controls, set this to
-- @false@.
updateSecurityHubConfiguration_autoEnableControls :: Lens.Lens' UpdateSecurityHubConfiguration (Prelude.Maybe Prelude.Bool)
updateSecurityHubConfiguration_autoEnableControls = Lens.lens (\UpdateSecurityHubConfiguration' {autoEnableControls} -> autoEnableControls) (\s@UpdateSecurityHubConfiguration' {} a -> s {autoEnableControls = a} :: UpdateSecurityHubConfiguration)

instance
  Core.AWSRequest
    UpdateSecurityHubConfiguration
  where
  type
    AWSResponse UpdateSecurityHubConfiguration =
      UpdateSecurityHubConfigurationResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateSecurityHubConfigurationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    UpdateSecurityHubConfiguration

instance
  Prelude.NFData
    UpdateSecurityHubConfiguration

instance
  Core.ToHeaders
    UpdateSecurityHubConfiguration
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateSecurityHubConfiguration where
  toJSON UpdateSecurityHubConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AutoEnableControls" Core..=)
              Prelude.<$> autoEnableControls
          ]
      )

instance Core.ToPath UpdateSecurityHubConfiguration where
  toPath = Prelude.const "/accounts"

instance Core.ToQuery UpdateSecurityHubConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateSecurityHubConfigurationResponse' smart constructor.
data UpdateSecurityHubConfigurationResponse = UpdateSecurityHubConfigurationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateSecurityHubConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateSecurityHubConfigurationResponse_httpStatus' - The response's http status code.
newUpdateSecurityHubConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateSecurityHubConfigurationResponse
newUpdateSecurityHubConfigurationResponse
  pHttpStatus_ =
    UpdateSecurityHubConfigurationResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
updateSecurityHubConfigurationResponse_httpStatus :: Lens.Lens' UpdateSecurityHubConfigurationResponse Prelude.Int
updateSecurityHubConfigurationResponse_httpStatus = Lens.lens (\UpdateSecurityHubConfigurationResponse' {httpStatus} -> httpStatus) (\s@UpdateSecurityHubConfigurationResponse' {} a -> s {httpStatus = a} :: UpdateSecurityHubConfigurationResponse)

instance
  Prelude.NFData
    UpdateSecurityHubConfigurationResponse
