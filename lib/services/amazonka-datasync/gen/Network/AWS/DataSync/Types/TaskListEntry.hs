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
-- Module      : Network.AWS.DataSync.Types.TaskListEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataSync.Types.TaskListEntry where

import qualified Network.AWS.Core as Core
import Network.AWS.DataSync.Types.TaskStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents a single entry in a list of tasks. @TaskListEntry@ returns an
-- array that contains a list of tasks when the
-- <https://docs.aws.amazon.com/datasync/latest/userguide/API_ListTasks.html ListTasks>
-- operation is called. A task includes the source and destination file
-- systems to sync and the options to use for the tasks.
--
-- /See:/ 'newTaskListEntry' smart constructor.
data TaskListEntry = TaskListEntry'
  { -- | The status of the task.
    status :: Prelude.Maybe TaskStatus,
    -- | The Amazon Resource Name (ARN) of the task.
    taskArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the task.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TaskListEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'taskListEntry_status' - The status of the task.
--
-- 'taskArn', 'taskListEntry_taskArn' - The Amazon Resource Name (ARN) of the task.
--
-- 'name', 'taskListEntry_name' - The name of the task.
newTaskListEntry ::
  TaskListEntry
newTaskListEntry =
  TaskListEntry'
    { status = Prelude.Nothing,
      taskArn = Prelude.Nothing,
      name = Prelude.Nothing
    }

-- | The status of the task.
taskListEntry_status :: Lens.Lens' TaskListEntry (Prelude.Maybe TaskStatus)
taskListEntry_status = Lens.lens (\TaskListEntry' {status} -> status) (\s@TaskListEntry' {} a -> s {status = a} :: TaskListEntry)

-- | The Amazon Resource Name (ARN) of the task.
taskListEntry_taskArn :: Lens.Lens' TaskListEntry (Prelude.Maybe Prelude.Text)
taskListEntry_taskArn = Lens.lens (\TaskListEntry' {taskArn} -> taskArn) (\s@TaskListEntry' {} a -> s {taskArn = a} :: TaskListEntry)

-- | The name of the task.
taskListEntry_name :: Lens.Lens' TaskListEntry (Prelude.Maybe Prelude.Text)
taskListEntry_name = Lens.lens (\TaskListEntry' {name} -> name) (\s@TaskListEntry' {} a -> s {name = a} :: TaskListEntry)

instance Core.FromJSON TaskListEntry where
  parseJSON =
    Core.withObject
      "TaskListEntry"
      ( \x ->
          TaskListEntry'
            Prelude.<$> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "TaskArn")
            Prelude.<*> (x Core..:? "Name")
      )

instance Prelude.Hashable TaskListEntry

instance Prelude.NFData TaskListEntry
