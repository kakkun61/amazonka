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
-- Module      : Network.AWS.IoTEventsData.Types.ResetAlarmActionRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEventsData.Types.ResetAlarmActionRequest where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information needed to reset the alarm.
--
-- /See:/ 'newResetAlarmActionRequest' smart constructor.
data ResetAlarmActionRequest = ResetAlarmActionRequest'
  { -- | The value of the key used as a filter to select only the alarms
    -- associated with the
    -- <https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key key>.
    keyValue :: Prelude.Maybe Prelude.Text,
    -- | The note that you can leave when you reset the alarm.
    note :: Prelude.Maybe Prelude.Text,
    -- | The request ID. Each ID must be unique within each batch.
    requestId :: Prelude.Text,
    -- | The name of the alarm model.
    alarmModelName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResetAlarmActionRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'keyValue', 'resetAlarmActionRequest_keyValue' - The value of the key used as a filter to select only the alarms
-- associated with the
-- <https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key key>.
--
-- 'note', 'resetAlarmActionRequest_note' - The note that you can leave when you reset the alarm.
--
-- 'requestId', 'resetAlarmActionRequest_requestId' - The request ID. Each ID must be unique within each batch.
--
-- 'alarmModelName', 'resetAlarmActionRequest_alarmModelName' - The name of the alarm model.
newResetAlarmActionRequest ::
  -- | 'requestId'
  Prelude.Text ->
  -- | 'alarmModelName'
  Prelude.Text ->
  ResetAlarmActionRequest
newResetAlarmActionRequest
  pRequestId_
  pAlarmModelName_ =
    ResetAlarmActionRequest'
      { keyValue =
          Prelude.Nothing,
        note = Prelude.Nothing,
        requestId = pRequestId_,
        alarmModelName = pAlarmModelName_
      }

-- | The value of the key used as a filter to select only the alarms
-- associated with the
-- <https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key key>.
resetAlarmActionRequest_keyValue :: Lens.Lens' ResetAlarmActionRequest (Prelude.Maybe Prelude.Text)
resetAlarmActionRequest_keyValue = Lens.lens (\ResetAlarmActionRequest' {keyValue} -> keyValue) (\s@ResetAlarmActionRequest' {} a -> s {keyValue = a} :: ResetAlarmActionRequest)

-- | The note that you can leave when you reset the alarm.
resetAlarmActionRequest_note :: Lens.Lens' ResetAlarmActionRequest (Prelude.Maybe Prelude.Text)
resetAlarmActionRequest_note = Lens.lens (\ResetAlarmActionRequest' {note} -> note) (\s@ResetAlarmActionRequest' {} a -> s {note = a} :: ResetAlarmActionRequest)

-- | The request ID. Each ID must be unique within each batch.
resetAlarmActionRequest_requestId :: Lens.Lens' ResetAlarmActionRequest Prelude.Text
resetAlarmActionRequest_requestId = Lens.lens (\ResetAlarmActionRequest' {requestId} -> requestId) (\s@ResetAlarmActionRequest' {} a -> s {requestId = a} :: ResetAlarmActionRequest)

-- | The name of the alarm model.
resetAlarmActionRequest_alarmModelName :: Lens.Lens' ResetAlarmActionRequest Prelude.Text
resetAlarmActionRequest_alarmModelName = Lens.lens (\ResetAlarmActionRequest' {alarmModelName} -> alarmModelName) (\s@ResetAlarmActionRequest' {} a -> s {alarmModelName = a} :: ResetAlarmActionRequest)

instance Prelude.Hashable ResetAlarmActionRequest

instance Prelude.NFData ResetAlarmActionRequest

instance Core.ToJSON ResetAlarmActionRequest where
  toJSON ResetAlarmActionRequest' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("keyValue" Core..=) Prelude.<$> keyValue,
            ("note" Core..=) Prelude.<$> note,
            Prelude.Just ("requestId" Core..= requestId),
            Prelude.Just
              ("alarmModelName" Core..= alarmModelName)
          ]
      )
