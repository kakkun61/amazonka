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
-- Module      : Network.AWS.LookoutMetrics.Types.VpcConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutMetrics.Types.VpcConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains configuration information about the Amazon Virtual Private
-- Cloud (VPC).
--
-- /See:/ 'newVpcConfiguration' smart constructor.
data VpcConfiguration = VpcConfiguration'
  { -- | An array of strings containing the Amazon VPC subnet IDs (e.g.,
    -- @subnet-0bb1c79de3EXAMPLE@.
    subnetIdList :: [Prelude.Text],
    -- | An array of strings containing the list of security groups.
    securityGroupIdList :: [Prelude.Text]
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
-- 'subnetIdList', 'vpcConfiguration_subnetIdList' - An array of strings containing the Amazon VPC subnet IDs (e.g.,
-- @subnet-0bb1c79de3EXAMPLE@.
--
-- 'securityGroupIdList', 'vpcConfiguration_securityGroupIdList' - An array of strings containing the list of security groups.
newVpcConfiguration ::
  VpcConfiguration
newVpcConfiguration =
  VpcConfiguration'
    { subnetIdList = Prelude.mempty,
      securityGroupIdList = Prelude.mempty
    }

-- | An array of strings containing the Amazon VPC subnet IDs (e.g.,
-- @subnet-0bb1c79de3EXAMPLE@.
vpcConfiguration_subnetIdList :: Lens.Lens' VpcConfiguration [Prelude.Text]
vpcConfiguration_subnetIdList = Lens.lens (\VpcConfiguration' {subnetIdList} -> subnetIdList) (\s@VpcConfiguration' {} a -> s {subnetIdList = a} :: VpcConfiguration) Prelude.. Lens.coerced

-- | An array of strings containing the list of security groups.
vpcConfiguration_securityGroupIdList :: Lens.Lens' VpcConfiguration [Prelude.Text]
vpcConfiguration_securityGroupIdList = Lens.lens (\VpcConfiguration' {securityGroupIdList} -> securityGroupIdList) (\s@VpcConfiguration' {} a -> s {securityGroupIdList = a} :: VpcConfiguration) Prelude.. Lens.coerced

instance Core.FromJSON VpcConfiguration where
  parseJSON =
    Core.withObject
      "VpcConfiguration"
      ( \x ->
          VpcConfiguration'
            Prelude.<$> (x Core..:? "SubnetIdList" Core..!= Prelude.mempty)
            Prelude.<*> ( x Core..:? "SecurityGroupIdList"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable VpcConfiguration

instance Prelude.NFData VpcConfiguration

instance Core.ToJSON VpcConfiguration where
  toJSON VpcConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("SubnetIdList" Core..= subnetIdList),
            Prelude.Just
              ("SecurityGroupIdList" Core..= securityGroupIdList)
          ]
      )
