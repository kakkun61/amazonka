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
-- Module      : Network.AWS.ChimeSDKMessaging.UpdateChannelMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the content of a message.
--
-- The @x-amz-chime-bearer@ request header is mandatory. Use the
-- @AppInstanceUserArn@ of the user that makes the API call as the value in
-- the header.
module Network.AWS.ChimeSDKMessaging.UpdateChannelMessage
  ( -- * Creating a Request
    UpdateChannelMessage (..),
    newUpdateChannelMessage,

    -- * Request Lenses
    updateChannelMessage_content,
    updateChannelMessage_metadata,
    updateChannelMessage_channelArn,
    updateChannelMessage_messageId,
    updateChannelMessage_chimeBearer,

    -- * Destructuring the Response
    UpdateChannelMessageResponse (..),
    newUpdateChannelMessageResponse,

    -- * Response Lenses
    updateChannelMessageResponse_status,
    updateChannelMessageResponse_channelArn,
    updateChannelMessageResponse_messageId,
    updateChannelMessageResponse_httpStatus,
  )
where

import Network.AWS.ChimeSDKMessaging.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateChannelMessage' smart constructor.
data UpdateChannelMessage = UpdateChannelMessage'
  { -- | The content of the message being updated.
    content :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The metadata of the message being updated.
    metadata :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The ARN of the channel.
    channelArn :: Prelude.Text,
    -- | The ID string of the message being updated.
    messageId :: Prelude.Text,
    -- | The @AppInstanceUserArn@ of the user that makes the API call.
    chimeBearer :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateChannelMessage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'content', 'updateChannelMessage_content' - The content of the message being updated.
--
-- 'metadata', 'updateChannelMessage_metadata' - The metadata of the message being updated.
--
-- 'channelArn', 'updateChannelMessage_channelArn' - The ARN of the channel.
--
-- 'messageId', 'updateChannelMessage_messageId' - The ID string of the message being updated.
--
-- 'chimeBearer', 'updateChannelMessage_chimeBearer' - The @AppInstanceUserArn@ of the user that makes the API call.
newUpdateChannelMessage ::
  -- | 'channelArn'
  Prelude.Text ->
  -- | 'messageId'
  Prelude.Text ->
  -- | 'chimeBearer'
  Prelude.Text ->
  UpdateChannelMessage
newUpdateChannelMessage
  pChannelArn_
  pMessageId_
  pChimeBearer_ =
    UpdateChannelMessage'
      { content = Prelude.Nothing,
        metadata = Prelude.Nothing,
        channelArn = pChannelArn_,
        messageId = pMessageId_,
        chimeBearer = pChimeBearer_
      }

-- | The content of the message being updated.
updateChannelMessage_content :: Lens.Lens' UpdateChannelMessage (Prelude.Maybe Prelude.Text)
updateChannelMessage_content = Lens.lens (\UpdateChannelMessage' {content} -> content) (\s@UpdateChannelMessage' {} a -> s {content = a} :: UpdateChannelMessage) Prelude.. Lens.mapping Core._Sensitive

-- | The metadata of the message being updated.
updateChannelMessage_metadata :: Lens.Lens' UpdateChannelMessage (Prelude.Maybe Prelude.Text)
updateChannelMessage_metadata = Lens.lens (\UpdateChannelMessage' {metadata} -> metadata) (\s@UpdateChannelMessage' {} a -> s {metadata = a} :: UpdateChannelMessage) Prelude.. Lens.mapping Core._Sensitive

-- | The ARN of the channel.
updateChannelMessage_channelArn :: Lens.Lens' UpdateChannelMessage Prelude.Text
updateChannelMessage_channelArn = Lens.lens (\UpdateChannelMessage' {channelArn} -> channelArn) (\s@UpdateChannelMessage' {} a -> s {channelArn = a} :: UpdateChannelMessage)

-- | The ID string of the message being updated.
updateChannelMessage_messageId :: Lens.Lens' UpdateChannelMessage Prelude.Text
updateChannelMessage_messageId = Lens.lens (\UpdateChannelMessage' {messageId} -> messageId) (\s@UpdateChannelMessage' {} a -> s {messageId = a} :: UpdateChannelMessage)

-- | The @AppInstanceUserArn@ of the user that makes the API call.
updateChannelMessage_chimeBearer :: Lens.Lens' UpdateChannelMessage Prelude.Text
updateChannelMessage_chimeBearer = Lens.lens (\UpdateChannelMessage' {chimeBearer} -> chimeBearer) (\s@UpdateChannelMessage' {} a -> s {chimeBearer = a} :: UpdateChannelMessage)

instance Core.AWSRequest UpdateChannelMessage where
  type
    AWSResponse UpdateChannelMessage =
      UpdateChannelMessageResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateChannelMessageResponse'
            Prelude.<$> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "ChannelArn")
            Prelude.<*> (x Core..?> "MessageId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateChannelMessage

instance Prelude.NFData UpdateChannelMessage

instance Core.ToHeaders UpdateChannelMessage where
  toHeaders UpdateChannelMessage' {..} =
    Prelude.mconcat
      ["x-amz-chime-bearer" Core.=# chimeBearer]

instance Core.ToJSON UpdateChannelMessage where
  toJSON UpdateChannelMessage' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Content" Core..=) Prelude.<$> content,
            ("Metadata" Core..=) Prelude.<$> metadata
          ]
      )

