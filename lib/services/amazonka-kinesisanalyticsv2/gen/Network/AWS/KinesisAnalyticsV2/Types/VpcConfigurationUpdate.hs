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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.VpcConfigurationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.VpcConfigurationUpdate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes updates to the VPC configuration used by the application.
--
-- /See:/ 'newVpcConfigurationUpdate' smart constructor.
data VpcConfigurationUpdate = VpcConfigurationUpdate'
  { -- | Describes updates to the array of
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html Subnet>
    -- IDs used by the VPC configuration.
    subnetIdUpdates :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Describes updates to the array of
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html SecurityGroup>
    -- IDs used by the VPC configuration.
    securityGroupIdUpdates :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Describes an update to the ID of the VPC configuration.
    vpcConfigurationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VpcConfigurationUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subnetIdUpdates', 'vpcConfigurationUpdate_subnetIdUpdates' - Describes updates to the array of
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html Subnet>
-- IDs used by the VPC configuration.
--
-- 'securityGroupIdUpdates', 'vpcConfigurationUpdate_securityGroupIdUpdates' - Describes updates to the array of
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html SecurityGroup>
-- IDs used by the VPC configuration.
--
-- 'vpcConfigurationId', 'vpcConfigurationUpdate_vpcConfigurationId' - Describes an update to the ID of the VPC configuration.
newVpcConfigurationUpdate ::
  -- | 'vpcConfigurationId'
  Prelude.Text ->
  VpcConfigurationUpdate
newVpcConfigurationUpdate pVpcConfigurationId_ =
  VpcConfigurationUpdate'
    { subnetIdUpdates =
        Prelude.Nothing,
      securityGroupIdUpdates = Prelude.Nothing,
      vpcConfigurationId = pVpcConfigurationId_
    }

-- | Describes updates to the array of
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html Subnet>
-- IDs used by the VPC configuration.
vpcConfigurationUpdate_subnetIdUpdates :: Lens.Lens' VpcConfigurationUpdate (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
vpcConfigurationUpdate_subnetIdUpdates = Lens.lens (\VpcConfigurationUpdate' {subnetIdUpdates} -> subnetIdUpdates) (\s@VpcConfigurationUpdate' {} a -> s {subnetIdUpdates = a} :: VpcConfigurationUpdate) Prelude.. Lens.mapping Lens.coerced

-- | Describes updates to the array of
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html SecurityGroup>
-- IDs used by the VPC configuration.
vpcConfigurationUpdate_securityGroupIdUpdates :: Lens.Lens' VpcConfigurationUpdate (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
vpcConfigurationUpdate_securityGroupIdUpdates = Lens.lens (\VpcConfigurationUpdate' {securityGroupIdUpdates} -> securityGroupIdUpdates) (\s@VpcConfigurationUpdate' {} a -> s {securityGroupIdUpdates = a} :: VpcConfigurationUpdate) Prelude.. Lens.mapping Lens.coerced

-- | Describes an update to the ID of the VPC configuration.
vpcConfigurationUpdate_vpcConfigurationId :: Lens.Lens' VpcConfigurationUpdate Prelude.Text
vpcConfigurationUpdate_vpcConfigurationId = Lens.lens (\VpcConfigurationUpdate' {vpcConfigurationId} -> vpcConfigurationId) (\s@VpcConfigurationUpdate' {} a -> s {vpcConfigurationId = a} :: VpcConfigurationUpdate)

instance Prelude.Hashable VpcConfigurationUpdate

instance Prelude.NFData VpcConfigurationUpdate

instance Core.ToJSON VpcConfigurationUpdate where
  toJSON VpcConfigurationUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SubnetIdUpdates" Core..=)
              Prelude.<$> subnetIdUpdates,
            ("SecurityGroupIdUpdates" Core..=)
              Prelude.<$> securityGroupIdUpdates,
            Prelude.Just
              ("VpcConfigurationId" Core..= vpcConfigurationId)
          ]
      )
