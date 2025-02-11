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
-- Module      : Network.AWS.Chime.CreateAttendee
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new attendee for an active Amazon Chime SDK meeting. For more
-- information about the Amazon Chime SDK, see
-- <https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html Using the Amazon Chime SDK>
-- in the /Amazon Chime Developer Guide/.
module Network.AWS.Chime.CreateAttendee
  ( -- * Creating a Request
    CreateAttendee (..),
    newCreateAttendee,

    -- * Request Lenses
    createAttendee_tags,
    createAttendee_meetingId,
    createAttendee_externalUserId,

    -- * Destructuring the Response
    CreateAttendeeResponse (..),
    newCreateAttendeeResponse,

    -- * Response Lenses
    createAttendeeResponse_attendee,
    createAttendeeResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateAttendee' smart constructor.
data CreateAttendee = CreateAttendee'
  { -- | The tag key-value pairs.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | The Amazon Chime SDK meeting ID.
    meetingId :: Prelude.Text,
    -- | The Amazon Chime SDK external user ID. An idempotency token. Links the
    -- attendee to an identity managed by a builder application.
    externalUserId :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAttendee' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createAttendee_tags' - The tag key-value pairs.
--
-- 'meetingId', 'createAttendee_meetingId' - The Amazon Chime SDK meeting ID.
--
-- 'externalUserId', 'createAttendee_externalUserId' - The Amazon Chime SDK external user ID. An idempotency token. Links the
-- attendee to an identity managed by a builder application.
newCreateAttendee ::
  -- | 'meetingId'
  Prelude.Text ->
  -- | 'externalUserId'
  Prelude.Text ->
  CreateAttendee
newCreateAttendee pMeetingId_ pExternalUserId_ =
  CreateAttendee'
    { tags = Prelude.Nothing,
      meetingId = pMeetingId_,
      externalUserId =
        Core._Sensitive Lens.# pExternalUserId_
    }

-- | The tag key-value pairs.
createAttendee_tags :: Lens.Lens' CreateAttendee (Prelude.Maybe (Prelude.NonEmpty Tag))
createAttendee_tags = Lens.lens (\CreateAttendee' {tags} -> tags) (\s@CreateAttendee' {} a -> s {tags = a} :: CreateAttendee) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Chime SDK meeting ID.
createAttendee_meetingId :: Lens.Lens' CreateAttendee Prelude.Text
createAttendee_meetingId = Lens.lens (\CreateAttendee' {meetingId} -> meetingId) (\s@CreateAttendee' {} a -> s {meetingId = a} :: CreateAttendee)

-- | The Amazon Chime SDK external user ID. An idempotency token. Links the
-- attendee to an identity managed by a builder application.
createAttendee_externalUserId :: Lens.Lens' CreateAttendee Prelude.Text
createAttendee_externalUserId = Lens.lens (\CreateAttendee' {externalUserId} -> externalUserId) (\s@CreateAttendee' {} a -> s {externalUserId = a} :: CreateAttendee) Prelude.. Core._Sensitive

instance Core.AWSRequest CreateAttendee where
  type
    AWSResponse CreateAttendee =
      CreateAttendeeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateAttendeeResponse'
            Prelude.<$> (x Core..?> "Attendee")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateAttendee

instance Prelude.NFData CreateAttendee

instance Core.ToHeaders CreateAttendee where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateAttendee where
  toJSON CreateAttendee' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ("ExternalUserId" Core..= externalUserId)
          ]
      )

instance Core.ToPath CreateAttendee where
  toPath CreateAttendee' {..} =
    Prelude.mconcat
      ["/meetings/", Core.toBS meetingId, "/attendees"]

instance Core.ToQuery CreateAttendee where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateAttendeeResponse' smart constructor.
data CreateAttendeeResponse = CreateAttendeeResponse'
  { -- | The attendee information, including attendee ID and join token.
    attendee :: Prelude.Maybe Attendee,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAttendeeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attendee', 'createAttendeeResponse_attendee' - The attendee information, including attendee ID and join token.
--
-- 'httpStatus', 'createAttendeeResponse_httpStatus' - The response's http status code.
newCreateAttendeeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateAttendeeResponse
newCreateAttendeeResponse pHttpStatus_ =
  CreateAttendeeResponse'
    { attendee = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The attendee information, including attendee ID and join token.
createAttendeeResponse_attendee :: Lens.Lens' CreateAttendeeResponse (Prelude.Maybe Attendee)
createAttendeeResponse_attendee = Lens.lens (\CreateAttendeeResponse' {attendee} -> attendee) (\s@CreateAttendeeResponse' {} a -> s {attendee = a} :: CreateAttendeeResponse)

-- | The response's http status code.
createAttendeeResponse_httpStatus :: Lens.Lens' CreateAttendeeResponse Prelude.Int
createAttendeeResponse_httpStatus = Lens.lens (\CreateAttendeeResponse' {httpStatus} -> httpStatus) (\s@CreateAttendeeResponse' {} a -> s {httpStatus = a} :: CreateAttendeeResponse)

instance Prelude.NFData CreateAttendeeResponse
