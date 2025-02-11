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
-- Module      : Network.AWS.ChimeSDKMessaging.DeleteChannelBan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a user from a channel\'s ban list.
--
-- The @x-amz-chime-bearer@ request header is mandatory. Use the
-- @AppInstanceUserArn@ of the user that makes the API call as the value in
-- the header.
module Network.AWS.ChimeSDKMessaging.DeleteChannelBan
  ( -- * Creating a Request
    DeleteChannelBan (..),
    newDeleteChannelBan,

    -- * Request Lenses
    deleteChannelBan_channelArn,
    deleteChannelBan_memberArn,
    deleteChannelBan_chimeBearer,

    -- * Destructuring the Response
    DeleteChannelBanResponse (..),
    newDeleteChannelBanResponse,
  )
where

import Network.AWS.ChimeSDKMessaging.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteChannelBan' smart constructor.
data DeleteChannelBan = DeleteChannelBan'
  { -- | The ARN of the channel from which the @AppInstanceUser@ was banned.
    channelArn :: Prelude.Text,
    -- | The ARN of the @AppInstanceUser@ that you want to reinstate.
    memberArn :: Prelude.Text,
    -- | The @AppInstanceUserArn@ of the user that makes the API call.
    chimeBearer :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteChannelBan' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channelArn', 'deleteChannelBan_channelArn' - The ARN of the channel from which the @AppInstanceUser@ was banned.
--
-- 'memberArn', 'deleteChannelBan_memberArn' - The ARN of the @AppInstanceUser@ that you want to reinstate.
--
-- 'chimeBearer', 'deleteChannelBan_chimeBearer' - The @AppInstanceUserArn@ of the user that makes the API call.
newDeleteChannelBan ::
  -- | 'channelArn'
  Prelude.Text ->
  -- | 'memberArn'
  Prelude.Text ->
  -- | 'chimeBearer'
  Prelude.Text ->
  DeleteChannelBan
newDeleteChannelBan
  pChannelArn_
  pMemberArn_
  pChimeBearer_ =
    DeleteChannelBan'
      { channelArn = pChannelArn_,
        memberArn = pMemberArn_,
        chimeBearer = pChimeBearer_
      }

-- | The ARN of the channel from which the @AppInstanceUser@ was banned.
deleteChannelBan_channelArn :: Lens.Lens' DeleteChannelBan Prelude.Text
deleteChannelBan_channelArn = Lens.lens (\DeleteChannelBan' {channelArn} -> channelArn) (\s@DeleteChannelBan' {} a -> s {channelArn = a} :: DeleteChannelBan)

-- | The ARN of the @AppInstanceUser@ that you want to reinstate.
deleteChannelBan_memberArn :: Lens.Lens' DeleteChannelBan Prelude.Text
deleteChannelBan_memberArn = Lens.lens (\DeleteChannelBan' {memberArn} -> memberArn) (\s@DeleteChannelBan' {} a -> s {memberArn = a} :: DeleteChannelBan)

-- | The @AppInstanceUserArn@ of the user that makes the API call.
deleteChannelBan_chimeBearer :: Lens.Lens' DeleteChannelBan Prelude.Text
deleteChannelBan_chimeBearer = Lens.lens (\DeleteChannelBan' {chimeBearer} -> chimeBearer) (\s@DeleteChannelBan' {} a -> s {chimeBearer = a} :: DeleteChannelBan)

instance Core.AWSRequest DeleteChannelBan where
  type
    AWSResponse DeleteChannelBan =
      DeleteChannelBanResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeleteChannelBanResponse'

instance Prelude.Hashable DeleteChannelBan

instance Prelude.NFData DeleteChannelBan

instance Core.ToHeaders DeleteChannelBan where
  toHeaders DeleteChannelBan' {..} =
    Prelude.mconcat
      ["x-amz-chime-bearer" Core.=# chimeBearer]

instance Core.ToPath DeleteChannelBan where
  toPath DeleteChannelBan' {..} =
    Prelude.mconcat
      [ "/channels/",
        Core.toBS channelArn,
        "/bans/",
        Core.toBS memberArn
      ]

instance Core.ToQuery DeleteChannelBan where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteChannelBanResponse' smart constructor.
data DeleteChannelBanResponse = DeleteChannelBanResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteChannelBanResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteChannelBanResponse ::
  DeleteChannelBanResponse
newDeleteChannelBanResponse =
  DeleteChannelBanResponse'

instance Prelude.NFData DeleteChannelBanResponse
