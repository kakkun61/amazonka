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
-- Module      : Network.AWS.WorkMailMessageFlow.PutRawMessageContent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the raw content of an in-transit email message, in MIME format.
--
-- This example describes how to update in-transit email message. For more
-- information and examples for using this API, see
-- <https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html Updating message content with AWS Lambda>.
--
-- Updates to an in-transit message only appear when you call
-- @PutRawMessageContent@ from an AWS Lambda function configured with a
-- synchronous
-- <https://docs.aws.amazon.com/workmail/latest/adminguide/lambda.html#synchronous-rules Run Lambda>
-- rule. If you call @PutRawMessageContent@ on a delivered or sent message,
-- the message remains unchanged, even though
-- <https://docs.aws.amazon.com/workmail/latest/APIReference/API_messageflow_GetRawMessageContent.html GetRawMessageContent>
-- returns an updated message.
module Network.AWS.WorkMailMessageFlow.PutRawMessageContent
  ( -- * Creating a Request
    PutRawMessageContent (..),
    newPutRawMessageContent,

    -- * Request Lenses
    putRawMessageContent_messageId,
    putRawMessageContent_content,

    -- * Destructuring the Response
    PutRawMessageContentResponse (..),
    newPutRawMessageContentResponse,

    -- * Response Lenses
    putRawMessageContentResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkMailMessageFlow.Types

-- | /See:/ 'newPutRawMessageContent' smart constructor.
data PutRawMessageContent = PutRawMessageContent'
  { -- | The identifier of the email message being updated.
    messageId :: Prelude.Text,
    -- | Describes the raw message content of the updated email message.
    content :: RawMessageContent
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutRawMessageContent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'messageId', 'putRawMessageContent_messageId' - The identifier of the email message being updated.
--
-- 'content', 'putRawMessageContent_content' - Describes the raw message content of the updated email message.
newPutRawMessageContent ::
  -- | 'messageId'
  Prelude.Text ->
  -- | 'content'
  RawMessageContent ->
  PutRawMessageContent
newPutRawMessageContent pMessageId_ pContent_ =
  PutRawMessageContent'
    { messageId = pMessageId_,
      content = pContent_
    }

-- | The identifier of the email message being updated.
putRawMessageContent_messageId :: Lens.Lens' PutRawMessageContent Prelude.Text
putRawMessageContent_messageId = Lens.lens (\PutRawMessageContent' {messageId} -> messageId) (\s@PutRawMessageContent' {} a -> s {messageId = a} :: PutRawMessageContent)

-- | Describes the raw message content of the updated email message.
putRawMessageContent_content :: Lens.Lens' PutRawMessageContent RawMessageContent
putRawMessageContent_content = Lens.lens (\PutRawMessageContent' {content} -> content) (\s@PutRawMessageContent' {} a -> s {content = a} :: PutRawMessageContent)

instance Core.AWSRequest PutRawMessageContent where
  type
    AWSResponse PutRawMessageContent =
      PutRawMessageContentResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          PutRawMessageContentResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutRawMessageContent

instance Prelude.NFData PutRawMessageContent

instance Core.ToHeaders PutRawMessageContent where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutRawMessageContent where
  toJSON PutRawMessageContent' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("content" Core..= content)]
      )

instance Core.ToPath PutRawMessageContent where
  toPath PutRawMessageContent' {..} =
    Prelude.mconcat ["/messages/", Core.toBS messageId]

instance Core.ToQuery PutRawMessageContent where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutRawMessageContentResponse' smart constructor.
data PutRawMessageContentResponse = PutRawMessageContentResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutRawMessageContentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'putRawMessageContentResponse_httpStatus' - The response's http status code.
newPutRawMessageContentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutRawMessageContentResponse
newPutRawMessageContentResponse pHttpStatus_ =
  PutRawMessageContentResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
putRawMessageContentResponse_httpStatus :: Lens.Lens' PutRawMessageContentResponse Prelude.Int
putRawMessageContentResponse_httpStatus = Lens.lens (\PutRawMessageContentResponse' {httpStatus} -> httpStatus) (\s@PutRawMessageContentResponse' {} a -> s {httpStatus = a} :: PutRawMessageContentResponse)

instance Prelude.NFData PutRawMessageContentResponse
