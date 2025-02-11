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
-- Module      : Network.AWS.Glue.Types.Trigger
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Trigger where

import qualified Network.AWS.Core as Core
import Network.AWS.Glue.Types.Action
import Network.AWS.Glue.Types.EventBatchingCondition
import Network.AWS.Glue.Types.Predicate
import Network.AWS.Glue.Types.TriggerState
import Network.AWS.Glue.Types.TriggerType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about a specific trigger.
--
-- /See:/ 'newTrigger' smart constructor.
data Trigger = Trigger'
  { -- | The name of the workflow associated with the trigger.
    workflowName :: Prelude.Maybe Prelude.Text,
    -- | The current state of the trigger.
    state :: Prelude.Maybe TriggerState,
    -- | The actions initiated by this trigger.
    actions :: Prelude.Maybe [Action],
    -- | A @cron@ expression used to specify the schedule (see
    -- <https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html Time-Based Schedules for Jobs and Crawlers>.
    -- For example, to run something every day at 12:15 UTC, you would specify:
    -- @cron(15 12 * * ? *)@.
    schedule :: Prelude.Maybe Prelude.Text,
    -- | The predicate of this trigger, which defines when it will fire.
    predicate :: Prelude.Maybe Predicate,
    -- | The name of the trigger.
    name :: Prelude.Maybe Prelude.Text,
    -- | Reserved for future use.
    id :: Prelude.Maybe Prelude.Text,
    -- | The type of trigger that this is.
    type' :: Prelude.Maybe TriggerType,
    -- | Batch condition that must be met (specified number of events received or
    -- batch time window expired) before EventBridge event trigger fires.
    eventBatchingCondition :: Prelude.Maybe EventBatchingCondition,
    -- | A description of this trigger.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Trigger' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workflowName', 'trigger_workflowName' - The name of the workflow associated with the trigger.
--
-- 'state', 'trigger_state' - The current state of the trigger.
--
-- 'actions', 'trigger_actions' - The actions initiated by this trigger.
--
-- 'schedule', 'trigger_schedule' - A @cron@ expression used to specify the schedule (see
-- <https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html Time-Based Schedules for Jobs and Crawlers>.
-- For example, to run something every day at 12:15 UTC, you would specify:
-- @cron(15 12 * * ? *)@.
--
-- 'predicate', 'trigger_predicate' - The predicate of this trigger, which defines when it will fire.
--
-- 'name', 'trigger_name' - The name of the trigger.
--
-- 'id', 'trigger_id' - Reserved for future use.
--
-- 'type'', 'trigger_type' - The type of trigger that this is.
--
-- 'eventBatchingCondition', 'trigger_eventBatchingCondition' - Batch condition that must be met (specified number of events received or
-- batch time window expired) before EventBridge event trigger fires.
--
-- 'description', 'trigger_description' - A description of this trigger.
newTrigger ::
  Trigger
newTrigger =
  Trigger'
    { workflowName = Prelude.Nothing,
      state = Prelude.Nothing,
      actions = Prelude.Nothing,
      schedule = Prelude.Nothing,
      predicate = Prelude.Nothing,
      name = Prelude.Nothing,
      id = Prelude.Nothing,
      type' = Prelude.Nothing,
      eventBatchingCondition = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | The name of the workflow associated with the trigger.
trigger_workflowName :: Lens.Lens' Trigger (Prelude.Maybe Prelude.Text)
trigger_workflowName = Lens.lens (\Trigger' {workflowName} -> workflowName) (\s@Trigger' {} a -> s {workflowName = a} :: Trigger)

-- | The current state of the trigger.
trigger_state :: Lens.Lens' Trigger (Prelude.Maybe TriggerState)
trigger_state = Lens.lens (\Trigger' {state} -> state) (\s@Trigger' {} a -> s {state = a} :: Trigger)

-- | The actions initiated by this trigger.
trigger_actions :: Lens.Lens' Trigger (Prelude.Maybe [Action])
trigger_actions = Lens.lens (\Trigger' {actions} -> actions) (\s@Trigger' {} a -> s {actions = a} :: Trigger) Prelude.. Lens.mapping Lens.coerced

-- | A @cron@ expression used to specify the schedule (see
-- <https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html Time-Based Schedules for Jobs and Crawlers>.
-- For example, to run something every day at 12:15 UTC, you would specify:
-- @cron(15 12 * * ? *)@.
trigger_schedule :: Lens.Lens' Trigger (Prelude.Maybe Prelude.Text)
trigger_schedule = Lens.lens (\Trigger' {schedule} -> schedule) (\s@Trigger' {} a -> s {schedule = a} :: Trigger)

-- | The predicate of this trigger, which defines when it will fire.
trigger_predicate :: Lens.Lens' Trigger (Prelude.Maybe Predicate)
trigger_predicate = Lens.lens (\Trigger' {predicate} -> predicate) (\s@Trigger' {} a -> s {predicate = a} :: Trigger)

-- | The name of the trigger.
trigger_name :: Lens.Lens' Trigger (Prelude.Maybe Prelude.Text)
trigger_name = Lens.lens (\Trigger' {name} -> name) (\s@Trigger' {} a -> s {name = a} :: Trigger)

-- | Reserved for future use.
trigger_id :: Lens.Lens' Trigger (Prelude.Maybe Prelude.Text)
trigger_id = Lens.lens (\Trigger' {id} -> id) (\s@Trigger' {} a -> s {id = a} :: Trigger)

-- | The type of trigger that this is.
trigger_type :: Lens.Lens' Trigger (Prelude.Maybe TriggerType)
trigger_type = Lens.lens (\Trigger' {type'} -> type') (\s@Trigger' {} a -> s {type' = a} :: Trigger)

-- | Batch condition that must be met (specified number of events received or
-- batch time window expired) before EventBridge event trigger fires.
trigger_eventBatchingCondition :: Lens.Lens' Trigger (Prelude.Maybe EventBatchingCondition)
trigger_eventBatchingCondition = Lens.lens (\Trigger' {eventBatchingCondition} -> eventBatchingCondition) (\s@Trigger' {} a -> s {eventBatchingCondition = a} :: Trigger)

-- | A description of this trigger.
trigger_description :: Lens.Lens' Trigger (Prelude.Maybe Prelude.Text)
trigger_description = Lens.lens (\Trigger' {description} -> description) (\s@Trigger' {} a -> s {description = a} :: Trigger)

instance Core.FromJSON Trigger where
  parseJSON =
    Core.withObject
      "Trigger"
      ( \x ->
          Trigger'
            Prelude.<$> (x Core..:? "WorkflowName")
            Prelude.<*> (x Core..:? "State")
            Prelude.<*> (x Core..:? "Actions" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Schedule")
            Prelude.<*> (x Core..:? "Predicate")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "EventBatchingCondition")
            Prelude.<*> (x Core..:? "Description")
      )

instance Prelude.Hashable Trigger

instance Prelude.NFData Trigger
