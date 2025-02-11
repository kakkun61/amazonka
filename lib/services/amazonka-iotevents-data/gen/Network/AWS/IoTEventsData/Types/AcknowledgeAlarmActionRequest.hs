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
-- Module      : Network.AWS.IoTEventsData.Types.AcknowledgeAlarmActionRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEventsData.Types.AcknowledgeAlarmActionRequest where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information needed to acknowledge the alarm.
--
-- /See:/ 'newAcknowledgeAlarmActionRequest' smart constructor.
data AcknowledgeAlarmActionRequest = AcknowledgeAlarmActionRequest'
  { -- | The value of the key used as a filter to select only the alarms
    -- associated with the
    -- <https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key key>.
    keyValue :: Prelude.Maybe Prelude.Text,
    -- | The note that you can leave when you acknowledge the alarm.
    note :: Prelude.Maybe Prelude.Text,
    -- | The request ID. Each ID must be unique within each batch.
    requestId :: Prelude.Text,
    -- | The name of the alarm model.
    alarmModelName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AcknowledgeAlarmActionRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'keyValue', 'acknowledgeAlarmActionRequest_keyValue' - The value of the key used as a filter to select only the alarms
-- associated with the
-- <https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key key>.
--
-- 'note', 'acknowledgeAlarmActionRequest_note' - The note that you can leave when you acknowledge the alarm.
--
-- 'requestId', 'acknowledgeAlarmActionRequest_requestId' - The request ID. Each ID must be unique within each batch.
--
-- 'alarmModelName', 'acknowledgeAlarmActionRequest_alarmModelName' - The name of the alarm model.
newAcknowledgeAlarmActionRequest ::
  -- | 'requestId'
  Prelude.Text ->
  -- | 'alarmModelName'
  Prelude.Text ->
  AcknowledgeAlarmActionRequest
newAcknowledgeAlarmActionRequest
  pRequestId_
  pAlarmModelName_ =
    AcknowledgeAlarmActionRequest'
      { keyValue =
          Prelude.Nothing,
        note = Prelude.Nothing,
        requestId = pRequestId_,
        alarmModelName = pAlarmModelName_
      }

-- | The value of the key used as a filter to select only the alarms
-- associated with the
-- <https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key key>.
acknowledgeAlarmActionRequest_keyValue :: Lens.Lens' AcknowledgeAlarmActionRequest (Prelude.Maybe Prelude.Text)
acknowledgeAlarmActionRequest_keyValue = Lens.lens (\AcknowledgeAlarmActionRequest' {keyValue} -> keyValue) (\s@AcknowledgeAlarmActionRequest' {} a -> s {keyValue = a} :: AcknowledgeAlarmActionRequest)

-- | The note that you can leave when you acknowledge the alarm.
acknowledgeAlarmActionRequest_note :: Lens.Lens' AcknowledgeAlarmActionRequest (Prelude.Maybe Prelude.Text)
acknowledgeAlarmActionRequest_note = Lens.lens (\AcknowledgeAlarmActionRequest' {note} -> note) (\s@AcknowledgeAlarmActionRequest' {} a -> s {note = a} :: AcknowledgeAlarmActionRequest)

-- | The request ID. Each ID must be unique within each batch.
acknowledgeAlarmActionRequest_requestId :: Lens.Lens' AcknowledgeAlarmActionRequest Prelude.Text
acknowledgeAlarmActionRequest_requestId = Lens.lens (\AcknowledgeAlarmActionRequest' {requestId} -> requestId) (\s@AcknowledgeAlarmActionRequest' {} a -> s {requestId = a} :: AcknowledgeAlarmActionRequest)

-- | The name of the alarm model.
acknowledgeAlarmActionRequest_alarmModelName :: Lens.Lens' AcknowledgeAlarmActionRequest Prelude.Text
acknowledgeAlarmActionRequest_alarmModelName = Lens.lens (\AcknowledgeAlarmActionRequest' {alarmModelName} -> alarmModelName) (\s@AcknowledgeAlarmActionRequest' {} a -> s {alarmModelName = a} :: AcknowledgeAlarmActionRequest)

instance
  Prelude.Hashable
    AcknowledgeAlarmActionRequest

instance Prelude.NFData AcknowledgeAlarmActionRequest

instance Core.ToJSON AcknowledgeAlarmActionRequest where
  toJSON AcknowledgeAlarmActionRequest' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("keyValue" Core..=) Prelude.<$> keyValue,
            ("note" Core..=) Prelude.<$> note,
            Prelude.Just ("requestId" Core..= requestId),
            Prelude.Just
              ("alarmModelName" Core..= alarmModelName)
          ]
      )
