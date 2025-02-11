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
-- Module      : Network.AWS.EKS.Types.NodegroupUpdateConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EKS.Types.NodegroupUpdateConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The node group update configuration.
--
-- /See:/ 'newNodegroupUpdateConfig' smart constructor.
data NodegroupUpdateConfig = NodegroupUpdateConfig'
  { -- | The maximum number of nodes unavailable at once during a version update.
    -- Nodes will be updated in parallel. This value or
    -- @maxUnavailablePercentage@ is required to have a value.The maximum
    -- number is 100.
    maxUnavailable :: Prelude.Maybe Prelude.Natural,
    -- | The maximum percentage of nodes unavailable during a version update.
    -- This percentage of nodes will be updated in parallel, up to 100 nodes at
    -- once. This value or @maxUnavailable@ is required to have a value.
    maxUnavailablePercentage :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NodegroupUpdateConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxUnavailable', 'nodegroupUpdateConfig_maxUnavailable' - The maximum number of nodes unavailable at once during a version update.
-- Nodes will be updated in parallel. This value or
-- @maxUnavailablePercentage@ is required to have a value.The maximum
-- number is 100.
--
-- 'maxUnavailablePercentage', 'nodegroupUpdateConfig_maxUnavailablePercentage' - The maximum percentage of nodes unavailable during a version update.
-- This percentage of nodes will be updated in parallel, up to 100 nodes at
-- once. This value or @maxUnavailable@ is required to have a value.
newNodegroupUpdateConfig ::
  NodegroupUpdateConfig
newNodegroupUpdateConfig =
  NodegroupUpdateConfig'
    { maxUnavailable =
        Prelude.Nothing,
      maxUnavailablePercentage = Prelude.Nothing
    }

-- | The maximum number of nodes unavailable at once during a version update.
-- Nodes will be updated in parallel. This value or
-- @maxUnavailablePercentage@ is required to have a value.The maximum
-- number is 100.
nodegroupUpdateConfig_maxUnavailable :: Lens.Lens' NodegroupUpdateConfig (Prelude.Maybe Prelude.Natural)
nodegroupUpdateConfig_maxUnavailable = Lens.lens (\NodegroupUpdateConfig' {maxUnavailable} -> maxUnavailable) (\s@NodegroupUpdateConfig' {} a -> s {maxUnavailable = a} :: NodegroupUpdateConfig)

-- | The maximum percentage of nodes unavailable during a version update.
-- This percentage of nodes will be updated in parallel, up to 100 nodes at
-- once. This value or @maxUnavailable@ is required to have a value.
nodegroupUpdateConfig_maxUnavailablePercentage :: Lens.Lens' NodegroupUpdateConfig (Prelude.Maybe Prelude.Natural)
nodegroupUpdateConfig_maxUnavailablePercentage = Lens.lens (\NodegroupUpdateConfig' {maxUnavailablePercentage} -> maxUnavailablePercentage) (\s@NodegroupUpdateConfig' {} a -> s {maxUnavailablePercentage = a} :: NodegroupUpdateConfig)

instance Core.FromJSON NodegroupUpdateConfig where
  parseJSON =
    Core.withObject
      "NodegroupUpdateConfig"
      ( \x ->
          NodegroupUpdateConfig'
            Prelude.<$> (x Core..:? "maxUnavailable")
            Prelude.<*> (x Core..:? "maxUnavailablePercentage")
      )

instance Prelude.Hashable NodegroupUpdateConfig

instance Prelude.NFData NodegroupUpdateConfig

instance Core.ToJSON NodegroupUpdateConfig where
  toJSON NodegroupUpdateConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("maxUnavailable" Core..=)
              Prelude.<$> maxUnavailable,
            ("maxUnavailablePercentage" Core..=)
              Prelude.<$> maxUnavailablePercentage
          ]
      )
