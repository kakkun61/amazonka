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
-- Module      : Network.AWS.Chime.UntagMeeting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Untags the specified tags from the specified Amazon Chime SDK meeting.
module Network.AWS.Chime.UntagMeeting
  ( -- * Creating a Request
    UntagMeeting (..),
    newUntagMeeting,

    -- * Request Lenses
    untagMeeting_meetingId,
    untagMeeting_tagKeys,

    -- * Destructuring the Response
    UntagMeetingResponse (..),
    newUntagMeetingResponse,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUntagMeeting' smart constructor.
data UntagMeeting = UntagMeeting'
  { -- | The Amazon Chime SDK meeting ID.
    meetingId :: Prelude.Text,
    -- | The tag keys.
    tagKeys :: Prelude.NonEmpty (Core.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UntagMeeting' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'meetingId', 'untagMeeting_meetingId' - The Amazon Chime SDK meeting ID.
--
-- 'tagKeys', 'untagMeeting_tagKeys' - The tag keys.
newUntagMeeting ::
  -- | 'meetingId'
  Prelude.Text ->
  -- | 'tagKeys'
  Prelude.NonEmpty Prelude.Text ->
  UntagMeeting
newUntagMeeting pMeetingId_ pTagKeys_ =
  UntagMeeting'
    { meetingId = pMeetingId_,
      tagKeys = Lens.coerced Lens.# pTagKeys_
    }

-- | The Amazon Chime SDK meeting ID.
untagMeeting_meetingId :: Lens.Lens' UntagMeeting Prelude.Text
untagMeeting_meetingId = Lens.lens (\UntagMeeting' {meetingId} -> meetingId) (\s@UntagMeeting' {} a -> s {meetingId = a} :: UntagMeeting)

-- | The tag keys.
untagMeeting_tagKeys :: Lens.Lens' UntagMeeting (Prelude.NonEmpty Prelude.Text)
untagMeeting_tagKeys = Lens.lens (\UntagMeeting' {tagKeys} -> tagKeys) (\s@UntagMeeting' {} a -> s {tagKeys = a} :: UntagMeeting) Prelude.. Lens.coerced

instance Core.AWSRequest UntagMeeting where
  type AWSResponse UntagMeeting = UntagMeetingResponse
  request = Request.postJSON defaultService
  response = Response.receiveNull UntagMeetingResponse'

instance Prelude.Hashable UntagMeeting

instance Prelude.NFData UntagMeeting

instance Core.ToHeaders UntagMeeting where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UntagMeeting where
  toJSON UntagMeeting' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("TagKeys" Core..= tagKeys)]
      )

instance Core.ToPath UntagMeeting where
  toPath UntagMeeting' {..} =
    Prelude.mconcat
      ["/meetings/", Core.toBS meetingId, "/tags"]

instance Core.ToQuery UntagMeeting where
  toQuery =
    Prelude.const
      (Prelude.mconcat ["operation=delete"])

-- | /See:/ 'newUntagMeetingResponse' smart constructor.
data UntagMeetingResponse = UntagMeetingResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UntagMeetingResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUntagMeetingResponse ::
  UntagMeetingResponse
newUntagMeetingResponse = UntagMeetingResponse'

instance Prelude.NFData UntagMeetingResponse
