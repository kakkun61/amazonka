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
-- Module      : Network.AWS.EC2.Types.AssociatedTargetNetwork
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AssociatedTargetNetwork where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.AssociatedNetworkType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes a target network that is associated with a Client VPN
-- endpoint. A target network is a subnet in a VPC.
--
-- /See:/ 'newAssociatedTargetNetwork' smart constructor.
data AssociatedTargetNetwork = AssociatedTargetNetwork'
  { -- | The ID of the subnet.
    networkId :: Prelude.Maybe Prelude.Text,
    -- | The target network type.
    networkType :: Prelude.Maybe AssociatedNetworkType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociatedTargetNetwork' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'networkId', 'associatedTargetNetwork_networkId' - The ID of the subnet.
--
-- 'networkType', 'associatedTargetNetwork_networkType' - The target network type.
newAssociatedTargetNetwork ::
  AssociatedTargetNetwork
newAssociatedTargetNetwork =
  AssociatedTargetNetwork'
    { networkId =
        Prelude.Nothing,
      networkType = Prelude.Nothing
    }

-- | The ID of the subnet.
associatedTargetNetwork_networkId :: Lens.Lens' AssociatedTargetNetwork (Prelude.Maybe Prelude.Text)
associatedTargetNetwork_networkId = Lens.lens (\AssociatedTargetNetwork' {networkId} -> networkId) (\s@AssociatedTargetNetwork' {} a -> s {networkId = a} :: AssociatedTargetNetwork)

-- | The target network type.
associatedTargetNetwork_networkType :: Lens.Lens' AssociatedTargetNetwork (Prelude.Maybe AssociatedNetworkType)
associatedTargetNetwork_networkType = Lens.lens (\AssociatedTargetNetwork' {networkType} -> networkType) (\s@AssociatedTargetNetwork' {} a -> s {networkType = a} :: AssociatedTargetNetwork)

instance Core.FromXML AssociatedTargetNetwork where
  parseXML x =
    AssociatedTargetNetwork'
      Prelude.<$> (x Core..@? "networkId")
      Prelude.<*> (x Core..@? "networkType")

instance Prelude.Hashable AssociatedTargetNetwork

instance Prelude.NFData AssociatedTargetNetwork
