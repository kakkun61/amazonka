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
-- Module      : Network.AWS.Chime.GetVoiceConnectorTermination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves termination setting details for the specified Amazon Chime
-- Voice Connector.
module Network.AWS.Chime.GetVoiceConnectorTermination
  ( -- * Creating a Request
    GetVoiceConnectorTermination (..),
    newGetVoiceConnectorTermination,

    -- * Request Lenses
    getVoiceConnectorTermination_voiceConnectorId,

    -- * Destructuring the Response
    GetVoiceConnectorTerminationResponse (..),
    newGetVoiceConnectorTerminationResponse,

    -- * Response Lenses
    getVoiceConnectorTerminationResponse_termination,
    getVoiceConnectorTerminationResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetVoiceConnectorTermination' smart constructor.
data GetVoiceConnectorTermination = GetVoiceConnectorTermination'
  { -- | The Amazon Chime Voice Connector ID.
    voiceConnectorId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVoiceConnectorTermination' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorId', 'getVoiceConnectorTermination_voiceConnectorId' - The Amazon Chime Voice Connector ID.
newGetVoiceConnectorTermination ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  GetVoiceConnectorTermination
newGetVoiceConnectorTermination pVoiceConnectorId_ =
  GetVoiceConnectorTermination'
    { voiceConnectorId =
        pVoiceConnectorId_
    }

-- | The Amazon Chime Voice Connector ID.
getVoiceConnectorTermination_voiceConnectorId :: Lens.Lens' GetVoiceConnectorTermination Prelude.Text
getVoiceConnectorTermination_voiceConnectorId = Lens.lens (\GetVoiceConnectorTermination' {voiceConnectorId} -> voiceConnectorId) (\s@GetVoiceConnectorTermination' {} a -> s {voiceConnectorId = a} :: GetVoiceConnectorTermination)

instance Core.AWSRequest GetVoiceConnectorTermination where
  type
    AWSResponse GetVoiceConnectorTermination =
      GetVoiceConnectorTerminationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetVoiceConnectorTerminationResponse'
            Prelude.<$> (x Core..?> "Termination")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetVoiceConnectorTermination

instance Prelude.NFData GetVoiceConnectorTermination

instance Core.ToHeaders GetVoiceConnectorTermination where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetVoiceConnectorTermination where
  toPath GetVoiceConnectorTermination' {..} =
    Prelude.mconcat
      [ "/voice-connectors/",
        Core.toBS voiceConnectorId,
        "/termination"
      ]

instance Core.ToQuery GetVoiceConnectorTermination where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetVoiceConnectorTerminationResponse' smart constructor.
data GetVoiceConnectorTerminationResponse = GetVoiceConnectorTerminationResponse'
  { -- | The termination setting details.
    termination :: Prelude.Maybe Termination,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVoiceConnectorTerminationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'termination', 'getVoiceConnectorTerminationResponse_termination' - The termination setting details.
--
-- 'httpStatus', 'getVoiceConnectorTerminationResponse_httpStatus' - The response's http status code.
newGetVoiceConnectorTerminationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetVoiceConnectorTerminationResponse
newGetVoiceConnectorTerminationResponse pHttpStatus_ =
  GetVoiceConnectorTerminationResponse'
    { termination =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The termination setting details.
getVoiceConnectorTerminationResponse_termination :: Lens.Lens' GetVoiceConnectorTerminationResponse (Prelude.Maybe Termination)
getVoiceConnectorTerminationResponse_termination = Lens.lens (\GetVoiceConnectorTerminationResponse' {termination} -> termination) (\s@GetVoiceConnectorTerminationResponse' {} a -> s {termination = a} :: GetVoiceConnectorTerminationResponse)

-- | The response's http status code.
getVoiceConnectorTerminationResponse_httpStatus :: Lens.Lens' GetVoiceConnectorTerminationResponse Prelude.Int
getVoiceConnectorTerminationResponse_httpStatus = Lens.lens (\GetVoiceConnectorTerminationResponse' {httpStatus} -> httpStatus) (\s@GetVoiceConnectorTerminationResponse' {} a -> s {httpStatus = a} :: GetVoiceConnectorTerminationResponse)

instance
  Prelude.NFData
    GetVoiceConnectorTerminationResponse
