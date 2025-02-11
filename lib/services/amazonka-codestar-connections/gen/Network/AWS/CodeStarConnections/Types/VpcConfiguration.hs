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
-- Module      : Network.AWS.CodeStarConnections.Types.VpcConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeStarConnections.Types.VpcConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The VPC configuration provisioned for the host.
--
-- /See:/ 'newVpcConfiguration' smart constructor.
data VpcConfiguration = VpcConfiguration'
  { -- | The value of the Transport Layer Security (TLS) certificate associated
    -- with the infrastructure where your provider type is installed.
    tlsCertificate :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Amazon VPC connected to the infrastructure where your
    -- provider type is installed.
    vpcId :: Prelude.Text,
    -- | The ID of the subnet or subnets associated with the Amazon VPC connected
    -- to the infrastructure where your provider type is installed.
    subnetIds :: Prelude.NonEmpty Prelude.Text,
    -- | The ID of the security group or security groups associated with the
    -- Amazon VPC connected to the infrastructure where your provider type is
    -- installed.
    securityGroupIds :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VpcConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tlsCertificate', 'vpcConfiguration_tlsCertificate' - The value of the Transport Layer Security (TLS) certificate associated
-- with the infrastructure where your provider type is installed.
--
-- 'vpcId', 'vpcConfiguration_vpcId' - The ID of the Amazon VPC connected to the infrastructure where your
-- provider type is installed.
--
-- 'subnetIds', 'vpcConfiguration_subnetIds' - The ID of the subnet or subnets associated with the Amazon VPC connected
-- to the infrastructure where your provider type is installed.
--
-- 'securityGroupIds', 'vpcConfiguration_securityGroupIds' - The ID of the security group or security groups associated with the
-- Amazon VPC connected to the infrastructure where your provider type is
-- installed.
newVpcConfiguration ::
  -- | 'vpcId'
  Prelude.Text ->
  -- | 'subnetIds'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'securityGroupIds'
  Prelude.NonEmpty Prelude.Text ->
  VpcConfiguration
newVpcConfiguration
  pVpcId_
  pSubnetIds_
  pSecurityGroupIds_ =
    VpcConfiguration'
      { tlsCertificate = Prelude.Nothing,
        vpcId = pVpcId_,
        subnetIds = Lens.coerced Lens.# pSubnetIds_,
        securityGroupIds =
          Lens.coerced Lens.# pSecurityGroupIds_
      }

-- | The value of the Transport Layer Security (TLS) certificate associated
-- with the infrastructure where your provider type is installed.
vpcConfiguration_tlsCertificate :: Lens.Lens' VpcConfiguration (Prelude.Maybe Prelude.Text)
vpcConfiguration_tlsCertificate = Lens.lens (\VpcConfiguration' {tlsCertificate} -> tlsCertificate) (\s@VpcConfiguration' {} a -> s {tlsCertificate = a} :: VpcConfiguration)

-- | The ID of the Amazon VPC connected to the infrastructure where your
-- provider type is installed.
vpcConfiguration_vpcId :: Lens.Lens' VpcConfiguration Prelude.Text
vpcConfiguration_vpcId = Lens.lens (\VpcConfiguration' {vpcId} -> vpcId) (\s@VpcConfiguration' {} a -> s {vpcId = a} :: VpcConfiguration)

-- | The ID of the subnet or subnets associated with the Amazon VPC connected
-- to the infrastructure where your provider type is installed.
vpcConfiguration_subnetIds :: Lens.Lens' VpcConfiguration (Prelude.NonEmpty Prelude.Text)
vpcConfiguration_subnetIds = Lens.lens (\VpcConfiguration' {subnetIds} -> subnetIds) (\s@VpcConfiguration' {} a -> s {subnetIds = a} :: VpcConfiguration) Prelude.. Lens.coerced

-- | The ID of the security group or security groups associated with the
-- Amazon VPC connected to the infrastructure where your provider type is
-- installed.
vpcConfiguration_securityGroupIds :: Lens.Lens' VpcConfiguration (Prelude.NonEmpty Prelude.Text)
vpcConfiguration_securityGroupIds = Lens.lens (\VpcConfiguration' {securityGroupIds} -> securityGroupIds) (\s@VpcConfiguration' {} a -> s {securityGroupIds = a} :: VpcConfiguration) Prelude.. Lens.coerced

instance Core.FromJSON VpcConfiguration where
  parseJSON =
    Core.withObject
      "VpcConfiguration"
      ( \x ->
          VpcConfiguration'
            Prelude.<$> (x Core..:? "TlsCertificate")
            Prelude.<*> (x Core..: "VpcId")
            Prelude.<*> (x Core..: "SubnetIds")
            Prelude.<*> (x Core..: "SecurityGroupIds")
      )

instance Prelude.Hashable VpcConfiguration

instance Prelude.NFData VpcConfiguration

instance Core.ToJSON VpcConfiguration where
  toJSON VpcConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("TlsCertificate" Core..=)
              Prelude.<$> tlsCertificate,
            Prelude.Just ("VpcId" Core..= vpcId),
            Prelude.Just ("SubnetIds" Core..= subnetIds),
            Prelude.Just
              ("SecurityGroupIds" Core..= securityGroupIds)
          ]
      )
