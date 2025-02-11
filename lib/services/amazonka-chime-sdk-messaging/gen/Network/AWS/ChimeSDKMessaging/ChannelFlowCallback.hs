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
-- Module      : Network.AWS.ChimeSDKMessaging.ChannelFlowCallback
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Calls back Chime SDK Messaging with a processing response message. This
-- should be invoked from the processor Lambda. This is a developer API.
--
-- You can return one of the following processing responses:
--
-- -   Update message content or metadata
--
-- -   Deny a message
--
-- -   Make no changes to the message
module Network.AWS.ChimeSDKMessaging.ChannelFlowCallback
  ( -- * Creating a Request
    ChannelFlowCallback (..),
    newChannelFlowCallback,

    -- * Request Lenses
    channelFlowCallback_deleteResource,
    channelFlowCallback_callbackId,
    channelFlowCallback_channelArn,
    channelFlowCallback_channelMessage,

    -- * Destructuring the Response
    ChannelFlowCallbackResponse (..),
    newChannelFlowCallbackResponse,

    -- * Response Lenses
    channelFlowCallbackResponse_callbackId,
    channelFlowCallbackResponse_channelArn,
    channelFlowCallbackResponse_httpStatus,
  )
where

import Network.AWS.ChimeSDKMessaging.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newChannelFlowCallback' smart constructor.
data ChannelFlowCallback = ChannelFlowCallback'
  { -- | When a processor determines that a message needs to be @DENIED@, pass
    -- this parameter with a value of true.
    deleteResource :: Prelude.Maybe Prelude.Bool,
    -- | The identifier passed to the processor by the service when invoked. Use
    -- the identifier to call back the service.
    callbackId :: Prelude.Text,
    -- | The ARN of the channel.
    channelArn :: Prelude.Text,
    -- | Stores information about the processed message.
    channelMessage :: ChannelMessageCallback
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChannelFlowCallback' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deleteResource', 'channelFlowCallback_deleteResource' - When a processor determines that a message needs to be @DENIED@, pass
-- this parameter with a value of true.
--
-- 'callbackId', 'channelFlowCallback_callbackId' - The identifier passed to the processor by the service when invoked. Use
-- the identifier to call back the service.
--
-- 'channelArn', 'channelFlowCallback_channelArn' - The ARN of the channel.
--
-- 'channelMessage', 'channelFlowCallback_channelMessage' - Stores information about the processed message.
newChannelFlowCallback ::
  -- | 'callbackId'
  Prelude.Text ->
  -- | 'channelArn'
  Prelude.Text ->
  -- | 'channelMessage'
  ChannelMessageCallback ->
  ChannelFlowCallback
newChannelFlowCallback
  pCallbackId_
  pChannelArn_
  pChannelMessage_ =
    ChannelFlowCallback'
      { deleteResource =
          Prelude.Nothing,
        callbackId = pCallbackId_,
        channelArn = pChannelArn_,
        channelMessage = pChannelMessage_
      }

-- | When a processor determines that a message needs to be @DENIED@, pass
-- this parameter with a value of true.
channelFlowCallback_deleteResource :: Lens.Lens' ChannelFlowCallback (Prelude.Maybe Prelude.Bool)
channelFlowCallback_deleteResource = Lens.lens (\ChannelFlowCallback' {deleteResource} -> deleteResource) (\s@ChannelFlowCallback' {} a -> s {deleteResource = a} :: ChannelFlowCallback)

-- | The identifier passed to the processor by the service when invoked. Use
-- the identifier to call back the service.
channelFlowCallback_callbackId :: Lens.Lens' ChannelFlowCallback Prelude.Text
channelFlowCallback_callbackId = Lens.lens (\ChannelFlowCallback' {callbackId} -> callbackId) (\s@ChannelFlowCallback' {} a -> s {callbackId = a} :: ChannelFlowCallback)

-- | The ARN of the channel.
channelFlowCallback_channelArn :: Lens.Lens' ChannelFlowCallback Prelude.Text
channelFlowCallback_channelArn = Lens.lens (\ChannelFlowCallback' {channelArn} -> channelArn) (\s@ChannelFlowCallback' {} a -> s {channelArn = a} :: ChannelFlowCallback)

-- | Stores information about the processed message.
channelFlowCallback_channelMessage :: Lens.Lens' ChannelFlowCallback ChannelMessageCallback
channelFlowCallback_channelMessage = Lens.lens (\ChannelFlowCallback' {channelMessage} -> channelMessage) (\s@ChannelFlowCallback' {} a -> s {channelMessage = a} :: ChannelFlowCallback)

instance Core.AWSRequest ChannelFlowCallback where
  type
    AWSResponse ChannelFlowCallback =
      ChannelFlowCallbackResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ChannelFlowCallbackResponse'
            Prelude.<$> (x Core..?> "CallbackId")
            Prelude.<*> (x Core..?> "ChannelArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ChannelFlowCallback

instance Prelude.NFData ChannelFlowCallback

instance Core.ToHeaders ChannelFlowCallback where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON ChannelFlowCallback where
  toJSON ChannelFlowCallback' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DeleteResource" Core..=)
              Prelude.<$> deleteResource,
            Prelude.Just ("CallbackId" Core..= callbackId),
            Prelude.Just
              ("ChannelMessage" Core..= channelMessage)
          ]
      )

