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
-- Module      : Network.AWS.EC2.UpdateSecurityGroupRuleDescriptionsEgress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- [VPC only] Updates the description of an egress (outbound) security
-- group rule. You can replace an existing description, or add a
-- description to a rule that did not have one previously. You can remove a
-- description for a security group rule by omitting the description
-- parameter in the request.
module Network.AWS.EC2.UpdateSecurityGroupRuleDescriptionsEgress
  ( -- * Creating a Request
    UpdateSecurityGroupRuleDescriptionsEgress (..),
    newUpdateSecurityGroupRuleDescriptionsEgress,

    -- * Request Lenses
    updateSecurityGroupRuleDescriptionsEgress_securityGroupRuleDescriptions,
    updateSecurityGroupRuleDescriptionsEgress_ipPermissions,
    updateSecurityGroupRuleDescriptionsEgress_groupId,
    updateSecurityGroupRuleDescriptionsEgress_groupName,
    updateSecurityGroupRuleDescriptionsEgress_dryRun,

    -- * Destructuring the Response
    UpdateSecurityGroupRuleDescriptionsEgressResponse (..),
    newUpdateSecurityGroupRuleDescriptionsEgressResponse,

    -- * Response Lenses
    updateSecurityGroupRuleDescriptionsEgressResponse_return,
    updateSecurityGroupRuleDescriptionsEgressResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateSecurityGroupRuleDescriptionsEgress' smart constructor.
data UpdateSecurityGroupRuleDescriptionsEgress = UpdateSecurityGroupRuleDescriptionsEgress'
  { -- | The description for the egress security group rules. You must specify
    -- either the description or the IP permissions.
    securityGroupRuleDescriptions :: Prelude.Maybe [SecurityGroupRuleDescription],
    -- | The IP permissions for the security group rule. You must specify either
    -- the IP permissions or the description.
    ipPermissions :: Prelude.Maybe [IpPermission],
    -- | The ID of the security group. You must specify either the security group
    -- ID or the security group name in the request. For security groups in a
    -- nondefault VPC, you must specify the security group ID.
    groupId :: Prelude.Maybe Prelude.Text,
    -- | [Default VPC] The name of the security group. You must specify either
    -- the security group ID or the security group name in the request.
    groupName :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateSecurityGroupRuleDescriptionsEgress' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'securityGroupRuleDescriptions', 'updateSecurityGroupRuleDescriptionsEgress_securityGroupRuleDescriptions' - The description for the egress security group rules. You must specify
-- either the description or the IP permissions.
--
-- 'ipPermissions', 'updateSecurityGroupRuleDescriptionsEgress_ipPermissions' - The IP permissions for the security group rule. You must specify either
-- the IP permissions or the description.
--
-- 'groupId', 'updateSecurityGroupRuleDescriptionsEgress_groupId' - The ID of the security group. You must specify either the security group
-- ID or the security group name in the request. For security groups in a
-- nondefault VPC, you must specify the security group ID.
--
-- 'groupName', 'updateSecurityGroupRuleDescriptionsEgress_groupName' - [Default VPC] The name of the security group. You must specify either
-- the security group ID or the security group name in the request.
--
-- 'dryRun', 'updateSecurityGroupRuleDescriptionsEgress_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
newUpdateSecurityGroupRuleDescriptionsEgress ::
  UpdateSecurityGroupRuleDescriptionsEgress
newUpdateSecurityGroupRuleDescriptionsEgress =
  UpdateSecurityGroupRuleDescriptionsEgress'
    { securityGroupRuleDescriptions =
        Prelude.Nothing,
      ipPermissions = Prelude.Nothing,
      groupId = Prelude.Nothing,
      groupName = Prelude.Nothing,
      dryRun = Prelude.Nothing
    }

-- | The description for the egress security group rules. You must specify
-- either the description or the IP permissions.
updateSecurityGroupRuleDescriptionsEgress_securityGroupRuleDescriptions :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsEgress (Prelude.Maybe [SecurityGroupRuleDescription])
updateSecurityGroupRuleDescriptionsEgress_securityGroupRuleDescriptions = Lens.lens (\UpdateSecurityGroupRuleDescriptionsEgress' {securityGroupRuleDescriptions} -> securityGroupRuleDescriptions) (\s@UpdateSecurityGroupRuleDescriptionsEgress' {} a -> s {securityGroupRuleDescriptions = a} :: UpdateSecurityGroupRuleDescriptionsEgress) Prelude.. Lens.mapping Lens.coerced

-- | The IP permissions for the security group rule. You must specify either
-- the IP permissions or the description.
updateSecurityGroupRuleDescriptionsEgress_ipPermissions :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsEgress (Prelude.Maybe [IpPermission])
updateSecurityGroupRuleDescriptionsEgress_ipPermissions = Lens.lens (\UpdateSecurityGroupRuleDescriptionsEgress' {ipPermissions} -> ipPermissions) (\s@UpdateSecurityGroupRuleDescriptionsEgress' {} a -> s {ipPermissions = a} :: UpdateSecurityGroupRuleDescriptionsEgress) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the security group. You must specify either the security group
-- ID or the security group name in the request. For security groups in a
-- nondefault VPC, you must specify the security group ID.
updateSecurityGroupRuleDescriptionsEgress_groupId :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsEgress (Prelude.Maybe Prelude.Text)
updateSecurityGroupRuleDescriptionsEgress_groupId = Lens.lens (\UpdateSecurityGroupRuleDescriptionsEgress' {groupId} -> groupId) (\s@UpdateSecurityGroupRuleDescriptionsEgress' {} a -> s {groupId = a} :: UpdateSecurityGroupRuleDescriptionsEgress)

-- | [Default VPC] The name of the security group. You must specify either
-- the security group ID or the security group name in the request.
updateSecurityGroupRuleDescriptionsEgress_groupName :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsEgress (Prelude.Maybe Prelude.Text)
updateSecurityGroupRuleDescriptionsEgress_groupName = Lens.lens (\UpdateSecurityGroupRuleDescriptionsEgress' {groupName} -> groupName) (\s@UpdateSecurityGroupRuleDescriptionsEgress' {} a -> s {groupName = a} :: UpdateSecurityGroupRuleDescriptionsEgress)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
updateSecurityGroupRuleDescriptionsEgress_dryRun :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsEgress (Prelude.Maybe Prelude.Bool)
updateSecurityGroupRuleDescriptionsEgress_dryRun = Lens.lens (\UpdateSecurityGroupRuleDescriptionsEgress' {dryRun} -> dryRun) (\s@UpdateSecurityGroupRuleDescriptionsEgress' {} a -> s {dryRun = a} :: UpdateSecurityGroupRuleDescriptionsEgress)

instance
  Core.AWSRequest
    UpdateSecurityGroupRuleDescriptionsEgress
  where
  type
    AWSResponse
      UpdateSecurityGroupRuleDescriptionsEgress =
      UpdateSecurityGroupRuleDescriptionsEgressResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          UpdateSecurityGroupRuleDescriptionsEgressResponse'
            Prelude.<$> (x Core..@? "return")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    UpdateSecurityGroupRuleDescriptionsEgress

instance
  Prelude.NFData
    UpdateSecurityGroupRuleDescriptionsEgress

instance
  Core.ToHeaders
    UpdateSecurityGroupRuleDescriptionsEgress
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    UpdateSecurityGroupRuleDescriptionsEgress
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    UpdateSecurityGroupRuleDescriptionsEgress
  where
  toQuery
    UpdateSecurityGroupRuleDescriptionsEgress' {..} =
      Prelude.mconcat
        [ "Action"
            Core.=: ( "UpdateSecurityGroupRuleDescriptionsEgress" ::
                        Prelude.ByteString
                    ),
          "Version"
            Core.=: ("2016-11-15" :: Prelude.ByteString),
          Core.toQuery
            ( Core.toQueryList "SecurityGroupRuleDescription"
                Prelude.<$> securityGroupRuleDescriptions
            ),
          Core.toQuery
            ( Core.toQueryList "IpPermissions"
                Prelude.<$> ipPermissions
            ),
          "GroupId" Core.=: groupId,
          "GroupName" Core.=: groupName,
          "DryRun" Core.=: dryRun
        ]

-- | /See:/ 'newUpdateSecurityGroupRuleDescriptionsEgressResponse' smart constructor.
data UpdateSecurityGroupRuleDescriptionsEgressResponse = UpdateSecurityGroupRuleDescriptionsEgressResponse'
  { -- | Returns @true@ if the request succeeds; otherwise, returns an error.
    return' :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateSecurityGroupRuleDescriptionsEgressResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'return'', 'updateSecurityGroupRuleDescriptionsEgressResponse_return' - Returns @true@ if the request succeeds; otherwise, returns an error.
--
-- 'httpStatus', 'updateSecurityGroupRuleDescriptionsEgressResponse_httpStatus' - The response's http status code.
newUpdateSecurityGroupRuleDescriptionsEgressResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateSecurityGroupRuleDescriptionsEgressResponse
newUpdateSecurityGroupRuleDescriptionsEgressResponse
  pHttpStatus_ =
    UpdateSecurityGroupRuleDescriptionsEgressResponse'
      { return' =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | Returns @true@ if the request succeeds; otherwise, returns an error.
updateSecurityGroupRuleDescriptionsEgressResponse_return :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsEgressResponse (Prelude.Maybe Prelude.Bool)
updateSecurityGroupRuleDescriptionsEgressResponse_return = Lens.lens (\UpdateSecurityGroupRuleDescriptionsEgressResponse' {return'} -> return') (\s@UpdateSecurityGroupRuleDescriptionsEgressResponse' {} a -> s {return' = a} :: UpdateSecurityGroupRuleDescriptionsEgressResponse)

-- | The response's http status code.
updateSecurityGroupRuleDescriptionsEgressResponse_httpStatus :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsEgressResponse Prelude.Int
updateSecurityGroupRuleDescriptionsEgressResponse_httpStatus = Lens.lens (\UpdateSecurityGroupRuleDescriptionsEgressResponse' {httpStatus} -> httpStatus) (\s@UpdateSecurityGroupRuleDescriptionsEgressResponse' {} a -> s {httpStatus = a} :: UpdateSecurityGroupRuleDescriptionsEgressResponse)

instance
  Prelude.NFData
    UpdateSecurityGroupRuleDescriptionsEgressResponse
