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
-- Module      : Network.AWS.Chime.DeleteVoiceConnectorGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Amazon Chime Voice Connector group. Any
-- @VoiceConnectorItems@ and phone numbers associated with the group must
-- be removed before it can be deleted.
module Network.AWS.Chime.DeleteVoiceConnectorGroup
  ( -- * Creating a Request
    DeleteVoiceConnectorGroup (..),
    newDeleteVoiceConnectorGroup,

    -- * Request Lenses
    deleteVoiceConnectorGroup_voiceConnectorGroupId,

    -- * Destructuring the Response
    DeleteVoiceConnectorGroupResponse (..),
    newDeleteVoiceConnectorGroupResponse,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteVoiceConnectorGroup' smart constructor.
data DeleteVoiceConnectorGroup = DeleteVoiceConnectorGroup'
  { -- | The Amazon Chime Voice Connector group ID.
    voiceConnectorGroupId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteVoiceConnectorGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorGroupId', 'deleteVoiceConnectorGroup_voiceConnectorGroupId' - The Amazon Chime Voice Connector group ID.
newDeleteVoiceConnectorGroup ::
  -- | 'voiceConnectorGroupId'
  Prelude.Text ->
  DeleteVoiceConnectorGroup
newDeleteVoiceConnectorGroup pVoiceConnectorGroupId_ =
  DeleteVoiceConnectorGroup'
    { voiceConnectorGroupId =
        pVoiceConnectorGroupId_
    }

-- | The Amazon Chime Voice Connector group ID.
deleteVoiceConnectorGroup_voiceConnectorGroupId :: Lens.Lens' DeleteVoiceConnectorGroup Prelude.Text
deleteVoiceConnectorGroup_voiceConnectorGroupId = Lens.lens (\DeleteVoiceConnectorGroup' {voiceConnectorGroupId} -> voiceConnectorGroupId) (\s@DeleteVoiceConnectorGroup' {} a -> s {voiceConnectorGroupId = a} :: DeleteVoiceConnectorGroup)

instance Core.AWSRequest DeleteVoiceConnectorGroup where
  type
    AWSResponse DeleteVoiceConnectorGroup =
      DeleteVoiceConnectorGroupResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull
      DeleteVoiceConnectorGroupResponse'

instance Prelude.Hashable DeleteVoiceConnectorGroup

instance Prelude.NFData DeleteVoiceConnectorGroup

instance Core.ToHeaders DeleteVoiceConnectorGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteVoiceConnectorGroup where
  toPath DeleteVoiceConnectorGroup' {..} =
    Prelude.mconcat
      [ "/voice-connector-groups/",
        Core.toBS voiceConnectorGroupId
      ]

instance Core.ToQuery DeleteVoiceConnectorGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteVoiceConnectorGroupResponse' smart constructor.
data DeleteVoiceConnectorGroupResponse = DeleteVoiceConnectorGroupResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteVoiceConnectorGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteVoiceConnectorGroupResponse ::
  DeleteVoiceConnectorGroupResponse
newDeleteVoiceConnectorGroupResponse =
  DeleteVoiceConnectorGroupResponse'

instance
  Prelude.NFData
    DeleteVoiceConnectorGroupResponse
