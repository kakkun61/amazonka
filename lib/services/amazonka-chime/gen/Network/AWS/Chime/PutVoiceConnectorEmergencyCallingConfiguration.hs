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
-- Module      : Network.AWS.Chime.PutVoiceConnectorEmergencyCallingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Puts emergency calling configuration details to the specified Amazon
-- Chime Voice Connector, such as emergency phone numbers and calling
-- countries. Origination and termination settings must be enabled for the
-- Amazon Chime Voice Connector before emergency calling can be configured.
module Network.AWS.Chime.PutVoiceConnectorEmergencyCallingConfiguration
  ( -- * Creating a Request
    PutVoiceConnectorEmergencyCallingConfiguration (..),
    newPutVoiceConnectorEmergencyCallingConfiguration,

    -- * Request Lenses
    putVoiceConnectorEmergencyCallingConfiguration_voiceConnectorId,
    putVoiceConnectorEmergencyCallingConfiguration_emergencyCallingConfiguration,

    -- * Destructuring the Response
    PutVoiceConnectorEmergencyCallingConfigurationResponse (..),
    newPutVoiceConnectorEmergencyCallingConfigurationResponse,

    -- * Response Lenses
    putVoiceConnectorEmergencyCallingConfigurationResponse_emergencyCallingConfiguration,
    putVoiceConnectorEmergencyCallingConfigurationResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutVoiceConnectorEmergencyCallingConfiguration' smart constructor.
data PutVoiceConnectorEmergencyCallingConfiguration = PutVoiceConnectorEmergencyCallingConfiguration'
  { -- | The Amazon Chime Voice Connector ID.
    voiceConnectorId :: Prelude.Text,
    -- | The emergency calling configuration details.
    emergencyCallingConfiguration :: EmergencyCallingConfiguration
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutVoiceConnectorEmergencyCallingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorId', 'putVoiceConnectorEmergencyCallingConfiguration_voiceConnectorId' - The Amazon Chime Voice Connector ID.
--
-- 'emergencyCallingConfiguration', 'putVoiceConnectorEmergencyCallingConfiguration_emergencyCallingConfiguration' - The emergency calling configuration details.
newPutVoiceConnectorEmergencyCallingConfiguration ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  -- | 'emergencyCallingConfiguration'
  EmergencyCallingConfiguration ->
  PutVoiceConnectorEmergencyCallingConfiguration
newPutVoiceConnectorEmergencyCallingConfiguration
  pVoiceConnectorId_
  pEmergencyCallingConfiguration_ =
    PutVoiceConnectorEmergencyCallingConfiguration'
      { voiceConnectorId =
          pVoiceConnectorId_,
        emergencyCallingConfiguration =
          pEmergencyCallingConfiguration_
      }

-- | The Amazon Chime Voice Connector ID.
putVoiceConnectorEmergencyCallingConfiguration_voiceConnectorId :: Lens.Lens' PutVoiceConnectorEmergencyCallingConfiguration Prelude.Text
putVoiceConnectorEmergencyCallingConfiguration_voiceConnectorId = Lens.lens (\PutVoiceConnectorEmergencyCallingConfiguration' {voiceConnectorId} -> voiceConnectorId) (\s@PutVoiceConnectorEmergencyCallingConfiguration' {} a -> s {voiceConnectorId = a} :: PutVoiceConnectorEmergencyCallingConfiguration)

-- | The emergency calling configuration details.
putVoiceConnectorEmergencyCallingConfiguration_emergencyCallingConfiguration :: Lens.Lens' PutVoiceConnectorEmergencyCallingConfiguration EmergencyCallingConfiguration
putVoiceConnectorEmergencyCallingConfiguration_emergencyCallingConfiguration = Lens.lens (\PutVoiceConnectorEmergencyCallingConfiguration' {emergencyCallingConfiguration} -> emergencyCallingConfiguration) (\s@PutVoiceConnectorEmergencyCallingConfiguration' {} a -> s {emergencyCallingConfiguration = a} :: PutVoiceConnectorEmergencyCallingConfiguration)

instance
  Core.AWSRequest
    PutVoiceConnectorEmergencyCallingConfiguration
  where
  type
    AWSResponse
      PutVoiceConnectorEmergencyCallingConfiguration =
      PutVoiceConnectorEmergencyCallingConfigurationResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutVoiceConnectorEmergencyCallingConfigurationResponse'
            Prelude.<$> (x Core..?> "EmergencyCallingConfiguration")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    PutVoiceConnectorEmergencyCallingConfiguration

instance
  Prelude.NFData
    PutVoiceConnectorEmergencyCallingConfiguration

instance
  Core.ToHeaders
    PutVoiceConnectorEmergencyCallingConfiguration
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToJSON
    PutVoiceConnectorEmergencyCallingConfiguration
  where
  toJSON
    PutVoiceConnectorEmergencyCallingConfiguration' {..} =
      Core.object
        ( Prelude.catMaybes
            [ Prelude.Just
                ( "EmergencyCallingConfiguration"
                    Core..= emergencyCallingConfiguration
                )
            ]
        )

instance
  Core.ToPath
    PutVoiceConnectorEmergencyCallingConfiguration
  where
  toPath
    PutVoiceConnectorEmergencyCallingConfiguration' {..} =
      Prelude.mconcat
        [ "/voice-connectors/",
          Core.toBS voiceConnectorId,
          "/emergency-calling-configuration"
        ]

instance
  Core.ToQuery
    PutVoiceConnectorEmergencyCallingConfiguration
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutVoiceConnectorEmergencyCallingConfigurationResponse' smart constructor.
data PutVoiceConnectorEmergencyCallingConfigurationResponse = PutVoiceConnectorEmergencyCallingConfigurationResponse'
  { -- | The emergency calling configuration details.
    emergencyCallingConfiguration :: Prelude.Maybe EmergencyCallingConfiguration,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutVoiceConnectorEmergencyCallingConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'emergencyCallingConfiguration', 'putVoiceConnectorEmergencyCallingConfigurationResponse_emergencyCallingConfiguration' - The emergency calling configuration details.
--
-- 'httpStatus', 'putVoiceConnectorEmergencyCallingConfigurationResponse_httpStatus' - The response's http status code.
newPutVoiceConnectorEmergencyCallingConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutVoiceConnectorEmergencyCallingConfigurationResponse
newPutVoiceConnectorEmergencyCallingConfigurationResponse
  pHttpStatus_ =
    PutVoiceConnectorEmergencyCallingConfigurationResponse'
      { emergencyCallingConfiguration =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | The emergency calling configuration details.
putVoiceConnectorEmergencyCallingConfigurationResponse_emergencyCallingConfiguration :: Lens.Lens' PutVoiceConnectorEmergencyCallingConfigurationResponse (Prelude.Maybe EmergencyCallingConfiguration)
putVoiceConnectorEmergencyCallingConfigurationResponse_emergencyCallingConfiguration = Lens.lens (\PutVoiceConnectorEmergencyCallingConfigurationResponse' {emergencyCallingConfiguration} -> emergencyCallingConfiguration) (\s@PutVoiceConnectorEmergencyCallingConfigurationResponse' {} a -> s {emergencyCallingConfiguration = a} :: PutVoiceConnectorEmergencyCallingConfigurationResponse)

-- | The response's http status code.
putVoiceConnectorEmergencyCallingConfigurationResponse_httpStatus :: Lens.Lens' PutVoiceConnectorEmergencyCallingConfigurationResponse Prelude.Int
putVoiceConnectorEmergencyCallingConfigurationResponse_httpStatus = Lens.lens (\PutVoiceConnectorEmergencyCallingConfigurationResponse' {httpStatus} -> httpStatus) (\s@PutVoiceConnectorEmergencyCallingConfigurationResponse' {} a -> s {httpStatus = a} :: PutVoiceConnectorEmergencyCallingConfigurationResponse)

instance
  Prelude.NFData
    PutVoiceConnectorEmergencyCallingConfigurationResponse
