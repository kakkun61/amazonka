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
-- Module      : Network.AWS.DataSync.Types.TaskSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataSync.Types.TaskSchedule where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the schedule you want your task to use for repeated
-- executions. For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html Schedule Expressions for Rules>.
--
-- /See:/ 'newTaskSchedule' smart constructor.
data TaskSchedule = TaskSchedule'
  { -- | A cron expression that specifies when DataSync initiates a scheduled
    -- transfer from a source to a destination location.
    scheduleExpression :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TaskSchedule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'scheduleExpression', 'taskSchedule_scheduleExpression' - A cron expression that specifies when DataSync initiates a scheduled
-- transfer from a source to a destination location.
newTaskSchedule ::
  -- | 'scheduleExpression'
  Prelude.Text ->
  TaskSchedule
newTaskSchedule pScheduleExpression_ =
  TaskSchedule'
    { scheduleExpression =
        pScheduleExpression_
    }

-- | A cron expression that specifies when DataSync initiates a scheduled
-- transfer from a source to a destination location.
taskSchedule_scheduleExpression :: Lens.Lens' TaskSchedule Prelude.Text
taskSchedule_scheduleExpression = Lens.lens (\TaskSchedule' {scheduleExpression} -> scheduleExpression) (\s@TaskSchedule' {} a -> s {scheduleExpression = a} :: TaskSchedule)

instance Core.FromJSON TaskSchedule where
  parseJSON =
    Core.withObject
      "TaskSchedule"
      ( \x ->
          TaskSchedule'
            Prelude.<$> (x Core..: "ScheduleExpression")
      )

instance Prelude.Hashable TaskSchedule

instance Prelude.NFData TaskSchedule

instance Core.ToJSON TaskSchedule where
  toJSON TaskSchedule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ScheduleExpression" Core..= scheduleExpression)
          ]
      )
