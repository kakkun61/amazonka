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
-- Module      : Network.AWS.NetworkFirewall.Types.SubnetMapping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.NetworkFirewall.Types.SubnetMapping where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The ID for a subnet that you want to associate with the firewall. This
-- is used with CreateFirewall and AssociateSubnets. AWS Network Firewall
-- creates an instance of the associated firewall in each subnet that you
-- specify, to filter traffic in the subnet\'s Availability Zone.
--
-- /See:/ 'newSubnetMapping' smart constructor.
data SubnetMapping = SubnetMapping'
  { -- | The unique identifier for the subnet.
    subnetId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SubnetMapping' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subnetId', 'subnetMapping_subnetId' - The unique identifier for the subnet.
newSubnetMapping ::
  -- | 'subnetId'
  Prelude.Text ->
  SubnetMapping
newSubnetMapping pSubnetId_ =
  SubnetMapping' {subnetId = pSubnetId_}

-- | The unique identifier for the subnet.
subnetMapping_subnetId :: Lens.Lens' SubnetMapping Prelude.Text
subnetMapping_subnetId = Lens.lens (\SubnetMapping' {subnetId} -> subnetId) (\s@SubnetMapping' {} a -> s {subnetId = a} :: SubnetMapping)

instance Core.FromJSON SubnetMapping where
  parseJSON =
    Core.withObject
      "SubnetMapping"
      ( \x ->
          SubnetMapping' Prelude.<$> (x Core..: "SubnetId")
      )

instance Prelude.Hashable SubnetMapping

instance Prelude.NFData SubnetMapping

instance Core.ToJSON SubnetMapping where
  toJSON SubnetMapping' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("SubnetId" Core..= subnetId)]
      )
