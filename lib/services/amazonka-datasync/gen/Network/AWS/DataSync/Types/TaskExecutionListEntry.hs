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
-- Module      : Network.AWS.DataSync.Types.TaskExecutionListEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataSync.Types.TaskExecutionListEntry where

import qualified Network.AWS.Core as Core
import Network.AWS.DataSync.Types.TaskExecutionStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents a single entry in a list of task executions.
-- @TaskExecutionListEntry@ returns an array that contains a list of
-- specific invocations of a task when the
-- <https://docs.aws.amazon.com/datasync/latest/userguide/API_ListTaskExecutions.html ListTaskExecutions>
-- operation is called.
--
-- /See:/ 'newTaskExecutionListEntry' smart constructor.
data TaskExecutionListEntry = TaskExecutionListEntry'
  { -- | The status of a task execution.
    status :: Prelude.Maybe TaskExecutionStatus,
    -- | The Amazon Resource Name (ARN) of the task that was executed.
    taskExecutionArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TaskExecutionListEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'taskExecutionListEntry_status' - The status of a task execution.
--
-- 'taskExecutionArn', 'taskExecutionListEntry_taskExecutionArn' - The Amazon Resource Name (ARN) of the task that was executed.
newTaskExecutionListEntry ::
  TaskExecutionListEntry
newTaskExecutionListEntry =
  TaskExecutionListEntry'
    { status = Prelude.Nothing,
      taskExecutionArn = Prelude.Nothing
    }

-- | The status of a task execution.
taskExecutionListEntry_status :: Lens.Lens' TaskExecutionListEntry (Prelude.Maybe TaskExecutionStatus)
taskExecutionListEntry_status = Lens.lens (\TaskExecutionListEntry' {status} -> status) (\s@TaskExecutionListEntry' {} a -> s {status = a} :: TaskExecutionListEntry)

-- | The Amazon Resource Name (ARN) of the task that was executed.
taskExecutionListEntry_taskExecutionArn :: Lens.Lens' TaskExecutionListEntry (Prelude.Maybe Prelude.Text)
taskExecutionListEntry_taskExecutionArn = Lens.lens (\TaskExecutionListEntry' {taskExecutionArn} -> taskExecutionArn) (\s@TaskExecutionListEntry' {} a -> s {taskExecutionArn = a} :: TaskExecutionListEntry)

instance Core.FromJSON TaskExecutionListEntry where
  parseJSON =
    Core.withObject
      "TaskExecutionListEntry"
      ( \x ->
          TaskExecutionListEntry'
            Prelude.<$> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "TaskExecutionArn")
      )

instance Prelude.Hashable TaskExecutionListEntry

instance Prelude.NFData TaskExecutionListEntry
