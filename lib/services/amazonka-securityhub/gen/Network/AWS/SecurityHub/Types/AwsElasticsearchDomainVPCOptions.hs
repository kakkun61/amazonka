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
-- Module      : Network.AWS.SecurityHub.Types.AwsElasticsearchDomainVPCOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsElasticsearchDomainVPCOptions where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information that OpenSearch derives based on @VPCOptions@ for the
-- domain.
--
-- /See:/ 'newAwsElasticsearchDomainVPCOptions' smart constructor.
data AwsElasticsearchDomainVPCOptions = AwsElasticsearchDomainVPCOptions'
  { -- | The list of security group IDs associated with the VPC endpoints for the
    -- domain.
    securityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | A list of subnet IDs associated with the VPC endpoints for the domain.
    subnetIds :: Prelude.Maybe [Prelude.Text],
    -- | ID for the VPC.
    vPCId :: Prelude.Maybe Prelude.Text,
    -- | The list of Availability Zones associated with the VPC subnets.
    availabilityZones :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsElasticsearchDomainVPCOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'securityGroupIds', 'awsElasticsearchDomainVPCOptions_securityGroupIds' - The list of security group IDs associated with the VPC endpoints for the
-- domain.
--
-- 'subnetIds', 'awsElasticsearchDomainVPCOptions_subnetIds' - A list of subnet IDs associated with the VPC endpoints for the domain.
--
-- 'vPCId', 'awsElasticsearchDomainVPCOptions_vPCId' - ID for the VPC.
--
-- 'availabilityZones', 'awsElasticsearchDomainVPCOptions_availabilityZones' - The list of Availability Zones associated with the VPC subnets.
newAwsElasticsearchDomainVPCOptions ::
  AwsElasticsearchDomainVPCOptions
newAwsElasticsearchDomainVPCOptions =
  AwsElasticsearchDomainVPCOptions'
    { securityGroupIds =
        Prelude.Nothing,
      subnetIds = Prelude.Nothing,
      vPCId = Prelude.Nothing,
      availabilityZones = Prelude.Nothing
    }

-- | The list of security group IDs associated with the VPC endpoints for the
-- domain.
awsElasticsearchDomainVPCOptions_securityGroupIds :: Lens.Lens' AwsElasticsearchDomainVPCOptions (Prelude.Maybe [Prelude.Text])
awsElasticsearchDomainVPCOptions_securityGroupIds = Lens.lens (\AwsElasticsearchDomainVPCOptions' {securityGroupIds} -> securityGroupIds) (\s@AwsElasticsearchDomainVPCOptions' {} a -> s {securityGroupIds = a} :: AwsElasticsearchDomainVPCOptions) Prelude.. Lens.mapping Lens.coerced

-- | A list of subnet IDs associated with the VPC endpoints for the domain.
awsElasticsearchDomainVPCOptions_subnetIds :: Lens.Lens' AwsElasticsearchDomainVPCOptions (Prelude.Maybe [Prelude.Text])
awsElasticsearchDomainVPCOptions_subnetIds = Lens.lens (\AwsElasticsearchDomainVPCOptions' {subnetIds} -> subnetIds) (\s@AwsElasticsearchDomainVPCOptions' {} a -> s {subnetIds = a} :: AwsElasticsearchDomainVPCOptions) Prelude.. Lens.mapping Lens.coerced

-- | ID for the VPC.
awsElasticsearchDomainVPCOptions_vPCId :: Lens.Lens' AwsElasticsearchDomainVPCOptions (Prelude.Maybe Prelude.Text)
awsElasticsearchDomainVPCOptions_vPCId = Lens.lens (\AwsElasticsearchDomainVPCOptions' {vPCId} -> vPCId) (\s@AwsElasticsearchDomainVPCOptions' {} a -> s {vPCId = a} :: AwsElasticsearchDomainVPCOptions)

-- | The list of Availability Zones associated with the VPC subnets.
awsElasticsearchDomainVPCOptions_availabilityZones :: Lens.Lens' AwsElasticsearchDomainVPCOptions (Prelude.Maybe [Prelude.Text])
awsElasticsearchDomainVPCOptions_availabilityZones = Lens.lens (\AwsElasticsearchDomainVPCOptions' {availabilityZones} -> availabilityZones) (\s@AwsElasticsearchDomainVPCOptions' {} a -> s {availabilityZones = a} :: AwsElasticsearchDomainVPCOptions) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromJSON
    AwsElasticsearchDomainVPCOptions
  where
  parseJSON =
    Core.withObject
      "AwsElasticsearchDomainVPCOptions"
      ( \x ->
          AwsElasticsearchDomainVPCOptions'
            Prelude.<$> ( x Core..:? "SecurityGroupIds"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "SubnetIds" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "VPCId")
            Prelude.<*> ( x Core..:? "AvailabilityZones"
                            Core..!= Prelude.mempty
                        )
      )

instance
  Prelude.Hashable
    AwsElasticsearchDomainVPCOptions

instance
  Prelude.NFData
    AwsElasticsearchDomainVPCOptions

instance Core.ToJSON AwsElasticsearchDomainVPCOptions where
  toJSON AwsElasticsearchDomainVPCOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SecurityGroupIds" Core..=)
              Prelude.<$> securityGroupIds,
            ("SubnetIds" Core..=) Prelude.<$> subnetIds,
            ("VPCId" Core..=) Prelude.<$> vPCId,
            ("AvailabilityZones" Core..=)
              Prelude.<$> availabilityZones
          ]
      )
