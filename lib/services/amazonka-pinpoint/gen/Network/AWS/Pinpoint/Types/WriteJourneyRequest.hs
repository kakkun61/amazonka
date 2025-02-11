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
-- Module      : Network.AWS.Pinpoint.Types.WriteJourneyRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.WriteJourneyRequest where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.Activity
import Network.AWS.Pinpoint.Types.JourneyLimits
import Network.AWS.Pinpoint.Types.JourneySchedule
import Network.AWS.Pinpoint.Types.QuietTime
import Network.AWS.Pinpoint.Types.StartCondition
import Network.AWS.Pinpoint.Types.State
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the configuration and other settings for a journey.
--
-- /See:/ 'newWriteJourneyRequest' smart constructor.
data WriteJourneyRequest = WriteJourneyRequest'
  { -- | The status of the journey. Valid values are:
    --
    -- -   DRAFT - Saves the journey and doesn\'t publish it.
    --
    -- -   ACTIVE - Saves and publishes the journey. Depending on the
    --     journey\'s schedule, the journey starts running immediately or at
    --     the scheduled start time. If a journey\'s status is ACTIVE, you
    --     can\'t add, change, or remove activities from it.
    --
    -- PAUSED, CANCELLED, COMPLETED, and CLOSED states are not supported in
    -- requests to create or update a journey. To cancel, pause, or resume a
    -- journey, use the Journey State resource.
    state :: Prelude.Maybe State,
    -- | The date, in ISO 8601 format, when the journey was last modified.
    lastModifiedDate :: Prelude.Maybe Prelude.Text,
    -- | The schedule settings for the journey.
    schedule :: Prelude.Maybe JourneySchedule,
    -- | Specifies whether the journey\'s scheduled start and end times use each
    -- participant\'s local time. To base the schedule on each participant\'s
    -- local time, set this value to true.
    localTime :: Prelude.Maybe Prelude.Bool,
    -- | A map that contains a set of Activity objects, one object for each
    -- activity in the journey. For each Activity object, the key is the unique
    -- identifier (string) for an activity and the value is the settings for
    -- the activity. An activity identifier can contain a maximum of 100
    -- characters. The characters must be alphanumeric characters.
    activities :: Prelude.Maybe (Prelude.HashMap Prelude.Text Activity),
    -- | Specifies whether a journey should be refreshed on segment update.
    refreshOnSegmentUpdate :: Prelude.Maybe Prelude.Bool,
    -- | The messaging and entry limits for the journey.
    limits :: Prelude.Maybe JourneyLimits,
    -- | Specifies whether endpoints in quiet hours should enter a wait till the
    -- end of their quiet hours.
    waitForQuietTime :: Prelude.Maybe Prelude.Bool,
    -- | The quiet time settings for the journey. Quiet time is a specific time
    -- range when a journey doesn\'t send messages to participants, if all the
    -- following conditions are met:
    --
    -- -   The EndpointDemographic.Timezone property of the endpoint for the
    --     participant is set to a valid value.
    --
    -- -   The current time in the participant\'s time zone is later than or
    --     equal to the time specified by the QuietTime.Start property for the
    --     journey.
    --
    -- -   The current time in the participant\'s time zone is earlier than or
    --     equal to the time specified by the QuietTime.End property for the
    --     journey.
    --
    -- If any of the preceding conditions isn\'t met, the participant will
    -- receive messages from the journey, even if quiet time is enabled.
    quietTime :: Prelude.Maybe QuietTime,
    -- | The unique identifier for the first activity in the journey. The
    -- identifier for this activity can contain a maximum of 128 characters.
    -- The characters must be alphanumeric characters.
    startActivity :: Prelude.Maybe Prelude.Text,
    -- | The date, in ISO 8601 format, when the journey was created.
    creationDate :: Prelude.Maybe Prelude.Text,
    -- | The segment that defines which users are participants in the journey.
    startCondition :: Prelude.Maybe StartCondition,
    -- | The frequency with which Amazon Pinpoint evaluates segment and event
    -- data for the journey, as a duration in ISO 8601 format.
    refreshFrequency :: Prelude.Maybe Prelude.Text,
    -- | The name of the journey. A journey name can contain a maximum of 150
    -- characters. The characters can be alphanumeric characters or symbols,
    -- such as underscores (_) or hyphens (-). A journey name can\'t contain
    -- any spaces.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'WriteJourneyRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'writeJourneyRequest_state' - The status of the journey. Valid values are:
--
-- -   DRAFT - Saves the journey and doesn\'t publish it.
--
-- -   ACTIVE - Saves and publishes the journey. Depending on the
--     journey\'s schedule, the journey starts running immediately or at
--     the scheduled start time. If a journey\'s status is ACTIVE, you
--     can\'t add, change, or remove activities from it.
--
-- PAUSED, CANCELLED, COMPLETED, and CLOSED states are not supported in
-- requests to create or update a journey. To cancel, pause, or resume a
-- journey, use the Journey State resource.
--
-- 'lastModifiedDate', 'writeJourneyRequest_lastModifiedDate' - The date, in ISO 8601 format, when the journey was last modified.
--
-- 'schedule', 'writeJourneyRequest_schedule' - The schedule settings for the journey.
--
-- 'localTime', 'writeJourneyRequest_localTime' - Specifies whether the journey\'s scheduled start and end times use each
-- participant\'s local time. To base the schedule on each participant\'s
-- local time, set this value to true.
--
-- 'activities', 'writeJourneyRequest_activities' - A map that contains a set of Activity objects, one object for each
-- activity in the journey. For each Activity object, the key is the unique
-- identifier (string) for an activity and the value is the settings for
-- the activity. An activity identifier can contain a maximum of 100
-- characters. The characters must be alphanumeric characters.
--
-- 'refreshOnSegmentUpdate', 'writeJourneyRequest_refreshOnSegmentUpdate' - Specifies whether a journey should be refreshed on segment update.
--
-- 'limits', 'writeJourneyRequest_limits' - The messaging and entry limits for the journey.
--
-- 'waitForQuietTime', 'writeJourneyRequest_waitForQuietTime' - Specifies whether endpoints in quiet hours should enter a wait till the
-- end of their quiet hours.
--
-- 'quietTime', 'writeJourneyRequest_quietTime' - The quiet time settings for the journey. Quiet time is a specific time
-- range when a journey doesn\'t send messages to participants, if all the
-- following conditions are met:
--
-- -   The EndpointDemographic.Timezone property of the endpoint for the
--     participant is set to a valid value.
--
-- -   The current time in the participant\'s time zone is later than or
--     equal to the time specified by the QuietTime.Start property for the
--     journey.
--
-- -   The current time in the participant\'s time zone is earlier than or
--     equal to the time specified by the QuietTime.End property for the
--     journey.
--
-- If any of the preceding conditions isn\'t met, the participant will
-- receive messages from the journey, even if quiet time is enabled.
--
-- 'startActivity', 'writeJourneyRequest_startActivity' - The unique identifier for the first activity in the journey. The
-- identifier for this activity can contain a maximum of 128 characters.
-- The characters must be alphanumeric characters.
--
-- 'creationDate', 'writeJourneyRequest_creationDate' - The date, in ISO 8601 format, when the journey was created.
--
-- 'startCondition', 'writeJourneyRequest_startCondition' - The segment that defines which users are participants in the journey.
--
-- 'refreshFrequency', 'writeJourneyRequest_refreshFrequency' - The frequency with which Amazon Pinpoint evaluates segment and event
-- data for the journey, as a duration in ISO 8601 format.
--
-- 'name', 'writeJourneyRequest_name' - The name of the journey. A journey name can contain a maximum of 150
-- characters. The characters can be alphanumeric characters or symbols,
-- such as underscores (_) or hyphens (-). A journey name can\'t contain
-- any spaces.
newWriteJourneyRequest ::
  -- | 'name'
  Prelude.Text ->
  WriteJourneyRequest
newWriteJourneyRequest pName_ =
  WriteJourneyRequest'
    { state = Prelude.Nothing,
      lastModifiedDate = Prelude.Nothing,
      schedule = Prelude.Nothing,
      localTime = Prelude.Nothing,
      activities = Prelude.Nothing,
      refreshOnSegmentUpdate = Prelude.Nothing,
      limits = Prelude.Nothing,
      waitForQuietTime = Prelude.Nothing,
      quietTime = Prelude.Nothing,
      startActivity = Prelude.Nothing,
      creationDate = Prelude.Nothing,
      startCondition = Prelude.Nothing,
      refreshFrequency = Prelude.Nothing,
      name = pName_
    }

-- | The status of the journey. Valid values are:
--
-- -   DRAFT - Saves the journey and doesn\'t publish it.
--
-- -   ACTIVE - Saves and publishes the journey. Depending on the
--     journey\'s schedule, the journey starts running immediately or at
--     the scheduled start time. If a journey\'s status is ACTIVE, you
--     can\'t add, change, or remove activities from it.
--
-- PAUSED, CANCELLED, COMPLETED, and CLOSED states are not supported in
-- requests to create or update a journey. To cancel, pause, or resume a
-- journey, use the Journey State resource.
writeJourneyRequest_state :: Lens.Lens' WriteJourneyRequest (Prelude.Maybe State)
writeJourneyRequest_state = Lens.lens (\WriteJourneyRequest' {state} -> state) (\s@WriteJourneyRequest' {} a -> s {state = a} :: WriteJourneyRequest)

-- | The date, in ISO 8601 format, when the journey was last modified.
writeJourneyRequest_lastModifiedDate :: Lens.Lens' WriteJourneyRequest (Prelude.Maybe Prelude.Text)
writeJourneyRequest_lastModifiedDate = Lens.lens (\WriteJourneyRequest' {lastModifiedDate} -> lastModifiedDate) (\s@WriteJourneyRequest' {} a -> s {lastModifiedDate = a} :: WriteJourneyRequest)

-- | The schedule settings for the journey.
writeJourneyRequest_schedule :: Lens.Lens' WriteJourneyRequest (Prelude.Maybe JourneySchedule)
writeJourneyRequest_schedule = Lens.lens (\WriteJourneyRequest' {schedule} -> schedule) (\s@WriteJourneyRequest' {} a -> s {schedule = a} :: WriteJourneyRequest)

-- | Specifies whether the journey\'s scheduled start and end times use each
-- participant\'s local time. To base the schedule on each participant\'s
-- local time, set this value to true.
writeJourneyRequest_localTime :: Lens.Lens' WriteJourneyRequest (Prelude.Maybe Prelude.Bool)
writeJourneyRequest_localTime = Lens.lens (\WriteJourneyRequest' {localTime} -> localTime) (\s@WriteJourneyRequest' {} a -> s {localTime = a} :: WriteJourneyRequest)

-- | A map that contains a set of Activity objects, one object for each
-- activity in the journey. For each Activity object, the key is the unique
-- identifier (string) for an activity and the value is the settings for
-- the activity. An activity identifier can contain a maximum of 100
-- characters. The characters must be alphanumeric characters.
writeJourneyRequest_activities :: Lens.Lens' WriteJourneyRequest (Prelude.Maybe (Prelude.HashMap Prelude.Text Activity))
writeJourneyRequest_activities = Lens.lens (\WriteJourneyRequest' {activities} -> activities) (\s@WriteJourneyRequest' {} a -> s {activities = a} :: WriteJourneyRequest) Prelude.. Lens.mapping Lens.coerced

-- | Specifies whether a journey should be refreshed on segment update.
writeJourneyRequest_refreshOnSegmentUpdate :: Lens.Lens' WriteJourneyRequest (Prelude.Maybe Prelude.Bool)
writeJourneyRequest_refreshOnSegmentUpdate = Lens.lens (\WriteJourneyRequest' {refreshOnSegmentUpdate} -> refreshOnSegmentUpdate) (\s@WriteJourneyRequest' {} a -> s {refreshOnSegmentUpdate = a} :: WriteJourneyRequest)

-- | The messaging and entry limits for the journey.
writeJourneyRequest_limits :: Lens.Lens' WriteJourneyRequest (Prelude.Maybe JourneyLimits)
writeJourneyRequest_limits = Lens.lens (\WriteJourneyRequest' {limits} -> limits) (\s@WriteJourneyRequest' {} a -> s {limits = a} :: WriteJourneyRequest)

-- | Specifies whether endpoints in quiet hours should enter a wait till the
-- end of their quiet hours.
writeJourneyRequest_waitForQuietTime :: Lens.Lens' WriteJourneyRequest (Prelude.Maybe Prelude.Bool)
writeJourneyRequest_waitForQuietTime = Lens.lens (\WriteJourneyRequest' {waitForQuietTime} -> waitForQuietTime) (\s@WriteJourneyRequest' {} a -> s {waitForQuietTime = a} :: WriteJourneyRequest)

-- | The quiet time settings for the journey. Quiet time is a specific time
-- range when a journey doesn\'t send messages to participants, if all the
-- following conditions are met:
--
-- -   The EndpointDemographic.Timezone property of the endpoint for the
--     participant is set to a valid value.
--
-- -   The current time in the participant\'s time zone is later than or
--     equal to the time specified by the QuietTime.Start property for the
--     journey.
--
-- -   The current time in the participant\'s time zone is earlier than or
--     equal to the time specified by the QuietTime.End property for the
--     journey.
--
-- If any of the preceding conditions isn\'t met, the participant will
-- receive messages from the journey, even if quiet time is enabled.
writeJourneyRequest_quietTime :: Lens.Lens' WriteJourneyRequest (Prelude.Maybe QuietTime)
writeJourneyRequest_quietTime = Lens.lens (\WriteJourneyRequest' {quietTime} -> quietTime) (\s@WriteJourneyRequest' {} a -> s {quietTime = a} :: WriteJourneyRequest)

-- | The unique identifier for the first activity in the journey. The
-- identifier for this activity can contain a maximum of 128 characters.
-- The characters must be alphanumeric characters.
writeJourneyRequest_startActivity :: Lens.Lens' WriteJourneyRequest (Prelude.Maybe Prelude.Text)
writeJourneyRequest_startActivity = Lens.lens (\WriteJourneyRequest' {startActivity} -> startActivity) (\s@WriteJourneyRequest' {} a -> s {startActivity = a} :: WriteJourneyRequest)

-- | The date, in ISO 8601 format, when the journey was created.
writeJourneyRequest_creationDate :: Lens.Lens' WriteJourneyRequest (Prelude.Maybe Prelude.Text)
writeJourneyRequest_creationDate = Lens.lens (\WriteJourneyRequest' {creationDate} -> creationDate) (\s@WriteJourneyRequest' {} a -> s {creationDate = a} :: WriteJourneyRequest)

-- | The segment that defines which users are participants in the journey.
writeJourneyRequest_startCondition :: Lens.Lens' WriteJourneyRequest (Prelude.Maybe StartCondition)
writeJourneyRequest_startCondition = Lens.lens (\WriteJourneyRequest' {startCondition} -> startCondition) (\s@WriteJourneyRequest' {} a -> s {startCondition = a} :: WriteJourneyRequest)

-- | The frequency with which Amazon Pinpoint evaluates segment and event
-- data for the journey, as a duration in ISO 8601 format.
writeJourneyRequest_refreshFrequency :: Lens.Lens' WriteJourneyRequest (Prelude.Maybe Prelude.Text)
writeJourneyRequest_refreshFrequency = Lens.lens (\WriteJourneyRequest' {refreshFrequency} -> refreshFrequency) (\s@WriteJourneyRequest' {} a -> s {refreshFrequency = a} :: WriteJourneyRequest)

-- | The name of the journey. A journey name can contain a maximum of 150
-- characters. The characters can be alphanumeric characters or symbols,
-- such as underscores (_) or hyphens (-). A journey name can\'t contain
-- any spaces.
writeJourneyRequest_name :: Lens.Lens' WriteJourneyRequest Prelude.Text
writeJourneyRequest_name = Lens.lens (\WriteJourneyRequest' {name} -> name) (\s@WriteJourneyRequest' {} a -> s {name = a} :: WriteJourneyRequest)

instance Prelude.Hashable WriteJourneyRequest

instance Prelude.NFData WriteJourneyRequest

instance Core.ToJSON WriteJourneyRequest where
  toJSON WriteJourneyRequest' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("State" Core..=) Prelude.<$> state,
            ("LastModifiedDate" Core..=)
              Prelude.<$> lastModifiedDate,
            ("Schedule" Core..=) Prelude.<$> schedule,
            ("LocalTime" Core..=) Prelude.<$> localTime,
            ("Activities" Core..=) Prelude.<$> activities,
            ("RefreshOnSegmentUpdate" Core..=)
              Prelude.<$> refreshOnSegmentUpdate,
            ("Limits" Core..=) Prelude.<$> limits,
            ("WaitForQuietTime" Core..=)
              Prelude.<$> waitForQuietTime,
            ("QuietTime" Core..=) Prelude.<$> quietTime,
            ("StartActivity" Core..=) Prelude.<$> startActivity,
            ("CreationDate" Core..=) Prelude.<$> creationDate,
            ("StartCondition" Core..=)
              Prelude.<$> startCondition,
            ("RefreshFrequency" Core..=)
              Prelude.<$> refreshFrequency,
            Prelude.Just ("Name" Core..= name)
          ]
      )
