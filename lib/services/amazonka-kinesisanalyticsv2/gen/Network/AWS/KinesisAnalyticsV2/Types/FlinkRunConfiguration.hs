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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.FlinkRunConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.FlinkRunConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the starting parameters for a Flink-based Kinesis Data
-- Analytics application.
--
-- /See:/ 'newFlinkRunConfiguration' smart constructor.
data FlinkRunConfiguration = FlinkRunConfiguration'
  { -- | When restoring from a snapshot, specifies whether the runtime is allowed
    -- to skip a state that cannot be mapped to the new program. This will
    -- happen if the program is updated between snapshots to remove stateful
    -- parameters, and state data in the snapshot no longer corresponds to
    -- valid application data. For more information, see
    -- <https://ci.apache.org/projects/flink/flink-docs-release-1.8/ops/state/savepoints.html#allowing-non-restored-state Allowing Non-Restored State>
    -- in the
    -- <https://ci.apache.org/projects/flink/flink-docs-release-1.8/ Apache Flink documentation>.
    --
    -- This value defaults to @false@. If you update your application without
    -- specifying this parameter, @AllowNonRestoredState@ will be set to
    -- @false@, even if it was previously set to @true@.
    allowNonRestoredState :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FlinkRunConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'allowNonRestoredState', 'flinkRunConfiguration_allowNonRestoredState' - When restoring from a snapshot, specifies whether the runtime is allowed
-- to skip a state that cannot be mapped to the new program. This will
-- happen if the program is updated between snapshots to remove stateful
-- parameters, and state data in the snapshot no longer corresponds to
-- valid application data. For more information, see
-- <https://ci.apache.org/projects/flink/flink-docs-release-1.8/ops/state/savepoints.html#allowing-non-restored-state Allowing Non-Restored State>
-- in the
-- <https://ci.apache.org/projects/flink/flink-docs-release-1.8/ Apache Flink documentation>.
--
-- This value defaults to @false@. If you update your application without
-- specifying this parameter, @AllowNonRestoredState@ will be set to
-- @false@, even if it was previously set to @true@.
newFlinkRunConfiguration ::
  FlinkRunConfiguration
newFlinkRunConfiguration =
  FlinkRunConfiguration'
    { allowNonRestoredState =
        Prelude.Nothing
    }

-- | When restoring from a snapshot, specifies whether the runtime is allowed
-- to skip a state that cannot be mapped to the new program. This will
-- happen if the program is updated between snapshots to remove stateful
-- parameters, and state data in the snapshot no longer corresponds to
-- valid application data. For more information, see
-- <https://ci.apache.org/projects/flink/flink-docs-release-1.8/ops/state/savepoints.html#allowing-non-restored-state Allowing Non-Restored State>
-- in the
-- <https://ci.apache.org/projects/flink/flink-docs-release-1.8/ Apache Flink documentation>.
--
-- This value defaults to @false@. If you update your application without
-- specifying this parameter, @AllowNonRestoredState@ will be set to
-- @false@, even if it was previously set to @true@.
flinkRunConfiguration_allowNonRestoredState :: Lens.Lens' FlinkRunConfiguration (Prelude.Maybe Prelude.Bool)
flinkRunConfiguration_allowNonRestoredState = Lens.lens (\FlinkRunConfiguration' {allowNonRestoredState} -> allowNonRestoredState) (\s@FlinkRunConfiguration' {} a -> s {allowNonRestoredState = a} :: FlinkRunConfiguration)

instance Core.FromJSON FlinkRunConfiguration where
  parseJSON =
    Core.withObject
      "FlinkRunConfiguration"
      ( \x ->
          FlinkRunConfiguration'
            Prelude.<$> (x Core..:? "AllowNonRestoredState")
      )

instance Prelude.Hashable FlinkRunConfiguration

instance Prelude.NFData FlinkRunConfiguration

instance Core.ToJSON FlinkRunConfiguration where
  toJSON FlinkRunConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AllowNonRestoredState" Core..=)
              Prelude.<$> allowNonRestoredState
          ]
      )
