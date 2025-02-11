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
-- Module      : Network.AWS.IoTEventsData.BatchResetAlarm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets one or more alarms. The alarms return to the @NORMAL@ state after
-- you reset them.
module Network.AWS.IoTEventsData.BatchResetAlarm
  ( -- * Creating a Request
    BatchResetAlarm (..),
    newBatchResetAlarm,

    -- * Request Lenses
    batchResetAlarm_resetActionRequests,

    -- * Destructuring the Response
    BatchResetAlarmResponse (..),
    newBatchResetAlarmResponse,

    -- * Response Lenses
    batchResetAlarmResponse_errorEntries,
    batchResetAlarmResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEventsData.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchResetAlarm' smart constructor.
data BatchResetAlarm = BatchResetAlarm'
  { -- | The list of reset action requests. You can specify up to 10 requests per
    -- operation.
    resetActionRequests :: Prelude.NonEmpty ResetAlarmActionRequest
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchResetAlarm' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resetActionRequests', 'batchResetAlarm_resetActionRequests' - The list of reset action requests. You can specify up to 10 requests per
-- operation.
newBatchResetAlarm ::
  -- | 'resetActionRequests'
  Prelude.NonEmpty ResetAlarmActionRequest ->
  BatchResetAlarm
newBatchResetAlarm pResetActionRequests_ =
  BatchResetAlarm'
    { resetActionRequests =
        Lens.coerced Lens.# pResetActionRequests_
    }

-- | The list of reset action requests. You can specify up to 10 requests per
-- operation.
batchResetAlarm_resetActionRequests :: Lens.Lens' BatchResetAlarm (Prelude.NonEmpty ResetAlarmActionRequest)
batchResetAlarm_resetActionRequests = Lens.lens (\BatchResetAlarm' {resetActionRequests} -> resetActionRequests) (\s@BatchResetAlarm' {} a -> s {resetActionRequests = a} :: BatchResetAlarm) Prelude.. Lens.coerced

instance Core.AWSRequest BatchResetAlarm where
  type
    AWSResponse BatchResetAlarm =
      BatchResetAlarmResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchResetAlarmResponse'
            Prelude.<$> (x Core..?> "errorEntries" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchResetAlarm

instance Prelude.NFData BatchResetAlarm

instance Core.ToHeaders BatchResetAlarm where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON BatchResetAlarm where
  toJSON BatchResetAlarm' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("resetActionRequests" Core..= resetActionRequests)
          ]
      )

instance Core.ToPath BatchResetAlarm where
  toPath = Prelude.const "/alarms/reset"

instance Core.ToQuery BatchResetAlarm where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchResetAlarmResponse' smart constructor.
data BatchResetAlarmResponse = BatchResetAlarmResponse'
  { -- | A list of errors associated with the request, or @null@ if there are no
    -- errors. Each error entry contains an entry ID that helps you identify
    -- the entry that failed.
    errorEntries :: Prelude.Maybe [BatchAlarmActionErrorEntry],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchResetAlarmResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errorEntries', 'batchResetAlarmResponse_errorEntries' - A list of errors associated with the request, or @null@ if there are no
-- errors. Each error entry contains an entry ID that helps you identify
-- the entry that failed.
--
-- 'httpStatus', 'batchResetAlarmResponse_httpStatus' - The response's http status code.
newBatchResetAlarmResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchResetAlarmResponse
newBatchResetAlarmResponse pHttpStatus_ =
  BatchResetAlarmResponse'
    { errorEntries =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of errors associated with the request, or @null@ if there are no
-- errors. Each error entry contains an entry ID that helps you identify
-- the entry that failed.
batchResetAlarmResponse_errorEntries :: Lens.Lens' BatchResetAlarmResponse (Prelude.Maybe [BatchAlarmActionErrorEntry])
batchResetAlarmResponse_errorEntries = Lens.lens (\BatchResetAlarmResponse' {errorEntries} -> errorEntries) (\s@BatchResetAlarmResponse' {} a -> s {errorEntries = a} :: BatchResetAlarmResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchResetAlarmResponse_httpStatus :: Lens.Lens' BatchResetAlarmResponse Prelude.Int
batchResetAlarmResponse_httpStatus = Lens.lens (\BatchResetAlarmResponse' {httpStatus} -> httpStatus) (\s@BatchResetAlarmResponse' {} a -> s {httpStatus = a} :: BatchResetAlarmResponse)

instance Prelude.NFData BatchResetAlarmResponse
