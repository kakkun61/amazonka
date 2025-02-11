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
-- Module      : Network.AWS.FraudDetector.DeleteEventsByEventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all events of a particular event type.
module Network.AWS.FraudDetector.DeleteEventsByEventType
  ( -- * Creating a Request
    DeleteEventsByEventType (..),
    newDeleteEventsByEventType,

    -- * Request Lenses
    deleteEventsByEventType_eventTypeName,

    -- * Destructuring the Response
    DeleteEventsByEventTypeResponse (..),
    newDeleteEventsByEventTypeResponse,

    -- * Response Lenses
    deleteEventsByEventTypeResponse_eventTypeName,
    deleteEventsByEventTypeResponse_eventsDeletionStatus,
    deleteEventsByEventTypeResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteEventsByEventType' smart constructor.
data DeleteEventsByEventType = DeleteEventsByEventType'
  { -- | The name of the event type.
    eventTypeName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteEventsByEventType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventTypeName', 'deleteEventsByEventType_eventTypeName' - The name of the event type.
newDeleteEventsByEventType ::
  -- | 'eventTypeName'
  Prelude.Text ->
  DeleteEventsByEventType
newDeleteEventsByEventType pEventTypeName_ =
  DeleteEventsByEventType'
    { eventTypeName =
        pEventTypeName_
    }

-- | The name of the event type.
deleteEventsByEventType_eventTypeName :: Lens.Lens' DeleteEventsByEventType Prelude.Text
deleteEventsByEventType_eventTypeName = Lens.lens (\DeleteEventsByEventType' {eventTypeName} -> eventTypeName) (\s@DeleteEventsByEventType' {} a -> s {eventTypeName = a} :: DeleteEventsByEventType)

instance Core.AWSRequest DeleteEventsByEventType where
  type
    AWSResponse DeleteEventsByEventType =
      DeleteEventsByEventTypeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteEventsByEventTypeResponse'
            Prelude.<$> (x Core..?> "eventTypeName")
            Prelude.<*> (x Core..?> "eventsDeletionStatus")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteEventsByEventType

instance Prelude.NFData DeleteEventsByEventType

instance Core.ToHeaders DeleteEventsByEventType where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.DeleteEventsByEventType" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteEventsByEventType where
  toJSON DeleteEventsByEventType' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("eventTypeName" Core..= eventTypeName)
          ]
      )

instance Core.ToPath DeleteEventsByEventType where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteEventsByEventType where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteEventsByEventTypeResponse' smart constructor.
data DeleteEventsByEventTypeResponse = DeleteEventsByEventTypeResponse'
  { -- | Name of event type for which to delete the events.
    eventTypeName :: Prelude.Maybe Prelude.Text,
    -- | The status of the delete request.
    eventsDeletionStatus :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteEventsByEventTypeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventTypeName', 'deleteEventsByEventTypeResponse_eventTypeName' - Name of event type for which to delete the events.
--
-- 'eventsDeletionStatus', 'deleteEventsByEventTypeResponse_eventsDeletionStatus' - The status of the delete request.
--
-- 'httpStatus', 'deleteEventsByEventTypeResponse_httpStatus' - The response's http status code.
newDeleteEventsByEventTypeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteEventsByEventTypeResponse
newDeleteEventsByEventTypeResponse pHttpStatus_ =
  DeleteEventsByEventTypeResponse'
    { eventTypeName =
        Prelude.Nothing,
      eventsDeletionStatus = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Name of event type for which to delete the events.
deleteEventsByEventTypeResponse_eventTypeName :: Lens.Lens' DeleteEventsByEventTypeResponse (Prelude.Maybe Prelude.Text)
deleteEventsByEventTypeResponse_eventTypeName = Lens.lens (\DeleteEventsByEventTypeResponse' {eventTypeName} -> eventTypeName) (\s@DeleteEventsByEventTypeResponse' {} a -> s {eventTypeName = a} :: DeleteEventsByEventTypeResponse)

-- | The status of the delete request.
deleteEventsByEventTypeResponse_eventsDeletionStatus :: Lens.Lens' DeleteEventsByEventTypeResponse (Prelude.Maybe Prelude.Text)
deleteEventsByEventTypeResponse_eventsDeletionStatus = Lens.lens (\DeleteEventsByEventTypeResponse' {eventsDeletionStatus} -> eventsDeletionStatus) (\s@DeleteEventsByEventTypeResponse' {} a -> s {eventsDeletionStatus = a} :: DeleteEventsByEventTypeResponse)

-- | The response's http status code.
deleteEventsByEventTypeResponse_httpStatus :: Lens.Lens' DeleteEventsByEventTypeResponse Prelude.Int
deleteEventsByEventTypeResponse_httpStatus = Lens.lens (\DeleteEventsByEventTypeResponse' {httpStatus} -> httpStatus) (\s@DeleteEventsByEventTypeResponse' {} a -> s {httpStatus = a} :: DeleteEventsByEventTypeResponse)

instance
  Prelude.NFData
    DeleteEventsByEventTypeResponse
