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
-- Module      : Network.AWS.ChimeSDKMessaging.CreateChannelFlow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a channel flow, a container for processors. Processors are AWS
-- Lambda functions that perform actions on chat messages, such as
-- stripping out profanity. You can associate channel flows with channels,
-- and the processors in the channel flow then take action on all messages
-- sent to that channel. This is a developer API.
--
-- Channel flows process the following items:
--
-- 1.  New and updated messages
--
-- 2.  Persistent and non-persistent messages
--
-- 3.  The Standard message type
--
-- Channel flows don\'t process Control or System messages. For more
-- information about the message types provided by Chime SDK Messaging,
-- refer to
-- <https://docs.aws.amazon.com/chime/latest/dg/using-the-messaging-sdk.html#msg-types Message types>
-- in the /Amazon Chime developer guide/.
module Network.AWS.ChimeSDKMessaging.CreateChannelFlow
  ( -- * Creating a Request
    CreateChannelFlow (..),
    newCreateChannelFlow,

    -- * Request Lenses
    createChannelFlow_tags,
    createChannelFlow_appInstanceArn,
    createChannelFlow_processors,
    createChannelFlow_name,
    createChannelFlow_clientRequestToken,

    -- * Destructuring the Response
    CreateChannelFlowResponse (..),
    newCreateChannelFlowResponse,

    -- * Response Lenses
    createChannelFlowResponse_channelFlowArn,
    createChannelFlowResponse_httpStatus,
  )
where

import Network.AWS.ChimeSDKMessaging.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateChannelFlow' smart constructor.
data CreateChannelFlow = CreateChannelFlow'
  { -- | The tags for the creation request.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | The ARN of the channel flow request.
    appInstanceArn :: Prelude.Text,
    -- | Information about the processor Lambda functions.
    processors :: Prelude.NonEmpty Processor,
    -- | The name of the channel flow.
    name :: Core.Sensitive Prelude.Text,
    -- | The client token for the request. An Idempotency token.
    clientRequestToken :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateChannelFlow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createChannelFlow_tags' - The tags for the creation request.
--
-- 'appInstanceArn', 'createChannelFlow_appInstanceArn' - The ARN of the channel flow request.
--
-- 'processors', 'createChannelFlow_processors' - Information about the processor Lambda functions.
--
-- 'name', 'createChannelFlow_name' - The name of the channel flow.
--
-- 'clientRequestToken', 'createChannelFlow_clientRequestToken' - The client token for the request. An Idempotency token.
newCreateChannelFlow ::
  -- | 'appInstanceArn'
  Prelude.Text ->
  -- | 'processors'
  Prelude.NonEmpty Processor ->
  -- | 'name'
  Prelude.Text ->
  -- | 'clientRequestToken'
  Prelude.Text ->
  CreateChannelFlow
newCreateChannelFlow
  pAppInstanceArn_
  pProcessors_
  pName_
  pClientRequestToken_ =
    CreateChannelFlow'
      { tags = Prelude.Nothing,
        appInstanceArn = pAppInstanceArn_,
        processors = Lens.coerced Lens.# pProcessors_,
        name = Core._Sensitive Lens.# pName_,
        clientRequestToken =
          Core._Sensitive Lens.# pClientRequestToken_
      }

-- | The tags for the creation request.
createChannelFlow_tags :: Lens.Lens' CreateChannelFlow (Prelude.Maybe (Prelude.NonEmpty Tag))
createChannelFlow_tags = Lens.lens (\CreateChannelFlow' {tags} -> tags) (\s@CreateChannelFlow' {} a -> s {tags = a} :: CreateChannelFlow) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the channel flow request.
createChannelFlow_appInstanceArn :: Lens.Lens' CreateChannelFlow Prelude.Text
createChannelFlow_appInstanceArn = Lens.lens (\CreateChannelFlow' {appInstanceArn} -> appInstanceArn) (\s@CreateChannelFlow' {} a -> s {appInstanceArn = a} :: CreateChannelFlow)

-- | Information about the processor Lambda functions.
createChannelFlow_processors :: Lens.Lens' CreateChannelFlow (Prelude.NonEmpty Processor)
createChannelFlow_processors = Lens.lens (\CreateChannelFlow' {processors} -> processors) (\s@CreateChannelFlow' {} a -> s {processors = a} :: CreateChannelFlow) Prelude.. Lens.coerced

-- | The name of the channel flow.
createChannelFlow_name :: Lens.Lens' CreateChannelFlow Prelude.Text
createChannelFlow_name = Lens.lens (\CreateChannelFlow' {name} -> name) (\s@CreateChannelFlow' {} a -> s {name = a} :: CreateChannelFlow) Prelude.. Core._Sensitive

-- | The client token for the request. An Idempotency token.
createChannelFlow_clientRequestToken :: Lens.Lens' CreateChannelFlow Prelude.Text
createChannelFlow_clientRequestToken = Lens.lens (\CreateChannelFlow' {clientRequestToken} -> clientRequestToken) (\s@CreateChannelFlow' {} a -> s {clientRequestToken = a} :: CreateChannelFlow) Prelude.. Core._Sensitive

instance Core.AWSRequest CreateChannelFlow where
  type
    AWSResponse CreateChannelFlow =
      CreateChannelFlowResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateChannelFlowResponse'
            Prelude.<$> (x Core..?> "ChannelFlowArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateChannelFlow

instance Prelude.NFData CreateChannelFlow

instance Core.ToHeaders CreateChannelFlow where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateChannelFlow where
  toJSON CreateChannelFlow' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ("AppInstanceArn" Core..= appInstanceArn),
            Prelude.Just ("Processors" Core..= processors),
            Prelude.Just ("Name" Core..= name),
            Prelude.Just
              ("ClientRequestToken" Core..= clientRequestToken)
          ]
      )

instance Core.ToPath CreateChannelFlow where
  toPath = Prelude.const "/channel-flows"

instance Core.ToQuery CreateChannelFlow where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateChannelFlowResponse' smart constructor.
data CreateChannelFlowResponse = CreateChannelFlowResponse'
  { -- | The ARN of the channel flow.
    channelFlowArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateChannelFlowResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channelFlowArn', 'createChannelFlowResponse_channelFlowArn' - The ARN of the channel flow.
--
-- 'httpStatus', 'createChannelFlowResponse_httpStatus' - The response's http status code.
newCreateChannelFlowResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateChannelFlowResponse
newCreateChannelFlowResponse pHttpStatus_ =
  CreateChannelFlowResponse'
    { channelFlowArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the channel flow.
createChannelFlowResponse_channelFlowArn :: Lens.Lens' CreateChannelFlowResponse (Prelude.Maybe Prelude.Text)
createChannelFlowResponse_channelFlowArn = Lens.lens (\CreateChannelFlowResponse' {channelFlowArn} -> channelFlowArn) (\s@CreateChannelFlowResponse' {} a -> s {channelFlowArn = a} :: CreateChannelFlowResponse)

-- | The response's http status code.
createChannelFlowResponse_httpStatus :: Lens.Lens' CreateChannelFlowResponse Prelude.Int
createChannelFlowResponse_httpStatus = Lens.lens (\CreateChannelFlowResponse' {httpStatus} -> httpStatus) (\s@CreateChannelFlowResponse' {} a -> s {httpStatus = a} :: CreateChannelFlowResponse)

instance Prelude.NFData CreateChannelFlowResponse
