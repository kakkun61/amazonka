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
-- Module      : Network.AWS.Redshift.AuthorizeClusterSecurityGroupIngress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an inbound (ingress) rule to an Amazon Redshift security group.
-- Depending on whether the application accessing your cluster is running
-- on the Internet or an Amazon EC2 instance, you can authorize inbound
-- access to either a Classless Interdomain Routing (CIDR)\/Internet
-- Protocol (IP) range or to an Amazon EC2 security group. You can add as
-- many as 20 ingress rules to an Amazon Redshift security group.
--
-- If you authorize access to an Amazon EC2 security group, specify
-- /EC2SecurityGroupName/ and /EC2SecurityGroupOwnerId/. The Amazon EC2
-- security group and Amazon Redshift cluster must be in the same Amazon
-- Web Services Region.
--
-- If you authorize access to a CIDR\/IP address range, specify /CIDRIP/.
-- For an overview of CIDR blocks, see the Wikipedia article on
-- <http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing Classless Inter-Domain Routing>.
--
-- You must also associate the security group with a cluster so that
-- clients running on these IP addresses or the EC2 instance are authorized
-- to connect to the cluster. For information about managing security
-- groups, go to
-- <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html Working with Security Groups>
-- in the /Amazon Redshift Cluster Management Guide/.
module Network.AWS.Redshift.AuthorizeClusterSecurityGroupIngress
  ( -- * Creating a Request
    AuthorizeClusterSecurityGroupIngress (..),
    newAuthorizeClusterSecurityGroupIngress,

    -- * Request Lenses
    authorizeClusterSecurityGroupIngress_eC2SecurityGroupOwnerId,
    authorizeClusterSecurityGroupIngress_eC2SecurityGroupName,
    authorizeClusterSecurityGroupIngress_cidrip,
    authorizeClusterSecurityGroupIngress_clusterSecurityGroupName,

    -- * Destructuring the Response
    AuthorizeClusterSecurityGroupIngressResponse (..),
    newAuthorizeClusterSecurityGroupIngressResponse,

    -- * Response Lenses
    authorizeClusterSecurityGroupIngressResponse_clusterSecurityGroup,
    authorizeClusterSecurityGroupIngressResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newAuthorizeClusterSecurityGroupIngress' smart constructor.
data AuthorizeClusterSecurityGroupIngress = AuthorizeClusterSecurityGroupIngress'
  { -- | The Amazon Web Services account number of the owner of the security
    -- group specified by the /EC2SecurityGroupName/ parameter. The Amazon Web
    -- Services Access Key ID is not an acceptable value.
    --
    -- Example: @111122223333@
    eC2SecurityGroupOwnerId :: Prelude.Maybe Prelude.Text,
    -- | The EC2 security group to be added the Amazon Redshift security group.
    eC2SecurityGroupName :: Prelude.Maybe Prelude.Text,
    -- | The IP range to be added the Amazon Redshift security group.
    cidrip :: Prelude.Maybe Prelude.Text,
    -- | The name of the security group to which the ingress rule is added.
    clusterSecurityGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AuthorizeClusterSecurityGroupIngress' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eC2SecurityGroupOwnerId', 'authorizeClusterSecurityGroupIngress_eC2SecurityGroupOwnerId' - The Amazon Web Services account number of the owner of the security
-- group specified by the /EC2SecurityGroupName/ parameter. The Amazon Web
-- Services Access Key ID is not an acceptable value.
--
-- Example: @111122223333@
--
-- 'eC2SecurityGroupName', 'authorizeClusterSecurityGroupIngress_eC2SecurityGroupName' - The EC2 security group to be added the Amazon Redshift security group.
--
-- 'cidrip', 'authorizeClusterSecurityGroupIngress_cidrip' - The IP range to be added the Amazon Redshift security group.
--
-- 'clusterSecurityGroupName', 'authorizeClusterSecurityGroupIngress_clusterSecurityGroupName' - The name of the security group to which the ingress rule is added.
newAuthorizeClusterSecurityGroupIngress ::
  -- | 'clusterSecurityGroupName'
  Prelude.Text ->
  AuthorizeClusterSecurityGroupIngress
newAuthorizeClusterSecurityGroupIngress
  pClusterSecurityGroupName_ =
    AuthorizeClusterSecurityGroupIngress'
      { eC2SecurityGroupOwnerId =
          Prelude.Nothing,
        eC2SecurityGroupName =
          Prelude.Nothing,
        cidrip = Prelude.Nothing,
        clusterSecurityGroupName =
          pClusterSecurityGroupName_
      }

-- | The Amazon Web Services account number of the owner of the security
-- group specified by the /EC2SecurityGroupName/ parameter. The Amazon Web
-- Services Access Key ID is not an acceptable value.
--
-- Example: @111122223333@
authorizeClusterSecurityGroupIngress_eC2SecurityGroupOwnerId :: Lens.Lens' AuthorizeClusterSecurityGroupIngress (Prelude.Maybe Prelude.Text)
authorizeClusterSecurityGroupIngress_eC2SecurityGroupOwnerId = Lens.lens (\AuthorizeClusterSecurityGroupIngress' {eC2SecurityGroupOwnerId} -> eC2SecurityGroupOwnerId) (\s@AuthorizeClusterSecurityGroupIngress' {} a -> s {eC2SecurityGroupOwnerId = a} :: AuthorizeClusterSecurityGroupIngress)

-- | The EC2 security group to be added the Amazon Redshift security group.
authorizeClusterSecurityGroupIngress_eC2SecurityGroupName :: Lens.Lens' AuthorizeClusterSecurityGroupIngress (Prelude.Maybe Prelude.Text)
authorizeClusterSecurityGroupIngress_eC2SecurityGroupName = Lens.lens (\AuthorizeClusterSecurityGroupIngress' {eC2SecurityGroupName} -> eC2SecurityGroupName) (\s@AuthorizeClusterSecurityGroupIngress' {} a -> s {eC2SecurityGroupName = a} :: AuthorizeClusterSecurityGroupIngress)

-- | The IP range to be added the Amazon Redshift security group.
authorizeClusterSecurityGroupIngress_cidrip :: Lens.Lens' AuthorizeClusterSecurityGroupIngress (Prelude.Maybe Prelude.Text)
authorizeClusterSecurityGroupIngress_cidrip = Lens.lens (\AuthorizeClusterSecurityGroupIngress' {cidrip} -> cidrip) (\s@AuthorizeClusterSecurityGroupIngress' {} a -> s {cidrip = a} :: AuthorizeClusterSecurityGroupIngress)

-- | The name of the security group to which the ingress rule is added.
authorizeClusterSecurityGroupIngress_clusterSecurityGroupName :: Lens.Lens' AuthorizeClusterSecurityGroupIngress Prelude.Text
authorizeClusterSecurityGroupIngress_clusterSecurityGroupName = Lens.lens (\AuthorizeClusterSecurityGroupIngress' {clusterSecurityGroupName} -> clusterSecurityGroupName) (\s@AuthorizeClusterSecurityGroupIngress' {} a -> s {clusterSecurityGroupName = a} :: AuthorizeClusterSecurityGroupIngress)

instance
  Core.AWSRequest
    AuthorizeClusterSecurityGroupIngress
  where
  type
    AWSResponse AuthorizeClusterSecurityGroupIngress =
      AuthorizeClusterSecurityGroupIngressResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "AuthorizeClusterSecurityGroupIngressResult"
      ( \s h x ->
          AuthorizeClusterSecurityGroupIngressResponse'
            Prelude.<$> (x Core..@? "ClusterSecurityGroup")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    AuthorizeClusterSecurityGroupIngress

instance
  Prelude.NFData
    AuthorizeClusterSecurityGroupIngress

instance
  Core.ToHeaders
    AuthorizeClusterSecurityGroupIngress
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    AuthorizeClusterSecurityGroupIngress
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    AuthorizeClusterSecurityGroupIngress
  where
  toQuery AuthorizeClusterSecurityGroupIngress' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "AuthorizeClusterSecurityGroupIngress" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2012-12-01" :: Prelude.ByteString),
        "EC2SecurityGroupOwnerId"
          Core.=: eC2SecurityGroupOwnerId,
        "EC2SecurityGroupName" Core.=: eC2SecurityGroupName,
        "CIDRIP" Core.=: cidrip,
        "ClusterSecurityGroupName"
          Core.=: clusterSecurityGroupName
      ]

-- | /See:/ 'newAuthorizeClusterSecurityGroupIngressResponse' smart constructor.
data AuthorizeClusterSecurityGroupIngressResponse = AuthorizeClusterSecurityGroupIngressResponse'
  { clusterSecurityGroup :: Prelude.Maybe ClusterSecurityGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AuthorizeClusterSecurityGroupIngressResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterSecurityGroup', 'authorizeClusterSecurityGroupIngressResponse_clusterSecurityGroup' - Undocumented member.
--
-- 'httpStatus', 'authorizeClusterSecurityGroupIngressResponse_httpStatus' - The response's http status code.
newAuthorizeClusterSecurityGroupIngressResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AuthorizeClusterSecurityGroupIngressResponse
newAuthorizeClusterSecurityGroupIngressResponse
  pHttpStatus_ =
    AuthorizeClusterSecurityGroupIngressResponse'
      { clusterSecurityGroup =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Undocumented member.
authorizeClusterSecurityGroupIngressResponse_clusterSecurityGroup :: Lens.Lens' AuthorizeClusterSecurityGroupIngressResponse (Prelude.Maybe ClusterSecurityGroup)
authorizeClusterSecurityGroupIngressResponse_clusterSecurityGroup = Lens.lens (\AuthorizeClusterSecurityGroupIngressResponse' {clusterSecurityGroup} -> clusterSecurityGroup) (\s@AuthorizeClusterSecurityGroupIngressResponse' {} a -> s {clusterSecurityGroup = a} :: AuthorizeClusterSecurityGroupIngressResponse)

-- | The response's http status code.
authorizeClusterSecurityGroupIngressResponse_httpStatus :: Lens.Lens' AuthorizeClusterSecurityGroupIngressResponse Prelude.Int
authorizeClusterSecurityGroupIngressResponse_httpStatus = Lens.lens (\AuthorizeClusterSecurityGroupIngressResponse' {httpStatus} -> httpStatus) (\s@AuthorizeClusterSecurityGroupIngressResponse' {} a -> s {httpStatus = a} :: AuthorizeClusterSecurityGroupIngressResponse)

instance
  Prelude.NFData
    AuthorizeClusterSecurityGroupIngressResponse
