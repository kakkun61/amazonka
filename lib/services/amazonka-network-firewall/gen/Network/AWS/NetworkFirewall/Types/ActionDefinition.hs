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
-- Module      : Network.AWS.NetworkFirewall.Types.ActionDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.NetworkFirewall.Types.ActionDefinition where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkFirewall.Types.PublishMetricAction
import qualified Network.AWS.Prelude as Prelude

-- | A custom action to use in stateless rule actions settings. This is used
-- in CustomAction.
--
-- /See:/ 'newActionDefinition' smart constructor.
data ActionDefinition = ActionDefinition'
  { -- | Stateless inspection criteria that publishes the specified metrics to
    -- Amazon CloudWatch for the matching packet. This setting defines a
    -- CloudWatch dimension value to be published.
    --
    -- You can pair this custom action with any of the standard stateless rule
    -- actions. For example, you could pair this in a rule action with the
    -- standard action that forwards the packet for stateful inspection. Then,
    -- when a packet matches the rule, Network Firewall publishes metrics for
    -- the packet and forwards it.
    publishMetricAction :: Prelude.Maybe PublishMetricAction
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ActionDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'publishMetricAction', 'actionDefinition_publishMetricAction' - Stateless inspection criteria that publishes the specified metrics to
-- Amazon CloudWatch for the matching packet. This setting defines a
-- CloudWatch dimension value to be published.
--
-- You can pair this custom action with any of the standard stateless rule
-- actions. For example, you could pair this in a rule action with the
-- standard action that forwards the packet for stateful inspection. Then,
-- when a packet matches the rule, Network Firewall publishes metrics for
-- the packet and forwards it.
newActionDefinition ::
  ActionDefinition
newActionDefinition =
  ActionDefinition'
    { publishMetricAction =
        Prelude.Nothing
    }

-- | Stateless inspection criteria that publishes the specified metrics to
-- Amazon CloudWatch for the matching packet. This setting defines a
-- CloudWatch dimension value to be published.
--
-- You can pair this custom action with any of the standard stateless rule
-- actions. For example, you could pair this in a rule action with the
-- standard action that forwards the packet for stateful inspection. Then,
-- when a packet matches the rule, Network Firewall publishes metrics for
-- the packet and forwards it.
actionDefinition_publishMetricAction :: Lens.Lens' ActionDefinition (Prelude.Maybe PublishMetricAction)
actionDefinition_publishMetricAction = Lens.lens (\ActionDefinition' {publishMetricAction} -> publishMetricAction) (\s@ActionDefinition' {} a -> s {publishMetricAction = a} :: ActionDefinition)

instance Core.FromJSON ActionDefinition where
  parseJSON =
    Core.withObject
      "ActionDefinition"
      ( \x ->
          ActionDefinition'
            Prelude.<$> (x Core..:? "PublishMetricAction")
      )

instance Prelude.Hashable ActionDefinition

instance Prelude.NFData ActionDefinition

instance Core.ToJSON ActionDefinition where
  toJSON ActionDefinition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("PublishMetricAction" Core..=)
              Prelude.<$> publishMetricAction
          ]
      )
