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
-- Module      : Network.AWS.Chime.PutVoiceConnectorTerminationCredentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds termination SIP credentials for the specified Amazon Chime Voice
-- Connector.
module Network.AWS.Chime.PutVoiceConnectorTerminationCredentials
  ( -- * Creating a Request
    PutVoiceConnectorTerminationCredentials (..),
    newPutVoiceConnectorTerminationCredentials,

    -- * Request Lenses
    putVoiceConnectorTerminationCredentials_credentials,
    putVoiceConnectorTerminationCredentials_voiceConnectorId,

    -- * Destructuring the Response
    PutVoiceConnectorTerminationCredentialsResponse (..),
    newPutVoiceConnectorTerminationCredentialsResponse,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutVoiceConnectorTerminationCredentials' smart constructor.
data PutVoiceConnectorTerminationCredentials = PutVoiceConnectorTerminationCredentials'
  { -- | The termination SIP credentials.
    credentials :: Prelude.Maybe [Credential],
    -- | The Amazon Chime Voice Connector ID.
    voiceConnectorId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutVoiceConnectorTerminationCredentials' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'credentials', 'putVoiceConnectorTerminationCredentials_credentials' - The termination SIP credentials.
--
-- 'voiceConnectorId', 'putVoiceConnectorTerminationCredentials_voiceConnectorId' - The Amazon Chime Voice Connector ID.
newPutVoiceConnectorTerminationCredentials ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  PutVoiceConnectorTerminationCredentials
newPutVoiceConnectorTerminationCredentials
  pVoiceConnectorId_ =
    PutVoiceConnectorTerminationCredentials'
      { credentials =
          Prelude.Nothing,
        voiceConnectorId =
          pVoiceConnectorId_
      }

-- | The termination SIP credentials.
putVoiceConnectorTerminationCredentials_credentials :: Lens.Lens' PutVoiceConnectorTerminationCredentials (Prelude.Maybe [Credential])
putVoiceConnectorTerminationCredentials_credentials = Lens.lens (\PutVoiceConnectorTerminationCredentials' {credentials} -> credentials) (\s@PutVoiceConnectorTerminationCredentials' {} a -> s {credentials = a} :: PutVoiceConnectorTerminationCredentials) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Chime Voice Connector ID.
putVoiceConnectorTerminationCredentials_voiceConnectorId :: Lens.Lens' PutVoiceConnectorTerminationCredentials Prelude.Text
putVoiceConnectorTerminationCredentials_voiceConnectorId = Lens.lens (\PutVoiceConnectorTerminationCredentials' {voiceConnectorId} -> voiceConnectorId) (\s@PutVoiceConnectorTerminationCredentials' {} a -> s {voiceConnectorId = a} :: PutVoiceConnectorTerminationCredentials)

instance
  Core.AWSRequest
    PutVoiceConnectorTerminationCredentials
  where
  type
    AWSResponse
      PutVoiceConnectorTerminationCredentials =
      PutVoiceConnectorTerminationCredentialsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      PutVoiceConnectorTerminationCredentialsResponse'

instance
  Prelude.Hashable
    PutVoiceConnectorTerminationCredentials

instance
  Prelude.NFData
    PutVoiceConnectorTerminationCredentials

instance
  Core.ToHeaders
    PutVoiceConnectorTerminationCredentials
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToJSON
    PutVoiceConnectorTerminationCredentials
  where
  toJSON PutVoiceConnectorTerminationCredentials' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Credentials" Core..=) Prelude.<$> credentials]
      )

instance
  Core.ToPath
    PutVoiceConnectorTerminationCredentials
  where
  toPath PutVoiceConnectorTerminationCredentials' {..} =
    Prelude.mconcat
      [ "/voice-connectors/",
        Core.toBS voiceConnectorId,
        "/termination/credentials"
      ]

instance
  Core.ToQuery
    PutVoiceConnectorTerminationCredentials
  where
  toQuery =
    Prelude.const (Prelude.mconcat ["operation=put"])

-- | /See:/ 'newPutVoiceConnectorTerminationCredentialsResponse' smart constructor.
data PutVoiceConnectorTerminationCredentialsResponse = PutVoiceConnectorTerminationCredentialsResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutVoiceConnectorTerminationCredentialsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newPutVoiceConnectorTerminationCredentialsResponse ::
  PutVoiceConnectorTerminationCredentialsResponse
newPutVoiceConnectorTerminationCredentialsResponse =
  PutVoiceConnectorTerminationCredentialsResponse'

instance
  Prelude.NFData
    PutVoiceConnectorTerminationCredentialsResponse
