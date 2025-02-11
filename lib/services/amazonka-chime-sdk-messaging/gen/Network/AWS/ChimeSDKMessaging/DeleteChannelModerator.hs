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
-- Module      : Network.AWS.ChimeSDKMessaging.DeleteChannelModerator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a channel moderator.
--
-- The @x-amz-chime-bearer@ request header is mandatory. Use the
-- @AppInstanceUserArn@ of the user that makes the API call as the value in
-- the header.
module Network.AWS.ChimeSDKMessaging.DeleteChannelModerator
  ( -- * Creating a Request
    DeleteChannelModerator (..),
    newDeleteChannelModerator,

    -- * Request Lenses
    deleteChannelModerator_channelArn,
    deleteChannelModerator_channelModeratorArn,
    deleteChannelModerator_chimeBearer,

    -- * Destructuring the Response
    DeleteChannelModeratorResponse (..),
    newDeleteChannelModeratorResponse,
  )
where

import Network.AWS.ChimeSDKMessaging.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteChannelModerator' smart constructor.
data DeleteChannelModerator = DeleteChannelModerator'
  { -- | The ARN of the channel.
    channelArn :: Prelude.Text,
    -- | The ARN of the moderator being deleted.
    channelModeratorArn :: Prelude.Text,
    -- | The @AppInstanceUserArn@ of the user that makes the API call.
    chimeBearer :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteChannelModerator' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channelArn', 'deleteChannelModerator_channelArn' - The ARN of the channel.
--
-- 'channelModeratorArn', 'deleteChannelModerator_channelModeratorArn' - The ARN of the moderator being deleted.
--
-- 'chimeBearer', 'deleteChannelModerator_chimeBearer' - The @AppInstanceUserArn@ of the user that makes the API call.
newDeleteChannelModerator ::
  -- | 'channelArn'
  Prelude.Text ->
  -- | 'channelModeratorArn'
  Prelude.Text ->
  -- | 'chimeBearer'
  Prelude.Text ->
  DeleteChannelModerator
newDeleteChannelModerator
  pChannelArn_
  pChannelModeratorArn_
  pChimeBearer_ =
    DeleteChannelModerator'
      { channelArn = pChannelArn_,
        channelModeratorArn = pChannelModeratorArn_,
        chimeBearer = pChimeBearer_
      }

-- | The ARN of the channel.
deleteChannelModerator_channelArn :: Lens.Lens' DeleteChannelModerator Prelude.Text
deleteChannelModerator_channelArn = Lens.lens (\DeleteChannelModerator' {channelArn} -> channelArn) (\s@DeleteChannelModerator' {} a -> s {channelArn = a} :: DeleteChannelModerator)

-- | The ARN of the moderator being deleted.
deleteChannelModerator_channelModeratorArn :: Lens.Lens' DeleteChannelModerator Prelude.Text
deleteChannelModerator_channelModeratorArn = Lens.lens (\DeleteChannelModerator' {channelModeratorArn} -> channelModeratorArn) (\s@DeleteChannelModerator' {} a -> s {channelModeratorArn = a} :: DeleteChannelModerator)

-- | The @AppInstanceUserArn@ of the user that makes the API call.
deleteChannelModerator_chimeBearer :: Lens.Lens' DeleteChannelModerator Prelude.Text
deleteChannelModerator_chimeBearer = Lens.lens (\DeleteChannelModerator' {chimeBearer} -> chimeBearer) (\s@DeleteChannelModerator' {} a -> s {chimeBearer = a} :: DeleteChannelModerator)

instance Core.AWSRequest DeleteChannelModerator where
  type
    AWSResponse DeleteChannelModerator =
      DeleteChannelModeratorResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull
      DeleteChannelModeratorResponse'

instance Prelude.Hashable DeleteChannelModerator

instance Prelude.NFData DeleteChannelModerator

instance Core.ToHeaders DeleteChannelModerator where
  toHeaders DeleteChannelModerator' {..} =
    Prelude.mconcat
      ["x-amz-chime-bearer" Core.=# chimeBearer]

instance Core.ToPath DeleteChannelModerator where
  toPath DeleteChannelModerator' {..} =
    Prelude.mconcat
      [ "/channels/",
        Core.toBS channelArn,
        "/moderators/",
        Core.toBS channelModeratorArn
      ]

instance Core.ToQuery DeleteChannelModerator where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteChannelModeratorResponse' smart constructor.
data DeleteChannelModeratorResponse = DeleteChannelModeratorResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteChannelModeratorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteChannelModeratorResponse ::
  DeleteChannelModeratorResponse
newDeleteChannelModeratorResponse =
  DeleteChannelModeratorResponse'

instance
  Prelude.NFData
    DeleteChannelModeratorResponse
