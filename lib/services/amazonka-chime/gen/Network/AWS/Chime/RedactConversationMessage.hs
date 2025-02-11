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
-- Module      : Network.AWS.Chime.RedactConversationMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Redacts the specified message from the specified Amazon Chime
-- conversation.
module Network.AWS.Chime.RedactConversationMessage
  ( -- * Creating a Request
    RedactConversationMessage (..),
    newRedactConversationMessage,

    -- * Request Lenses
    redactConversationMessage_accountId,
    redactConversationMessage_conversationId,
    redactConversationMessage_messageId,

    -- * Destructuring the Response
    RedactConversationMessageResponse (..),
    newRedactConversationMessageResponse,

    -- * Response Lenses
    redactConversationMessageResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newRedactConversationMessage' smart constructor.
data RedactConversationMessage = RedactConversationMessage'
  { -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The conversation ID.
    conversationId :: Prelude.Text,
    -- | The message ID.
    messageId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RedactConversationMessage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'redactConversationMessage_accountId' - The Amazon Chime account ID.
--
-- 'conversationId', 'redactConversationMessage_conversationId' - The conversation ID.
--
-- 'messageId', 'redactConversationMessage_messageId' - The message ID.
newRedactConversationMessage ::
  -- | 'accountId'
  Prelude.Text ->
  -- | 'conversationId'
  Prelude.Text ->
  -- | 'messageId'
  Prelude.Text ->
  RedactConversationMessage
newRedactConversationMessage
  pAccountId_
  pConversationId_
  pMessageId_ =
    RedactConversationMessage'
      { accountId = pAccountId_,
        conversationId = pConversationId_,
        messageId = pMessageId_
      }

-- | The Amazon Chime account ID.
redactConversationMessage_accountId :: Lens.Lens' RedactConversationMessage Prelude.Text
redactConversationMessage_accountId = Lens.lens (\RedactConversationMessage' {accountId} -> accountId) (\s@RedactConversationMessage' {} a -> s {accountId = a} :: RedactConversationMessage)

-- | The conversation ID.
redactConversationMessage_conversationId :: Lens.Lens' RedactConversationMessage Prelude.Text
redactConversationMessage_conversationId = Lens.lens (\RedactConversationMessage' {conversationId} -> conversationId) (\s@RedactConversationMessage' {} a -> s {conversationId = a} :: RedactConversationMessage)

-- | The message ID.
redactConversationMessage_messageId :: Lens.Lens' RedactConversationMessage Prelude.Text
redactConversationMessage_messageId = Lens.lens (\RedactConversationMessage' {messageId} -> messageId) (\s@RedactConversationMessage' {} a -> s {messageId = a} :: RedactConversationMessage)

instance Core.AWSRequest RedactConversationMessage where
  type
    AWSResponse RedactConversationMessage =
      RedactConversationMessageResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          RedactConversationMessageResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RedactConversationMessage

instance Prelude.NFData RedactConversationMessage

instance Core.ToHeaders RedactConversationMessage where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON RedactConversationMessage where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath RedactConversationMessage where
  toPath RedactConversationMessage' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS accountId,
        "/conversations/",
        Core.toBS conversationId,
        "/messages/",
        Core.toBS messageId
      ]

instance Core.ToQuery RedactConversationMessage where
  toQuery =
    Prelude.const
      (Prelude.mconcat ["operation=redact"])

-- | /See:/ 'newRedactConversationMessageResponse' smart constructor.
data RedactConversationMessageResponse = RedactConversationMessageResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RedactConversationMessageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'redactConversationMessageResponse_httpStatus' - The response's http status code.
newRedactConversationMessageResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RedactConversationMessageResponse
newRedactConversationMessageResponse pHttpStatus_ =
  RedactConversationMessageResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
redactConversationMessageResponse_httpStatus :: Lens.Lens' RedactConversationMessageResponse Prelude.Int
redactConversationMessageResponse_httpStatus = Lens.lens (\RedactConversationMessageResponse' {httpStatus} -> httpStatus) (\s@RedactConversationMessageResponse' {} a -> s {httpStatus = a} :: RedactConversationMessageResponse)

instance
  Prelude.NFData
    RedactConversationMessageResponse
