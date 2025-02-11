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
-- Module      : Network.AWS.IoTData.ListRetainedMessages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists summary information about the retained messages stored for the
-- account.
--
-- This action returns only the topic names of the retained messages. It
-- doesn\'t return any message payloads. Although this action doesn\'t
-- return a message payload, it can still incur messaging costs.
--
-- To get the message payload of a retained message, call
-- <https://docs.aws.amazon.com/iot/latest/developerguide/API_iotdata_GetRetainedMessage.html GetRetainedMessage>
-- with the topic name of the retained message.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions ListRetainedMessages>
-- action.
--
-- For more information about messaging costs, see
-- <http://aws.amazon.com/iot-core/pricing/#Messaging IoT Core pricing - Messaging>.
--
-- This operation returns paginated results.
module Network.AWS.IoTData.ListRetainedMessages
  ( -- * Creating a Request
    ListRetainedMessages (..),
    newListRetainedMessages,

    -- * Request Lenses
    listRetainedMessages_nextToken,
    listRetainedMessages_maxResults,

    -- * Destructuring the Response
    ListRetainedMessagesResponse (..),
    newListRetainedMessagesResponse,

    -- * Response Lenses
    listRetainedMessagesResponse_retainedTopics,
    listRetainedMessagesResponse_nextToken,
    listRetainedMessagesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTData.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListRetainedMessages' smart constructor.
data ListRetainedMessages = ListRetainedMessages'
  { -- | To retrieve the next set of results, the @nextToken@ value from a
    -- previous response; otherwise __null__ to receive the first set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return at one time.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRetainedMessages' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRetainedMessages_nextToken' - To retrieve the next set of results, the @nextToken@ value from a
-- previous response; otherwise __null__ to receive the first set of
-- results.
--
-- 'maxResults', 'listRetainedMessages_maxResults' - The maximum number of results to return at one time.
newListRetainedMessages ::
  ListRetainedMessages
newListRetainedMessages =
  ListRetainedMessages'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | To retrieve the next set of results, the @nextToken@ value from a
-- previous response; otherwise __null__ to receive the first set of
-- results.
listRetainedMessages_nextToken :: Lens.Lens' ListRetainedMessages (Prelude.Maybe Prelude.Text)
listRetainedMessages_nextToken = Lens.lens (\ListRetainedMessages' {nextToken} -> nextToken) (\s@ListRetainedMessages' {} a -> s {nextToken = a} :: ListRetainedMessages)

-- | The maximum number of results to return at one time.
listRetainedMessages_maxResults :: Lens.Lens' ListRetainedMessages (Prelude.Maybe Prelude.Natural)
listRetainedMessages_maxResults = Lens.lens (\ListRetainedMessages' {maxResults} -> maxResults) (\s@ListRetainedMessages' {} a -> s {maxResults = a} :: ListRetainedMessages)

instance Core.AWSPager ListRetainedMessages where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listRetainedMessagesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listRetainedMessagesResponse_retainedTopics
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listRetainedMessages_nextToken
          Lens..~ rs
          Lens.^? listRetainedMessagesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListRetainedMessages where
  type
    AWSResponse ListRetainedMessages =
      ListRetainedMessagesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListRetainedMessagesResponse'
            Prelude.<$> (x Core..?> "retainedTopics" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListRetainedMessages

instance Prelude.NFData ListRetainedMessages

instance Core.ToHeaders ListRetainedMessages where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListRetainedMessages where
  toPath = Prelude.const "/retainedMessage"

instance Core.ToQuery ListRetainedMessages where
  toQuery ListRetainedMessages' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListRetainedMessagesResponse' smart constructor.
data ListRetainedMessagesResponse = ListRetainedMessagesResponse'
  { -- | A summary list the account\'s retained messages. The information
    -- returned doesn\'t include the message payloads of the retained messages.
    retainedTopics :: Prelude.Maybe [RetainedMessageSummary],
    -- | The token for the next set of results, or null if there are no
    -- additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRetainedMessagesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'retainedTopics', 'listRetainedMessagesResponse_retainedTopics' - A summary list the account\'s retained messages. The information
-- returned doesn\'t include the message payloads of the retained messages.
--
-- 'nextToken', 'listRetainedMessagesResponse_nextToken' - The token for the next set of results, or null if there are no
-- additional results.
--
-- 'httpStatus', 'listRetainedMessagesResponse_httpStatus' - The response's http status code.
newListRetainedMessagesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListRetainedMessagesResponse
newListRetainedMessagesResponse pHttpStatus_ =
  ListRetainedMessagesResponse'
    { retainedTopics =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A summary list the account\'s retained messages. The information
-- returned doesn\'t include the message payloads of the retained messages.
listRetainedMessagesResponse_retainedTopics :: Lens.Lens' ListRetainedMessagesResponse (Prelude.Maybe [RetainedMessageSummary])
listRetainedMessagesResponse_retainedTopics = Lens.lens (\ListRetainedMessagesResponse' {retainedTopics} -> retainedTopics) (\s@ListRetainedMessagesResponse' {} a -> s {retainedTopics = a} :: ListRetainedMessagesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token for the next set of results, or null if there are no
-- additional results.
listRetainedMessagesResponse_nextToken :: Lens.Lens' ListRetainedMessagesResponse (Prelude.Maybe Prelude.Text)
listRetainedMessagesResponse_nextToken = Lens.lens (\ListRetainedMessagesResponse' {nextToken} -> nextToken) (\s@ListRetainedMessagesResponse' {} a -> s {nextToken = a} :: ListRetainedMessagesResponse)

-- | The response's http status code.
listRetainedMessagesResponse_httpStatus :: Lens.Lens' ListRetainedMessagesResponse Prelude.Int
listRetainedMessagesResponse_httpStatus = Lens.lens (\ListRetainedMessagesResponse' {httpStatus} -> httpStatus) (\s@ListRetainedMessagesResponse' {} a -> s {httpStatus = a} :: ListRetainedMessagesResponse)

instance Prelude.NFData ListRetainedMessagesResponse
