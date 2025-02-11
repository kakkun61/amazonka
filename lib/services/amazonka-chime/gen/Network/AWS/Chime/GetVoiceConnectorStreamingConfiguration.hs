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
-- Module      : Network.AWS.Chime.GetVoiceConnectorStreamingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the streaming configuration details for the specified Amazon
-- Chime Voice Connector. Shows whether media streaming is enabled for
-- sending to Amazon Kinesis. It also shows the retention period, in hours,
-- for the Amazon Kinesis data.
module Network.AWS.Chime.GetVoiceConnectorStreamingConfiguration
  ( -- * Creating a Request
    GetVoiceConnectorStreamingConfiguration (..),
    newGetVoiceConnectorStreamingConfiguration,

    -- * Request Lenses
    getVoiceConnectorStreamingConfiguration_voiceConnectorId,

    -- * Destructuring the Response
    GetVoiceConnectorStreamingConfigurationResponse (..),
    newGetVoiceConnectorStreamingConfigurationResponse,

    -- * Response Lenses
    getVoiceConnectorStreamingConfigurationResponse_streamingConfiguration,
    getVoiceConnectorStreamingConfigurationResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetVoiceConnectorStreamingConfiguration' smart constructor.
data GetVoiceConnectorStreamingConfiguration = GetVoiceConnectorStreamingConfiguration'
  { -- | The Amazon Chime Voice Connector ID.
    voiceConnectorId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVoiceConnectorStreamingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorId', 'getVoiceConnectorStreamingConfiguration_voiceConnectorId' - The Amazon Chime Voice Connector ID.
newGetVoiceConnectorStreamingConfiguration ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  GetVoiceConnectorStreamingConfiguration
newGetVoiceConnectorStreamingConfiguration
  pVoiceConnectorId_ =
    GetVoiceConnectorStreamingConfiguration'
      { voiceConnectorId =
          pVoiceConnectorId_
      }

-- | The Amazon Chime Voice Connector ID.
getVoiceConnectorStreamingConfiguration_voiceConnectorId :: Lens.Lens' GetVoiceConnectorStreamingConfiguration Prelude.Text
getVoiceConnectorStreamingConfiguration_voiceConnectorId = Lens.lens (\GetVoiceConnectorStreamingConfiguration' {voiceConnectorId} -> voiceConnectorId) (\s@GetVoiceConnectorStreamingConfiguration' {} a -> s {voiceConnectorId = a} :: GetVoiceConnectorStreamingConfiguration)

instance
  Core.AWSRequest
    GetVoiceConnectorStreamingConfiguration
  where
  type
    AWSResponse
      GetVoiceConnectorStreamingConfiguration =
      GetVoiceConnectorStreamingConfigurationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetVoiceConnectorStreamingConfigurationResponse'
            Prelude.<$> (x Core..?> "StreamingConfiguration")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetVoiceConnectorStreamingConfiguration

instance
  Prelude.NFData
    GetVoiceConnectorStreamingConfiguration

instance
  Core.ToHeaders
    GetVoiceConnectorStreamingConfiguration
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    GetVoiceConnectorStreamingConfiguration
  where
  toPath GetVoiceConnectorStreamingConfiguration' {..} =
    Prelude.mconcat
      [ "/voice-connectors/",
        Core.toBS voiceConnectorId,
        "/streaming-configuration"
      ]

instance
  Core.ToQuery
    GetVoiceConnectorStreamingConfiguration
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetVoiceConnectorStreamingConfigurationResponse' smart constructor.
data GetVoiceConnectorStreamingConfigurationResponse = GetVoiceConnectorStreamingConfigurationResponse'
  { -- | The streaming configuration details.
    streamingConfiguration :: Prelude.Maybe StreamingConfiguration,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVoiceConnectorStreamingConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'streamingConfiguration', 'getVoiceConnectorStreamingConfigurationResponse_streamingConfiguration' - The streaming configuration details.
--
-- 'httpStatus', 'getVoiceConnectorStreamingConfigurationResponse_httpStatus' - The response's http status code.
newGetVoiceConnectorStreamingConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetVoiceConnectorStreamingConfigurationResponse
newGetVoiceConnectorStreamingConfigurationResponse
  pHttpStatus_ =
    GetVoiceConnectorStreamingConfigurationResponse'
      { streamingConfiguration =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The streaming configuration details.
getVoiceConnectorStreamingConfigurationResponse_streamingConfiguration :: Lens.Lens' GetVoiceConnectorStreamingConfigurationResponse (Prelude.Maybe StreamingConfiguration)
getVoiceConnectorStreamingConfigurationResponse_streamingConfiguration = Lens.lens (\GetVoiceConnectorStreamingConfigurationResponse' {streamingConfiguration} -> streamingConfiguration) (\s@GetVoiceConnectorStreamingConfigurationResponse' {} a -> s {streamingConfiguration = a} :: GetVoiceConnectorStreamingConfigurationResponse)

-- | The response's http status code.
getVoiceConnectorStreamingConfigurationResponse_httpStatus :: Lens.Lens' GetVoiceConnectorStreamingConfigurationResponse Prelude.Int
getVoiceConnectorStreamingConfigurationResponse_httpStatus = Lens.lens (\GetVoiceConnectorStreamingConfigurationResponse' {httpStatus} -> httpStatus) (\s@GetVoiceConnectorStreamingConfigurationResponse' {} a -> s {httpStatus = a} :: GetVoiceConnectorStreamingConfigurationResponse)

instance
  Prelude.NFData
    GetVoiceConnectorStreamingConfigurationResponse
