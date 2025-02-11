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
-- Module      : Network.AWS.Chime.GetVoiceConnectorGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details for the specified Amazon Chime Voice Connector group,
-- such as timestamps,name, and associated @VoiceConnectorItems@.
module Network.AWS.Chime.GetVoiceConnectorGroup
  ( -- * Creating a Request
    GetVoiceConnectorGroup (..),
    newGetVoiceConnectorGroup,

    -- * Request Lenses
    getVoiceConnectorGroup_voiceConnectorGroupId,

    -- * Destructuring the Response
    GetVoiceConnectorGroupResponse (..),
    newGetVoiceConnectorGroupResponse,

    -- * Response Lenses
    getVoiceConnectorGroupResponse_voiceConnectorGroup,
    getVoiceConnectorGroupResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetVoiceConnectorGroup' smart constructor.
data GetVoiceConnectorGroup = GetVoiceConnectorGroup'
  { -- | The Amazon Chime Voice Connector group ID.
    voiceConnectorGroupId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVoiceConnectorGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorGroupId', 'getVoiceConnectorGroup_voiceConnectorGroupId' - The Amazon Chime Voice Connector group ID.
newGetVoiceConnectorGroup ::
  -- | 'voiceConnectorGroupId'
  Prelude.Text ->
  GetVoiceConnectorGroup
newGetVoiceConnectorGroup pVoiceConnectorGroupId_ =
  GetVoiceConnectorGroup'
    { voiceConnectorGroupId =
        pVoiceConnectorGroupId_
    }

-- | The Amazon Chime Voice Connector group ID.
getVoiceConnectorGroup_voiceConnectorGroupId :: Lens.Lens' GetVoiceConnectorGroup Prelude.Text
getVoiceConnectorGroup_voiceConnectorGroupId = Lens.lens (\GetVoiceConnectorGroup' {voiceConnectorGroupId} -> voiceConnectorGroupId) (\s@GetVoiceConnectorGroup' {} a -> s {voiceConnectorGroupId = a} :: GetVoiceConnectorGroup)

instance Core.AWSRequest GetVoiceConnectorGroup where
  type
    AWSResponse GetVoiceConnectorGroup =
      GetVoiceConnectorGroupResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetVoiceConnectorGroupResponse'
            Prelude.<$> (x Core..?> "VoiceConnectorGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetVoiceConnectorGroup

instance Prelude.NFData GetVoiceConnectorGroup

instance Core.ToHeaders GetVoiceConnectorGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetVoiceConnectorGroup where
  toPath GetVoiceConnectorGroup' {..} =
    Prelude.mconcat
      [ "/voice-connector-groups/",
        Core.toBS voiceConnectorGroupId
      ]

instance Core.ToQuery GetVoiceConnectorGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetVoiceConnectorGroupResponse' smart constructor.
data GetVoiceConnectorGroupResponse = GetVoiceConnectorGroupResponse'
  { -- | The Amazon Chime Voice Connector group details.
    voiceConnectorGroup :: Prelude.Maybe VoiceConnectorGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVoiceConnectorGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorGroup', 'getVoiceConnectorGroupResponse_voiceConnectorGroup' - The Amazon Chime Voice Connector group details.
--
-- 'httpStatus', 'getVoiceConnectorGroupResponse_httpStatus' - The response's http status code.
newGetVoiceConnectorGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetVoiceConnectorGroupResponse
newGetVoiceConnectorGroupResponse pHttpStatus_ =
  GetVoiceConnectorGroupResponse'
    { voiceConnectorGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Chime Voice Connector group details.
getVoiceConnectorGroupResponse_voiceConnectorGroup :: Lens.Lens' GetVoiceConnectorGroupResponse (Prelude.Maybe VoiceConnectorGroup)
getVoiceConnectorGroupResponse_voiceConnectorGroup = Lens.lens (\GetVoiceConnectorGroupResponse' {voiceConnectorGroup} -> voiceConnectorGroup) (\s@GetVoiceConnectorGroupResponse' {} a -> s {voiceConnectorGroup = a} :: GetVoiceConnectorGroupResponse)

-- | The response's http status code.
getVoiceConnectorGroupResponse_httpStatus :: Lens.Lens' GetVoiceConnectorGroupResponse Prelude.Int
getVoiceConnectorGroupResponse_httpStatus = Lens.lens (\GetVoiceConnectorGroupResponse' {httpStatus} -> httpStatus) (\s@GetVoiceConnectorGroupResponse' {} a -> s {httpStatus = a} :: GetVoiceConnectorGroupResponse)

instance
  Prelude.NFData
    GetVoiceConnectorGroupResponse
