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
-- Module      : Network.AWS.MemoryDb.Types.ClusterPendingUpdates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MemoryDb.Types.ClusterPendingUpdates where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MemoryDb.Types.ACLsUpdateStatus
import Network.AWS.MemoryDb.Types.PendingModifiedServiceUpdate
import Network.AWS.MemoryDb.Types.ReshardingStatus
import qualified Network.AWS.Prelude as Prelude

-- | A list of updates being applied to the cluster
--
-- /See:/ 'newClusterPendingUpdates' smart constructor.
data ClusterPendingUpdates = ClusterPendingUpdates'
  { -- | A list of service updates being applied to the cluster
    serviceUpdates :: Prelude.Maybe [PendingModifiedServiceUpdate],
    -- | The status of an online resharding operation.
    resharding :: Prelude.Maybe ReshardingStatus,
    -- | A list of ACLs associated with the cluster that are being updated
    aCLs :: Prelude.Maybe ACLsUpdateStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClusterPendingUpdates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serviceUpdates', 'clusterPendingUpdates_serviceUpdates' - A list of service updates being applied to the cluster
--
-- 'resharding', 'clusterPendingUpdates_resharding' - The status of an online resharding operation.
--
-- 'aCLs', 'clusterPendingUpdates_aCLs' - A list of ACLs associated with the cluster that are being updated
newClusterPendingUpdates ::
  ClusterPendingUpdates
newClusterPendingUpdates =
  ClusterPendingUpdates'
    { serviceUpdates =
        Prelude.Nothing,
      resharding = Prelude.Nothing,
      aCLs = Prelude.Nothing
    }

-- | A list of service updates being applied to the cluster
clusterPendingUpdates_serviceUpdates :: Lens.Lens' ClusterPendingUpdates (Prelude.Maybe [PendingModifiedServiceUpdate])
clusterPendingUpdates_serviceUpdates = Lens.lens (\ClusterPendingUpdates' {serviceUpdates} -> serviceUpdates) (\s@ClusterPendingUpdates' {} a -> s {serviceUpdates = a} :: ClusterPendingUpdates) Prelude.. Lens.mapping Lens.coerced

-- | The status of an online resharding operation.
clusterPendingUpdates_resharding :: Lens.Lens' ClusterPendingUpdates (Prelude.Maybe ReshardingStatus)
clusterPendingUpdates_resharding = Lens.lens (\ClusterPendingUpdates' {resharding} -> resharding) (\s@ClusterPendingUpdates' {} a -> s {resharding = a} :: ClusterPendingUpdates)

-- | A list of ACLs associated with the cluster that are being updated
clusterPendingUpdates_aCLs :: Lens.Lens' ClusterPendingUpdates (Prelude.Maybe ACLsUpdateStatus)
clusterPendingUpdates_aCLs = Lens.lens (\ClusterPendingUpdates' {aCLs} -> aCLs) (\s@ClusterPendingUpdates' {} a -> s {aCLs = a} :: ClusterPendingUpdates)

instance Core.FromJSON ClusterPendingUpdates where
  parseJSON =
    Core.withObject
      "ClusterPendingUpdates"
      ( \x ->
          ClusterPendingUpdates'
            Prelude.<$> (x Core..:? "ServiceUpdates" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Resharding")
            Prelude.<*> (x Core..:? "ACLs")
      )

instance Prelude.Hashable ClusterPendingUpdates

instance Prelude.NFData ClusterPendingUpdates
