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
-- Module      : Network.AWS.Chime.GetProxySession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified proxy session details for the specified Amazon Chime
-- Voice Connector.
module Network.AWS.Chime.GetProxySession
  ( -- * Creating a Request
    GetProxySession (..),
    newGetProxySession,

    -- * Request Lenses
    getProxySession_voiceConnectorId,
    getProxySession_proxySessionId,

    -- * Destructuring the Response
    GetProxySessionResponse (..),
    newGetProxySessionResponse,

    -- * Response Lenses
    getProxySessionResponse_proxySession,
    getProxySessionResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetProxySession' smart constructor.
data GetProxySession = GetProxySession'
  { -- | The Amazon Chime voice connector ID.
    voiceConnectorId :: Prelude.Text,
    -- | The proxy session ID.
    proxySessionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetProxySession' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorId', 'getProxySession_voiceConnectorId' - The Amazon Chime voice connector ID.
--
-- 'proxySessionId', 'getProxySession_proxySessionId' - The proxy session ID.
newGetProxySession ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  -- | 'proxySessionId'
  Prelude.Text ->
  GetProxySession
newGetProxySession
  pVoiceConnectorId_
  pProxySessionId_ =
    GetProxySession'
      { voiceConnectorId =
          pVoiceConnectorId_,
        proxySessionId = pProxySessionId_
      }

-- | The Amazon Chime voice connector ID.
getProxySession_voiceConnectorId :: Lens.Lens' GetProxySession Prelude.Text
getProxySession_voiceConnectorId = Lens.lens (\GetProxySession' {voiceConnectorId} -> voiceConnectorId) (\s@GetProxySession' {} a -> s {voiceConnectorId = a} :: GetProxySession)

-- | The proxy session ID.
getProxySession_proxySessionId :: Lens.Lens' GetProxySession Prelude.Text
getProxySession_proxySessionId = Lens.lens (\GetProxySession' {proxySessionId} -> proxySessionId) (\s@GetProxySession' {} a -> s {proxySessionId = a} :: GetProxySession)

instance Core.AWSRequest GetProxySession where
  type
    AWSResponse GetProxySession =
      GetProxySessionResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetProxySessionResponse'
            Prelude.<$> (x Core..?> "ProxySession")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetProxySession

instance Prelude.NFData GetProxySession

instance Core.ToHeaders GetProxySession where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetProxySession where
  toPath GetProxySession' {..} =
    Prelude.mconcat
      [ "/voice-connectors/",
        Core.toBS voiceConnectorId,
        "/proxy-sessions/",
        Core.toBS proxySessionId
      ]

instance Core.ToQuery GetProxySession where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetProxySessionResponse' smart constructor.
data GetProxySessionResponse = GetProxySessionResponse'
  { -- | The proxy session details.
    proxySession :: Prelude.Maybe ProxySession,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetProxySessionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'proxySession', 'getProxySessionResponse_proxySession' - The proxy session details.
--
-- 'httpStatus', 'getProxySessionResponse_httpStatus' - The response's http status code.
newGetProxySessionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetProxySessionResponse
newGetProxySessionResponse pHttpStatus_ =
  GetProxySessionResponse'
    { proxySession =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The proxy session details.
getProxySessionResponse_proxySession :: Lens.Lens' GetProxySessionResponse (Prelude.Maybe ProxySession)
getProxySessionResponse_proxySession = Lens.lens (\GetProxySessionResponse' {proxySession} -> proxySession) (\s@GetProxySessionResponse' {} a -> s {proxySession = a} :: GetProxySessionResponse)

-- | The response's http status code.
getProxySessionResponse_httpStatus :: Lens.Lens' GetProxySessionResponse Prelude.Int
getProxySessionResponse_httpStatus = Lens.lens (\GetProxySessionResponse' {httpStatus} -> httpStatus) (\s@GetProxySessionResponse' {} a -> s {httpStatus = a} :: GetProxySessionResponse)

instance Prelude.NFData GetProxySessionResponse
