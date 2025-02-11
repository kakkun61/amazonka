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
-- Module      : Network.AWS.Chime.GetVoiceConnector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details for the specified Amazon Chime Voice Connector, such
-- as timestamps,name, outbound host, and encryption requirements.
module Network.AWS.Chime.GetVoiceConnector
  ( -- * Creating a Request
    GetVoiceConnector (..),
    newGetVoiceConnector,

    -- * Request Lenses
    getVoiceConnector_voiceConnectorId,

    -- * Destructuring the Response
    GetVoiceConnectorResponse (..),
    newGetVoiceConnectorResponse,

    -- * Response Lenses
    getVoiceConnectorResponse_voiceConnector,
    getVoiceConnectorResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetVoiceConnector' smart constructor.
data GetVoiceConnector = GetVoiceConnector'
  { -- | The Amazon Chime Voice Connector ID.
    voiceConnectorId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVoiceConnector' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorId', 'getVoiceConnector_voiceConnectorId' - The Amazon Chime Voice Connector ID.
newGetVoiceConnector ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  GetVoiceConnector
newGetVoiceConnector pVoiceConnectorId_ =
  GetVoiceConnector'
    { voiceConnectorId =
        pVoiceConnectorId_
    }

-- | The Amazon Chime Voice Connector ID.
getVoiceConnector_voiceConnectorId :: Lens.Lens' GetVoiceConnector Prelude.Text
getVoiceConnector_voiceConnectorId = Lens.lens (\GetVoiceConnector' {voiceConnectorId} -> voiceConnectorId) (\s@GetVoiceConnector' {} a -> s {voiceConnectorId = a} :: GetVoiceConnector)

instance Core.AWSRequest GetVoiceConnector where
  type
    AWSResponse GetVoiceConnector =
      GetVoiceConnectorResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetVoiceConnectorResponse'
            Prelude.<$> (x Core..?> "VoiceConnector")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetVoiceConnector

instance Prelude.NFData GetVoiceConnector

instance Core.ToHeaders GetVoiceConnector where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetVoiceConnector where
  toPath GetVoiceConnector' {..} =
    Prelude.mconcat
      ["/voice-connectors/", Core.toBS voiceConnectorId]

instance Core.ToQuery GetVoiceConnector where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetVoiceConnectorResponse' smart constructor.
data GetVoiceConnectorResponse = GetVoiceConnectorResponse'
  { -- | The Amazon Chime Voice Connector details.
    voiceConnector :: Prelude.Maybe VoiceConnector,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVoiceConnectorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnector', 'getVoiceConnectorResponse_voiceConnector' - The Amazon Chime Voice Connector details.
--
-- 'httpStatus', 'getVoiceConnectorResponse_httpStatus' - The response's http status code.
newGetVoiceConnectorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetVoiceConnectorResponse
newGetVoiceConnectorResponse pHttpStatus_ =
  GetVoiceConnectorResponse'
    { voiceConnector =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Chime Voice Connector details.
getVoiceConnectorResponse_voiceConnector :: Lens.Lens' GetVoiceConnectorResponse (Prelude.Maybe VoiceConnector)
getVoiceConnectorResponse_voiceConnector = Lens.lens (\GetVoiceConnectorResponse' {voiceConnector} -> voiceConnector) (\s@GetVoiceConnectorResponse' {} a -> s {voiceConnector = a} :: GetVoiceConnectorResponse)

-- | The response's http status code.
getVoiceConnectorResponse_httpStatus :: Lens.Lens' GetVoiceConnectorResponse Prelude.Int
getVoiceConnectorResponse_httpStatus = Lens.lens (\GetVoiceConnectorResponse' {httpStatus} -> httpStatus) (\s@GetVoiceConnectorResponse' {} a -> s {httpStatus = a} :: GetVoiceConnectorResponse)

instance Prelude.NFData GetVoiceConnectorResponse
