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
-- Module      : Network.AWS.AppFlow.UpdateConnectorProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a given connector profile associated with your account.
module Network.AWS.AppFlow.UpdateConnectorProfile
  ( -- * Creating a Request
    UpdateConnectorProfile (..),
    newUpdateConnectorProfile,

    -- * Request Lenses
    updateConnectorProfile_connectorProfileName,
    updateConnectorProfile_connectionMode,
    updateConnectorProfile_connectorProfileConfig,

    -- * Destructuring the Response
    UpdateConnectorProfileResponse (..),
    newUpdateConnectorProfileResponse,

    -- * Response Lenses
    updateConnectorProfileResponse_connectorProfileArn,
    updateConnectorProfileResponse_httpStatus,
  )
where

import Network.AWS.AppFlow.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateConnectorProfile' smart constructor.
data UpdateConnectorProfile = UpdateConnectorProfile'
  { -- | The name of the connector profile and is unique for each
    -- @ConnectorProfile@ in the Amazon Web Services account.
    connectorProfileName :: Prelude.Text,
    -- | Indicates the connection mode and if it is public or private.
    connectionMode :: ConnectionMode,
    -- | Defines the connector-specific profile configuration and credentials.
    connectorProfileConfig :: ConnectorProfileConfig
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateConnectorProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectorProfileName', 'updateConnectorProfile_connectorProfileName' - The name of the connector profile and is unique for each
-- @ConnectorProfile@ in the Amazon Web Services account.
--
-- 'connectionMode', 'updateConnectorProfile_connectionMode' - Indicates the connection mode and if it is public or private.
--
-- 'connectorProfileConfig', 'updateConnectorProfile_connectorProfileConfig' - Defines the connector-specific profile configuration and credentials.
newUpdateConnectorProfile ::
  -- | 'connectorProfileName'
  Prelude.Text ->
  -- | 'connectionMode'
  ConnectionMode ->
  -- | 'connectorProfileConfig'
  ConnectorProfileConfig ->
  UpdateConnectorProfile
newUpdateConnectorProfile
  pConnectorProfileName_
  pConnectionMode_
  pConnectorProfileConfig_ =
    UpdateConnectorProfile'
      { connectorProfileName =
          pConnectorProfileName_,
        connectionMode = pConnectionMode_,
        connectorProfileConfig = pConnectorProfileConfig_
      }

-- | The name of the connector profile and is unique for each
-- @ConnectorProfile@ in the Amazon Web Services account.
updateConnectorProfile_connectorProfileName :: Lens.Lens' UpdateConnectorProfile Prelude.Text
updateConnectorProfile_connectorProfileName = Lens.lens (\UpdateConnectorProfile' {connectorProfileName} -> connectorProfileName) (\s@UpdateConnectorProfile' {} a -> s {connectorProfileName = a} :: UpdateConnectorProfile)

-- | Indicates the connection mode and if it is public or private.
updateConnectorProfile_connectionMode :: Lens.Lens' UpdateConnectorProfile ConnectionMode
updateConnectorProfile_connectionMode = Lens.lens (\UpdateConnectorProfile' {connectionMode} -> connectionMode) (\s@UpdateConnectorProfile' {} a -> s {connectionMode = a} :: UpdateConnectorProfile)

-- | Defines the connector-specific profile configuration and credentials.
updateConnectorProfile_connectorProfileConfig :: Lens.Lens' UpdateConnectorProfile ConnectorProfileConfig
updateConnectorProfile_connectorProfileConfig = Lens.lens (\UpdateConnectorProfile' {connectorProfileConfig} -> connectorProfileConfig) (\s@UpdateConnectorProfile' {} a -> s {connectorProfileConfig = a} :: UpdateConnectorProfile)

instance Core.AWSRequest UpdateConnectorProfile where
  type
    AWSResponse UpdateConnectorProfile =
      UpdateConnectorProfileResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateConnectorProfileResponse'
            Prelude.<$> (x Core..?> "connectorProfileArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateConnectorProfile

instance Prelude.NFData UpdateConnectorProfile

instance Core.ToHeaders UpdateConnectorProfile where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateConnectorProfile where
  toJSON UpdateConnectorProfile' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "connectorProfileName"
                  Core..= connectorProfileName
              ),
            Prelude.Just
              ("connectionMode" Core..= connectionMode),
            Prelude.Just
              ( "connectorProfileConfig"
                  Core..= connectorProfileConfig
              )
          ]
      )

instance Core.ToPath UpdateConnectorProfile where
  toPath = Prelude.const "/update-connector-profile"

instance Core.ToQuery UpdateConnectorProfile where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateConnectorProfileResponse' smart constructor.
data UpdateConnectorProfileResponse = UpdateConnectorProfileResponse'
  { -- | The Amazon Resource Name (ARN) of the connector profile.
    connectorProfileArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateConnectorProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectorProfileArn', 'updateConnectorProfileResponse_connectorProfileArn' - The Amazon Resource Name (ARN) of the connector profile.
--
-- 'httpStatus', 'updateConnectorProfileResponse_httpStatus' - The response's http status code.
newUpdateConnectorProfileResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateConnectorProfileResponse
newUpdateConnectorProfileResponse pHttpStatus_ =
  UpdateConnectorProfileResponse'
    { connectorProfileArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the connector profile.
updateConnectorProfileResponse_connectorProfileArn :: Lens.Lens' UpdateConnectorProfileResponse (Prelude.Maybe Prelude.Text)
updateConnectorProfileResponse_connectorProfileArn = Lens.lens (\UpdateConnectorProfileResponse' {connectorProfileArn} -> connectorProfileArn) (\s@UpdateConnectorProfileResponse' {} a -> s {connectorProfileArn = a} :: UpdateConnectorProfileResponse)

-- | The response's http status code.
updateConnectorProfileResponse_httpStatus :: Lens.Lens' UpdateConnectorProfileResponse Prelude.Int
updateConnectorProfileResponse_httpStatus = Lens.lens (\UpdateConnectorProfileResponse' {httpStatus} -> httpStatus) (\s@UpdateConnectorProfileResponse' {} a -> s {httpStatus = a} :: UpdateConnectorProfileResponse)

instance
  Prelude.NFData
    UpdateConnectorProfileResponse
