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
-- Module      : Network.AWS.Route53RecoveryControlConfig.DeleteCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a cluster.
module Network.AWS.Route53RecoveryControlConfig.DeleteCluster
  ( -- * Creating a Request
    DeleteCluster (..),
    newDeleteCluster,

    -- * Request Lenses
    deleteCluster_clusterArn,

    -- * Destructuring the Response
    DeleteClusterResponse (..),
    newDeleteClusterResponse,

    -- * Response Lenses
    deleteClusterResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53RecoveryControlConfig.Types

-- | /See:/ 'newDeleteCluster' smart constructor.
data DeleteCluster = DeleteCluster'
  { -- | The Amazon Resource Name (ARN) of the cluster that you\'re deleting.
    clusterArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterArn', 'deleteCluster_clusterArn' - The Amazon Resource Name (ARN) of the cluster that you\'re deleting.
newDeleteCluster ::
  -- | 'clusterArn'
  Prelude.Text ->
  DeleteCluster
newDeleteCluster pClusterArn_ =
  DeleteCluster' {clusterArn = pClusterArn_}

-- | The Amazon Resource Name (ARN) of the cluster that you\'re deleting.
deleteCluster_clusterArn :: Lens.Lens' DeleteCluster Prelude.Text
deleteCluster_clusterArn = Lens.lens (\DeleteCluster' {clusterArn} -> clusterArn) (\s@DeleteCluster' {} a -> s {clusterArn = a} :: DeleteCluster)

instance Core.AWSRequest DeleteCluster where
  type
    AWSResponse DeleteCluster =
      DeleteClusterResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteClusterResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteCluster

instance Prelude.NFData DeleteCluster

instance Core.ToHeaders DeleteCluster where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteCluster where
  toPath DeleteCluster' {..} =
    Prelude.mconcat ["/cluster/", Core.toBS clusterArn]

instance Core.ToQuery DeleteCluster where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteClusterResponse' smart constructor.
data DeleteClusterResponse = DeleteClusterResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteClusterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteClusterResponse_httpStatus' - The response's http status code.
newDeleteClusterResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteClusterResponse
newDeleteClusterResponse pHttpStatus_ =
  DeleteClusterResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteClusterResponse_httpStatus :: Lens.Lens' DeleteClusterResponse Prelude.Int
deleteClusterResponse_httpStatus = Lens.lens (\DeleteClusterResponse' {httpStatus} -> httpStatus) (\s@DeleteClusterResponse' {} a -> s {httpStatus = a} :: DeleteClusterResponse)

instance Prelude.NFData DeleteClusterResponse
