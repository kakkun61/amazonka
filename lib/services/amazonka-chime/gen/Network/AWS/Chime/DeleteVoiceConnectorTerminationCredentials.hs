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
-- Module      : Network.AWS.Chime.DeleteVoiceConnectorTerminationCredentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified SIP credentials used by your equipment to
-- authenticate during call termination.
module Network.AWS.Chime.DeleteVoiceConnectorTerminationCredentials
  ( -- * Creating a Request
    DeleteVoiceConnectorTerminationCredentials (..),
    newDeleteVoiceConnectorTerminationCredentials,

    -- * Request Lenses
    deleteVoiceConnectorTerminationCredentials_usernames,
    deleteVoiceConnectorTerminationCredentials_voiceConnectorId,

    -- * Destructuring the Response
    DeleteVoiceConnectorTerminationCredentialsResponse (..),
    newDeleteVoiceConnectorTerminationCredentialsResponse,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteVoiceConnectorTerminationCredentials' smart constructor.
data DeleteVoiceConnectorTerminationCredentials = DeleteVoiceConnectorTerminationCredentials'
  { -- | The RFC2617 compliant username associated with the SIP credentials, in
    -- US-ASCII format.
    usernames :: [Core.Sensitive Prelude.Text],
    -- | The Amazon Chime Voice Connector ID.
    voiceConnectorId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteVoiceConnectorTerminationCredentials' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'usernames', 'deleteVoiceConnectorTerminationCredentials_usernames' - The RFC2617 compliant username associated with the SIP credentials, in
-- US-ASCII format.
--
-- 'voiceConnectorId', 'deleteVoiceConnectorTerminationCredentials_voiceConnectorId' - The Amazon Chime Voice Connector ID.
newDeleteVoiceConnectorTerminationCredentials ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  DeleteVoiceConnectorTerminationCredentials
newDeleteVoiceConnectorTerminationCredentials
  pVoiceConnectorId_ =
    DeleteVoiceConnectorTerminationCredentials'
      { usernames =
          Prelude.mempty,
        voiceConnectorId =
          pVoiceConnectorId_
      }

-- | The RFC2617 compliant username associated with the SIP credentials, in
-- US-ASCII format.
deleteVoiceConnectorTerminationCredentials_usernames :: Lens.Lens' DeleteVoiceConnectorTerminationCredentials [Prelude.Text]
deleteVoiceConnectorTerminationCredentials_usernames = Lens.lens (\DeleteVoiceConnectorTerminationCredentials' {usernames} -> usernames) (\s@DeleteVoiceConnectorTerminationCredentials' {} a -> s {usernames = a} :: DeleteVoiceConnectorTerminationCredentials) Prelude.. Lens.coerced

-- | The Amazon Chime Voice Connector ID.
deleteVoiceConnectorTerminationCredentials_voiceConnectorId :: Lens.Lens' DeleteVoiceConnectorTerminationCredentials Prelude.Text
deleteVoiceConnectorTerminationCredentials_voiceConnectorId = Lens.lens (\DeleteVoiceConnectorTerminationCredentials' {voiceConnectorId} -> voiceConnectorId) (\s@DeleteVoiceConnectorTerminationCredentials' {} a -> s {voiceConnectorId = a} :: DeleteVoiceConnectorTerminationCredentials)

instance
  Core.AWSRequest
    DeleteVoiceConnectorTerminationCredentials
  where
  type
    AWSResponse
      DeleteVoiceConnectorTerminationCredentials =
      DeleteVoiceConnectorTerminationCredentialsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      DeleteVoiceConnectorTerminationCredentialsResponse'

instance
  Prelude.Hashable
    DeleteVoiceConnectorTerminationCredentials

instance
  Prelude.NFData
    DeleteVoiceConnectorTerminationCredentials

instance
  Core.ToHeaders
    DeleteVoiceConnectorTerminationCredentials
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToJSON
    DeleteVoiceConnectorTerminationCredentials
  where
  toJSON
    DeleteVoiceConnectorTerminationCredentials' {..} =
      Core.object
        ( Prelude.catMaybes
            [Prelude.Just ("Usernames" Core..= usernames)]
        )

instance
  Core.ToPath
    DeleteVoiceConnectorTerminationCredentials
  where
  toPath
    DeleteVoiceConnectorTerminationCredentials' {..} =
      Prelude.mconcat
        [ "/voice-connectors/",
          Core.toBS voiceConnectorId,
          "/termination/credentials"
        ]

instance
  Core.ToQuery
    DeleteVoiceConnectorTerminationCredentials
  where
  toQuery =
    Prelude.const
      (Prelude.mconcat ["operation=delete"])

-- | /See:/ 'newDeleteVoiceConnectorTerminationCredentialsResponse' smart constructor.
data DeleteVoiceConnectorTerminationCredentialsResponse = DeleteVoiceConnectorTerminationCredentialsResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteVoiceConnectorTerminationCredentialsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteVoiceConnectorTerminationCredentialsResponse ::
  DeleteVoiceConnectorTerminationCredentialsResponse
newDeleteVoiceConnectorTerminationCredentialsResponse =
  DeleteVoiceConnectorTerminationCredentialsResponse'

instance
  Prelude.NFData
    DeleteVoiceConnectorTerminationCredentialsResponse
