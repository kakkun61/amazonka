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
-- Module      : Network.AWS.Nimble.GetStreamingSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets StreamingSession resource.
--
-- Invoke this operation to poll for a streaming session state while
-- creating or deleting a session.
module Network.AWS.Nimble.GetStreamingSession
  ( -- * Creating a Request
    GetStreamingSession (..),
    newGetStreamingSession,

    -- * Request Lenses
    getStreamingSession_studioId,
    getStreamingSession_sessionId,

    -- * Destructuring the Response
    GetStreamingSessionResponse (..),
    newGetStreamingSessionResponse,

    -- * Response Lenses
    getStreamingSessionResponse_session,
    getStreamingSessionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Nimble.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetStreamingSession' smart constructor.
data GetStreamingSession = GetStreamingSession'
  { -- | The studio ID.
    studioId :: Prelude.Text,
    -- | The session ID.
    sessionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetStreamingSession' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'studioId', 'getStreamingSession_studioId' - The studio ID.
--
-- 'sessionId', 'getStreamingSession_sessionId' - The session ID.
newGetStreamingSession ::
  -- | 'studioId'
  Prelude.Text ->
  -- | 'sessionId'
  Prelude.Text ->
  GetStreamingSession
newGetStreamingSession pStudioId_ pSessionId_ =
  GetStreamingSession'
    { studioId = pStudioId_,
      sessionId = pSessionId_
    }

-- | The studio ID.
getStreamingSession_studioId :: Lens.Lens' GetStreamingSession Prelude.Text
getStreamingSession_studioId = Lens.lens (\GetStreamingSession' {studioId} -> studioId) (\s@GetStreamingSession' {} a -> s {studioId = a} :: GetStreamingSession)

-- | The session ID.
getStreamingSession_sessionId :: Lens.Lens' GetStreamingSession Prelude.Text
getStreamingSession_sessionId = Lens.lens (\GetStreamingSession' {sessionId} -> sessionId) (\s@GetStreamingSession' {} a -> s {sessionId = a} :: GetStreamingSession)

instance Core.AWSRequest GetStreamingSession where
  type
    AWSResponse GetStreamingSession =
      GetStreamingSessionResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetStreamingSessionResponse'
            Prelude.<$> (x Core..?> "session")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetStreamingSession

instance Prelude.NFData GetStreamingSession

instance Core.ToHeaders GetStreamingSession where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetStreamingSession where
  toPath GetStreamingSession' {..} =
    Prelude.mconcat
      [ "/2020-08-01/studios/",
        Core.toBS studioId,
        "/streaming-sessions/",
        Core.toBS sessionId
      ]

instance Core.ToQuery GetStreamingSession where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetStreamingSessionResponse' smart constructor.
data GetStreamingSessionResponse = GetStreamingSessionResponse'
  { -- | The session.
    session :: Prelude.Maybe StreamingSession,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetStreamingSessionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'session', 'getStreamingSessionResponse_session' - The session.
--
-- 'httpStatus', 'getStreamingSessionResponse_httpStatus' - The response's http status code.
newGetStreamingSessionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetStreamingSessionResponse
newGetStreamingSessionResponse pHttpStatus_ =
  GetStreamingSessionResponse'
    { session =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The session.
getStreamingSessionResponse_session :: Lens.Lens' GetStreamingSessionResponse (Prelude.Maybe StreamingSession)
getStreamingSessionResponse_session = Lens.lens (\GetStreamingSessionResponse' {session} -> session) (\s@GetStreamingSessionResponse' {} a -> s {session = a} :: GetStreamingSessionResponse)

-- | The response's http status code.
getStreamingSessionResponse_httpStatus :: Lens.Lens' GetStreamingSessionResponse Prelude.Int
getStreamingSessionResponse_httpStatus = Lens.lens (\GetStreamingSessionResponse' {httpStatus} -> httpStatus) (\s@GetStreamingSessionResponse' {} a -> s {httpStatus = a} :: GetStreamingSessionResponse)

instance Prelude.NFData GetStreamingSessionResponse
