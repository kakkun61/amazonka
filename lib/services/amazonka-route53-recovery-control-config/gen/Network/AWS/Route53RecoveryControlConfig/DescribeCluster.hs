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
-- Module      : Network.AWS.Route53RecoveryControlConfig.DescribeCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Display the details about a cluster. The response includes the cluster
-- name, endpoints, status, and Amazon Resource Name (ARN).
module Network.AWS.Route53RecoveryControlConfig.DescribeCluster
  ( -- * Creating a Request
    DescribeCluster (..),
    newDescribeCluster,

    -- * Request Lenses
    describeCluster_clusterArn,

    -- * Destructuring the Response
    DescribeClusterResponse (..),
    newDescribeClusterResponse,

    -- * Response Lenses
    describeClusterResponse_cluster,
    describeClusterResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53RecoveryControlConfig.Types

-- | /See:/ 'newDescribeCluster' smart constructor.
data DescribeCluster = DescribeCluster'
  { -- | The Amazon Resource Name (ARN) of the cluster that you\'re getting
    -- details for.
    clusterArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterArn', 'describeCluster_clusterArn' - The Amazon Resource Name (ARN) of the cluster that you\'re getting
-- details for.
newDescribeCluster ::
  -- | 'clusterArn'
  Prelude.Text ->
  DescribeCluster
newDescribeCluster pClusterArn_ =
  DescribeCluster' {clusterArn = pClusterArn_}

-- | The Amazon Resource Name (ARN) of the cluster that you\'re getting
-- details for.
describeCluster_clusterArn :: Lens.Lens' DescribeCluster Prelude.Text
describeCluster_clusterArn = Lens.lens (\DescribeCluster' {clusterArn} -> clusterArn) (\s@DescribeCluster' {} a -> s {clusterArn = a} :: DescribeCluster)

instance Core.AWSRequest DescribeCluster where
  type
    AWSResponse DescribeCluster =
      DescribeClusterResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeClusterResponse'
            Prelude.<$> (x Core..?> "Cluster")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeCluster

instance Prelude.NFData DescribeCluster

instance Core.ToHeaders DescribeCluster where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeCluster where
  toPath DescribeCluster' {..} =
    Prelude.mconcat ["/cluster/", Core.toBS clusterArn]

instance Core.ToQuery DescribeCluster where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeClusterResponse' smart constructor.
data DescribeClusterResponse = DescribeClusterResponse'
  { -- | The cluster for the DescribeCluster request.
    cluster :: Prelude.Maybe Cluster,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeClusterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cluster', 'describeClusterResponse_cluster' - The cluster for the DescribeCluster request.
--
-- 'httpStatus', 'describeClusterResponse_httpStatus' - The response's http status code.
newDescribeClusterResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeClusterResponse
newDescribeClusterResponse pHttpStatus_ =
  DescribeClusterResponse'
    { cluster = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The cluster for the DescribeCluster request.
describeClusterResponse_cluster :: Lens.Lens' DescribeClusterResponse (Prelude.Maybe Cluster)
describeClusterResponse_cluster = Lens.lens (\DescribeClusterResponse' {cluster} -> cluster) (\s@DescribeClusterResponse' {} a -> s {cluster = a} :: DescribeClusterResponse)

-- | The response's http status code.
describeClusterResponse_httpStatus :: Lens.Lens' DescribeClusterResponse Prelude.Int
describeClusterResponse_httpStatus = Lens.lens (\DescribeClusterResponse' {httpStatus} -> httpStatus) (\s@DescribeClusterResponse' {} a -> s {httpStatus = a} :: DescribeClusterResponse)

instance Prelude.NFData DescribeClusterResponse
