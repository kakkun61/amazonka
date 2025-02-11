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
-- Module      : Network.AWS.Chime.PutVoiceConnectorTermination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds termination settings for the specified Amazon Chime Voice
-- Connector.
--
-- If emergency calling is configured for the Amazon Chime Voice Connector,
-- it must be deleted prior to turning off termination settings.
module Network.AWS.Chime.PutVoiceConnectorTermination
  ( -- * Creating a Request
    PutVoiceConnectorTermination (..),
    newPutVoiceConnectorTermination,

    -- * Request Lenses
    putVoiceConnectorTermination_voiceConnectorId,
    putVoiceConnectorTermination_termination,

    -- * Destructuring the Response
    PutVoiceConnectorTerminationResponse (..),
    newPutVoiceConnectorTerminationResponse,

    -- * Response Lenses
    putVoiceConnectorTerminationResponse_termination,
    putVoiceConnectorTerminationResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutVoiceConnectorTermination' smart constructor.
data PutVoiceConnectorTermination = PutVoiceConnectorTermination'
  { -- | The Amazon Chime Voice Connector ID.
    voiceConnectorId :: Prelude.Text,
    -- | The termination setting details to add.
    termination :: Termination
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutVoiceConnectorTermination' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorId', 'putVoiceConnectorTermination_voiceConnectorId' - The Amazon Chime Voice Connector ID.
--
-- 'termination', 'putVoiceConnectorTermination_termination' - The termination setting details to add.
newPutVoiceConnectorTermination ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  -- | 'termination'
  Termination ->
  PutVoiceConnectorTermination
newPutVoiceConnectorTermination
  pVoiceConnectorId_
  pTermination_ =
    PutVoiceConnectorTermination'
      { voiceConnectorId =
          pVoiceConnectorId_,
        termination = pTermination_
      }

-- | The Amazon Chime Voice Connector ID.
putVoiceConnectorTermination_voiceConnectorId :: Lens.Lens' PutVoiceConnectorTermination Prelude.Text
putVoiceConnectorTermination_voiceConnectorId = Lens.lens (\PutVoiceConnectorTermination' {voiceConnectorId} -> voiceConnectorId) (\s@PutVoiceConnectorTermination' {} a -> s {voiceConnectorId = a} :: PutVoiceConnectorTermination)

-- | The termination setting details to add.
putVoiceConnectorTermination_termination :: Lens.Lens' PutVoiceConnectorTermination Termination
putVoiceConnectorTermination_termination = Lens.lens (\PutVoiceConnectorTermination' {termination} -> termination) (\s@PutVoiceConnectorTermination' {} a -> s {termination = a} :: PutVoiceConnectorTermination)

instance Core.AWSRequest PutVoiceConnectorTermination where
  type
    AWSResponse PutVoiceConnectorTermination =
      PutVoiceConnectorTerminationResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutVoiceConnectorTerminationResponse'
            Prelude.<$> (x Core..?> "Termination")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    PutVoiceConnectorTermination

instance Prelude.NFData PutVoiceConnectorTermination

instance Core.ToHeaders PutVoiceConnectorTermination where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON PutVoiceConnectorTermination where
  toJSON PutVoiceConnectorTermination' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Termination" Core..= termination)]
      )

instance Core.ToPath PutVoiceConnectorTermination where
  toPath PutVoiceConnectorTermination' {..} =
    Prelude.mconcat
      [ "/voice-connectors/",
        Core.toBS voiceConnectorId,
        "/termination"
      ]

instance Core.ToQuery PutVoiceConnectorTermination where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutVoiceConnectorTerminationResponse' smart constructor.
data PutVoiceConnectorTerminationResponse = PutVoiceConnectorTerminationResponse'
  { -- | The updated termination setting details.
    termination :: Prelude.Maybe Termination,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutVoiceConnectorTerminationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'termination', 'putVoiceConnectorTerminationResponse_termination' - The updated termination setting details.
--
-- 'httpStatus', 'putVoiceConnectorTerminationResponse_httpStatus' - The response's http status code.
newPutVoiceConnectorTerminationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutVoiceConnectorTerminationResponse
newPutVoiceConnectorTerminationResponse pHttpStatus_ =
  PutVoiceConnectorTerminationResponse'
    { termination =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The updated termination setting details.
putVoiceConnectorTerminationResponse_termination :: Lens.Lens' PutVoiceConnectorTerminationResponse (Prelude.Maybe Termination)
putVoiceConnectorTerminationResponse_termination = Lens.lens (\PutVoiceConnectorTerminationResponse' {termination} -> termination) (\s@PutVoiceConnectorTerminationResponse' {} a -> s {termination = a} :: PutVoiceConnectorTerminationResponse)

-- | The response's http status code.
putVoiceConnectorTerminationResponse_httpStatus :: Lens.Lens' PutVoiceConnectorTerminationResponse Prelude.Int
putVoiceConnectorTerminationResponse_httpStatus = Lens.lens (\PutVoiceConnectorTerminationResponse' {httpStatus} -> httpStatus) (\s@PutVoiceConnectorTerminationResponse' {} a -> s {httpStatus = a} :: PutVoiceConnectorTerminationResponse)

instance
  Prelude.NFData
    PutVoiceConnectorTerminationResponse
