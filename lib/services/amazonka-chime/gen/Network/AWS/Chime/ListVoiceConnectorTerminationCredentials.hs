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
-- Module      : Network.AWS.Chime.ListVoiceConnectorTerminationCredentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the SIP credentials for the specified Amazon Chime Voice
-- Connector.
module Network.AWS.Chime.ListVoiceConnectorTerminationCredentials
  ( -- * Creating a Request
    ListVoiceConnectorTerminationCredentials (..),
    newListVoiceConnectorTerminationCredentials,

    -- * Request Lenses
    listVoiceConnectorTerminationCredentials_voiceConnectorId,

    -- * Destructuring the Response
    ListVoiceConnectorTerminationCredentialsResponse (..),
    newListVoiceConnectorTerminationCredentialsResponse,

    -- * Response Lenses
    listVoiceConnectorTerminationCredentialsResponse_usernames,
    listVoiceConnectorTerminationCredentialsResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListVoiceConnectorTerminationCredentials' smart constructor.
data ListVoiceConnectorTerminationCredentials = ListVoiceConnectorTerminationCredentials'
  { -- | The Amazon Chime Voice Connector ID.
    voiceConnectorId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListVoiceConnectorTerminationCredentials' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorId', 'listVoiceConnectorTerminationCredentials_voiceConnectorId' - The Amazon Chime Voice Connector ID.
newListVoiceConnectorTerminationCredentials ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  ListVoiceConnectorTerminationCredentials
newListVoiceConnectorTerminationCredentials
  pVoiceConnectorId_ =
    ListVoiceConnectorTerminationCredentials'
      { voiceConnectorId =
          pVoiceConnectorId_
      }

-- | The Amazon Chime Voice Connector ID.
listVoiceConnectorTerminationCredentials_voiceConnectorId :: Lens.Lens' ListVoiceConnectorTerminationCredentials Prelude.Text
listVoiceConnectorTerminationCredentials_voiceConnectorId = Lens.lens (\ListVoiceConnectorTerminationCredentials' {voiceConnectorId} -> voiceConnectorId) (\s@ListVoiceConnectorTerminationCredentials' {} a -> s {voiceConnectorId = a} :: ListVoiceConnectorTerminationCredentials)

instance
  Core.AWSRequest
    ListVoiceConnectorTerminationCredentials
  where
  type
    AWSResponse
      ListVoiceConnectorTerminationCredentials =
      ListVoiceConnectorTerminationCredentialsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListVoiceConnectorTerminationCredentialsResponse'
            Prelude.<$> (x Core..?> "Usernames" Core..!@ Prelude.mempty)
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListVoiceConnectorTerminationCredentials

instance
  Prelude.NFData
    ListVoiceConnectorTerminationCredentials

instance
  Core.ToHeaders
    ListVoiceConnectorTerminationCredentials
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    ListVoiceConnectorTerminationCredentials
  where
  toPath ListVoiceConnectorTerminationCredentials' {..} =
    Prelude.mconcat
      [ "/voice-connectors/",
        Core.toBS voiceConnectorId,
        "/termination/credentials"
      ]

instance
  Core.ToQuery
    ListVoiceConnectorTerminationCredentials
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListVoiceConnectorTerminationCredentialsResponse' smart constructor.
data ListVoiceConnectorTerminationCredentialsResponse = ListVoiceConnectorTerminationCredentialsResponse'
  { -- | A list of user names.
    usernames :: Prelude.Maybe [Core.Sensitive Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListVoiceConnectorTerminationCredentialsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'usernames', 'listVoiceConnectorTerminationCredentialsResponse_usernames' - A list of user names.
--
-- 'httpStatus', 'listVoiceConnectorTerminationCredentialsResponse_httpStatus' - The response's http status code.
newListVoiceConnectorTerminationCredentialsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListVoiceConnectorTerminationCredentialsResponse
newListVoiceConnectorTerminationCredentialsResponse
  pHttpStatus_ =
    ListVoiceConnectorTerminationCredentialsResponse'
      { usernames =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | A list of user names.
listVoiceConnectorTerminationCredentialsResponse_usernames :: Lens.Lens' ListVoiceConnectorTerminationCredentialsResponse (Prelude.Maybe [Prelude.Text])
listVoiceConnectorTerminationCredentialsResponse_usernames = Lens.lens (\ListVoiceConnectorTerminationCredentialsResponse' {usernames} -> usernames) (\s@ListVoiceConnectorTerminationCredentialsResponse' {} a -> s {usernames = a} :: ListVoiceConnectorTerminationCredentialsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listVoiceConnectorTerminationCredentialsResponse_httpStatus :: Lens.Lens' ListVoiceConnectorTerminationCredentialsResponse Prelude.Int
listVoiceConnectorTerminationCredentialsResponse_httpStatus = Lens.lens (\ListVoiceConnectorTerminationCredentialsResponse' {httpStatus} -> httpStatus) (\s@ListVoiceConnectorTerminationCredentialsResponse' {} a -> s {httpStatus = a} :: ListVoiceConnectorTerminationCredentialsResponse)

instance
  Prelude.NFData
    ListVoiceConnectorTerminationCredentialsResponse
