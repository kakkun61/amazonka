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
-- Module      : Network.AWS.Chime.DeleteChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Immediately makes a channel and its memberships inaccessible and marks
-- them for deletion. This is an irreversible process.
--
-- The @x-amz-chime-bearer@ request header is mandatory. Use the
-- @AppInstanceUserArn@ of the user that makes the API call as the value in
-- the header.
module Network.AWS.Chime.DeleteChannel
  ( -- * Creating a Request
    DeleteChannel (..),
    newDeleteChannel,

    -- * Request Lenses
    deleteChannel_chimeBearer,
    deleteChannel_channelArn,

    -- * Destructuring the Response
    DeleteChannelResponse (..),
    newDeleteChannelResponse,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteChannel' smart constructor.
data DeleteChannel = DeleteChannel'
  { -- | The @AppInstanceUserArn@ of the user that makes the API call.
    chimeBearer :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the channel being deleted.
    channelArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteChannel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'chimeBearer', 'deleteChannel_chimeBearer' - The @AppInstanceUserArn@ of the user that makes the API call.
--
-- 'channelArn', 'deleteChannel_channelArn' - The ARN of the channel being deleted.
newDeleteChannel ::
  -- | 'channelArn'
  Prelude.Text ->
  DeleteChannel
newDeleteChannel pChannelArn_ =
  DeleteChannel'
    { chimeBearer = Prelude.Nothing,
      channelArn = pChannelArn_
    }

-- | The @AppInstanceUserArn@ of the user that makes the API call.
deleteChannel_chimeBearer :: Lens.Lens' DeleteChannel (Prelude.Maybe Prelude.Text)
deleteChannel_chimeBearer = Lens.lens (\DeleteChannel' {chimeBearer} -> chimeBearer) (\s@DeleteChannel' {} a -> s {chimeBearer = a} :: DeleteChannel)

-- | The ARN of the channel being deleted.
deleteChannel_channelArn :: Lens.Lens' DeleteChannel Prelude.Text
deleteChannel_channelArn = Lens.lens (\DeleteChannel' {channelArn} -> channelArn) (\s@DeleteChannel' {} a -> s {channelArn = a} :: DeleteChannel)

instance Core.AWSRequest DeleteChannel where
  type
    AWSResponse DeleteChannel =
      DeleteChannelResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeleteChannelResponse'

instance Prelude.Hashable DeleteChannel

instance Prelude.NFData DeleteChannel

instance Core.ToHeaders DeleteChannel where
  toHeaders DeleteChannel' {..} =
    Prelude.mconcat
      ["x-amz-chime-bearer" Core.=# chimeBearer]

instance Core.ToPath DeleteChannel where
  toPath DeleteChannel' {..} =
    Prelude.mconcat
      ["/channels/", Core.toBS channelArn]

instance Core.ToQuery DeleteChannel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteChannelResponse' smart constructor.
data DeleteChannelResponse = DeleteChannelResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteChannelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteChannelResponse ::
  DeleteChannelResponse
newDeleteChannelResponse = DeleteChannelResponse'

instance Prelude.NFData DeleteChannelResponse
