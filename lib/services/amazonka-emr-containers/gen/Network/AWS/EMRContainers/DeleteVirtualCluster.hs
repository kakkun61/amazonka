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
-- Module      : Network.AWS.EMRContainers.DeleteVirtualCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a virtual cluster. Virtual cluster is a managed entity on Amazon
-- EMR on EKS. You can create, describe, list and delete virtual clusters.
-- They do not consume any additional resource in your system. A single
-- virtual cluster maps to a single Kubernetes namespace. Given this
-- relationship, you can model virtual clusters the same way you model
-- Kubernetes namespaces to meet your requirements.
module Network.AWS.EMRContainers.DeleteVirtualCluster
  ( -- * Creating a Request
    DeleteVirtualCluster (..),
    newDeleteVirtualCluster,

    -- * Request Lenses
    deleteVirtualCluster_id,

    -- * Destructuring the Response
    DeleteVirtualClusterResponse (..),
    newDeleteVirtualClusterResponse,

    -- * Response Lenses
    deleteVirtualClusterResponse_id,
    deleteVirtualClusterResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EMRContainers.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteVirtualCluster' smart constructor.
data DeleteVirtualCluster = DeleteVirtualCluster'
  { -- | The ID of the virtual cluster that will be deleted.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteVirtualCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'deleteVirtualCluster_id' - The ID of the virtual cluster that will be deleted.
newDeleteVirtualCluster ::
  -- | 'id'
  Prelude.Text ->
  DeleteVirtualCluster
newDeleteVirtualCluster pId_ =
  DeleteVirtualCluster' {id = pId_}

-- | The ID of the virtual cluster that will be deleted.
deleteVirtualCluster_id :: Lens.Lens' DeleteVirtualCluster Prelude.Text
deleteVirtualCluster_id = Lens.lens (\DeleteVirtualCluster' {id} -> id) (\s@DeleteVirtualCluster' {} a -> s {id = a} :: DeleteVirtualCluster)

instance Core.AWSRequest DeleteVirtualCluster where
  type
    AWSResponse DeleteVirtualCluster =
      DeleteVirtualClusterResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteVirtualClusterResponse'
            Prelude.<$> (x Core..?> "id")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteVirtualCluster

instance Prelude.NFData DeleteVirtualCluster

instance Core.ToHeaders DeleteVirtualCluster where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteVirtualCluster where
  toPath DeleteVirtualCluster' {..} =
    Prelude.mconcat ["/virtualclusters/", Core.toBS id]

instance Core.ToQuery DeleteVirtualCluster where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteVirtualClusterResponse' smart constructor.
data DeleteVirtualClusterResponse = DeleteVirtualClusterResponse'
  { -- | This output contains the ID of the virtual cluster that will be deleted.
    id :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteVirtualClusterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'deleteVirtualClusterResponse_id' - This output contains the ID of the virtual cluster that will be deleted.
--
-- 'httpStatus', 'deleteVirtualClusterResponse_httpStatus' - The response's http status code.
newDeleteVirtualClusterResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteVirtualClusterResponse
newDeleteVirtualClusterResponse pHttpStatus_ =
  DeleteVirtualClusterResponse'
    { id = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | This output contains the ID of the virtual cluster that will be deleted.
deleteVirtualClusterResponse_id :: Lens.Lens' DeleteVirtualClusterResponse (Prelude.Maybe Prelude.Text)
deleteVirtualClusterResponse_id = Lens.lens (\DeleteVirtualClusterResponse' {id} -> id) (\s@DeleteVirtualClusterResponse' {} a -> s {id = a} :: DeleteVirtualClusterResponse)

-- | The response's http status code.
deleteVirtualClusterResponse_httpStatus :: Lens.Lens' DeleteVirtualClusterResponse Prelude.Int
deleteVirtualClusterResponse_httpStatus = Lens.lens (\DeleteVirtualClusterResponse' {httpStatus} -> httpStatus) (\s@DeleteVirtualClusterResponse' {} a -> s {httpStatus = a} :: DeleteVirtualClusterResponse)

instance Prelude.NFData DeleteVirtualClusterResponse
