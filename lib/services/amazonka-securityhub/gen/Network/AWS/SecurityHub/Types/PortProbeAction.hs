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
-- Module      : Network.AWS.SecurityHub.Types.PortProbeAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.PortProbeAction where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.PortProbeDetail

-- | Provided if @ActionType@ is @PORT_PROBE@. It provides details about the
-- attempted port probe that was detected.
--
-- /See:/ 'newPortProbeAction' smart constructor.
data PortProbeAction = PortProbeAction'
  { -- | Information about the ports affected by the port probe.
    portProbeDetails :: Prelude.Maybe [PortProbeDetail],
    -- | Indicates whether the port probe was blocked.
    blocked :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PortProbeAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'portProbeDetails', 'portProbeAction_portProbeDetails' - Information about the ports affected by the port probe.
--
-- 'blocked', 'portProbeAction_blocked' - Indicates whether the port probe was blocked.
newPortProbeAction ::
  PortProbeAction
newPortProbeAction =
  PortProbeAction'
    { portProbeDetails =
        Prelude.Nothing,
      blocked = Prelude.Nothing
    }

-- | Information about the ports affected by the port probe.
portProbeAction_portProbeDetails :: Lens.Lens' PortProbeAction (Prelude.Maybe [PortProbeDetail])
portProbeAction_portProbeDetails = Lens.lens (\PortProbeAction' {portProbeDetails} -> portProbeDetails) (\s@PortProbeAction' {} a -> s {portProbeDetails = a} :: PortProbeAction) Prelude.. Lens.mapping Lens.coerced

-- | Indicates whether the port probe was blocked.
portProbeAction_blocked :: Lens.Lens' PortProbeAction (Prelude.Maybe Prelude.Bool)
portProbeAction_blocked = Lens.lens (\PortProbeAction' {blocked} -> blocked) (\s@PortProbeAction' {} a -> s {blocked = a} :: PortProbeAction)

instance Core.FromJSON PortProbeAction where
  parseJSON =
    Core.withObject
      "PortProbeAction"
      ( \x ->
          PortProbeAction'
            Prelude.<$> ( x Core..:? "PortProbeDetails"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "Blocked")
      )

instance Prelude.Hashable PortProbeAction

instance Prelude.NFData PortProbeAction

instance Core.ToJSON PortProbeAction where
  toJSON PortProbeAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("PortProbeDetails" Core..=)
              Prelude.<$> portProbeDetails,
            ("Blocked" Core..=) Prelude.<$> blocked
          ]
      )
