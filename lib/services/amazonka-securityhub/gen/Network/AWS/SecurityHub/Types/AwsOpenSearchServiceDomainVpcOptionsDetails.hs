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
-- Module      : Network.AWS.SecurityHub.Types.AwsOpenSearchServiceDomainVpcOptionsDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsOpenSearchServiceDomainVpcOptionsDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information that OpenSearch Service derives based on the
-- @VPCOptions@ for the domain.
--
-- /See:/ 'newAwsOpenSearchServiceDomainVpcOptionsDetails' smart constructor.
data AwsOpenSearchServiceDomainVpcOptionsDetails = AwsOpenSearchServiceDomainVpcOptionsDetails'
  { -- | The list of security group IDs that are associated with the VPC
    -- endpoints for the domain.
    securityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | A list of subnet IDs that are associated with the VPC endpoints for the
    -- domain.
    subnetIds :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsOpenSearchServiceDomainVpcOptionsDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'securityGroupIds', 'awsOpenSearchServiceDomainVpcOptionsDetails_securityGroupIds' - The list of security group IDs that are associated with the VPC
-- endpoints for the domain.
--
-- 'subnetIds', 'awsOpenSearchServiceDomainVpcOptionsDetails_subnetIds' - A list of subnet IDs that are associated with the VPC endpoints for the
-- domain.
newAwsOpenSearchServiceDomainVpcOptionsDetails ::
  AwsOpenSearchServiceDomainVpcOptionsDetails
newAwsOpenSearchServiceDomainVpcOptionsDetails =
  AwsOpenSearchServiceDomainVpcOptionsDetails'
    { securityGroupIds =
        Prelude.Nothing,
      subnetIds = Prelude.Nothing
    }

-- | The list of security group IDs that are associated with the VPC
-- endpoints for the domain.
awsOpenSearchServiceDomainVpcOptionsDetails_securityGroupIds :: Lens.Lens' AwsOpenSearchServiceDomainVpcOptionsDetails (Prelude.Maybe [Prelude.Text])
awsOpenSearchServiceDomainVpcOptionsDetails_securityGroupIds = Lens.lens (\AwsOpenSearchServiceDomainVpcOptionsDetails' {securityGroupIds} -> securityGroupIds) (\s@AwsOpenSearchServiceDomainVpcOptionsDetails' {} a -> s {securityGroupIds = a} :: AwsOpenSearchServiceDomainVpcOptionsDetails) Prelude.. Lens.mapping Lens.coerced

-- | A list of subnet IDs that are associated with the VPC endpoints for the
-- domain.
awsOpenSearchServiceDomainVpcOptionsDetails_subnetIds :: Lens.Lens' AwsOpenSearchServiceDomainVpcOptionsDetails (Prelude.Maybe [Prelude.Text])
awsOpenSearchServiceDomainVpcOptionsDetails_subnetIds = Lens.lens (\AwsOpenSearchServiceDomainVpcOptionsDetails' {subnetIds} -> subnetIds) (\s@AwsOpenSearchServiceDomainVpcOptionsDetails' {} a -> s {subnetIds = a} :: AwsOpenSearchServiceDomainVpcOptionsDetails) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromJSON
    AwsOpenSearchServiceDomainVpcOptionsDetails
  where
  parseJSON =
    Core.withObject
      "AwsOpenSearchServiceDomainVpcOptionsDetails"
      ( \x ->
          AwsOpenSearchServiceDomainVpcOptionsDetails'
            Prelude.<$> ( x Core..:? "SecurityGroupIds"
                            Core..!= Prelude.mempty
                        )
              Prelude.<*> (x Core..:? "SubnetIds" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    AwsOpenSearchServiceDomainVpcOptionsDetails

instance
  Prelude.NFData
    AwsOpenSearchServiceDomainVpcOptionsDetails

instance
  Core.ToJSON
    AwsOpenSearchServiceDomainVpcOptionsDetails
  where
  toJSON
    AwsOpenSearchServiceDomainVpcOptionsDetails' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("SecurityGroupIds" Core..=)
                Prelude.<$> securityGroupIds,
              ("SubnetIds" Core..=) Prelude.<$> subnetIds
            ]
        )
