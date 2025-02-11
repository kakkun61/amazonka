{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTEventsData.BatchSnoozeAlarm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes one or more alarms to the snooze mode. The alarms change to the
-- @SNOOZE_DISABLED@ state after you set them to the snooze mode.
module Network.AWS.IoTEventsData.BatchSnoozeAlarm
  ( -- * Creating a Request
    BatchSnoozeAlarm (..),
    newBatchSnoozeAlarm,

    -- * Request Lenses
    batchSnoozeAlarm_snoozeActionRequests,

    -- * Destructuring the Response
    BatchSnoozeAlarmResponse (..),
    newBatchSnoozeAlarmResponse,

    -- * Response Lenses
    batchSnoozeAlarmResponse_errorEntries,
    batchSnoozeAlarmResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEventsData.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchSnoozeAlarm' smart constructor.
data BatchSnoozeAlarm = BatchSnoozeAlarm'
  { -- | The list of snooze action requests. You can specify up to 10 requests
    -- per operation.
    snoozeActionRequests :: Prelude.NonEmpty SnoozeAlarmActionRequest
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchSnoozeAlarm' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'snoozeActionRequests', 'batchSnoozeAlarm_snoozeActionRequests' - The list of snooze action requests. You can specify up to 10 requests
-- per operation.
newBatchSnoozeAlarm ::
  -- | 'snoozeActionRequests'
  Prelude.NonEmpty SnoozeAlarmActionRequest ->
  BatchSnoozeAlarm
newBatchSnoozeAlarm pSnoozeActionRequests_ =
  BatchSnoozeAlarm'
    { snoozeActionRequests =
        Lens.coerced Lens.# pSnoozeActionRequests_
    }

-- | The list of snooze action requests. You can specify up to 10 requests
-- per operation.
batchSnoozeAlarm_snoozeActionRequests :: Lens.Lens' BatchSnoozeAlarm (Prelude.NonEmpty SnoozeAlarmActionRequest)
batchSnoozeAlarm_snoozeActionRequests = Lens.lens (\BatchSnoozeAlarm' {snoozeActionRequests} -> snoozeActionRequests) (\s@BatchSnoozeAlarm' {} a -> s {snoozeActionRequests = a} :: BatchSnoozeAlarm) Prelude.. Lens.coerced

instance Core.AWSRequest BatchSnoozeAlarm where
  type
    AWSResponse BatchSnoozeAlarm =
      BatchSnoozeAlarmResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchSnoozeAlarmResponse'
            Prelude.<$> (x Core..?> "errorEntries" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchSnoozeAlarm

instance Prelude.NFData BatchSnoozeAlarm

instance Core.ToHeaders BatchSnoozeAlarm where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON BatchSnoozeAlarm where
  toJSON BatchSnoozeAlarm' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "snoozeActionRequests"
                  Core..= snoozeActionRequests
              )
          ]
      )

instance Core.ToPath BatchSnoozeAlarm where
  toPath = Prelude.const "/alarms/snooze"

instance Core.ToQuery BatchSnoozeAlarm where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchSnoozeAlarmResponse' smart constructor.
data BatchSnoozeAlarmResponse = BatchSnoozeAlarmResponse'
  { -- | A list of errors associated with the request, or @null@ if there are no
    -- errors. Each error entry contains an entry ID that helps you identify
    -- the entry that failed.
    errorEntries :: Prelude.Maybe [BatchAlarmActionErrorEntry],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchSnoozeAlarmResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errorEntries', 'batchSnoozeAlarmResponse_errorEntries' - A list of errors associated with the request, or @null@ if there are no
-- errors. Each error entry contains an entry ID that helps you identify
-- the entry that failed.
--
-- 'httpStatus', 'batchSnoozeAlarmResponse_httpStatus' - The response's http status code.
newBatchSnoozeAlarmResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchSnoozeAlarmResponse
newBatchSnoozeAlarmResponse pHttpStatus_ =
  BatchSnoozeAlarmResponse'
    { errorEntries =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of errors associated with the request, or @null@ if there are no
-- errors. Each error entry contains an entry ID that helps you identify
-- the entry that failed.
batchSnoozeAlarmResponse_errorEntries :: Lens.Lens' BatchSnoozeAlarmResponse (Prelude.Maybe [BatchAlarmActionErrorEntry])
batchSnoozeAlarmResponse_errorEntries = Lens.lens (\BatchSnoozeAlarmResponse' {errorEntries} -> errorEntries) (\s@BatchSnoozeAlarmResponse' {} a -> s {errorEntries = a} :: BatchSnoozeAlarmResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchSnoozeAlarmResponse_httpStatus :: Lens.Lens' BatchSnoozeAlarmResponse Prelude.Int
batchSnoozeAlarmResponse_httpStatus = Lens.lens (\BatchSnoozeAlarmResponse' {httpStatus} -> httpStatus) (\s@BatchSnoozeAlarmResponse' {} a -> s {httpStatus = a} :: BatchSnoozeAlarmResponse)

instance Prelude.NFData BatchSnoozeAlarmResponse