instance Core.ToPath ChannelFlowCallback where
  toPath ChannelFlowCallback' {..} =
    Prelude.mconcat
      ["/channels/", Core.toBS channelArn]

instance Core.ToQuery ChannelFlowCallback where
  toQuery =
    Prelude.const
      (Prelude.mconcat ["operation=channel-flow-callback"])

-- | /See:/ 'newChannelFlowCallbackResponse' smart constructor.
data ChannelFlowCallbackResponse = ChannelFlowCallbackResponse'
  { -- | The call back ID passed in the request.
    callbackId :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the channel.
    channelArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChannelFlowCallbackResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'callbackId', 'channelFlowCallbackResponse_callbackId' - The call back ID passed in the request.
--
-- 'channelArn', 'channelFlowCallbackResponse_channelArn' - The ARN of the channel.
--
-- 'httpStatus', 'channelFlowCallbackResponse_httpStatus' - The response's http status code.
newChannelFlowCallbackResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ChannelFlowCallbackResponse
newChannelFlowCallbackResponse pHttpStatus_ =
  ChannelFlowCallbackResponse'
    { callbackId =
        Prelude.Nothing,
      channelArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The call back ID passed in the request.
channelFlowCallbackResponse_callbackId :: Lens.Lens' ChannelFlowCallbackResponse (Prelude.Maybe Prelude.Text)
channelFlowCallbackResponse_callbackId = Lens.lens (\ChannelFlowCallbackResponse' {callbackId} -> callbackId) (\s@ChannelFlowCallbackResponse' {} a -> s {callbackId = a} :: ChannelFlowCallbackResponse)

-- | The ARN of the channel.
channelFlowCallbackResponse_channelArn :: Lens.Lens' ChannelFlowCallbackResponse (Prelude.Maybe Prelude.Text)
channelFlowCallbackResponse_channelArn = Lens.lens (\ChannelFlowCallbackResponse' {channelArn} -> channelArn) (\s@ChannelFlowCallbackResponse' {} a -> s {channelArn = a} :: ChannelFlowCallbackResponse)

-- | The response's http status code.
channelFlowCallbackResponse_httpStatus :: Lens.Lens' ChannelFlowCallbackResponse Prelude.Int
channelFlowCallbackResponse_httpStatus = Lens.lens (\ChannelFlowCallbackResponse' {httpStatus} -> httpStatus) (\s@ChannelFlowCallbackResponse' {} a -> s {httpStatus = a} :: ChannelFlowCallbackResponse)

instance Prelude.NFData ChannelFlowCallbackResponse
