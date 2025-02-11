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
-- Module      : Network.AWS.MGN.Types.ReplicationConfigurationReplicatedDisk
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MGN.Types.ReplicationConfigurationReplicatedDisk where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MGN.Types.ReplicationConfigurationReplicatedDiskStagingDiskType
import qualified Network.AWS.Prelude as Prelude

-- | Replication Configuration replicated disk.
--
-- /See:/ 'newReplicationConfigurationReplicatedDisk' smart constructor.
data ReplicationConfigurationReplicatedDisk = ReplicationConfigurationReplicatedDisk'
  { -- | Replication Configuration replicated disk staging disk type.
    stagingDiskType :: Prelude.Maybe ReplicationConfigurationReplicatedDiskStagingDiskType,
    -- | Replication Configuration replicated disk IOPs.
    iops :: Prelude.Maybe Prelude.Natural,
    -- | Replication Configuration replicated disk boot disk.
    isBootDisk :: Prelude.Maybe Prelude.Bool,
    -- | Replication Configuration replicated disk device name.
    deviceName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReplicationConfigurationReplicatedDisk' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stagingDiskType', 'replicationConfigurationReplicatedDisk_stagingDiskType' - Replication Configuration replicated disk staging disk type.
--
-- 'iops', 'replicationConfigurationReplicatedDisk_iops' - Replication Configuration replicated disk IOPs.
--
-- 'isBootDisk', 'replicationConfigurationReplicatedDisk_isBootDisk' - Replication Configuration replicated disk boot disk.
--
-- 'deviceName', 'replicationConfigurationReplicatedDisk_deviceName' - Replication Configuration replicated disk device name.
newReplicationConfigurationReplicatedDisk ::
  ReplicationConfigurationReplicatedDisk
newReplicationConfigurationReplicatedDisk =
  ReplicationConfigurationReplicatedDisk'
    { stagingDiskType =
        Prelude.Nothing,
      iops = Prelude.Nothing,
      isBootDisk = Prelude.Nothing,
      deviceName = Prelude.Nothing
    }

-- | Replication Configuration replicated disk staging disk type.
replicationConfigurationReplicatedDisk_stagingDiskType :: Lens.Lens' ReplicationConfigurationReplicatedDisk (Prelude.Maybe ReplicationConfigurationReplicatedDiskStagingDiskType)
replicationConfigurationReplicatedDisk_stagingDiskType = Lens.lens (\ReplicationConfigurationReplicatedDisk' {stagingDiskType} -> stagingDiskType) (\s@ReplicationConfigurationReplicatedDisk' {} a -> s {stagingDiskType = a} :: ReplicationConfigurationReplicatedDisk)

-- | Replication Configuration replicated disk IOPs.
replicationConfigurationReplicatedDisk_iops :: Lens.Lens' ReplicationConfigurationReplicatedDisk (Prelude.Maybe Prelude.Natural)
replicationConfigurationReplicatedDisk_iops = Lens.lens (\ReplicationConfigurationReplicatedDisk' {iops} -> iops) (\s@ReplicationConfigurationReplicatedDisk' {} a -> s {iops = a} :: ReplicationConfigurationReplicatedDisk)

-- | Replication Configuration replicated disk boot disk.
replicationConfigurationReplicatedDisk_isBootDisk :: Lens.Lens' ReplicationConfigurationReplicatedDisk (Prelude.Maybe Prelude.Bool)
replicationConfigurationReplicatedDisk_isBootDisk = Lens.lens (\ReplicationConfigurationReplicatedDisk' {isBootDisk} -> isBootDisk) (\s@ReplicationConfigurationReplicatedDisk' {} a -> s {isBootDisk = a} :: ReplicationConfigurationReplicatedDisk)

-- | Replication Configuration replicated disk device name.
replicationConfigurationReplicatedDisk_deviceName :: Lens.Lens' ReplicationConfigurationReplicatedDisk (Prelude.Maybe Prelude.Text)
replicationConfigurationReplicatedDisk_deviceName = Lens.lens (\ReplicationConfigurationReplicatedDisk' {deviceName} -> deviceName) (\s@ReplicationConfigurationReplicatedDisk' {} a -> s {deviceName = a} :: ReplicationConfigurationReplicatedDisk)

instance
  Core.FromJSON
    ReplicationConfigurationReplicatedDisk
  where
  parseJSON =
    Core.withObject
      "ReplicationConfigurationReplicatedDisk"
      ( \x ->
          ReplicationConfigurationReplicatedDisk'
            Prelude.<$> (x Core..:? "stagingDiskType")
            Prelude.<*> (x Core..:? "iops")
            Prelude.<*> (x Core..:? "isBootDisk")
            Prelude.<*> (x Core..:? "deviceName")
      )

instance
  Prelude.Hashable
    ReplicationConfigurationReplicatedDisk

instance
  Prelude.NFData
    ReplicationConfigurationReplicatedDisk

instance
  Core.ToJSON
    ReplicationConfigurationReplicatedDisk
  where
  toJSON ReplicationConfigurationReplicatedDisk' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("stagingDiskType" Core..=)
              Prelude.<$> stagingDiskType,
            ("iops" Core..=) Prelude.<$> iops,
            ("isBootDisk" Core..=) Prelude.<$> isBootDisk,
            ("deviceName" Core..=) Prelude.<$> deviceName
          ]
      )
