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
-- Module      : Network.AWS.AppMesh.Types.TcpRouteAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.TcpRouteAction where

import Network.AWS.AppMesh.Types.WeightedTarget
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the action to take if a match is determined.
--
-- /See:/ 'newTcpRouteAction' smart constructor.
data TcpRouteAction = TcpRouteAction'
  { -- | An object that represents the targets that traffic is routed to when a
    -- request matches the route.
    weightedTargets :: Prelude.NonEmpty WeightedTarget
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TcpRouteAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'weightedTargets', 'tcpRouteAction_weightedTargets' - An object that represents the targets that traffic is routed to when a
-- request matches the route.
newTcpRouteAction ::
  -- | 'weightedTargets'
  Prelude.NonEmpty WeightedTarget ->
  TcpRouteAction
newTcpRouteAction pWeightedTargets_ =
  TcpRouteAction'
    { weightedTargets =
        Lens.coerced Lens.# pWeightedTargets_
    }

-- | An object that represents the targets that traffic is routed to when a
-- request matches the route.
tcpRouteAction_weightedTargets :: Lens.Lens' TcpRouteAction (Prelude.NonEmpty WeightedTarget)
tcpRouteAction_weightedTargets = Lens.lens (\TcpRouteAction' {weightedTargets} -> weightedTargets) (\s@TcpRouteAction' {} a -> s {weightedTargets = a} :: TcpRouteAction) Prelude.. Lens.coerced

instance Core.FromJSON TcpRouteAction where
  parseJSON =
    Core.withObject
      "TcpRouteAction"
      ( \x ->
          TcpRouteAction'
            Prelude.<$> (x Core..: "weightedTargets")
      )

instance Prelude.Hashable TcpRouteAction

instance Prelude.NFData TcpRouteAction

instance Core.ToJSON TcpRouteAction where
  toJSON TcpRouteAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("weightedTargets" Core..= weightedTargets)
          ]
      )
