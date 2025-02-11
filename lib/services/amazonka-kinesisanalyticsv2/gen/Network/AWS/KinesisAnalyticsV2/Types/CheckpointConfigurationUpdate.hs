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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.CheckpointConfigurationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.CheckpointConfigurationUpdate where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.ConfigurationType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes updates to the checkpointing parameters for a Flink-based
-- Kinesis Data Analytics application.
--
-- /See:/ 'newCheckpointConfigurationUpdate' smart constructor.
data CheckpointConfigurationUpdate = CheckpointConfigurationUpdate'
  { -- | Describes updates to the interval in milliseconds between checkpoint
    -- operations.
    --
    -- If @CheckpointConfiguration.ConfigurationType@ is @DEFAULT@, the
    -- application will use a @CheckpointInterval@ value of 60000, even if this
    -- value is set to another value using this API or in application code.
    checkpointIntervalUpdate :: Prelude.Maybe Prelude.Natural,
    -- | Describes updates to whether checkpointing is enabled for an
    -- application.
    --
    -- If @CheckpointConfiguration.ConfigurationType@ is @DEFAULT@, the
    -- application will use a @CheckpointingEnabled@ value of @true@, even if
    -- this value is set to another value using this API or in application
    -- code.
    checkpointingEnabledUpdate :: Prelude.Maybe Prelude.Bool,
    -- | Describes updates to the minimum time in milliseconds after a checkpoint
    -- operation completes that a new checkpoint operation can start.
    --
    -- If @CheckpointConfiguration.ConfigurationType@ is @DEFAULT@, the
    -- application will use a @MinPauseBetweenCheckpoints@ value of 5000, even
    -- if this value is set using this API or in application code.
    minPauseBetweenCheckpointsUpdate :: Prelude.Maybe Prelude.Natural,
    -- | Describes updates to whether the application uses the default
    -- checkpointing behavior of Kinesis Data Analytics. You must set this
    -- property to @CUSTOM@ in order to set the @CheckpointingEnabled@,
    -- @CheckpointInterval@, or @MinPauseBetweenCheckpoints@ parameters.
    --
    -- If this value is set to @DEFAULT@, the application will use the
    -- following values, even if they are set to other values using APIs or
    -- application code:
    --
    -- -   __CheckpointingEnabled:__ true
    --
    -- -   __CheckpointInterval:__ 60000
    --
    -- -   __MinPauseBetweenCheckpoints:__ 5000
    configurationTypeUpdate :: Prelude.Maybe ConfigurationType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CheckpointConfigurationUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'checkpointIntervalUpdate', 'checkpointConfigurationUpdate_checkpointIntervalUpdate' - Describes updates to the interval in milliseconds between checkpoint
-- operations.
--
-- If @CheckpointConfiguration.ConfigurationType@ is @DEFAULT@, the
-- application will use a @CheckpointInterval@ value of 60000, even if this
-- value is set to another value using this API or in application code.
--
-- 'checkpointingEnabledUpdate', 'checkpointConfigurationUpdate_checkpointingEnabledUpdate' - Describes updates to whether checkpointing is enabled for an
-- application.
--
-- If @CheckpointConfiguration.ConfigurationType@ is @DEFAULT@, the
-- application will use a @CheckpointingEnabled@ value of @true@, even if
-- this value is set to another value using this API or in application
-- code.
--
-- 'minPauseBetweenCheckpointsUpdate', 'checkpointConfigurationUpdate_minPauseBetweenCheckpointsUpdate' - Describes updates to the minimum time in milliseconds after a checkpoint
-- operation completes that a new checkpoint operation can start.
--
-- If @CheckpointConfiguration.ConfigurationType@ is @DEFAULT@, the
-- application will use a @MinPauseBetweenCheckpoints@ value of 5000, even
-- if this value is set using this API or in application code.
--
-- 'configurationTypeUpdate', 'checkpointConfigurationUpdate_configurationTypeUpdate' - Describes updates to whether the application uses the default
-- checkpointing behavior of Kinesis Data Analytics. You must set this
-- property to @CUSTOM@ in order to set the @CheckpointingEnabled@,
-- @CheckpointInterval@, or @MinPauseBetweenCheckpoints@ parameters.
--
-- If this value is set to @DEFAULT@, the application will use the
-- following values, even if they are set to other values using APIs or
-- application code:
--
-- -   __CheckpointingEnabled:__ true
--
-- -   __CheckpointInterval:__ 60000
--
-- -   __MinPauseBetweenCheckpoints:__ 5000
newCheckpointConfigurationUpdate ::
  CheckpointConfigurationUpdate
newCheckpointConfigurationUpdate =
  CheckpointConfigurationUpdate'
    { checkpointIntervalUpdate =
        Prelude.Nothing,
      checkpointingEnabledUpdate = Prelude.Nothing,
      minPauseBetweenCheckpointsUpdate =
        Prelude.Nothing,
      configurationTypeUpdate = Prelude.Nothing
    }

-- | Describes updates to the interval in milliseconds between checkpoint
-- operations.
--
-- If @CheckpointConfiguration.ConfigurationType@ is @DEFAULT@, the
-- application will use a @CheckpointInterval@ value of 60000, even if this
-- value is set to another value using this API or in application code.
checkpointConfigurationUpdate_checkpointIntervalUpdate :: Lens.Lens' CheckpointConfigurationUpdate (Prelude.Maybe Prelude.Natural)
checkpointConfigurationUpdate_checkpointIntervalUpdate = Lens.lens (\CheckpointConfigurationUpdate' {checkpointIntervalUpdate} -> checkpointIntervalUpdate) (\s@CheckpointConfigurationUpdate' {} a -> s {checkpointIntervalUpdate = a} :: CheckpointConfigurationUpdate)

-- | Describes updates to whether checkpointing is enabled for an
-- application.
--
-- If @CheckpointConfiguration.ConfigurationType@ is @DEFAULT@, the
-- application will use a @CheckpointingEnabled@ value of @true@, even if
-- this value is set to another value using this API or in application
-- code.
checkpointConfigurationUpdate_checkpointingEnabledUpdate :: Lens.Lens' CheckpointConfigurationUpdate (Prelude.Maybe Prelude.Bool)
checkpointConfigurationUpdate_checkpointingEnabledUpdate = Lens.lens (\CheckpointConfigurationUpdate' {checkpointingEnabledUpdate} -> checkpointingEnabledUpdate) (\s@CheckpointConfigurationUpdate' {} a -> s {checkpointingEnabledUpdate = a} :: CheckpointConfigurationUpdate)

-- | Describes updates to the minimum time in milliseconds after a checkpoint
-- operation completes that a new checkpoint operation can start.
--
-- If @CheckpointConfiguration.ConfigurationType@ is @DEFAULT@, the
-- application will use a @MinPauseBetweenCheckpoints@ value of 5000, even
-- if this value is set using this API or in application code.
checkpointConfigurationUpdate_minPauseBetweenCheckpointsUpdate :: Lens.Lens' CheckpointConfigurationUpdate (Prelude.Maybe Prelude.Natural)
checkpointConfigurationUpdate_minPauseBetweenCheckpointsUpdate = Lens.lens (\CheckpointConfigurationUpdate' {minPauseBetweenCheckpointsUpdate} -> minPauseBetweenCheckpointsUpdate) (\s@CheckpointConfigurationUpdate' {} a -> s {minPauseBetweenCheckpointsUpdate = a} :: CheckpointConfigurationUpdate)

-- | Describes updates to whether the application uses the default
-- checkpointing behavior of Kinesis Data Analytics. You must set this
-- property to @CUSTOM@ in order to set the @CheckpointingEnabled@,
-- @CheckpointInterval@, or @MinPauseBetweenCheckpoints@ parameters.
--
-- If this value is set to @DEFAULT@, the application will use the
-- following values, even if they are set to other values using APIs or
-- application code:
--
-- -   __CheckpointingEnabled:__ true
--
-- -   __CheckpointInterval:__ 60000
--
-- -   __MinPauseBetweenCheckpoints:__ 5000
checkpointConfigurationUpdate_configurationTypeUpdate :: Lens.Lens' CheckpointConfigurationUpdate (Prelude.Maybe ConfigurationType)
checkpointConfigurationUpdate_configurationTypeUpdate = Lens.lens (\CheckpointConfigurationUpdate' {configurationTypeUpdate} -> configurationTypeUpdate) (\s@CheckpointConfigurationUpdate' {} a -> s {configurationTypeUpdate = a} :: CheckpointConfigurationUpdate)

instance
  Prelude.Hashable
    CheckpointConfigurationUpdate

instance Prelude.NFData CheckpointConfigurationUpdate

instance Core.ToJSON CheckpointConfigurationUpdate where
  toJSON CheckpointConfigurationUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CheckpointIntervalUpdate" Core..=)
              Prelude.<$> checkpointIntervalUpdate,
            ("CheckpointingEnabledUpdate" Core..=)
              Prelude.<$> checkpointingEnabledUpdate,
            ("MinPauseBetweenCheckpointsUpdate" Core..=)
              Prelude.<$> minPauseBetweenCheckpointsUpdate,
            ("ConfigurationTypeUpdate" Core..=)
              Prelude.<$> configurationTypeUpdate
          ]
      )
