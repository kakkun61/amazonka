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
-- Module      : Network.AWS.DocumentDB.RemoveFromGlobalCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detaches an Amazon DocumentDB secondary cluster from a global cluster.
-- The cluster becomes a standalone cluster with read-write capability
-- instead of being read-only and receiving data from a primary in a
-- different region.
--
-- This action only applies to Amazon DocumentDB clusters.
module Network.AWS.DocumentDB.RemoveFromGlobalCluster
  ( -- * Creating a Request
    RemoveFromGlobalCluster (..),
    newRemoveFromGlobalCluster,

    -- * Request Lenses
    removeFromGlobalCluster_globalClusterIdentifier,
    removeFromGlobalCluster_dbClusterIdentifier,

    -- * Destructuring the Response
    RemoveFromGlobalClusterResponse (..),
    newRemoveFromGlobalClusterResponse,

    -- * Response Lenses
    removeFromGlobalClusterResponse_globalCluster,
    removeFromGlobalClusterResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DocumentDB.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input to RemoveFromGlobalCluster.
--
-- /See:/ 'newRemoveFromGlobalCluster' smart constructor.
data RemoveFromGlobalCluster = RemoveFromGlobalCluster'
  { -- | The cluster identifier to detach from the Amazon DocumentDB global
    -- cluster.
    globalClusterIdentifier :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) identifying the cluster that was detached
    -- from the Amazon DocumentDB global cluster.
    dbClusterIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemoveFromGlobalCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'globalClusterIdentifier', 'removeFromGlobalCluster_globalClusterIdentifier' - The cluster identifier to detach from the Amazon DocumentDB global
-- cluster.
--
-- 'dbClusterIdentifier', 'removeFromGlobalCluster_dbClusterIdentifier' - The Amazon Resource Name (ARN) identifying the cluster that was detached
-- from the Amazon DocumentDB global cluster.
newRemoveFromGlobalCluster ::
  -- | 'globalClusterIdentifier'
  Prelude.Text ->
  -- | 'dbClusterIdentifier'
  Prelude.Text ->
  RemoveFromGlobalCluster
newRemoveFromGlobalCluster
  pGlobalClusterIdentifier_
  pDbClusterIdentifier_ =
    RemoveFromGlobalCluster'
      { globalClusterIdentifier =
          pGlobalClusterIdentifier_,
        dbClusterIdentifier = pDbClusterIdentifier_
      }

-- | The cluster identifier to detach from the Amazon DocumentDB global
-- cluster.
removeFromGlobalCluster_globalClusterIdentifier :: Lens.Lens' RemoveFromGlobalCluster Prelude.Text
removeFromGlobalCluster_globalClusterIdentifier = Lens.lens (\RemoveFromGlobalCluster' {globalClusterIdentifier} -> globalClusterIdentifier) (\s@RemoveFromGlobalCluster' {} a -> s {globalClusterIdentifier = a} :: RemoveFromGlobalCluster)

-- | The Amazon Resource Name (ARN) identifying the cluster that was detached
-- from the Amazon DocumentDB global cluster.
removeFromGlobalCluster_dbClusterIdentifier :: Lens.Lens' RemoveFromGlobalCluster Prelude.Text
removeFromGlobalCluster_dbClusterIdentifier = Lens.lens (\RemoveFromGlobalCluster' {dbClusterIdentifier} -> dbClusterIdentifier) (\s@RemoveFromGlobalCluster' {} a -> s {dbClusterIdentifier = a} :: RemoveFromGlobalCluster)

instance Core.AWSRequest RemoveFromGlobalCluster where
  type
    AWSResponse RemoveFromGlobalCluster =
      RemoveFromGlobalClusterResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "RemoveFromGlobalClusterResult"
      ( \s h x ->
          RemoveFromGlobalClusterResponse'
            Prelude.<$> (x Core..@? "GlobalCluster")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RemoveFromGlobalCluster

instance Prelude.NFData RemoveFromGlobalCluster

instance Core.ToHeaders RemoveFromGlobalCluster where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath RemoveFromGlobalCluster where
  toPath = Prelude.const "/"

instance Core.ToQuery RemoveFromGlobalCluster where
  toQuery RemoveFromGlobalCluster' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("RemoveFromGlobalCluster" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "GlobalClusterIdentifier"
          Core.=: globalClusterIdentifier,
        "DbClusterIdentifier" Core.=: dbClusterIdentifier
      ]

-- | /See:/ 'newRemoveFromGlobalClusterResponse' smart constructor.
data RemoveFromGlobalClusterResponse = RemoveFromGlobalClusterResponse'
  { globalCluster :: Prelude.Maybe GlobalCluster,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemoveFromGlobalClusterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'globalCluster', 'removeFromGlobalClusterResponse_globalCluster' - Undocumented member.
--
-- 'httpStatus', 'removeFromGlobalClusterResponse_httpStatus' - The response's http status code.
newRemoveFromGlobalClusterResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RemoveFromGlobalClusterResponse
newRemoveFromGlobalClusterResponse pHttpStatus_ =
  RemoveFromGlobalClusterResponse'
    { globalCluster =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
removeFromGlobalClusterResponse_globalCluster :: Lens.Lens' RemoveFromGlobalClusterResponse (Prelude.Maybe GlobalCluster)
removeFromGlobalClusterResponse_globalCluster = Lens.lens (\RemoveFromGlobalClusterResponse' {globalCluster} -> globalCluster) (\s@RemoveFromGlobalClusterResponse' {} a -> s {globalCluster = a} :: RemoveFromGlobalClusterResponse)

-- | The response's http status code.
removeFromGlobalClusterResponse_httpStatus :: Lens.Lens' RemoveFromGlobalClusterResponse Prelude.Int
removeFromGlobalClusterResponse_httpStatus = Lens.lens (\RemoveFromGlobalClusterResponse' {httpStatus} -> httpStatus) (\s@RemoveFromGlobalClusterResponse' {} a -> s {httpStatus = a} :: RemoveFromGlobalClusterResponse)

instance
  Prelude.NFData
    RemoveFromGlobalClusterResponse
