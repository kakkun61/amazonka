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
-- Module      : Network.AWS.Chime.GetVoiceConnectorProxy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the proxy configuration details for the specified Amazon Chime
-- Voice Connector.
module Network.AWS.Chime.GetVoiceConnectorProxy
  ( -- * Creating a Request
    GetVoiceConnectorProxy (..),
    newGetVoiceConnectorProxy,

    -- * Request Lenses
    getVoiceConnectorProxy_voiceConnectorId,

    -- * Destructuring the Response
    GetVoiceConnectorProxyResponse (..),
    newGetVoiceConnectorProxyResponse,

    -- * Response Lenses
    getVoiceConnectorProxyResponse_proxy,
    getVoiceConnectorProxyResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetVoiceConnectorProxy' smart constructor.
data GetVoiceConnectorProxy = GetVoiceConnectorProxy'
  { -- | The Amazon Chime voice connector ID.
    voiceConnectorId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVoiceConnectorProxy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorId', 'getVoiceConnectorProxy_voiceConnectorId' - The Amazon Chime voice connector ID.
newGetVoiceConnectorProxy ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  GetVoiceConnectorProxy
newGetVoiceConnectorProxy pVoiceConnectorId_ =
  GetVoiceConnectorProxy'
    { voiceConnectorId =
        pVoiceConnectorId_
    }

-- | The Amazon Chime voice connector ID.
getVoiceConnectorProxy_voiceConnectorId :: Lens.Lens' GetVoiceConnectorProxy Prelude.Text
getVoiceConnectorProxy_voiceConnectorId = Lens.lens (\GetVoiceConnectorProxy' {voiceConnectorId} -> voiceConnectorId) (\s@GetVoiceConnectorProxy' {} a -> s {voiceConnectorId = a} :: GetVoiceConnectorProxy)

instance Core.AWSRequest GetVoiceConnectorProxy where
  type
    AWSResponse GetVoiceConnectorProxy =
      GetVoiceConnectorProxyResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetVoiceConnectorProxyResponse'
            Prelude.<$> (x Core..?> "Proxy")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetVoiceConnectorProxy

instance Prelude.NFData GetVoiceConnectorProxy

instance Core.ToHeaders GetVoiceConnectorProxy where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetVoiceConnectorProxy where
  toPath GetVoiceConnectorProxy' {..} =
    Prelude.mconcat
      [ "/voice-connectors/",
        Core.toBS voiceConnectorId,
        "/programmable-numbers/proxy"
      ]

instance Core.ToQuery GetVoiceConnectorProxy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetVoiceConnectorProxyResponse' smart constructor.
data GetVoiceConnectorProxyResponse = GetVoiceConnectorProxyResponse'
  { -- | The proxy configuration details.
    proxy :: Prelude.Maybe Proxy,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVoiceConnectorProxyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'proxy', 'getVoiceConnectorProxyResponse_proxy' - The proxy configuration details.
--
-- 'httpStatus', 'getVoiceConnectorProxyResponse_httpStatus' - The response's http status code.
newGetVoiceConnectorProxyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetVoiceConnectorProxyResponse
newGetVoiceConnectorProxyResponse pHttpStatus_ =
  GetVoiceConnectorProxyResponse'
    { proxy =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The proxy configuration details.
getVoiceConnectorProxyResponse_proxy :: Lens.Lens' GetVoiceConnectorProxyResponse (Prelude.Maybe Proxy)
getVoiceConnectorProxyResponse_proxy = Lens.lens (\GetVoiceConnectorProxyResponse' {proxy} -> proxy) (\s@GetVoiceConnectorProxyResponse' {} a -> s {proxy = a} :: GetVoiceConnectorProxyResponse)

-- | The response's http status code.
getVoiceConnectorProxyResponse_httpStatus :: Lens.Lens' GetVoiceConnectorProxyResponse Prelude.Int
getVoiceConnectorProxyResponse_httpStatus = Lens.lens (\GetVoiceConnectorProxyResponse' {httpStatus} -> httpStatus) (\s@GetVoiceConnectorProxyResponse' {} a -> s {httpStatus = a} :: GetVoiceConnectorProxyResponse)

instance
  Prelude.NFData
    GetVoiceConnectorProxyResponse
