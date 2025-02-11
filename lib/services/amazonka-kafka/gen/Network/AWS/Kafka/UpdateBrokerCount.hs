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
-- Module      : Network.AWS.Kafka.UpdateBrokerCount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the number of broker nodes in the cluster.
module Network.AWS.Kafka.UpdateBrokerCount
  ( -- * Creating a Request
    UpdateBrokerCount (..),
    newUpdateBrokerCount,

    -- * Request Lenses
    updateBrokerCount_clusterArn,
    updateBrokerCount_currentVersion,
    updateBrokerCount_targetNumberOfBrokerNodes,

    -- * Destructuring the Response
    UpdateBrokerCountResponse (..),
    newUpdateBrokerCountResponse,

    -- * Response Lenses
    updateBrokerCountResponse_clusterArn,
    updateBrokerCountResponse_clusterOperationArn,
    updateBrokerCountResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Kafka.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateBrokerCount' smart constructor.
data UpdateBrokerCount = UpdateBrokerCount'
  { -- | The Amazon Resource Name (ARN) that uniquely identifies the cluster.
    clusterArn :: Prelude.Text,
    -- | The version of cluster to update from. A successful operation will then
    -- generate a new version.
    currentVersion :: Prelude.Text,
    -- | The number of broker nodes that you want the cluster to have after this
    -- operation completes successfully.
    targetNumberOfBrokerNodes :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateBrokerCount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterArn', 'updateBrokerCount_clusterArn' - The Amazon Resource Name (ARN) that uniquely identifies the cluster.
--
-- 'currentVersion', 'updateBrokerCount_currentVersion' - The version of cluster to update from. A successful operation will then
-- generate a new version.
--
-- 'targetNumberOfBrokerNodes', 'updateBrokerCount_targetNumberOfBrokerNodes' - The number of broker nodes that you want the cluster to have after this
-- operation completes successfully.
newUpdateBrokerCount ::
  -- | 'clusterArn'
  Prelude.Text ->
  -- | 'currentVersion'
  Prelude.Text ->
  -- | 'targetNumberOfBrokerNodes'
  Prelude.Natural ->
  UpdateBrokerCount
newUpdateBrokerCount
  pClusterArn_
  pCurrentVersion_
  pTargetNumberOfBrokerNodes_ =
    UpdateBrokerCount'
      { clusterArn = pClusterArn_,
        currentVersion = pCurrentVersion_,
        targetNumberOfBrokerNodes =
          pTargetNumberOfBrokerNodes_
      }

-- | The Amazon Resource Name (ARN) that uniquely identifies the cluster.
updateBrokerCount_clusterArn :: Lens.Lens' UpdateBrokerCount Prelude.Text
updateBrokerCount_clusterArn = Lens.lens (\UpdateBrokerCount' {clusterArn} -> clusterArn) (\s@UpdateBrokerCount' {} a -> s {clusterArn = a} :: UpdateBrokerCount)

-- | The version of cluster to update from. A successful operation will then
-- generate a new version.
updateBrokerCount_currentVersion :: Lens.Lens' UpdateBrokerCount Prelude.Text
updateBrokerCount_currentVersion = Lens.lens (\UpdateBrokerCount' {currentVersion} -> currentVersion) (\s@UpdateBrokerCount' {} a -> s {currentVersion = a} :: UpdateBrokerCount)

-- | The number of broker nodes that you want the cluster to have after this
-- operation completes successfully.
updateBrokerCount_targetNumberOfBrokerNodes :: Lens.Lens' UpdateBrokerCount Prelude.Natural
updateBrokerCount_targetNumberOfBrokerNodes = Lens.lens (\UpdateBrokerCount' {targetNumberOfBrokerNodes} -> targetNumberOfBrokerNodes) (\s@UpdateBrokerCount' {} a -> s {targetNumberOfBrokerNodes = a} :: UpdateBrokerCount)

instance Core.AWSRequest UpdateBrokerCount where
  type
    AWSResponse UpdateBrokerCount =
      UpdateBrokerCountResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateBrokerCountResponse'
            Prelude.<$> (x Core..?> "clusterArn")
            Prelude.<*> (x Core..?> "clusterOperationArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateBrokerCount

instance Prelude.NFData UpdateBrokerCount

instance Core.ToHeaders UpdateBrokerCount where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateBrokerCount where
  toJSON UpdateBrokerCount' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("currentVersion" Core..= currentVersion),
            Prelude.Just
              ( "targetNumberOfBrokerNodes"
                  Core..= targetNumberOfBrokerNodes
              )
          ]
      )

instance Core.ToPath UpdateBrokerCount where
  toPath UpdateBrokerCount' {..} =
    Prelude.mconcat
      [ "/v1/clusters/",
        Core.toBS clusterArn,
        "/nodes/count"
      ]

instance Core.ToQuery UpdateBrokerCount where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateBrokerCountResponse' smart constructor.
data UpdateBrokerCountResponse = UpdateBrokerCountResponse'
  { -- | The Amazon Resource Name (ARN) of the cluster.
    clusterArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the cluster operation.
    clusterOperationArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateBrokerCountResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterArn', 'updateBrokerCountResponse_clusterArn' - The Amazon Resource Name (ARN) of the cluster.
--
-- 'clusterOperationArn', 'updateBrokerCountResponse_clusterOperationArn' - The Amazon Resource Name (ARN) of the cluster operation.
--
-- 'httpStatus', 'updateBrokerCountResponse_httpStatus' - The response's http status code.
newUpdateBrokerCountResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateBrokerCountResponse
newUpdateBrokerCountResponse pHttpStatus_ =
  UpdateBrokerCountResponse'
    { clusterArn =
        Prelude.Nothing,
      clusterOperationArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the cluster.
updateBrokerCountResponse_clusterArn :: Lens.Lens' UpdateBrokerCountResponse (Prelude.Maybe Prelude.Text)
updateBrokerCountResponse_clusterArn = Lens.lens (\UpdateBrokerCountResponse' {clusterArn} -> clusterArn) (\s@UpdateBrokerCountResponse' {} a -> s {clusterArn = a} :: UpdateBrokerCountResponse)

-- | The Amazon Resource Name (ARN) of the cluster operation.
updateBrokerCountResponse_clusterOperationArn :: Lens.Lens' UpdateBrokerCountResponse (Prelude.Maybe Prelude.Text)
updateBrokerCountResponse_clusterOperationArn = Lens.lens (\UpdateBrokerCountResponse' {clusterOperationArn} -> clusterOperationArn) (\s@UpdateBrokerCountResponse' {} a -> s {clusterOperationArn = a} :: UpdateBrokerCountResponse)

-- | The response's http status code.
updateBrokerCountResponse_httpStatus :: Lens.Lens' UpdateBrokerCountResponse Prelude.Int
updateBrokerCountResponse_httpStatus = Lens.lens (\UpdateBrokerCountResponse' {httpStatus} -> httpStatus) (\s@UpdateBrokerCountResponse' {} a -> s {httpStatus = a} :: UpdateBrokerCountResponse)

instance Prelude.NFData UpdateBrokerCountResponse
