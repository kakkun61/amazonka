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
-- Module      : Network.AWS.Redshift.ModifyEndpointAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies a Redshift-managed VPC endpoint.
module Network.AWS.Redshift.ModifyEndpointAccess
  ( -- * Creating a Request
    ModifyEndpointAccess (..),
    newModifyEndpointAccess,

    -- * Request Lenses
    modifyEndpointAccess_vpcSecurityGroupIds,
    modifyEndpointAccess_endpointName,

    -- * Destructuring the Response
    EndpointAccess (..),
    newEndpointAccess,

    -- * Response Lenses
    endpointAccess_endpointName,
    endpointAccess_endpointCreateTime,
    endpointAccess_subnetGroupName,
    endpointAccess_address,
    endpointAccess_clusterIdentifier,
    endpointAccess_endpointStatus,
    endpointAccess_vpcSecurityGroups,
    endpointAccess_resourceOwner,
    endpointAccess_vpcEndpoint,
    endpointAccess_port,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newModifyEndpointAccess' smart constructor.
data ModifyEndpointAccess = ModifyEndpointAccess'
  { -- | The complete list of VPC security groups associated with the endpoint
    -- after the endpoint is modified.
    vpcSecurityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | The endpoint to be modified.
    endpointName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyEndpointAccess' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vpcSecurityGroupIds', 'modifyEndpointAccess_vpcSecurityGroupIds' - The complete list of VPC security groups associated with the endpoint
-- after the endpoint is modified.
--
-- 'endpointName', 'modifyEndpointAccess_endpointName' - The endpoint to be modified.
newModifyEndpointAccess ::
  -- | 'endpointName'
  Prelude.Text ->
  ModifyEndpointAccess
newModifyEndpointAccess pEndpointName_ =
  ModifyEndpointAccess'
    { vpcSecurityGroupIds =
        Prelude.Nothing,
      endpointName = pEndpointName_
    }

-- | The complete list of VPC security groups associated with the endpoint
-- after the endpoint is modified.
modifyEndpointAccess_vpcSecurityGroupIds :: Lens.Lens' ModifyEndpointAccess (Prelude.Maybe [Prelude.Text])
modifyEndpointAccess_vpcSecurityGroupIds = Lens.lens (\ModifyEndpointAccess' {vpcSecurityGroupIds} -> vpcSecurityGroupIds) (\s@ModifyEndpointAccess' {} a -> s {vpcSecurityGroupIds = a} :: ModifyEndpointAccess) Prelude.. Lens.mapping Lens.coerced

-- | The endpoint to be modified.
modifyEndpointAccess_endpointName :: Lens.Lens' ModifyEndpointAccess Prelude.Text
modifyEndpointAccess_endpointName = Lens.lens (\ModifyEndpointAccess' {endpointName} -> endpointName) (\s@ModifyEndpointAccess' {} a -> s {endpointName = a} :: ModifyEndpointAccess)

instance Core.AWSRequest ModifyEndpointAccess where
  type
    AWSResponse ModifyEndpointAccess =
      EndpointAccess
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ModifyEndpointAccessResult"
      (\s h x -> Core.parseXML x)

instance Prelude.Hashable ModifyEndpointAccess

instance Prelude.NFData ModifyEndpointAccess

instance Core.ToHeaders ModifyEndpointAccess where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ModifyEndpointAccess where
  toPath = Prelude.const "/"

instance Core.ToQuery ModifyEndpointAccess where
  toQuery ModifyEndpointAccess' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("ModifyEndpointAccess" :: Prelude.ByteString),
        "Version"
          Core.=: ("2012-12-01" :: Prelude.ByteString),
        "VpcSecurityGroupIds"
          Core.=: Core.toQuery
            ( Core.toQueryList "VpcSecurityGroupId"
                Prelude.<$> vpcSecurityGroupIds
            ),
        "EndpointName" Core.=: endpointName
      ]
