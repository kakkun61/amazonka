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
-- Module      : Network.AWS.Chime.DeleteAttendee
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an attendee from the specified Amazon Chime SDK meeting and
-- deletes their @JoinToken@. Attendees are automatically deleted when a
-- Amazon Chime SDK meeting is deleted. For more information about the
-- Amazon Chime SDK, see
-- <https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html Using the Amazon Chime SDK>
-- in the /Amazon Chime Developer Guide/.
module Network.AWS.Chime.DeleteAttendee
  ( -- * Creating a Request
    DeleteAttendee (..),
    newDeleteAttendee,

    -- * Request Lenses
    deleteAttendee_meetingId,
    deleteAttendee_attendeeId,

    -- * Destructuring the Response
    DeleteAttendeeResponse (..),
    newDeleteAttendeeResponse,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteAttendee' smart constructor.
data DeleteAttendee = DeleteAttendee'
  { -- | The Amazon Chime SDK meeting ID.
    meetingId :: Prelude.Text,
    -- | The Amazon Chime SDK attendee ID.
    attendeeId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAttendee' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'meetingId', 'deleteAttendee_meetingId' - The Amazon Chime SDK meeting ID.
--
-- 'attendeeId', 'deleteAttendee_attendeeId' - The Amazon Chime SDK attendee ID.
newDeleteAttendee ::
  -- | 'meetingId'
  Prelude.Text ->
  -- | 'attendeeId'
  Prelude.Text ->
  DeleteAttendee
newDeleteAttendee pMeetingId_ pAttendeeId_ =
  DeleteAttendee'
    { meetingId = pMeetingId_,
      attendeeId = pAttendeeId_
    }

-- | The Amazon Chime SDK meeting ID.
deleteAttendee_meetingId :: Lens.Lens' DeleteAttendee Prelude.Text
deleteAttendee_meetingId = Lens.lens (\DeleteAttendee' {meetingId} -> meetingId) (\s@DeleteAttendee' {} a -> s {meetingId = a} :: DeleteAttendee)

-- | The Amazon Chime SDK attendee ID.
deleteAttendee_attendeeId :: Lens.Lens' DeleteAttendee Prelude.Text
deleteAttendee_attendeeId = Lens.lens (\DeleteAttendee' {attendeeId} -> attendeeId) (\s@DeleteAttendee' {} a -> s {attendeeId = a} :: DeleteAttendee)

instance Core.AWSRequest DeleteAttendee where
  type
    AWSResponse DeleteAttendee =
      DeleteAttendeeResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeleteAttendeeResponse'

instance Prelude.Hashable DeleteAttendee

instance Prelude.NFData DeleteAttendee

instance Core.ToHeaders DeleteAttendee where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteAttendee where
  toPath DeleteAttendee' {..} =
    Prelude.mconcat
      [ "/meetings/",
        Core.toBS meetingId,
        "/attendees/",
        Core.toBS attendeeId
      ]

instance Core.ToQuery DeleteAttendee where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteAttendeeResponse' smart constructor.
data DeleteAttendeeResponse = DeleteAttendeeResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAttendeeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteAttendeeResponse ::
  DeleteAttendeeResponse
newDeleteAttendeeResponse = DeleteAttendeeResponse'

instance Prelude.NFData DeleteAttendeeResponse
