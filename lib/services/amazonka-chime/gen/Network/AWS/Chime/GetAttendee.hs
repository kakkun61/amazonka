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
-- Module      : Network.AWS.Chime.GetAttendee
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Amazon Chime SDK attendee details for a specified meeting ID
-- and attendee ID. For more information about the Amazon Chime SDK, see
-- <https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html Using the Amazon Chime SDK>
-- in the /Amazon Chime Developer Guide/ .
module Network.AWS.Chime.GetAttendee
  ( -- * Creating a Request
    GetAttendee (..),
    newGetAttendee,

    -- * Request Lenses
    getAttendee_meetingId,
    getAttendee_attendeeId,

    -- * Destructuring the Response
    GetAttendeeResponse (..),
    newGetAttendeeResponse,

    -- * Response Lenses
    getAttendeeResponse_attendee,
    getAttendeeResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAttendee' smart constructor.
data GetAttendee = GetAttendee'
  { -- | The Amazon Chime SDK meeting ID.
    meetingId :: Prelude.Text,
    -- | The Amazon Chime SDK attendee ID.
    attendeeId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAttendee' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'meetingId', 'getAttendee_meetingId' - The Amazon Chime SDK meeting ID.
--
-- 'attendeeId', 'getAttendee_attendeeId' - The Amazon Chime SDK attendee ID.
newGetAttendee ::
  -- | 'meetingId'
  Prelude.Text ->
  -- | 'attendeeId'
  Prelude.Text ->
  GetAttendee
newGetAttendee pMeetingId_ pAttendeeId_ =
  GetAttendee'
    { meetingId = pMeetingId_,
      attendeeId = pAttendeeId_
    }

-- | The Amazon Chime SDK meeting ID.
getAttendee_meetingId :: Lens.Lens' GetAttendee Prelude.Text
getAttendee_meetingId = Lens.lens (\GetAttendee' {meetingId} -> meetingId) (\s@GetAttendee' {} a -> s {meetingId = a} :: GetAttendee)

-- | The Amazon Chime SDK attendee ID.
getAttendee_attendeeId :: Lens.Lens' GetAttendee Prelude.Text
getAttendee_attendeeId = Lens.lens (\GetAttendee' {attendeeId} -> attendeeId) (\s@GetAttendee' {} a -> s {attendeeId = a} :: GetAttendee)

instance Core.AWSRequest GetAttendee where
  type AWSResponse GetAttendee = GetAttendeeResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAttendeeResponse'
            Prelude.<$> (x Core..?> "Attendee")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAttendee

instance Prelude.NFData GetAttendee

instance Core.ToHeaders GetAttendee where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetAttendee where
  toPath GetAttendee' {..} =
    Prelude.mconcat
      [ "/meetings/",
        Core.toBS meetingId,
        "/attendees/",
        Core.toBS attendeeId
      ]

instance Core.ToQuery GetAttendee where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAttendeeResponse' smart constructor.
data GetAttendeeResponse = GetAttendeeResponse'
  { -- | The Amazon Chime SDK attendee information.
    attendee :: Prelude.Maybe Attendee,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAttendeeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attendee', 'getAttendeeResponse_attendee' - The Amazon Chime SDK attendee information.
--
-- 'httpStatus', 'getAttendeeResponse_httpStatus' - The response's http status code.
newGetAttendeeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAttendeeResponse
newGetAttendeeResponse pHttpStatus_ =
  GetAttendeeResponse'
    { attendee = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Chime SDK attendee information.
getAttendeeResponse_attendee :: Lens.Lens' GetAttendeeResponse (Prelude.Maybe Attendee)
getAttendeeResponse_attendee = Lens.lens (\GetAttendeeResponse' {attendee} -> attendee) (\s@GetAttendeeResponse' {} a -> s {attendee = a} :: GetAttendeeResponse)

-- | The response's http status code.
getAttendeeResponse_httpStatus :: Lens.Lens' GetAttendeeResponse Prelude.Int
getAttendeeResponse_httpStatus = Lens.lens (\GetAttendeeResponse' {httpStatus} -> httpStatus) (\s@GetAttendeeResponse' {} a -> s {httpStatus = a} :: GetAttendeeResponse)

instance Prelude.NFData GetAttendeeResponse
