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
-- Module      : Network.AWS.Chime.UpdateVoiceConnector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates details for the specified Amazon Chime Voice Connector.
module Network.AWS.Chime.UpdateVoiceConnector
  ( -- * Creating a Request
    UpdateVoiceConnector (..),
    newUpdateVoiceConnector,

    -- * Request Lenses
    updateVoiceConnector_voiceConnectorId,
    updateVoiceConnector_name,
    updateVoiceConnector_requireEncryption,

    -- * Destructuring the Response
    UpdateVoiceConnectorResponse (..),
    newUpdateVoiceConnectorResponse,

    -- * Response Lenses
    updateVoiceConnectorResponse_voiceConnector,
    updateVoiceConnectorResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateVoiceConnector' smart constructor.
data UpdateVoiceConnector = UpdateVoiceConnector'
  { -- | The Amazon Chime Voice Connector ID.
    voiceConnectorId :: Prelude.Text,
    -- | The name of the Amazon Chime Voice Connector.
    name :: Prelude.Text,
    -- | When enabled, requires encryption for the Amazon Chime Voice Connector.
    requireEncryption :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateVoiceConnector' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorId', 'updateVoiceConnector_voiceConnectorId' - The Amazon Chime Voice Connector ID.
--
-- 'name', 'updateVoiceConnector_name' - The name of the Amazon Chime Voice Connector.
--
-- 'requireEncryption', 'updateVoiceConnector_requireEncryption' - When enabled, requires encryption for the Amazon Chime Voice Connector.
newUpdateVoiceConnector ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'requireEncryption'
  Prelude.Bool ->
  UpdateVoiceConnector
newUpdateVoiceConnector
  pVoiceConnectorId_
  pName_
  pRequireEncryption_ =
    UpdateVoiceConnector'
      { voiceConnectorId =
          pVoiceConnectorId_,
        name = pName_,
        requireEncryption = pRequireEncryption_
      }

-- | The Amazon Chime Voice Connector ID.
updateVoiceConnector_voiceConnectorId :: Lens.Lens' UpdateVoiceConnector Prelude.Text
updateVoiceConnector_voiceConnectorId = Lens.lens (\UpdateVoiceConnector' {voiceConnectorId} -> voiceConnectorId) (\s@UpdateVoiceConnector' {} a -> s {voiceConnectorId = a} :: UpdateVoiceConnector)

-- | The name of the Amazon Chime Voice Connector.
updateVoiceConnector_name :: Lens.Lens' UpdateVoiceConnector Prelude.Text
updateVoiceConnector_name = Lens.lens (\UpdateVoiceConnector' {name} -> name) (\s@UpdateVoiceConnector' {} a -> s {name = a} :: UpdateVoiceConnector)

-- | When enabled, requires encryption for the Amazon Chime Voice Connector.
updateVoiceConnector_requireEncryption :: Lens.Lens' UpdateVoiceConnector Prelude.Bool
updateVoiceConnector_requireEncryption = Lens.lens (\UpdateVoiceConnector' {requireEncryption} -> requireEncryption) (\s@UpdateVoiceConnector' {} a -> s {requireEncryption = a} :: UpdateVoiceConnector)

instance Core.AWSRequest UpdateVoiceConnector where
  type
    AWSResponse UpdateVoiceConnector =
      UpdateVoiceConnectorResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateVoiceConnectorResponse'
            Prelude.<$> (x Core..?> "VoiceConnector")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateVoiceConnector

instance Prelude.NFData UpdateVoiceConnector

instance Core.ToHeaders UpdateVoiceConnector where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdateVoiceConnector where
  toJSON UpdateVoiceConnector' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just
              ("RequireEncryption" Core..= requireEncryption)
          ]
      )

instance Core.ToPath UpdateVoiceConnector where
  toPath UpdateVoiceConnector' {..} =
    Prelude.mconcat
      ["/voice-connectors/", Core.toBS voiceConnectorId]

instance Core.ToQuery UpdateVoiceConnector where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateVoiceConnectorResponse' smart constructor.
data UpdateVoiceConnectorResponse = UpdateVoiceConnectorResponse'
  { -- | The updated Amazon Chime Voice Connector details.
    voiceConnector :: Prelude.Maybe VoiceConnector,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateVoiceConnectorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnector', 'updateVoiceConnectorResponse_voiceConnector' - The updated Amazon Chime Voice Connector details.
--
-- 'httpStatus', 'updateVoiceConnectorResponse_httpStatus' - The response's http status code.
newUpdateVoiceConnectorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateVoiceConnectorResponse
newUpdateVoiceConnectorResponse pHttpStatus_ =
  UpdateVoiceConnectorResponse'
    { voiceConnector =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The updated Amazon Chime Voice Connector details.
updateVoiceConnectorResponse_voiceConnector :: Lens.Lens' UpdateVoiceConnectorResponse (Prelude.Maybe VoiceConnector)
updateVoiceConnectorResponse_voiceConnector = Lens.lens (\UpdateVoiceConnectorResponse' {voiceConnector} -> voiceConnector) (\s@UpdateVoiceConnectorResponse' {} a -> s {voiceConnector = a} :: UpdateVoiceConnectorResponse)

-- | The response's http status code.
updateVoiceConnectorResponse_httpStatus :: Lens.Lens' UpdateVoiceConnectorResponse Prelude.Int
updateVoiceConnectorResponse_httpStatus = Lens.lens (\UpdateVoiceConnectorResponse' {httpStatus} -> httpStatus) (\s@UpdateVoiceConnectorResponse' {} a -> s {httpStatus = a} :: UpdateVoiceConnectorResponse)

instance Prelude.NFData UpdateVoiceConnectorResponse
