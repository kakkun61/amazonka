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
-- Module      : Network.AWS.SecurityHub.Types.AwsEksClusterResourcesVpcConfigDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsEksClusterResourcesVpcConfigDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about the VPC configuration used by the cluster control
-- plane.
--
-- /See:/ 'newAwsEksClusterResourcesVpcConfigDetails' smart constructor.
data AwsEksClusterResourcesVpcConfigDetails = AwsEksClusterResourcesVpcConfigDetails'
  { -- | The security groups that are associated with the cross-account elastic
    -- network interfaces that are used to allow communication between your
    -- nodes and the Amazon EKS control plane.
    securityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | The subnets that are associated with the cluster.
    subnetIds :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEksClusterResourcesVpcConfigDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'securityGroupIds', 'awsEksClusterResourcesVpcConfigDetails_securityGroupIds' - The security groups that are associated with the cross-account elastic
-- network interfaces that are used to allow communication between your
-- nodes and the Amazon EKS control plane.
--
-- 'subnetIds', 'awsEksClusterResourcesVpcConfigDetails_subnetIds' - The subnets that are associated with the cluster.
newAwsEksClusterResourcesVpcConfigDetails ::
  AwsEksClusterResourcesVpcConfigDetails
newAwsEksClusterResourcesVpcConfigDetails =
  AwsEksClusterResourcesVpcConfigDetails'
    { securityGroupIds =
        Prelude.Nothing,
      subnetIds = Prelude.Nothing
    }

-- | The security groups that are associated with the cross-account elastic
-- network interfaces that are used to allow communication between your
-- nodes and the Amazon EKS control plane.
awsEksClusterResourcesVpcConfigDetails_securityGroupIds :: Lens.Lens' AwsEksClusterResourcesVpcConfigDetails (Prelude.Maybe [Prelude.Text])
awsEksClusterResourcesVpcConfigDetails_securityGroupIds = Lens.lens (\AwsEksClusterResourcesVpcConfigDetails' {securityGroupIds} -> securityGroupIds) (\s@AwsEksClusterResourcesVpcConfigDetails' {} a -> s {securityGroupIds = a} :: AwsEksClusterResourcesVpcConfigDetails) Prelude.. Lens.mapping Lens.coerced

-- | The subnets that are associated with the cluster.
awsEksClusterResourcesVpcConfigDetails_subnetIds :: Lens.Lens' AwsEksClusterResourcesVpcConfigDetails (Prelude.Maybe [Prelude.Text])
awsEksClusterResourcesVpcConfigDetails_subnetIds = Lens.lens (\AwsEksClusterResourcesVpcConfigDetails' {subnetIds} -> subnetIds) (\s@AwsEksClusterResourcesVpcConfigDetails' {} a -> s {subnetIds = a} :: AwsEksClusterResourcesVpcConfigDetails) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromJSON
    AwsEksClusterResourcesVpcConfigDetails
  where
  parseJSON =
    Core.withObject
      "AwsEksClusterResourcesVpcConfigDetails"
      ( \x ->
          AwsEksClusterResourcesVpcConfigDetails'
            Prelude.<$> ( x Core..:? "SecurityGroupIds"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "SubnetIds" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    AwsEksClusterResourcesVpcConfigDetails

instance
  Prelude.NFData
    AwsEksClusterResourcesVpcConfigDetails

instance
  Core.ToJSON
    AwsEksClusterResourcesVpcConfigDetails
  where
  toJSON AwsEksClusterResourcesVpcConfigDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SecurityGroupIds" Core..=)
              Prelude.<$> securityGroupIds,
            ("SubnetIds" Core..=) Prelude.<$> subnetIds
          ]
      )
