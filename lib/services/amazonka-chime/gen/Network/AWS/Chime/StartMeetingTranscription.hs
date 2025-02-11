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
-- Module      : Network.AWS.Chime.StartMeetingTranscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts transcription for the specified @meetingId@.
module Network.AWS.Chime.StartMeetingTranscription
  ( -- * Creating a Request
    StartMeetingTranscription (..),
    newStartMeetingTranscription,

    -- * Request Lenses
    startMeetingTranscription_meetingId,
    startMeetingTranscription_transcriptionConfiguration,

    -- * Destructuring the Response
    StartMeetingTranscriptionResponse (..),
    newStartMeetingTranscriptionResponse,

    -- * Response Lenses
    startMeetingTranscriptionResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStartMeetingTranscription' smart constructor.
data StartMeetingTranscription = StartMeetingTranscription'
  { -- | The unique ID of the meeting being transcribed.
    meetingId :: Prelude.Text,
    -- | The configuration for the current transcription operation. Must contain
    -- @EngineTranscribeSettings@ or @EngineTranscribeMedicalSettings@.
    transcriptionConfiguration :: TranscriptionConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartMeetingTranscription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'meetingId', 'startMeetingTranscription_meetingId' - The unique ID of the meeting being transcribed.
--
-- 'transcriptionConfiguration', 'startMeetingTranscription_transcriptionConfiguration' - The configuration for the current transcription operation. Must contain
-- @EngineTranscribeSettings@ or @EngineTranscribeMedicalSettings@.
newStartMeetingTranscription ::
  -- | 'meetingId'
  Prelude.Text ->
  -- | 'transcriptionConfiguration'
  TranscriptionConfiguration ->
  StartMeetingTranscription
newStartMeetingTranscription
  pMeetingId_
  pTranscriptionConfiguration_ =
    StartMeetingTranscription'
      { meetingId = pMeetingId_,
        transcriptionConfiguration =
          pTranscriptionConfiguration_
      }

-- | The unique ID of the meeting being transcribed.
startMeetingTranscription_meetingId :: Lens.Lens' StartMeetingTranscription Prelude.Text
startMeetingTranscription_meetingId = Lens.lens (\StartMeetingTranscription' {meetingId} -> meetingId) (\s@StartMeetingTranscription' {} a -> s {meetingId = a} :: StartMeetingTranscription)

-- | The configuration for the current transcription operation. Must contain
-- @EngineTranscribeSettings@ or @EngineTranscribeMedicalSettings@.
startMeetingTranscription_transcriptionConfiguration :: Lens.Lens' StartMeetingTranscription TranscriptionConfiguration
startMeetingTranscription_transcriptionConfiguration = Lens.lens (\StartMeetingTranscription' {transcriptionConfiguration} -> transcriptionConfiguration) (\s@StartMeetingTranscription' {} a -> s {transcriptionConfiguration = a} :: StartMeetingTranscription)

instance Core.AWSRequest StartMeetingTranscription where
  type
    AWSResponse StartMeetingTranscription =
      StartMeetingTranscriptionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          StartMeetingTranscriptionResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartMeetingTranscription

instance Prelude.NFData StartMeetingTranscription

instance Core.ToHeaders StartMeetingTranscription where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON StartMeetingTranscription where
  toJSON StartMeetingTranscription' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "TranscriptionConfiguration"
                  Core..= transcriptionConfiguration
              )
          ]
      )

instance Core.ToPath StartMeetingTranscription where
  toPath StartMeetingTranscription' {..} =
    Prelude.mconcat
      ["/meetings/", Core.toBS meetingId, "/transcription"]

instance Core.ToQuery StartMeetingTranscription where
  toQuery =
    Prelude.const (Prelude.mconcat ["operation=start"])

-- | /See:/ 'newStartMeetingTranscriptionResponse' smart constructor.
data StartMeetingTranscriptionResponse = StartMeetingTranscriptionResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartMeetingTranscriptionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'startMeetingTranscriptionResponse_httpStatus' - The response's http status code.
newStartMeetingTranscriptionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartMeetingTranscriptionResponse
newStartMeetingTranscriptionResponse pHttpStatus_ =
  StartMeetingTranscriptionResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
startMeetingTranscriptionResponse_httpStatus :: Lens.Lens' StartMeetingTranscriptionResponse Prelude.Int
startMeetingTranscriptionResponse_httpStatus = Lens.lens (\StartMeetingTranscriptionResponse' {httpStatus} -> httpStatus) (\s@StartMeetingTranscriptionResponse' {} a -> s {httpStatus = a} :: StartMeetingTranscriptionResponse)

instance
  Prelude.NFData
    StartMeetingTranscriptionResponse
