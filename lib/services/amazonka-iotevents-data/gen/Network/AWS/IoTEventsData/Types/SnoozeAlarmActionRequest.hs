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
-- Module      : Network.AWS.IoTEventsData.Types.SnoozeAlarmActionRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEventsData.Types.SnoozeAlarmActionRequest where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information needed to snooze the alarm.
--
-- /See:/ 'newSnoozeAlarmActionRequest' smart constructor.
data SnoozeAlarmActionRequest = SnoozeAlarmActionRequest'
  { -- | The value of the key used as a filter to select only the alarms
    -- associated with the
    -- <https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key key>.
    keyValue :: Prelude.Maybe Prelude.Text,
    -- | The note that you can leave when you snooze the alarm.
    note :: Prelude.Maybe Prelude.Text,
    -- | The request ID. Each ID must be unique within each batch.
    requestId :: Prelude.Text,
    -- | The name of the alarm model.
    alarmModelName :: Prelude.Text,
    -- | The snooze time in seconds. The alarm automatically changes to the
    -- @NORMAL@ state after this duration.
    snoozeDuration :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SnoozeAlarmActionRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'keyValue', 'snoozeAlarmActionRequest_keyValue' - The value of the key used as a filter to select only the alarms
-- associated with the
-- <https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key key>.
--
-- 'note', 'snoozeAlarmActionRequest_note' - The note that you can leave when you snooze the alarm.
--
-- 'requestId', 'snoozeAlarmActionRequest_requestId' - The request ID. Each ID must be unique within each batch.
--
-- 'alarmModelName', 'snoozeAlarmActionRequest_alarmModelName' - The name of the alarm model.
--
-- 'snoozeDuration', 'snoozeAlarmActionRequest_snoozeDuration' - The snooze time in seconds. The alarm automatically changes to the
-- @NORMAL@ state after this duration.
newSnoozeAlarmActionRequest ::
  -- | 'requestId'
  Prelude.Text ->
  -- | 'alarmModelName'
  Prelude.Text ->
  -- | 'snoozeDuration'
  Prelude.Int ->
  SnoozeAlarmActionRequest
newSnoozeAlarmActionRequest
  pRequestId_
  pAlarmModelName_
  pSnoozeDuration_ =
    SnoozeAlarmActionRequest'
      { keyValue =
          Prelude.Nothing,
        note = Prelude.Nothing,
        requestId = pRequestId_,
        alarmModelName = pAlarmModelName_,
        snoozeDuration = pSnoozeDuration_
      }

-- | The value of the key used as a filter to select only the alarms
-- associated with the
-- <https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key key>.
snoozeAlarmActionRequest_keyValue :: Lens.Lens' SnoozeAlarmActionRequest (Prelude.Maybe Prelude.Text)
snoozeAlarmActionRequest_keyValue = Lens.lens (\SnoozeAlarmActionRequest' {keyValue} -> keyValue) (\s@SnoozeAlarmActionRequest' {} a -> s {keyValue = a} :: SnoozeAlarmActionRequest)

-- | The note that you can leave when you snooze the alarm.
snoozeAlarmActionRequest_note :: Lens.Lens' SnoozeAlarmActionRequest (Prelude.Maybe Prelude.Text)
snoozeAlarmActionRequest_note = Lens.lens (\SnoozeAlarmActionRequest' {note} -> note) (\s@SnoozeAlarmActionRequest' {} a -> s {note = a} :: SnoozeAlarmActionRequest)

-- | The request ID. Each ID must be unique within each batch.
snoozeAlarmActionRequest_requestId :: Lens.Lens' SnoozeAlarmActionRequest Prelude.Text
snoozeAlarmActionRequest_requestId = Lens.lens (\SnoozeAlarmActionRequest' {requestId} -> requestId) (\s@SnoozeAlarmActionRequest' {} a -> s {requestId = a} :: SnoozeAlarmActionRequest)

-- | The name of the alarm model.
snoozeAlarmActionRequest_alarmModelName :: Lens.Lens' SnoozeAlarmActionRequest Prelude.Text
snoozeAlarmActionRequest_alarmModelName = Lens.lens (\SnoozeAlarmActionRequest' {alarmModelName} -> alarmModelName) (\s@SnoozeAlarmActionRequest' {} a -> s {alarmModelName = a} :: SnoozeAlarmActionRequest)

-- | The snooze time in seconds. The alarm automatically changes to the
-- @NORMAL@ state after this duration.
snoozeAlarmActionRequest_snoozeDuration :: Lens.Lens' SnoozeAlarmActionRequest Prelude.Int
snoozeAlarmActionRequest_snoozeDuration = Lens.lens (\SnoozeAlarmActionRequest' {snoozeDuration} -> snoozeDuration) (\s@SnoozeAlarmActionRequest' {} a -> s {snoozeDuration = a} :: SnoozeAlarmActionRequest)

instance Prelude.Hashable SnoozeAlarmActionRequest

instance Prelude.NFData SnoozeAlarmActionRequest

instance Core.ToJSON SnoozeAlarmActionRequest where
  toJSON SnoozeAlarmActionRequest' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("keyValue" Core..=) Prelude.<$> keyValue,
            ("note" Core..=) Prelude.<$> note,
            Prelude.Just ("requestId" Core..= requestId),
            Prelude.Just
              ("alarmModelName" Core..= alarmModelName),
            Prelude.Just
              ("snoozeDuration" Core..= snoozeDuration)
          ]
      )