instance Core.ToPath UpdateChannelMessage where
  toPath UpdateChannelMessage' {..} =
    Prelude.mconcat
      [ "/channels/",
        Core.toBS channelArn,
        "/messages/",
        Core.toBS messageId
      ]

instance Core.ToQuery UpdateChannelMessage where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateChannelMessageResponse' smart constructor.
data UpdateChannelMessageResponse = UpdateChannelMessageResponse'
  { -- | The status of the message update.
    status :: Prelude.Maybe ChannelMessageStatusStructure,
    -- | The ARN of the channel.
    channelArn :: Prelude.Maybe Prelude.Text,
    -- | The ID string of the message being updated.
    messageId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateChannelMessageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'updateChannelMessageResponse_status' - The status of the message update.
--
-- 'channelArn', 'updateChannelMessageResponse_channelArn' - The ARN of the channel.
--
-- 'messageId', 'updateChannelMessageResponse_messageId' - The ID string of the message being updated.
--
-- 'httpStatus', 'updateChannelMessageResponse_httpStatus' - The response's http status code.
newUpdateChannelMessageResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateChannelMessageResponse
newUpdateChannelMessageResponse pHttpStatus_ =
  UpdateChannelMessageResponse'
    { status =
        Prelude.Nothing,
      channelArn = Prelude.Nothing,
      messageId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The status of the message update.
updateChannelMessageResponse_status :: Lens.Lens' UpdateChannelMessageResponse (Prelude.Maybe ChannelMessageStatusStructure)
updateChannelMessageResponse_status = Lens.lens (\UpdateChannelMessageResponse' {status} -> status) (\s@UpdateChannelMessageResponse' {} a -> s {status = a} :: UpdateChannelMessageResponse)

-- | The ARN of the channel.
updateChannelMessageResponse_channelArn :: Lens.Lens' UpdateChannelMessageResponse (Prelude.Maybe Prelude.Text)
updateChannelMessageResponse_channelArn = Lens.lens (\UpdateChannelMessageResponse' {channelArn} -> channelArn) (\s@UpdateChannelMessageResponse' {} a -> s {channelArn = a} :: UpdateChannelMessageResponse)

-- | The ID string of the message being updated.
updateChannelMessageResponse_messageId :: Lens.Lens' UpdateChannelMessageResponse (Prelude.Maybe Prelude.Text)
updateChannelMessageResponse_messageId = Lens.lens (\UpdateChannelMessageResponse' {messageId} -> messageId) (\s@UpdateChannelMessageResponse' {} a -> s {messageId = a} :: UpdateChannelMessageResponse)

-- | The response's http status code.
updateChannelMessageResponse_httpStatus :: Lens.Lens' UpdateChannelMessageResponse Prelude.Int
updateChannelMessageResponse_httpStatus = Lens.lens (\UpdateChannelMessageResponse' {httpStatus} -> httpStatus) (\s@UpdateChannelMessageResponse' {} a -> s {httpStatus = a} :: UpdateChannelMessageResponse)

instance Prelude.NFData UpdateChannelMessageResponse
