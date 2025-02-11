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
-- Module      : Network.AWS.IoTEventsData.Types.BatchAlarmActionErrorEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEventsData.Types.BatchAlarmActionErrorEntry where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEventsData.Types.ErrorCode
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains error messages associated with one of the following requests:
--
-- -   <https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchAcknowledgeAlarm.html BatchAcknowledgeAlarm>
--
-- -   <https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchDisableAlarm.html BatchDisableAlarm>
--
-- -   <https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchEnableAlarm.html BatchEnableAlarm>
--
-- -   <https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchResetAlarm.html BatchResetAlarm>
--
-- -   <https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchSnoozeAlarm.html BatchSnoozeAlarm>
--
-- /See:/ 'newBatchAlarmActionErrorEntry' smart constructor.
data BatchAlarmActionErrorEntry = BatchAlarmActionErrorEntry'
  { -- | The request ID. Each ID must be unique within each batch.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The error code.
    errorCode :: Prelude.Maybe ErrorCode,
    -- | A message that describes the error.
    errorMessage :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchAlarmActionErrorEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'batchAlarmActionErrorEntry_requestId' - The request ID. Each ID must be unique within each batch.
--
-- 'errorCode', 'batchAlarmActionErrorEntry_errorCode' - The error code.
--
-- 'errorMessage', 'batchAlarmActionErrorEntry_errorMessage' - A message that describes the error.
newBatchAlarmActionErrorEntry ::
  BatchAlarmActionErrorEntry
newBatchAlarmActionErrorEntry =
  BatchAlarmActionErrorEntry'
    { requestId =
        Prelude.Nothing,
      errorCode = Prelude.Nothing,
      errorMessage = Prelude.Nothing
    }

-- | The request ID. Each ID must be unique within each batch.
batchAlarmActionErrorEntry_requestId :: Lens.Lens' BatchAlarmActionErrorEntry (Prelude.Maybe Prelude.Text)
batchAlarmActionErrorEntry_requestId = Lens.lens (\BatchAlarmActionErrorEntry' {requestId} -> requestId) (\s@BatchAlarmActionErrorEntry' {} a -> s {requestId = a} :: BatchAlarmActionErrorEntry)

-- | The error code.
batchAlarmActionErrorEntry_errorCode :: Lens.Lens' BatchAlarmActionErrorEntry (Prelude.Maybe ErrorCode)
batchAlarmActionErrorEntry_errorCode = Lens.lens (\BatchAlarmActionErrorEntry' {errorCode} -> errorCode) (\s@BatchAlarmActionErrorEntry' {} a -> s {errorCode = a} :: BatchAlarmActionErrorEntry)

-- | A message that describes the error.
batchAlarmActionErrorEntry_errorMessage :: Lens.Lens' BatchAlarmActionErrorEntry (Prelude.Maybe Prelude.Text)
batchAlarmActionErrorEntry_errorMessage = Lens.lens (\BatchAlarmActionErrorEntry' {errorMessage} -> errorMessage) (\s@BatchAlarmActionErrorEntry' {} a -> s {errorMessage = a} :: BatchAlarmActionErrorEntry)

instance Core.FromJSON BatchAlarmActionErrorEntry where
  parseJSON =
    Core.withObject
      "BatchAlarmActionErrorEntry"
      ( \x ->
          BatchAlarmActionErrorEntry'
            Prelude.<$> (x Core..:? "requestId")
            Prelude.<*> (x Core..:? "errorCode")
            Prelude.<*> (x Core..:? "errorMessage")
      )

instance Prelude.Hashable BatchAlarmActionErrorEntry

instance Prelude.NFData BatchAlarmActionErrorEntry
