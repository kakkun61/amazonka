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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.ApplicationSnapshotConfigurationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.ApplicationSnapshotConfigurationDescription where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes whether snapshots are enabled for a Flink-based Kinesis Data
-- Analytics application.
--
-- /See:/ 'newApplicationSnapshotConfigurationDescription' smart constructor.
data ApplicationSnapshotConfigurationDescription = ApplicationSnapshotConfigurationDescription'
  { -- | Describes whether snapshots are enabled for a Flink-based Kinesis Data
    -- Analytics application.
    snapshotsEnabled :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApplicationSnapshotConfigurationDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'snapshotsEnabled', 'applicationSnapshotConfigurationDescription_snapshotsEnabled' - Describes whether snapshots are enabled for a Flink-based Kinesis Data
-- Analytics application.
newApplicationSnapshotConfigurationDescription ::
  -- | 'snapshotsEnabled'
  Prelude.Bool ->
  ApplicationSnapshotConfigurationDescription
newApplicationSnapshotConfigurationDescription
  pSnapshotsEnabled_ =
    ApplicationSnapshotConfigurationDescription'
      { snapshotsEnabled =
          pSnapshotsEnabled_
      }

-- | Describes whether snapshots are enabled for a Flink-based Kinesis Data
-- Analytics application.
applicationSnapshotConfigurationDescription_snapshotsEnabled :: Lens.Lens' ApplicationSnapshotConfigurationDescription Prelude.Bool
applicationSnapshotConfigurationDescription_snapshotsEnabled = Lens.lens (\ApplicationSnapshotConfigurationDescription' {snapshotsEnabled} -> snapshotsEnabled) (\s@ApplicationSnapshotConfigurationDescription' {} a -> s {snapshotsEnabled = a} :: ApplicationSnapshotConfigurationDescription)

instance
  Core.FromJSON
    ApplicationSnapshotConfigurationDescription
  where
  parseJSON =
    Core.withObject
      "ApplicationSnapshotConfigurationDescription"
      ( \x ->
          ApplicationSnapshotConfigurationDescription'
            Prelude.<$> (x Core..: "SnapshotsEnabled")
      )

instance
  Prelude.Hashable
    ApplicationSnapshotConfigurationDescription

instance
  Prelude.NFData
    ApplicationSnapshotConfigurationDescription
