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
-- Module      : Network.AWS.ECS.UpdateCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the cluster.
module Network.AWS.ECS.UpdateCluster
  ( -- * Creating a Request
    UpdateCluster (..),
    newUpdateCluster,

    -- * Request Lenses
    updateCluster_settings,
    updateCluster_configuration,
    updateCluster_cluster,

    -- * Destructuring the Response
    UpdateClusterResponse (..),
    newUpdateClusterResponse,

    -- * Response Lenses
    updateClusterResponse_cluster,
    updateClusterResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ECS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateCluster' smart constructor.
data UpdateCluster = UpdateCluster'
  { -- | The cluster settings for your cluster.
    settings :: Prelude.Maybe [ClusterSetting],
    -- | The execute command configuration for the cluster.
    configuration :: Prelude.Maybe ClusterConfiguration,
    -- | The name of the cluster to modify the settings for.
    cluster :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'settings', 'updateCluster_settings' - The cluster settings for your cluster.
--
-- 'configuration', 'updateCluster_configuration' - The execute command configuration for the cluster.
--
-- 'cluster', 'updateCluster_cluster' - The name of the cluster to modify the settings for.
newUpdateCluster ::
  -- | 'cluster'
  Prelude.Text ->
  UpdateCluster
newUpdateCluster pCluster_ =
  UpdateCluster'
    { settings = Prelude.Nothing,
      configuration = Prelude.Nothing,
      cluster = pCluster_
    }

-- | The cluster settings for your cluster.
updateCluster_settings :: Lens.Lens' UpdateCluster (Prelude.Maybe [ClusterSetting])
updateCluster_settings = Lens.lens (\UpdateCluster' {settings} -> settings) (\s@UpdateCluster' {} a -> s {settings = a} :: UpdateCluster) Prelude.. Lens.mapping Lens.coerced

-- | The execute command configuration for the cluster.
updateCluster_configuration :: Lens.Lens' UpdateCluster (Prelude.Maybe ClusterConfiguration)
updateCluster_configuration = Lens.lens (\UpdateCluster' {configuration} -> configuration) (\s@UpdateCluster' {} a -> s {configuration = a} :: UpdateCluster)

-- | The name of the cluster to modify the settings for.
updateCluster_cluster :: Lens.Lens' UpdateCluster Prelude.Text
updateCluster_cluster = Lens.lens (\UpdateCluster' {cluster} -> cluster) (\s@UpdateCluster' {} a -> s {cluster = a} :: UpdateCluster)

instance Core.AWSRequest UpdateCluster where
  type
    AWSResponse UpdateCluster =
      UpdateClusterResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateClusterResponse'
            Prelude.<$> (x Core..?> "cluster")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateCluster

instance Prelude.NFData UpdateCluster

instance Core.ToHeaders UpdateCluster where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonEC2ContainerServiceV20141113.UpdateCluster" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateCluster where
  toJSON UpdateCluster' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("settings" Core..=) Prelude.<$> settings,
            ("configuration" Core..=) Prelude.<$> configuration,
            Prelude.Just ("cluster" Core..= cluster)
          ]
      )

instance Core.ToPath UpdateCluster where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateCluster where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateClusterResponse' smart constructor.
data UpdateClusterResponse = UpdateClusterResponse'
  { -- | Details about the cluster.
    cluster :: Prelude.Maybe Cluster,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateClusterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cluster', 'updateClusterResponse_cluster' - Details about the cluster.
--
-- 'httpStatus', 'updateClusterResponse_httpStatus' - The response's http status code.
newUpdateClusterResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateClusterResponse
newUpdateClusterResponse pHttpStatus_ =
  UpdateClusterResponse'
    { cluster = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Details about the cluster.
updateClusterResponse_cluster :: Lens.Lens' UpdateClusterResponse (Prelude.Maybe Cluster)
updateClusterResponse_cluster = Lens.lens (\UpdateClusterResponse' {cluster} -> cluster) (\s@UpdateClusterResponse' {} a -> s {cluster = a} :: UpdateClusterResponse)

-- | The response's http status code.
updateClusterResponse_httpStatus :: Lens.Lens' UpdateClusterResponse Prelude.Int
updateClusterResponse_httpStatus = Lens.lens (\UpdateClusterResponse' {httpStatus} -> httpStatus) (\s@UpdateClusterResponse' {} a -> s {httpStatus = a} :: UpdateClusterResponse)

instance Prelude.NFData UpdateClusterResponse
