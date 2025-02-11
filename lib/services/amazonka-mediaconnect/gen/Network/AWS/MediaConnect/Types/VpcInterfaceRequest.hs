{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConnect.Types.VpcInterfaceRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConnect.Types.VpcInterfaceRequest where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConnect.Types.NetworkInterfaceType
import qualified Network.AWS.Prelude as Prelude

-- | Desired VPC Interface for a Flow
--
-- /See:/ 'newVpcInterfaceRequest' smart constructor.
data VpcInterfaceRequest = VpcInterfaceRequest'
  { -- | The type of network interface. If this value is not included in the
    -- request, MediaConnect uses ENA as the networkInterfaceType.
    networkInterfaceType :: Prelude.Maybe NetworkInterfaceType,
    -- | Subnet must be in the AZ of the Flow
    subnetId :: Prelude.Text,
    -- | Security Group IDs to be used on ENI.
    securityGroupIds :: [Prelude.Text],
    -- | Role Arn MediaConnect can assumes to create ENIs in customer\'s account
    roleArn :: Prelude.Text,
    -- | The name of the VPC Interface. This value must be unique within the
    -- current flow.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VpcInterfaceRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'networkInterfaceType', 'vpcInterfaceRequest_networkInterfaceType' - The type of network interface. If this value is not included in the
-- request, MediaConnect uses ENA as the networkInterfaceType.
--
-- 'subnetId', 'vpcInterfaceRequest_subnetId' - Subnet must be in the AZ of the Flow
--
-- 'securityGroupIds', 'vpcInterfaceRequest_securityGroupIds' - Security Group IDs to be used on ENI.
--
-- 'roleArn', 'vpcInterfaceRequest_roleArn' - Role Arn MediaConnect can assumes to create ENIs in customer\'s account
--
-- 'name', 'vpcInterfaceRequest_name' - The name of the VPC Interface. This value must be unique within the
-- current flow.
newVpcInterfaceRequest ::
  -- | 'subnetId'
  Prelude.Text ->
  -- | 'roleArn'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  VpcInterfaceRequest
newVpcInterfaceRequest pSubnetId_ pRoleArn_ pName_ =
  VpcInterfaceRequest'
    { networkInterfaceType =
        Prelude.Nothing,
      subnetId = pSubnetId_,
      securityGroupIds = Prelude.mempty,
      roleArn = pRoleArn_,
      name = pName_
    }

-- | The type of network interface. If this value is not included in the
-- request, MediaConnect uses ENA as the networkInterfaceType.
vpcInterfaceRequest_networkInterfaceType :: Lens.Lens' VpcInterfaceRequest (Prelude.Maybe NetworkInterfaceType)
vpcInterfaceRequest_networkInterfaceType = Lens.lens (\VpcInterfaceRequest' {networkInterfaceType} -> networkInterfaceType) (\s@VpcInterfaceRequest' {} a -> s {networkInterfaceType = a} :: VpcInterfaceRequest)

-- | Subnet must be in the AZ of the Flow
vpcInterfaceRequest_subnetId :: Lens.Lens' VpcInterfaceRequest Prelude.Text
vpcInterfaceRequest_subnetId = Lens.lens (\VpcInterfaceRequest' {subnetId} -> subnetId) (\s@VpcInterfaceRequest' {} a -> s {subnetId = a} :: VpcInterfaceRequest)

-- | Security Group IDs to be used on ENI.
vpcInterfaceRequest_securityGroupIds :: Lens.Lens' VpcInterfaceRequest [Prelude.Text]
vpcInterfaceRequest_securityGroupIds = Lens.lens (\VpcInterfaceRequest' {securityGroupIds} -> securityGroupIds) (\s@VpcInterfaceRequest' {} a -> s {securityGroupIds = a} :: VpcInterfaceRequest) Prelude.. Lens.coerced

-- | Role Arn MediaConnect can assumes to create ENIs in customer\'s account
vpcInterfaceRequest_roleArn :: Lens.Lens' VpcInterfaceRequest Prelude.Text
vpcInterfaceRequest_roleArn = Lens.lens (\VpcInterfaceRequest' {roleArn} -> roleArn) (\s@VpcInterfaceRequest' {} a -> s {roleArn = a} :: VpcInterfaceRequest)

-- | The name of the VPC Interface. This value must be unique within the
-- current flow.
vpcInterfaceRequest_name :: Lens.Lens' VpcInterfaceRequest Prelude.Text
vpcInterfaceRequest_name = Lens.lens (\VpcInterfaceRequest' {name} -> name) (\s@VpcInterfaceRequest' {} a -> s {name = a} :: VpcInterfaceRequest)

instance Prelude.Hashable VpcInterfaceRequest

instance Prelude.NFData VpcInterfaceRequest

instance Core.ToJSON VpcInterfaceRequest where
  toJSON VpcInterfaceRequest' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("networkInterfaceType" Core..=)
              Prelude.<$> networkInterfaceType,
            Prelude.Just ("subnetId" Core..= subnetId),
            Prelude.Just
              ("securityGroupIds" Core..= securityGroupIds),
            Prelude.Just ("roleArn" Core..= roleArn),
            Prelude.Just ("name" Core..= name)
          ]
      )
