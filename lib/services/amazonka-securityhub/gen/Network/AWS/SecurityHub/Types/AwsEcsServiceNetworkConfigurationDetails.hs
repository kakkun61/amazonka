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
-- Module      : Network.AWS.SecurityHub.Types.AwsEcsServiceNetworkConfigurationDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsEcsServiceNetworkConfigurationDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails

-- | For tasks that use the @awsvpc@ networking mode, the VPC subnet and
-- security group configuration.
--
-- /See:/ 'newAwsEcsServiceNetworkConfigurationDetails' smart constructor.
data AwsEcsServiceNetworkConfigurationDetails = AwsEcsServiceNetworkConfigurationDetails'
  { -- | The VPC subnet and security group configuration.
    awsVpcConfiguration :: Prelude.Maybe AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEcsServiceNetworkConfigurationDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsVpcConfiguration', 'awsEcsServiceNetworkConfigurationDetails_awsVpcConfiguration' - The VPC subnet and security group configuration.
newAwsEcsServiceNetworkConfigurationDetails ::
  AwsEcsServiceNetworkConfigurationDetails
newAwsEcsServiceNetworkConfigurationDetails =
  AwsEcsServiceNetworkConfigurationDetails'
    { awsVpcConfiguration =
        Prelude.Nothing
    }

-- | The VPC subnet and security group configuration.
awsEcsServiceNetworkConfigurationDetails_awsVpcConfiguration :: Lens.Lens' AwsEcsServiceNetworkConfigurationDetails (Prelude.Maybe AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails)
awsEcsServiceNetworkConfigurationDetails_awsVpcConfiguration = Lens.lens (\AwsEcsServiceNetworkConfigurationDetails' {awsVpcConfiguration} -> awsVpcConfiguration) (\s@AwsEcsServiceNetworkConfigurationDetails' {} a -> s {awsVpcConfiguration = a} :: AwsEcsServiceNetworkConfigurationDetails)

instance
  Core.FromJSON
    AwsEcsServiceNetworkConfigurationDetails
  where
  parseJSON =
    Core.withObject
      "AwsEcsServiceNetworkConfigurationDetails"
      ( \x ->
          AwsEcsServiceNetworkConfigurationDetails'
            Prelude.<$> (x Core..:? "AwsVpcConfiguration")
      )

instance
  Prelude.Hashable
    AwsEcsServiceNetworkConfigurationDetails

instance
  Prelude.NFData
    AwsEcsServiceNetworkConfigurationDetails

instance
  Core.ToJSON
    AwsEcsServiceNetworkConfigurationDetails
  where
  toJSON AwsEcsServiceNetworkConfigurationDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AwsVpcConfiguration" Core..=)
              Prelude.<$> awsVpcConfiguration
          ]
      )
