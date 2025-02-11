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
-- Module      : Network.AWS.FraudDetector.UpdateEventLabel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified event with a new label.
module Network.AWS.FraudDetector.UpdateEventLabel
  ( -- * Creating a Request
    UpdateEventLabel (..),
    newUpdateEventLabel,

    -- * Request Lenses
    updateEventLabel_eventId,
    updateEventLabel_eventTypeName,
    updateEventLabel_assignedLabel,
    updateEventLabel_labelTimestamp,

    -- * Destructuring the Response
    UpdateEventLabelResponse (..),
    newUpdateEventLabelResponse,

    -- * Response Lenses
    updateEventLabelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateEventLabel' smart constructor.
data UpdateEventLabel = UpdateEventLabel'
  { -- | The ID of the event associated with the label to update.
    eventId :: Prelude.Text,
    -- | The event type of the event associated with the label to update.
    eventTypeName :: Prelude.Text,
    -- | The new label to assign to the event.
    assignedLabel :: Prelude.Text,
    -- | The timestamp associated with the label. The timestamp must be specified
    -- using ISO 8601 standard in UTC.
    labelTimestamp :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEventLabel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventId', 'updateEventLabel_eventId' - The ID of the event associated with the label to update.
--
-- 'eventTypeName', 'updateEventLabel_eventTypeName' - The event type of the event associated with the label to update.
--
-- 'assignedLabel', 'updateEventLabel_assignedLabel' - The new label to assign to the event.
--
-- 'labelTimestamp', 'updateEventLabel_labelTimestamp' - The timestamp associated with the label. The timestamp must be specified
-- using ISO 8601 standard in UTC.
newUpdateEventLabel ::
  -- | 'eventId'
  Prelude.Text ->
  -- | 'eventTypeName'
  Prelude.Text ->
  -- | 'assignedLabel'
  Prelude.Text ->
  -- | 'labelTimestamp'
  Prelude.Text ->
  UpdateEventLabel
newUpdateEventLabel
  pEventId_
  pEventTypeName_
  pAssignedLabel_
  pLabelTimestamp_ =
    UpdateEventLabel'
      { eventId = pEventId_,
        eventTypeName = pEventTypeName_,
        assignedLabel = pAssignedLabel_,
        labelTimestamp = pLabelTimestamp_
      }

-- | The ID of the event associated with the label to update.
updateEventLabel_eventId :: Lens.Lens' UpdateEventLabel Prelude.Text
updateEventLabel_eventId = Lens.lens (\UpdateEventLabel' {eventId} -> eventId) (\s@UpdateEventLabel' {} a -> s {eventId = a} :: UpdateEventLabel)

-- | The event type of the event associated with the label to update.
updateEventLabel_eventTypeName :: Lens.Lens' UpdateEventLabel Prelude.Text
updateEventLabel_eventTypeName = Lens.lens (\UpdateEventLabel' {eventTypeName} -> eventTypeName) (\s@UpdateEventLabel' {} a -> s {eventTypeName = a} :: UpdateEventLabel)

-- | The new label to assign to the event.
updateEventLabel_assignedLabel :: Lens.Lens' UpdateEventLabel Prelude.Text
updateEventLabel_assignedLabel = Lens.lens (\UpdateEventLabel' {assignedLabel} -> assignedLabel) (\s@UpdateEventLabel' {} a -> s {assignedLabel = a} :: UpdateEventLabel)

-- | The timestamp associated with the label. The timestamp must be specified
-- using ISO 8601 standard in UTC.
updateEventLabel_labelTimestamp :: Lens.Lens' UpdateEventLabel Prelude.Text
updateEventLabel_labelTimestamp = Lens.lens (\UpdateEventLabel' {labelTimestamp} -> labelTimestamp) (\s@UpdateEventLabel' {} a -> s {labelTimestamp = a} :: UpdateEventLabel)

instance Core.AWSRequest UpdateEventLabel where
  type
    AWSResponse UpdateEventLabel =
      UpdateEventLabelResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateEventLabelResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateEventLabel

instance Prelude.NFData UpdateEventLabel

instance Core.ToHeaders UpdateEventLabel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.UpdateEventLabel" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateEventLabel where
  toJSON UpdateEventLabel' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("eventId" Core..= eventId),
            Prelude.Just ("eventTypeName" Core..= eventTypeName),
            Prelude.Just ("assignedLabel" Core..= assignedLabel),
            Prelude.Just
              ("labelTimestamp" Core..= labelTimestamp)
          ]
      )

instance Core.ToPath UpdateEventLabel where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateEventLabel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateEventLabelResponse' smart constructor.
data UpdateEventLabelResponse = UpdateEventLabelResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEventLabelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateEventLabelResponse_httpStatus' - The response's http status code.
newUpdateEventLabelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateEventLabelResponse
newUpdateEventLabelResponse pHttpStatus_ =
  UpdateEventLabelResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateEventLabelResponse_httpStatus :: Lens.Lens' UpdateEventLabelResponse Prelude.Int
updateEventLabelResponse_httpStatus = Lens.lens (\UpdateEventLabelResponse' {httpStatus} -> httpStatus) (\s@UpdateEventLabelResponse' {} a -> s {httpStatus = a} :: UpdateEventLabelResponse)

instance Prelude.NFData UpdateEventLabelResponse
