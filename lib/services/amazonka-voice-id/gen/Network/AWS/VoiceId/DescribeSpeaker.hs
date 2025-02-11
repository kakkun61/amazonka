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
-- Module      : Network.AWS.VoiceId.DescribeSpeaker
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified speaker.
module Network.AWS.VoiceId.DescribeSpeaker
  ( -- * Creating a Request
    DescribeSpeaker (..),
    newDescribeSpeaker,

    -- * Request Lenses
    describeSpeaker_domainId,
    describeSpeaker_speakerId,

    -- * Destructuring the Response
    DescribeSpeakerResponse (..),
    newDescribeSpeakerResponse,

    -- * Response Lenses
    describeSpeakerResponse_speaker,
    describeSpeakerResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.VoiceId.Types

-- | /See:/ 'newDescribeSpeaker' smart constructor.
data DescribeSpeaker = DescribeSpeaker'
  { -- | The identifier of the domain that contains the speaker.
    domainId :: Prelude.Text,
    -- | The identifier of the speaker you are describing.
    speakerId :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSpeaker' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainId', 'describeSpeaker_domainId' - The identifier of the domain that contains the speaker.
--
-- 'speakerId', 'describeSpeaker_speakerId' - The identifier of the speaker you are describing.
newDescribeSpeaker ::
  -- | 'domainId'
  Prelude.Text ->
  -- | 'speakerId'
  Prelude.Text ->
  DescribeSpeaker
newDescribeSpeaker pDomainId_ pSpeakerId_ =
  DescribeSpeaker'
    { domainId = pDomainId_,
      speakerId = Core._Sensitive Lens.# pSpeakerId_
    }

-- | The identifier of the domain that contains the speaker.
describeSpeaker_domainId :: Lens.Lens' DescribeSpeaker Prelude.Text
describeSpeaker_domainId = Lens.lens (\DescribeSpeaker' {domainId} -> domainId) (\s@DescribeSpeaker' {} a -> s {domainId = a} :: DescribeSpeaker)

-- | The identifier of the speaker you are describing.
describeSpeaker_speakerId :: Lens.Lens' DescribeSpeaker Prelude.Text
describeSpeaker_speakerId = Lens.lens (\DescribeSpeaker' {speakerId} -> speakerId) (\s@DescribeSpeaker' {} a -> s {speakerId = a} :: DescribeSpeaker) Prelude.. Core._Sensitive

instance Core.AWSRequest DescribeSpeaker where
  type
    AWSResponse DescribeSpeaker =
      DescribeSpeakerResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeSpeakerResponse'
            Prelude.<$> (x Core..?> "Speaker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeSpeaker

instance Prelude.NFData DescribeSpeaker

instance Core.ToHeaders DescribeSpeaker where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("VoiceID.DescribeSpeaker" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeSpeaker where
  toJSON DescribeSpeaker' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("DomainId" Core..= domainId),
            Prelude.Just ("SpeakerId" Core..= speakerId)
          ]
      )

instance Core.ToPath DescribeSpeaker where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeSpeaker where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeSpeakerResponse' smart constructor.
data DescribeSpeakerResponse = DescribeSpeakerResponse'
  { -- | Information about the specified speaker.
    speaker :: Prelude.Maybe Speaker,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSpeakerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'speaker', 'describeSpeakerResponse_speaker' - Information about the specified speaker.
--
-- 'httpStatus', 'describeSpeakerResponse_httpStatus' - The response's http status code.
newDescribeSpeakerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeSpeakerResponse
newDescribeSpeakerResponse pHttpStatus_ =
  DescribeSpeakerResponse'
    { speaker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the specified speaker.
describeSpeakerResponse_speaker :: Lens.Lens' DescribeSpeakerResponse (Prelude.Maybe Speaker)
describeSpeakerResponse_speaker = Lens.lens (\DescribeSpeakerResponse' {speaker} -> speaker) (\s@DescribeSpeakerResponse' {} a -> s {speaker = a} :: DescribeSpeakerResponse)

-- | The response's http status code.
describeSpeakerResponse_httpStatus :: Lens.Lens' DescribeSpeakerResponse Prelude.Int
describeSpeakerResponse_httpStatus = Lens.lens (\DescribeSpeakerResponse' {httpStatus} -> httpStatus) (\s@DescribeSpeakerResponse' {} a -> s {httpStatus = a} :: DescribeSpeakerResponse)

instance Prelude.NFData DescribeSpeakerResponse
