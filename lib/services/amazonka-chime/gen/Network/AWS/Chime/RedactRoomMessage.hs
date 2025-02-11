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
-- Module      : Network.AWS.Chime.RedactRoomMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Redacts the specified message from the specified Amazon Chime channel.
module Network.AWS.Chime.RedactRoomMessage
  ( -- * Creating a Request
    RedactRoomMessage (..),
    newRedactRoomMessage,

    -- * Request Lenses
    redactRoomMessage_accountId,
    redactRoomMessage_roomId,
    redactRoomMessage_messageId,

    -- * Destructuring the Response
    RedactRoomMessageResponse (..),
    newRedactRoomMessageResponse,

    -- * Response Lenses
    redactRoomMessageResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newRedactRoomMessage' smart constructor.
data RedactRoomMessage = RedactRoomMessage'
  { -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The room ID.
    roomId :: Prelude.Text,
    -- | The message ID.
    messageId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RedactRoomMessage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'redactRoomMessage_accountId' - The Amazon Chime account ID.
--
-- 'roomId', 'redactRoomMessage_roomId' - The room ID.
--
-- 'messageId', 'redactRoomMessage_messageId' - The message ID.
newRedactRoomMessage ::
  -- | 'accountId'
  Prelude.Text ->
  -- | 'roomId'
  Prelude.Text ->
  -- | 'messageId'
  Prelude.Text ->
  RedactRoomMessage
newRedactRoomMessage pAccountId_ pRoomId_ pMessageId_ =
  RedactRoomMessage'
    { accountId = pAccountId_,
      roomId = pRoomId_,
      messageId = pMessageId_
    }

-- | The Amazon Chime account ID.
redactRoomMessage_accountId :: Lens.Lens' RedactRoomMessage Prelude.Text
redactRoomMessage_accountId = Lens.lens (\RedactRoomMessage' {accountId} -> accountId) (\s@RedactRoomMessage' {} a -> s {accountId = a} :: RedactRoomMessage)

-- | The room ID.
redactRoomMessage_roomId :: Lens.Lens' RedactRoomMessage Prelude.Text
redactRoomMessage_roomId = Lens.lens (\RedactRoomMessage' {roomId} -> roomId) (\s@RedactRoomMessage' {} a -> s {roomId = a} :: RedactRoomMessage)

-- | The message ID.
redactRoomMessage_messageId :: Lens.Lens' RedactRoomMessage Prelude.Text
redactRoomMessage_messageId = Lens.lens (\RedactRoomMessage' {messageId} -> messageId) (\s@RedactRoomMessage' {} a -> s {messageId = a} :: RedactRoomMessage)

instance Core.AWSRequest RedactRoomMessage where
  type
    AWSResponse RedactRoomMessage =
      RedactRoomMessageResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          RedactRoomMessageResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RedactRoomMessage

instance Prelude.NFData RedactRoomMessage

instance Core.ToHeaders RedactRoomMessage where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON RedactRoomMessage where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath RedactRoomMessage where
  toPath RedactRoomMessage' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS accountId,
        "/rooms/",
        Core.toBS roomId,
        "/messages/",
        Core.toBS messageId
      ]

instance Core.ToQuery RedactRoomMessage where
  toQuery =
    Prelude.const
      (Prelude.mconcat ["operation=redact"])

-- | /See:/ 'newRedactRoomMessageResponse' smart constructor.
data RedactRoomMessageResponse = RedactRoomMessageResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RedactRoomMessageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'redactRoomMessageResponse_httpStatus' - The response's http status code.
newRedactRoomMessageResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RedactRoomMessageResponse
newRedactRoomMessageResponse pHttpStatus_ =
  RedactRoomMessageResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
redactRoomMessageResponse_httpStatus :: Lens.Lens' RedactRoomMessageResponse Prelude.Int
redactRoomMessageResponse_httpStatus = Lens.lens (\RedactRoomMessageResponse' {httpStatus} -> httpStatus) (\s@RedactRoomMessageResponse' {} a -> s {httpStatus = a} :: RedactRoomMessageResponse)

instance Prelude.NFData RedactRoomMessageResponse
