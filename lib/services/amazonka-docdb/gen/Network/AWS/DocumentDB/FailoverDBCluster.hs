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
-- Module      : Network.AWS.DocumentDB.FailoverDBCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Forces a failover for a cluster.
--
-- A failover for a cluster promotes one of the Amazon DocumentDB replicas
-- (read-only instances) in the cluster to be the primary instance (the
-- cluster writer).
--
-- If the primary instance fails, Amazon DocumentDB automatically fails
-- over to an Amazon DocumentDB replica, if one exists. You can force a
-- failover when you want to simulate a failure of a primary instance for
-- testing.
module Network.AWS.DocumentDB.FailoverDBCluster
  ( -- * Creating a Request
    FailoverDBCluster (..),
    newFailoverDBCluster,

    -- * Request Lenses
    failoverDBCluster_dbClusterIdentifier,
    failoverDBCluster_targetDBInstanceIdentifier,

    -- * Destructuring the Response
    FailoverDBClusterResponse (..),
    newFailoverDBClusterResponse,

    -- * Response Lenses
    failoverDBClusterResponse_dbCluster,
    failoverDBClusterResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DocumentDB.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input to FailoverDBCluster.
--
-- /See:/ 'newFailoverDBCluster' smart constructor.
data FailoverDBCluster = FailoverDBCluster'
  { -- | A cluster identifier to force a failover for. This parameter is not case
    -- sensitive.
    --
    -- Constraints:
    --
    -- -   Must match the identifier of an existing @DBCluster@.
    dbClusterIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The name of the instance to promote to the primary instance.
    --
    -- You must specify the instance identifier for an Amazon DocumentDB
    -- replica in the cluster. For example, @mydbcluster-replica1@.
    targetDBInstanceIdentifier :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FailoverDBCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbClusterIdentifier', 'failoverDBCluster_dbClusterIdentifier' - A cluster identifier to force a failover for. This parameter is not case
-- sensitive.
--
-- Constraints:
--
-- -   Must match the identifier of an existing @DBCluster@.
--
-- 'targetDBInstanceIdentifier', 'failoverDBCluster_targetDBInstanceIdentifier' - The name of the instance to promote to the primary instance.
--
-- You must specify the instance identifier for an Amazon DocumentDB
-- replica in the cluster. For example, @mydbcluster-replica1@.
newFailoverDBCluster ::
  FailoverDBCluster
newFailoverDBCluster =
  FailoverDBCluster'
    { dbClusterIdentifier =
        Prelude.Nothing,
      targetDBInstanceIdentifier = Prelude.Nothing
    }

-- | A cluster identifier to force a failover for. This parameter is not case
-- sensitive.
--
-- Constraints:
--
-- -   Must match the identifier of an existing @DBCluster@.
failoverDBCluster_dbClusterIdentifier :: Lens.Lens' FailoverDBCluster (Prelude.Maybe Prelude.Text)
failoverDBCluster_dbClusterIdentifier = Lens.lens (\FailoverDBCluster' {dbClusterIdentifier} -> dbClusterIdentifier) (\s@FailoverDBCluster' {} a -> s {dbClusterIdentifier = a} :: FailoverDBCluster)

-- | The name of the instance to promote to the primary instance.
--
-- You must specify the instance identifier for an Amazon DocumentDB
-- replica in the cluster. For example, @mydbcluster-replica1@.
failoverDBCluster_targetDBInstanceIdentifier :: Lens.Lens' FailoverDBCluster (Prelude.Maybe Prelude.Text)
failoverDBCluster_targetDBInstanceIdentifier = Lens.lens (\FailoverDBCluster' {targetDBInstanceIdentifier} -> targetDBInstanceIdentifier) (\s@FailoverDBCluster' {} a -> s {targetDBInstanceIdentifier = a} :: FailoverDBCluster)

instance Core.AWSRequest FailoverDBCluster where
  type
    AWSResponse FailoverDBCluster =
      FailoverDBClusterResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "FailoverDBClusterResult"
      ( \s h x ->
          FailoverDBClusterResponse'
            Prelude.<$> (x Core..@? "DBCluster")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable FailoverDBCluster

instance Prelude.NFData FailoverDBCluster

instance Core.ToHeaders FailoverDBCluster where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath FailoverDBCluster where
  toPath = Prelude.const "/"

instance Core.ToQuery FailoverDBCluster where
  toQuery FailoverDBCluster' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("FailoverDBCluster" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "DBClusterIdentifier" Core.=: dbClusterIdentifier,
        "TargetDBInstanceIdentifier"
          Core.=: targetDBInstanceIdentifier
      ]

-- | /See:/ 'newFailoverDBClusterResponse' smart constructor.
data FailoverDBClusterResponse = FailoverDBClusterResponse'
  { dbCluster :: Prelude.Maybe DBCluster,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FailoverDBClusterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbCluster', 'failoverDBClusterResponse_dbCluster' - Undocumented member.
--
-- 'httpStatus', 'failoverDBClusterResponse_httpStatus' - The response's http status code.
newFailoverDBClusterResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  FailoverDBClusterResponse
newFailoverDBClusterResponse pHttpStatus_ =
  FailoverDBClusterResponse'
    { dbCluster =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
failoverDBClusterResponse_dbCluster :: Lens.Lens' FailoverDBClusterResponse (Prelude.Maybe DBCluster)
failoverDBClusterResponse_dbCluster = Lens.lens (\FailoverDBClusterResponse' {dbCluster} -> dbCluster) (\s@FailoverDBClusterResponse' {} a -> s {dbCluster = a} :: FailoverDBClusterResponse)

-- | The response's http status code.
failoverDBClusterResponse_httpStatus :: Lens.Lens' FailoverDBClusterResponse Prelude.Int
failoverDBClusterResponse_httpStatus = Lens.lens (\FailoverDBClusterResponse' {httpStatus} -> httpStatus) (\s@FailoverDBClusterResponse' {} a -> s {httpStatus = a} :: FailoverDBClusterResponse)

instance Prelude.NFData FailoverDBClusterResponse
