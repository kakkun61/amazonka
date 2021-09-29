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
-- Module      : Network.AWS.ECS.Types.ClusterConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ClusterConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.ECS.Types.ExecuteCommandConfiguration
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The execute command configuration for the cluster.
--
-- /See:/ 'newClusterConfiguration' smart constructor.
data ClusterConfiguration = ClusterConfiguration'
  { -- | The details of the execute command configuration.
    executeCommandConfiguration :: Prelude.Maybe ExecuteCommandConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClusterConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'executeCommandConfiguration', 'clusterConfiguration_executeCommandConfiguration' - The details of the execute command configuration.
newClusterConfiguration ::
  ClusterConfiguration
newClusterConfiguration =
  ClusterConfiguration'
    { executeCommandConfiguration =
        Prelude.Nothing
    }

-- | The details of the execute command configuration.
clusterConfiguration_executeCommandConfiguration :: Lens.Lens' ClusterConfiguration (Prelude.Maybe ExecuteCommandConfiguration)
clusterConfiguration_executeCommandConfiguration = Lens.lens (\ClusterConfiguration' {executeCommandConfiguration} -> executeCommandConfiguration) (\s@ClusterConfiguration' {} a -> s {executeCommandConfiguration = a} :: ClusterConfiguration)

instance Core.FromJSON ClusterConfiguration where
  parseJSON =
    Core.withObject
      "ClusterConfiguration"
      ( \x ->
          ClusterConfiguration'
            Prelude.<$> (x Core..:? "executeCommandConfiguration")
      )

instance Prelude.Hashable ClusterConfiguration

instance Prelude.NFData ClusterConfiguration

instance Core.ToJSON ClusterConfiguration where
  toJSON ClusterConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("executeCommandConfiguration" Core..=)
              Prelude.<$> executeCommandConfiguration
          ]
      )
