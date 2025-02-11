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
-- Module      : Network.AWS.WorkMailMessageFlow.GetRawMessageContent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the raw content of an in-transit email message, in MIME
-- format.
module Network.AWS.WorkMailMessageFlow.GetRawMessageContent
  ( -- * Creating a Request
    GetRawMessageContent (..),
    newGetRawMessageContent,

    -- * Request Lenses
    getRawMessageContent_messageId,

    -- * Destructuring the Response
    GetRawMessageContentResponse (..),
    newGetRawMessageContentResponse,

    -- * Response Lenses
    getRawMessageContentResponse_httpStatus,
    getRawMessageContentResponse_messageContent,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkMailMessageFlow.Types

-- | /See:/ 'newGetRawMessageContent' smart constructor.
data GetRawMessageContent = GetRawMessageContent'
  { -- | The identifier of the email message to retrieve.
    messageId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRawMessageContent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'messageId', 'getRawMessageContent_messageId' - The identifier of the email message to retrieve.
newGetRawMessageContent ::
  -- | 'messageId'
  Prelude.Text ->
  GetRawMessageContent
newGetRawMessageContent pMessageId_ =
  GetRawMessageContent' {messageId = pMessageId_}

-- | The identifier of the email message to retrieve.
getRawMessageContent_messageId :: Lens.Lens' GetRawMessageContent Prelude.Text
getRawMessageContent_messageId = Lens.lens (\GetRawMessageContent' {messageId} -> messageId) (\s@GetRawMessageContent' {} a -> s {messageId = a} :: GetRawMessageContent)

instance Core.AWSRequest GetRawMessageContent where
  type
    AWSResponse GetRawMessageContent =
      GetRawMessageContentResponse
  request = Request.get defaultService
  response =
    Response.receiveBody
      ( \s h x ->
          GetRawMessageContentResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (Prelude.pure x)
      )

instance Prelude.Hashable GetRawMessageContent

instance Prelude.NFData GetRawMessageContent

instance Core.ToHeaders GetRawMessageContent where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetRawMessageContent where
  toPath GetRawMessageContent' {..} =
    Prelude.mconcat ["/messages/", Core.toBS messageId]

instance Core.ToQuery GetRawMessageContent where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetRawMessageContentResponse' smart constructor.
data GetRawMessageContentResponse = GetRawMessageContentResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The raw content of the email message, in MIME format.
    messageContent :: Core.ResponseBody
  }
  deriving (Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRawMessageContentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getRawMessageContentResponse_httpStatus' - The response's http status code.
--
-- 'messageContent', 'getRawMessageContentResponse_messageContent' - The raw content of the email message, in MIME format.
newGetRawMessageContentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'messageContent'
  Core.ResponseBody ->
  GetRawMessageContentResponse
newGetRawMessageContentResponse
  pHttpStatus_
  pMessageContent_ =
    GetRawMessageContentResponse'
      { httpStatus =
          pHttpStatus_,
        messageContent = pMessageContent_
      }

-- | The response's http status code.
getRawMessageContentResponse_httpStatus :: Lens.Lens' GetRawMessageContentResponse Prelude.Int
getRawMessageContentResponse_httpStatus = Lens.lens (\GetRawMessageContentResponse' {httpStatus} -> httpStatus) (\s@GetRawMessageContentResponse' {} a -> s {httpStatus = a} :: GetRawMessageContentResponse)

-- | The raw content of the email message, in MIME format.
getRawMessageContentResponse_messageContent :: Lens.Lens' GetRawMessageContentResponse Core.ResponseBody
getRawMessageContentResponse_messageContent = Lens.lens (\GetRawMessageContentResponse' {messageContent} -> messageContent) (\s@GetRawMessageContentResponse' {} a -> s {messageContent = a} :: GetRawMessageContentResponse)
