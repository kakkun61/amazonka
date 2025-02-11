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
-- Module      : Network.AWS.Redshift.RevokeEndpointAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revokes access to a cluster.
module Network.AWS.Redshift.RevokeEndpointAccess
  ( -- * Creating a Request
    RevokeEndpointAccess (..),
    newRevokeEndpointAccess,

    -- * Request Lenses
    revokeEndpointAccess_force,
    revokeEndpointAccess_clusterIdentifier,
    revokeEndpointAccess_account,
    revokeEndpointAccess_vpcIds,

    -- * Destructuring the Response
    EndpointAuthorization (..),
    newEndpointAuthorization,

    -- * Response Lenses
    endpointAuthorization_status,
    endpointAuthorization_allowedAllVPCs,
    endpointAuthorization_endpointCount,
    endpointAuthorization_grantor,
    endpointAuthorization_clusterIdentifier,
    endpointAuthorization_grantee,
    endpointAuthorization_allowedVPCs,
    endpointAuthorization_clusterStatus,
    endpointAuthorization_authorizeTime,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newRevokeEndpointAccess' smart constructor.
data RevokeEndpointAccess = RevokeEndpointAccess'
  { -- | Indicates whether to force the revoke action. If true, the
    -- Redshift-managed VPC endpoints associated with the endpoint
    -- authorization are also deleted.
    force :: Prelude.Maybe Prelude.Bool,
    -- | The cluster to revoke access from.
    clusterIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services account ID whose access is to be revoked.
    account :: Prelude.Maybe Prelude.Text,
    -- | The virtual private cloud (VPC) identifiers for which access is to be
    -- revoked.
    vpcIds :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RevokeEndpointAccess' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'force', 'revokeEndpointAccess_force' - Indicates whether to force the revoke action. If true, the
-- Redshift-managed VPC endpoints associated with the endpoint
-- authorization are also deleted.
--
-- 'clusterIdentifier', 'revokeEndpointAccess_clusterIdentifier' - The cluster to revoke access from.
--
-- 'account', 'revokeEndpointAccess_account' - The Amazon Web Services account ID whose access is to be revoked.
--
-- 'vpcIds', 'revokeEndpointAccess_vpcIds' - The virtual private cloud (VPC) identifiers for which access is to be
-- revoked.
newRevokeEndpointAccess ::
  RevokeEndpointAccess
newRevokeEndpointAccess =
  RevokeEndpointAccess'
    { force = Prelude.Nothing,
      clusterIdentifier = Prelude.Nothing,
      account = Prelude.Nothing,
      vpcIds = Prelude.Nothing
    }

-- | Indicates whether to force the revoke action. If true, the
-- Redshift-managed VPC endpoints associated with the endpoint
-- authorization are also deleted.
revokeEndpointAccess_force :: Lens.Lens' RevokeEndpointAccess (Prelude.Maybe Prelude.Bool)
revokeEndpointAccess_force = Lens.lens (\RevokeEndpointAccess' {force} -> force) (\s@RevokeEndpointAccess' {} a -> s {force = a} :: RevokeEndpointAccess)

-- | The cluster to revoke access from.
revokeEndpointAccess_clusterIdentifier :: Lens.Lens' RevokeEndpointAccess (Prelude.Maybe Prelude.Text)
revokeEndpointAccess_clusterIdentifier = Lens.lens (\RevokeEndpointAccess' {clusterIdentifier} -> clusterIdentifier) (\s@RevokeEndpointAccess' {} a -> s {clusterIdentifier = a} :: RevokeEndpointAccess)

-- | The Amazon Web Services account ID whose access is to be revoked.
revokeEndpointAccess_account :: Lens.Lens' RevokeEndpointAccess (Prelude.Maybe Prelude.Text)
revokeEndpointAccess_account = Lens.lens (\RevokeEndpointAccess' {account} -> account) (\s@RevokeEndpointAccess' {} a -> s {account = a} :: RevokeEndpointAccess)

-- | The virtual private cloud (VPC) identifiers for which access is to be
-- revoked.
revokeEndpointAccess_vpcIds :: Lens.Lens' RevokeEndpointAccess (Prelude.Maybe [Prelude.Text])
revokeEndpointAccess_vpcIds = Lens.lens (\RevokeEndpointAccess' {vpcIds} -> vpcIds) (\s@RevokeEndpointAccess' {} a -> s {vpcIds = a} :: RevokeEndpointAccess) Prelude.. Lens.mapping Lens.coerced

instance Core.AWSRequest RevokeEndpointAccess where
  type
    AWSResponse RevokeEndpointAccess =
      EndpointAuthorization
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "RevokeEndpointAccessResult"
      (\s h x -> Core.parseXML x)

instance Prelude.Hashable RevokeEndpointAccess

instance Prelude.NFData RevokeEndpointAccess

instance Core.ToHeaders RevokeEndpointAccess where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath RevokeEndpointAccess where
  toPath = Prelude.const "/"

instance Core.ToQuery RevokeEndpointAccess where
  toQuery RevokeEndpointAccess' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("RevokeEndpointAccess" :: Prelude.ByteString),
        "Version"
          Core.=: ("2012-12-01" :: Prelude.ByteString),
        "Force" Core.=: force,
        "ClusterIdentifier" Core.=: clusterIdentifier,
        "Account" Core.=: account,
        "VpcIds"
          Core.=: Core.toQuery
            ( Core.toQueryList "VpcIdentifier"
                Prelude.<$> vpcIds
            )
      ]
