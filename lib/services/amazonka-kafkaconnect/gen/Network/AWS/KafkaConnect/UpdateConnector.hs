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
-- Module      : Network.AWS.KafkaConnect.UpdateConnector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified connector.
module Network.AWS.KafkaConnect.UpdateConnector
  ( -- * Creating a Request
    UpdateConnector (..),
    newUpdateConnector,

    -- * Request Lenses
    updateConnector_capacity,
    updateConnector_connectorArn,
    updateConnector_currentVersion,

    -- * Destructuring the Response
    UpdateConnectorResponse (..),
    newUpdateConnectorResponse,

    -- * Response Lenses
    updateConnectorResponse_connectorArn,
    updateConnectorResponse_connectorState,
    updateConnectorResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.KafkaConnect.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateConnector' smart constructor.
data UpdateConnector = UpdateConnector'
  { -- | The target capacity.
    capacity :: CapacityUpdate,
    -- | The Amazon Resource Name (ARN) of the connector that you want to update.
    connectorArn :: Prelude.Text,
    -- | The current version of the connector that you want to update.
    currentVersion :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateConnector' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'capacity', 'updateConnector_capacity' - The target capacity.
--
-- 'connectorArn', 'updateConnector_connectorArn' - The Amazon Resource Name (ARN) of the connector that you want to update.
--
-- 'currentVersion', 'updateConnector_currentVersion' - The current version of the connector that you want to update.
newUpdateConnector ::
  -- | 'capacity'
  CapacityUpdate ->
  -- | 'connectorArn'
  Prelude.Text ->
  -- | 'currentVersion'
  Prelude.Text ->
  UpdateConnector
newUpdateConnector
  pCapacity_
  pConnectorArn_
  pCurrentVersion_ =
    UpdateConnector'
      { capacity = pCapacity_,
        connectorArn = pConnectorArn_,
        currentVersion = pCurrentVersion_
      }

-- | The target capacity.
updateConnector_capacity :: Lens.Lens' UpdateConnector CapacityUpdate
updateConnector_capacity = Lens.lens (\UpdateConnector' {capacity} -> capacity) (\s@UpdateConnector' {} a -> s {capacity = a} :: UpdateConnector)

-- | The Amazon Resource Name (ARN) of the connector that you want to update.
updateConnector_connectorArn :: Lens.Lens' UpdateConnector Prelude.Text
updateConnector_connectorArn = Lens.lens (\UpdateConnector' {connectorArn} -> connectorArn) (\s@UpdateConnector' {} a -> s {connectorArn = a} :: UpdateConnector)

-- | The current version of the connector that you want to update.
updateConnector_currentVersion :: Lens.Lens' UpdateConnector Prelude.Text
updateConnector_currentVersion = Lens.lens (\UpdateConnector' {currentVersion} -> currentVersion) (\s@UpdateConnector' {} a -> s {currentVersion = a} :: UpdateConnector)

instance Core.AWSRequest UpdateConnector where
  type
    AWSResponse UpdateConnector =
      UpdateConnectorResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateConnectorResponse'
            Prelude.<$> (x Core..?> "connectorArn")
            Prelude.<*> (x Core..?> "connectorState")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateConnector

instance Prelude.NFData UpdateConnector

instance Core.ToHeaders UpdateConnector where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateConnector where
  toJSON UpdateConnector' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("capacity" Core..= capacity)]
      )

instance Core.ToPath UpdateConnector where
  toPath UpdateConnector' {..} =
    Prelude.mconcat
      ["/v1/connectors/", Core.toBS connectorArn]

instance Core.ToQuery UpdateConnector where
  toQuery UpdateConnector' {..} =
    Prelude.mconcat
      ["currentVersion" Core.=: currentVersion]

-- | /See:/ 'newUpdateConnectorResponse' smart constructor.
data UpdateConnectorResponse = UpdateConnectorResponse'
  { -- | The Amazon Resource Name (ARN) of the connector.
    connectorArn :: Prelude.Maybe Prelude.Text,
    -- | The state of the connector.
    connectorState :: Prelude.Maybe ConnectorState,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateConnectorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectorArn', 'updateConnectorResponse_connectorArn' - The Amazon Resource Name (ARN) of the connector.
--
-- 'connectorState', 'updateConnectorResponse_connectorState' - The state of the connector.
--
-- 'httpStatus', 'updateConnectorResponse_httpStatus' - The response's http status code.
newUpdateConnectorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateConnectorResponse
newUpdateConnectorResponse pHttpStatus_ =
  UpdateConnectorResponse'
    { connectorArn =
        Prelude.Nothing,
      connectorState = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the connector.
updateConnectorResponse_connectorArn :: Lens.Lens' UpdateConnectorResponse (Prelude.Maybe Prelude.Text)
updateConnectorResponse_connectorArn = Lens.lens (\UpdateConnectorResponse' {connectorArn} -> connectorArn) (\s@UpdateConnectorResponse' {} a -> s {connectorArn = a} :: UpdateConnectorResponse)

-- | The state of the connector.
updateConnectorResponse_connectorState :: Lens.Lens' UpdateConnectorResponse (Prelude.Maybe ConnectorState)
updateConnectorResponse_connectorState = Lens.lens (\UpdateConnectorResponse' {connectorState} -> connectorState) (\s@UpdateConnectorResponse' {} a -> s {connectorState = a} :: UpdateConnectorResponse)

-- | The response's http status code.
updateConnectorResponse_httpStatus :: Lens.Lens' UpdateConnectorResponse Prelude.Int
updateConnectorResponse_httpStatus = Lens.lens (\UpdateConnectorResponse' {httpStatus} -> httpStatus) (\s@UpdateConnectorResponse' {} a -> s {httpStatus = a} :: UpdateConnectorResponse)

instance Prelude.NFData UpdateConnectorResponse
