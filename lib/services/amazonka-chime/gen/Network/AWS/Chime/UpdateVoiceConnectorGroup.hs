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
-- Module      : Network.AWS.Chime.UpdateVoiceConnectorGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates details of the specified Amazon Chime Voice Connector group,
-- such as the name and Amazon Chime Voice Connector priority ranking.
module Network.AWS.Chime.UpdateVoiceConnectorGroup
  ( -- * Creating a Request
    UpdateVoiceConnectorGroup (..),
    newUpdateVoiceConnectorGroup,

    -- * Request Lenses
    updateVoiceConnectorGroup_voiceConnectorGroupId,
    updateVoiceConnectorGroup_name,
    updateVoiceConnectorGroup_voiceConnectorItems,

    -- * Destructuring the Response
    UpdateVoiceConnectorGroupResponse (..),
    newUpdateVoiceConnectorGroupResponse,

    -- * Response Lenses
    updateVoiceConnectorGroupResponse_voiceConnectorGroup,
    updateVoiceConnectorGroupResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateVoiceConnectorGroup' smart constructor.
data UpdateVoiceConnectorGroup = UpdateVoiceConnectorGroup'
  { -- | The Amazon Chime Voice Connector group ID.
    voiceConnectorGroupId :: Prelude.Text,
    -- | The name of the Amazon Chime Voice Connector group.
    name :: Prelude.Text,
    -- | The @VoiceConnectorItems@ to associate with the group.
    voiceConnectorItems :: [VoiceConnectorItem]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateVoiceConnectorGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorGroupId', 'updateVoiceConnectorGroup_voiceConnectorGroupId' - The Amazon Chime Voice Connector group ID.
--
-- 'name', 'updateVoiceConnectorGroup_name' - The name of the Amazon Chime Voice Connector group.
--
-- 'voiceConnectorItems', 'updateVoiceConnectorGroup_voiceConnectorItems' - The @VoiceConnectorItems@ to associate with the group.
newUpdateVoiceConnectorGroup ::
  -- | 'voiceConnectorGroupId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  UpdateVoiceConnectorGroup
newUpdateVoiceConnectorGroup
  pVoiceConnectorGroupId_
  pName_ =
    UpdateVoiceConnectorGroup'
      { voiceConnectorGroupId =
          pVoiceConnectorGroupId_,
        name = pName_,
        voiceConnectorItems = Prelude.mempty
      }

-- | The Amazon Chime Voice Connector group ID.
updateVoiceConnectorGroup_voiceConnectorGroupId :: Lens.Lens' UpdateVoiceConnectorGroup Prelude.Text
updateVoiceConnectorGroup_voiceConnectorGroupId = Lens.lens (\UpdateVoiceConnectorGroup' {voiceConnectorGroupId} -> voiceConnectorGroupId) (\s@UpdateVoiceConnectorGroup' {} a -> s {voiceConnectorGroupId = a} :: UpdateVoiceConnectorGroup)

-- | The name of the Amazon Chime Voice Connector group.
updateVoiceConnectorGroup_name :: Lens.Lens' UpdateVoiceConnectorGroup Prelude.Text
updateVoiceConnectorGroup_name = Lens.lens (\UpdateVoiceConnectorGroup' {name} -> name) (\s@UpdateVoiceConnectorGroup' {} a -> s {name = a} :: UpdateVoiceConnectorGroup)

-- | The @VoiceConnectorItems@ to associate with the group.
updateVoiceConnectorGroup_voiceConnectorItems :: Lens.Lens' UpdateVoiceConnectorGroup [VoiceConnectorItem]
updateVoiceConnectorGroup_voiceConnectorItems = Lens.lens (\UpdateVoiceConnectorGroup' {voiceConnectorItems} -> voiceConnectorItems) (\s@UpdateVoiceConnectorGroup' {} a -> s {voiceConnectorItems = a} :: UpdateVoiceConnectorGroup) Prelude.. Lens.coerced

instance Core.AWSRequest UpdateVoiceConnectorGroup where
  type
    AWSResponse UpdateVoiceConnectorGroup =
      UpdateVoiceConnectorGroupResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateVoiceConnectorGroupResponse'
            Prelude.<$> (x Core..?> "VoiceConnectorGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateVoiceConnectorGroup

instance Prelude.NFData UpdateVoiceConnectorGroup

instance Core.ToHeaders UpdateVoiceConnectorGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdateVoiceConnectorGroup where
  toJSON UpdateVoiceConnectorGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just
              ("VoiceConnectorItems" Core..= voiceConnectorItems)
          ]
      )

instance Core.ToPath UpdateVoiceConnectorGroup where
  toPath UpdateVoiceConnectorGroup' {..} =
    Prelude.mconcat
      [ "/voice-connector-groups/",
        Core.toBS voiceConnectorGroupId
      ]

instance Core.ToQuery UpdateVoiceConnectorGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateVoiceConnectorGroupResponse' smart constructor.
data UpdateVoiceConnectorGroupResponse = UpdateVoiceConnectorGroupResponse'
  { -- | The updated Amazon Chime Voice Connector group details.
    voiceConnectorGroup :: Prelude.Maybe VoiceConnectorGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateVoiceConnectorGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorGroup', 'updateVoiceConnectorGroupResponse_voiceConnectorGroup' - The updated Amazon Chime Voice Connector group details.
--
-- 'httpStatus', 'updateVoiceConnectorGroupResponse_httpStatus' - The response's http status code.
newUpdateVoiceConnectorGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateVoiceConnectorGroupResponse
newUpdateVoiceConnectorGroupResponse pHttpStatus_ =
  UpdateVoiceConnectorGroupResponse'
    { voiceConnectorGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The updated Amazon Chime Voice Connector group details.
updateVoiceConnectorGroupResponse_voiceConnectorGroup :: Lens.Lens' UpdateVoiceConnectorGroupResponse (Prelude.Maybe VoiceConnectorGroup)
updateVoiceConnectorGroupResponse_voiceConnectorGroup = Lens.lens (\UpdateVoiceConnectorGroupResponse' {voiceConnectorGroup} -> voiceConnectorGroup) (\s@UpdateVoiceConnectorGroupResponse' {} a -> s {voiceConnectorGroup = a} :: UpdateVoiceConnectorGroupResponse)

-- | The response's http status code.
updateVoiceConnectorGroupResponse_httpStatus :: Lens.Lens' UpdateVoiceConnectorGroupResponse Prelude.Int
updateVoiceConnectorGroupResponse_httpStatus = Lens.lens (\UpdateVoiceConnectorGroupResponse' {httpStatus} -> httpStatus) (\s@UpdateVoiceConnectorGroupResponse' {} a -> s {httpStatus = a} :: UpdateVoiceConnectorGroupResponse)

instance
  Prelude.NFData
    UpdateVoiceConnectorGroupResponse
