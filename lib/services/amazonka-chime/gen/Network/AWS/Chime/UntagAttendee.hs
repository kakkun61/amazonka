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
-- Module      : Network.AWS.Chime.UntagAttendee
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Untags the specified tags from the specified Amazon Chime SDK attendee.
module Network.AWS.Chime.UntagAttendee
  ( -- * Creating a Request
    UntagAttendee (..),
    newUntagAttendee,

    -- * Request Lenses
    untagAttendee_meetingId,
    untagAttendee_tagKeys,
    untagAttendee_attendeeId,

    -- * Destructuring the Response
    UntagAttendeeResponse (..),
    newUntagAttendeeResponse,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUntagAttendee' smart constructor.
data UntagAttendee = UntagAttendee'
  { -- | The Amazon Chime SDK meeting ID.
    meetingId :: Prelude.Text,
    -- | The tag keys.
    tagKeys :: Prelude.NonEmpty (Core.Sensitive Prelude.Text),
    -- | The Amazon Chime SDK attendee ID.
    attendeeId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UntagAttendee' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'meetingId', 'untagAttendee_meetingId' - The Amazon Chime SDK meeting ID.
--
-- 'tagKeys', 'untagAttendee_tagKeys' - The tag keys.
--
-- 'attendeeId', 'untagAttendee_attendeeId' - The Amazon Chime SDK attendee ID.
newUntagAttendee ::
  -- | 'meetingId'
  Prelude.Text ->
  -- | 'tagKeys'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'attendeeId'
  Prelude.Text ->
  UntagAttendee
newUntagAttendee pMeetingId_ pTagKeys_ pAttendeeId_ =
  UntagAttendee'
    { meetingId = pMeetingId_,
      tagKeys = Lens.coerced Lens.# pTagKeys_,
      attendeeId = pAttendeeId_
    }

-- | The Amazon Chime SDK meeting ID.
untagAttendee_meetingId :: Lens.Lens' UntagAttendee Prelude.Text
untagAttendee_meetingId = Lens.lens (\UntagAttendee' {meetingId} -> meetingId) (\s@UntagAttendee' {} a -> s {meetingId = a} :: UntagAttendee)

-- | The tag keys.
untagAttendee_tagKeys :: Lens.Lens' UntagAttendee (Prelude.NonEmpty Prelude.Text)
untagAttendee_tagKeys = Lens.lens (\UntagAttendee' {tagKeys} -> tagKeys) (\s@UntagAttendee' {} a -> s {tagKeys = a} :: UntagAttendee) Prelude.. Lens.coerced

-- | The Amazon Chime SDK attendee ID.
untagAttendee_attendeeId :: Lens.Lens' UntagAttendee Prelude.Text
untagAttendee_attendeeId = Lens.lens (\UntagAttendee' {attendeeId} -> attendeeId) (\s@UntagAttendee' {} a -> s {attendeeId = a} :: UntagAttendee)

instance Core.AWSRequest UntagAttendee where
  type
    AWSResponse UntagAttendee =
      UntagAttendeeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull UntagAttendeeResponse'

instance Prelude.Hashable UntagAttendee

instance Prelude.NFData UntagAttendee

instance Core.ToHeaders UntagAttendee where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UntagAttendee where
  toJSON UntagAttendee' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("TagKeys" Core..= tagKeys)]
      )

instance Core.ToPath UntagAttendee where
  toPath UntagAttendee' {..} =
    Prelude.mconcat
      [ "/meetings/",
        Core.toBS meetingId,
        "/attendees/",
        Core.toBS attendeeId,
        "/tags"
      ]

instance Core.ToQuery UntagAttendee where
  toQuery =
    Prelude.const
      (Prelude.mconcat ["operation=delete"])

-- | /See:/ 'newUntagAttendeeResponse' smart constructor.
data UntagAttendeeResponse = UntagAttendeeResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UntagAttendeeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUntagAttendeeResponse ::
  UntagAttendeeResponse
newUntagAttendeeResponse = UntagAttendeeResponse'

instance Prelude.NFData UntagAttendeeResponse
