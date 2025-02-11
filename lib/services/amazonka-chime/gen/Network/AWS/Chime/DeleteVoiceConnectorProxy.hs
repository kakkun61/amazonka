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
-- Module      : Network.AWS.Chime.DeleteVoiceConnectorProxy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the proxy configuration from the specified Amazon Chime Voice
-- Connector.
module Network.AWS.Chime.DeleteVoiceConnectorProxy
  ( -- * Creating a Request
    DeleteVoiceConnectorProxy (..),
    newDeleteVoiceConnectorProxy,

    -- * Request Lenses
    deleteVoiceConnectorProxy_voiceConnectorId,

    -- * Destructuring the Response
    DeleteVoiceConnectorProxyResponse (..),
    newDeleteVoiceConnectorProxyResponse,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteVoiceConnectorProxy' smart constructor.
data DeleteVoiceConnectorProxy = DeleteVoiceConnectorProxy'
  { -- | The Amazon Chime Voice Connector ID.
    voiceConnectorId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteVoiceConnectorProxy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorId', 'deleteVoiceConnectorProxy_voiceConnectorId' - The Amazon Chime Voice Connector ID.
newDeleteVoiceConnectorProxy ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  DeleteVoiceConnectorProxy
newDeleteVoiceConnectorProxy pVoiceConnectorId_ =
  DeleteVoiceConnectorProxy'
    { voiceConnectorId =
        pVoiceConnectorId_
    }

-- | The Amazon Chime Voice Connector ID.
deleteVoiceConnectorProxy_voiceConnectorId :: Lens.Lens' DeleteVoiceConnectorProxy Prelude.Text
deleteVoiceConnectorProxy_voiceConnectorId = Lens.lens (\DeleteVoiceConnectorProxy' {voiceConnectorId} -> voiceConnectorId) (\s@DeleteVoiceConnectorProxy' {} a -> s {voiceConnectorId = a} :: DeleteVoiceConnectorProxy)

instance Core.AWSRequest DeleteVoiceConnectorProxy where
  type
    AWSResponse DeleteVoiceConnectorProxy =
      DeleteVoiceConnectorProxyResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull
      DeleteVoiceConnectorProxyResponse'

instance Prelude.Hashable DeleteVoiceConnectorProxy

instance Prelude.NFData DeleteVoiceConnectorProxy

instance Core.ToHeaders DeleteVoiceConnectorProxy where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteVoiceConnectorProxy where
  toPath DeleteVoiceConnectorProxy' {..} =
    Prelude.mconcat
      [ "/voice-connectors/",
        Core.toBS voiceConnectorId,
        "/programmable-numbers/proxy"
      ]

instance Core.ToQuery DeleteVoiceConnectorProxy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteVoiceConnectorProxyResponse' smart constructor.
data DeleteVoiceConnectorProxyResponse = DeleteVoiceConnectorProxyResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteVoiceConnectorProxyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteVoiceConnectorProxyResponse ::
  DeleteVoiceConnectorProxyResponse
newDeleteVoiceConnectorProxyResponse =
  DeleteVoiceConnectorProxyResponse'

instance
  Prelude.NFData
    DeleteVoiceConnectorProxyResponse
