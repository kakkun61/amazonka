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
-- Module      : Network.AWS.Chime.GetVoiceConnectorEmergencyCallingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the emergency calling configuration details for the specified
-- Amazon Chime Voice Connector.
module Network.AWS.Chime.GetVoiceConnectorEmergencyCallingConfiguration
  ( -- * Creating a Request
    GetVoiceConnectorEmergencyCallingConfiguration (..),
    newGetVoiceConnectorEmergencyCallingConfiguration,

    -- * Request Lenses
    getVoiceConnectorEmergencyCallingConfiguration_voiceConnectorId,

    -- * Destructuring the Response
    GetVoiceConnectorEmergencyCallingConfigurationResponse (..),
    newGetVoiceConnectorEmergencyCallingConfigurationResponse,

    -- * Response Lenses
    getVoiceConnectorEmergencyCallingConfigurationResponse_emergencyCallingConfiguration,
    getVoiceConnectorEmergencyCallingConfigurationResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetVoiceConnectorEmergencyCallingConfiguration' smart constructor.
data GetVoiceConnectorEmergencyCallingConfiguration = GetVoiceConnectorEmergencyCallingConfiguration'
  { -- | The Amazon Chime Voice Connector ID.
    voiceConnectorId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVoiceConnectorEmergencyCallingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorId', 'getVoiceConnectorEmergencyCallingConfiguration_voiceConnectorId' - The Amazon Chime Voice Connector ID.
newGetVoiceConnectorEmergencyCallingConfiguration ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  GetVoiceConnectorEmergencyCallingConfiguration
newGetVoiceConnectorEmergencyCallingConfiguration
  pVoiceConnectorId_ =
    GetVoiceConnectorEmergencyCallingConfiguration'
      { voiceConnectorId =
          pVoiceConnectorId_
      }

-- | The Amazon Chime Voice Connector ID.
getVoiceConnectorEmergencyCallingConfiguration_voiceConnectorId :: Lens.Lens' GetVoiceConnectorEmergencyCallingConfiguration Prelude.Text
getVoiceConnectorEmergencyCallingConfiguration_voiceConnectorId = Lens.lens (\GetVoiceConnectorEmergencyCallingConfiguration' {voiceConnectorId} -> voiceConnectorId) (\s@GetVoiceConnectorEmergencyCallingConfiguration' {} a -> s {voiceConnectorId = a} :: GetVoiceConnectorEmergencyCallingConfiguration)

instance
  Core.AWSRequest
    GetVoiceConnectorEmergencyCallingConfiguration
  where
  type
    AWSResponse
      GetVoiceConnectorEmergencyCallingConfiguration =
      GetVoiceConnectorEmergencyCallingConfigurationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetVoiceConnectorEmergencyCallingConfigurationResponse'
            Prelude.<$> (x Core..?> "EmergencyCallingConfiguration")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetVoiceConnectorEmergencyCallingConfiguration

instance
  Prelude.NFData
    GetVoiceConnectorEmergencyCallingConfiguration

instance
  Core.ToHeaders
    GetVoiceConnectorEmergencyCallingConfiguration
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    GetVoiceConnectorEmergencyCallingConfiguration
  where
  toPath
    GetVoiceConnectorEmergencyCallingConfiguration' {..} =
      Prelude.mconcat
        [ "/voice-connectors/",
          Core.toBS voiceConnectorId,
          "/emergency-calling-configuration"
        ]

instance
  Core.ToQuery
    GetVoiceConnectorEmergencyCallingConfiguration
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetVoiceConnectorEmergencyCallingConfigurationResponse' smart constructor.
data GetVoiceConnectorEmergencyCallingConfigurationResponse = GetVoiceConnectorEmergencyCallingConfigurationResponse'
  { -- | The emergency calling configuration details.
    emergencyCallingConfiguration :: Prelude.Maybe EmergencyCallingConfiguration,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVoiceConnectorEmergencyCallingConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'emergencyCallingConfiguration', 'getVoiceConnectorEmergencyCallingConfigurationResponse_emergencyCallingConfiguration' - The emergency calling configuration details.
--
-- 'httpStatus', 'getVoiceConnectorEmergencyCallingConfigurationResponse_httpStatus' - The response's http status code.
newGetVoiceConnectorEmergencyCallingConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetVoiceConnectorEmergencyCallingConfigurationResponse
newGetVoiceConnectorEmergencyCallingConfigurationResponse
  pHttpStatus_ =
    GetVoiceConnectorEmergencyCallingConfigurationResponse'
      { emergencyCallingConfiguration =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | The emergency calling configuration details.
getVoiceConnectorEmergencyCallingConfigurationResponse_emergencyCallingConfiguration :: Lens.Lens' GetVoiceConnectorEmergencyCallingConfigurationResponse (Prelude.Maybe EmergencyCallingConfiguration)
getVoiceConnectorEmergencyCallingConfigurationResponse_emergencyCallingConfiguration = Lens.lens (\GetVoiceConnectorEmergencyCallingConfigurationResponse' {emergencyCallingConfiguration} -> emergencyCallingConfiguration) (\s@GetVoiceConnectorEmergencyCallingConfigurationResponse' {} a -> s {emergencyCallingConfiguration = a} :: GetVoiceConnectorEmergencyCallingConfigurationResponse)

-- | The response's http status code.
getVoiceConnectorEmergencyCallingConfigurationResponse_httpStatus :: Lens.Lens' GetVoiceConnectorEmergencyCallingConfigurationResponse Prelude.Int
getVoiceConnectorEmergencyCallingConfigurationResponse_httpStatus = Lens.lens (\GetVoiceConnectorEmergencyCallingConfigurationResponse' {httpStatus} -> httpStatus) (\s@GetVoiceConnectorEmergencyCallingConfigurationResponse' {} a -> s {httpStatus = a} :: GetVoiceConnectorEmergencyCallingConfigurationResponse)

instance
  Prelude.NFData
    GetVoiceConnectorEmergencyCallingConfigurationResponse
