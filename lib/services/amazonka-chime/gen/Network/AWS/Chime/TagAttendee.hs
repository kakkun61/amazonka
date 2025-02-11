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
-- Module      : Network.AWS.Chime.TagAttendee
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies the specified tags to the specified Amazon Chime SDK attendee.
module Network.AWS.Chime.TagAttendee
  ( -- * Creating a Request
    TagAttendee (..),
    newTagAttendee,

    -- * Request Lenses
    tagAttendee_meetingId,
    tagAttendee_attendeeId,
    tagAttendee_tags,

    -- * Destructuring the Response
    TagAttendeeResponse (..),
    newTagAttendeeResponse,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newTagAttendee' smart constructor.
data TagAttendee = TagAttendee'
  { -- | The Amazon Chime SDK meeting ID.
    meetingId :: Prelude.Text,
    -- | The Amazon Chime SDK attendee ID.
    attendeeId :: Prelude.Text,
    -- | The tag key-value pairs.
    tags :: Prelude.NonEmpty Tag
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TagAttendee' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'meetingId', 'tagAttendee_meetingId' - The Amazon Chime SDK meeting ID.
--
-- 'attendeeId', 'tagAttendee_attendeeId' - The Amazon Chime SDK attendee ID.
--
-- 'tags', 'tagAttendee_tags' - The tag key-value pairs.
newTagAttendee ::
  -- | 'meetingId'
  Prelude.Text ->
  -- | 'attendeeId'
  Prelude.Text ->
  -- | 'tags'
  Prelude.NonEmpty Tag ->
  TagAttendee
newTagAttendee pMeetingId_ pAttendeeId_ pTags_ =
  TagAttendee'
    { meetingId = pMeetingId_,
      attendeeId = pAttendeeId_,
      tags = Lens.coerced Lens.# pTags_
    }

-- | The Amazon Chime SDK meeting ID.
tagAttendee_meetingId :: Lens.Lens' TagAttendee Prelude.Text
tagAttendee_meetingId = Lens.lens (\TagAttendee' {meetingId} -> meetingId) (\s@TagAttendee' {} a -> s {meetingId = a} :: TagAttendee)

-- | The Amazon Chime SDK attendee ID.
tagAttendee_attendeeId :: Lens.Lens' TagAttendee Prelude.Text
tagAttendee_attendeeId = Lens.lens (\TagAttendee' {attendeeId} -> attendeeId) (\s@TagAttendee' {} a -> s {attendeeId = a} :: TagAttendee)

-- | The tag key-value pairs.
tagAttendee_tags :: Lens.Lens' TagAttendee (Prelude.NonEmpty Tag)
tagAttendee_tags = Lens.lens (\TagAttendee' {tags} -> tags) (\s@TagAttendee' {} a -> s {tags = a} :: TagAttendee) Prelude.. Lens.coerced

instance Core.AWSRequest TagAttendee where
  type AWSResponse TagAttendee = TagAttendeeResponse
  request = Request.postJSON defaultService
  response = Response.receiveNull TagAttendeeResponse'

instance Prelude.Hashable TagAttendee

instance Prelude.NFData TagAttendee

instance Core.ToHeaders TagAttendee where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON TagAttendee where
  toJSON TagAttendee' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Tags" Core..= tags)]
      )

instance Core.ToPath TagAttendee where
  toPath TagAttendee' {..} =
    Prelude.mconcat
      [ "/meetings/",
        Core.toBS meetingId,
        "/attendees/",
        Core.toBS attendeeId,
        "/tags"
      ]

instance Core.ToQuery TagAttendee where
  toQuery =
    Prelude.const (Prelude.mconcat ["operation=add"])

-- | /See:/ 'newTagAttendeeResponse' smart constructor.
data TagAttendeeResponse = TagAttendeeResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TagAttendeeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newTagAttendeeResponse ::
  TagAttendeeResponse
newTagAttendeeResponse = TagAttendeeResponse'

instance Prelude.NFData TagAttendeeResponse
