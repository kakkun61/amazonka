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
-- Module      : Network.AWS.NetworkManager.Types.TransitGatewayRegistration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.NetworkManager.Types.TransitGatewayRegistration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkManager.Types.TransitGatewayRegistrationStateReason
import qualified Network.AWS.Prelude as Prelude

-- | Describes the registration of a transit gateway to a global network.
--
-- /See:/ 'newTransitGatewayRegistration' smart constructor.
data TransitGatewayRegistration = TransitGatewayRegistration'
  { -- | The state of the transit gateway registration.
    state :: Prelude.Maybe TransitGatewayRegistrationStateReason,
    -- | The ID of the global network.
    globalNetworkId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the transit gateway.
    transitGatewayArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TransitGatewayRegistration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'transitGatewayRegistration_state' - The state of the transit gateway registration.
--
-- 'globalNetworkId', 'transitGatewayRegistration_globalNetworkId' - The ID of the global network.
--
-- 'transitGatewayArn', 'transitGatewayRegistration_transitGatewayArn' - The Amazon Resource Name (ARN) of the transit gateway.
newTransitGatewayRegistration ::
  TransitGatewayRegistration
newTransitGatewayRegistration =
  TransitGatewayRegistration'
    { state =
        Prelude.Nothing,
      globalNetworkId = Prelude.Nothing,
      transitGatewayArn = Prelude.Nothing
    }

-- | The state of the transit gateway registration.
transitGatewayRegistration_state :: Lens.Lens' TransitGatewayRegistration (Prelude.Maybe TransitGatewayRegistrationStateReason)
transitGatewayRegistration_state = Lens.lens (\TransitGatewayRegistration' {state} -> state) (\s@TransitGatewayRegistration' {} a -> s {state = a} :: TransitGatewayRegistration)

-- | The ID of the global network.
transitGatewayRegistration_globalNetworkId :: Lens.Lens' TransitGatewayRegistration (Prelude.Maybe Prelude.Text)
transitGatewayRegistration_globalNetworkId = Lens.lens (\TransitGatewayRegistration' {globalNetworkId} -> globalNetworkId) (\s@TransitGatewayRegistration' {} a -> s {globalNetworkId = a} :: TransitGatewayRegistration)

-- | The Amazon Resource Name (ARN) of the transit gateway.
transitGatewayRegistration_transitGatewayArn :: Lens.Lens' TransitGatewayRegistration (Prelude.Maybe Prelude.Text)
transitGatewayRegistration_transitGatewayArn = Lens.lens (\TransitGatewayRegistration' {transitGatewayArn} -> transitGatewayArn) (\s@TransitGatewayRegistration' {} a -> s {transitGatewayArn = a} :: TransitGatewayRegistration)

instance Core.FromJSON TransitGatewayRegistration where
  parseJSON =
    Core.withObject
      "TransitGatewayRegistration"
      ( \x ->
          TransitGatewayRegistration'
            Prelude.<$> (x Core..:? "State")
            Prelude.<*> (x Core..:? "GlobalNetworkId")
            Prelude.<*> (x Core..:? "TransitGatewayArn")
      )

instance Prelude.Hashable TransitGatewayRegistration

instance Prelude.NFData TransitGatewayRegistration
