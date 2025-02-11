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
-- Module      : Network.AWS.SageMaker.Types.NeoVpcConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.NeoVpcConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The VpcConfig configuration object that specifies the VPC that you want
-- the compilation jobs to connect to. For more information on controlling
-- access to your Amazon S3 buckets used for compilation job, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/neo-vpc.html Give Amazon SageMaker Compilation Jobs Access to Resources in Your Amazon VPC>.
--
-- /See:/ 'newNeoVpcConfig' smart constructor.
data NeoVpcConfig = NeoVpcConfig'
  { -- | The VPC security group IDs. IDs have the form of @sg-xxxxxxxx@. Specify
    -- the security groups for the VPC that is specified in the @Subnets@
    -- field.
    securityGroupIds :: Prelude.NonEmpty Prelude.Text,
    -- | The ID of the subnets in the VPC that you want to connect the
    -- compilation job to for accessing the model in Amazon S3.
    subnets :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NeoVpcConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'securityGroupIds', 'neoVpcConfig_securityGroupIds' - The VPC security group IDs. IDs have the form of @sg-xxxxxxxx@. Specify
-- the security groups for the VPC that is specified in the @Subnets@
-- field.
--
-- 'subnets', 'neoVpcConfig_subnets' - The ID of the subnets in the VPC that you want to connect the
-- compilation job to for accessing the model in Amazon S3.
newNeoVpcConfig ::
  -- | 'securityGroupIds'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'subnets'
  Prelude.NonEmpty Prelude.Text ->
  NeoVpcConfig
newNeoVpcConfig pSecurityGroupIds_ pSubnets_ =
  NeoVpcConfig'
    { securityGroupIds =
        Lens.coerced Lens.# pSecurityGroupIds_,
      subnets = Lens.coerced Lens.# pSubnets_
    }

-- | The VPC security group IDs. IDs have the form of @sg-xxxxxxxx@. Specify
-- the security groups for the VPC that is specified in the @Subnets@
-- field.
neoVpcConfig_securityGroupIds :: Lens.Lens' NeoVpcConfig (Prelude.NonEmpty Prelude.Text)
neoVpcConfig_securityGroupIds = Lens.lens (\NeoVpcConfig' {securityGroupIds} -> securityGroupIds) (\s@NeoVpcConfig' {} a -> s {securityGroupIds = a} :: NeoVpcConfig) Prelude.. Lens.coerced

-- | The ID of the subnets in the VPC that you want to connect the
-- compilation job to for accessing the model in Amazon S3.
neoVpcConfig_subnets :: Lens.Lens' NeoVpcConfig (Prelude.NonEmpty Prelude.Text)
neoVpcConfig_subnets = Lens.lens (\NeoVpcConfig' {subnets} -> subnets) (\s@NeoVpcConfig' {} a -> s {subnets = a} :: NeoVpcConfig) Prelude.. Lens.coerced

instance Core.FromJSON NeoVpcConfig where
  parseJSON =
    Core.withObject
      "NeoVpcConfig"
      ( \x ->
          NeoVpcConfig'
            Prelude.<$> (x Core..: "SecurityGroupIds")
            Prelude.<*> (x Core..: "Subnets")
      )

instance Prelude.Hashable NeoVpcConfig

instance Prelude.NFData NeoVpcConfig

instance Core.ToJSON NeoVpcConfig where
  toJSON NeoVpcConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("SecurityGroupIds" Core..= securityGroupIds),
            Prelude.Just ("Subnets" Core..= subnets)
          ]
      )
