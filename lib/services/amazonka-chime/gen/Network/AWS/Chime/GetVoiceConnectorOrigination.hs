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
-- Module      : Network.AWS.Chime.GetVoiceConnectorOrigination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves origination setting details for the specified Amazon Chime
-- Voice Connector.
module Network.AWS.Chime.GetVoiceConnectorOrigination
  ( -- * Creating a Request
    GetVoiceConnectorOrigination (..),
    newGetVoiceConnectorOrigination,

    -- * Request Lenses
    getVoiceConnectorOrigination_voiceConnectorId,

    -- * Destructuring the Response
    GetVoiceConnectorOriginationResponse (..),
    newGetVoiceConnectorOriginationResponse,

    -- * Response Lenses
    getVoiceConnectorOriginationResponse_origination,
    getVoiceConnectorOriginationResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetVoiceConnectorOrigination' smart constructor.
data GetVoiceConnectorOrigination = GetVoiceConnectorOrigination'
  { -- | The Amazon Chime Voice Connector ID.
    voiceConnectorId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVoiceConnectorOrigination' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorId', 'getVoiceConnectorOrigination_voiceConnectorId' - The Amazon Chime Voice Connector ID.
newGetVoiceConnectorOrigination ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  GetVoiceConnectorOrigination
newGetVoiceConnectorOrigination pVoiceConnectorId_ =
  GetVoiceConnectorOrigination'
    { voiceConnectorId =
        pVoiceConnectorId_
    }

-- | The Amazon Chime Voice Connector ID.
getVoiceConnectorOrigination_voiceConnectorId :: Lens.Lens' GetVoiceConnectorOrigination Prelude.Text
getVoiceConnectorOrigination_voiceConnectorId = Lens.lens (\GetVoiceConnectorOrigination' {voiceConnectorId} -> voiceConnectorId) (\s@GetVoiceConnectorOrigination' {} a -> s {voiceConnectorId = a} :: GetVoiceConnectorOrigination)

instance Core.AWSRequest GetVoiceConnectorOrigination where
  type
    AWSResponse GetVoiceConnectorOrigination =
      GetVoiceConnectorOriginationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetVoiceConnectorOriginationResponse'
            Prelude.<$> (x Core..?> "Origination")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetVoiceConnectorOrigination

instance Prelude.NFData GetVoiceConnectorOrigination

instance Core.ToHeaders GetVoiceConnectorOrigination where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetVoiceConnectorOrigination where
  toPath GetVoiceConnectorOrigination' {..} =
    Prelude.mconcat
      [ "/voice-connectors/",
        Core.toBS voiceConnectorId,
        "/origination"
      ]

instance Core.ToQuery GetVoiceConnectorOrigination where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetVoiceConnectorOriginationResponse' smart constructor.
data GetVoiceConnectorOriginationResponse = GetVoiceConnectorOriginationResponse'
  { -- | The origination setting details.
    origination :: Prelude.Maybe Origination,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVoiceConnectorOriginationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'origination', 'getVoiceConnectorOriginationResponse_origination' - The origination setting details.
--
-- 'httpStatus', 'getVoiceConnectorOriginationResponse_httpStatus' - The response's http status code.
newGetVoiceConnectorOriginationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetVoiceConnectorOriginationResponse
newGetVoiceConnectorOriginationResponse pHttpStatus_ =
  GetVoiceConnectorOriginationResponse'
    { origination =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The origination setting details.
getVoiceConnectorOriginationResponse_origination :: Lens.Lens' GetVoiceConnectorOriginationResponse (Prelude.Maybe Origination)
getVoiceConnectorOriginationResponse_origination = Lens.lens (\GetVoiceConnectorOriginationResponse' {origination} -> origination) (\s@GetVoiceConnectorOriginationResponse' {} a -> s {origination = a} :: GetVoiceConnectorOriginationResponse)

-- | The response's http status code.
getVoiceConnectorOriginationResponse_httpStatus :: Lens.Lens' GetVoiceConnectorOriginationResponse Prelude.Int
getVoiceConnectorOriginationResponse_httpStatus = Lens.lens (\GetVoiceConnectorOriginationResponse' {httpStatus} -> httpStatus) (\s@GetVoiceConnectorOriginationResponse' {} a -> s {httpStatus = a} :: GetVoiceConnectorOriginationResponse)

instance
  Prelude.NFData
    GetVoiceConnectorOriginationResponse
