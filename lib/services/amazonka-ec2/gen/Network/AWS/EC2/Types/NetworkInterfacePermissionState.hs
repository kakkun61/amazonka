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
-- Module      : Network.AWS.EC2.Types.NetworkInterfacePermissionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkInterfacePermissionState where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.NetworkInterfacePermissionStateCode
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the state of a network interface permission.
--
-- /See:/ 'newNetworkInterfacePermissionState' smart constructor.
data NetworkInterfacePermissionState = NetworkInterfacePermissionState'
  { -- | The state of the permission.
    state :: Prelude.Maybe NetworkInterfacePermissionStateCode,
    -- | A status message, if applicable.
    statusMessage :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NetworkInterfacePermissionState' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'networkInterfacePermissionState_state' - The state of the permission.
--
-- 'statusMessage', 'networkInterfacePermissionState_statusMessage' - A status message, if applicable.
newNetworkInterfacePermissionState ::
  NetworkInterfacePermissionState
newNetworkInterfacePermissionState =
  NetworkInterfacePermissionState'
    { state =
        Prelude.Nothing,
      statusMessage = Prelude.Nothing
    }

-- | The state of the permission.
networkInterfacePermissionState_state :: Lens.Lens' NetworkInterfacePermissionState (Prelude.Maybe NetworkInterfacePermissionStateCode)
networkInterfacePermissionState_state = Lens.lens (\NetworkInterfacePermissionState' {state} -> state) (\s@NetworkInterfacePermissionState' {} a -> s {state = a} :: NetworkInterfacePermissionState)

-- | A status message, if applicable.
networkInterfacePermissionState_statusMessage :: Lens.Lens' NetworkInterfacePermissionState (Prelude.Maybe Prelude.Text)
networkInterfacePermissionState_statusMessage = Lens.lens (\NetworkInterfacePermissionState' {statusMessage} -> statusMessage) (\s@NetworkInterfacePermissionState' {} a -> s {statusMessage = a} :: NetworkInterfacePermissionState)

instance Core.FromXML NetworkInterfacePermissionState where
  parseXML x =
    NetworkInterfacePermissionState'
      Prelude.<$> (x Core..@? "state")
      Prelude.<*> (x Core..@? "statusMessage")

instance
  Prelude.Hashable
    NetworkInterfacePermissionState

instance
  Prelude.NFData
    NetworkInterfacePermissionState
