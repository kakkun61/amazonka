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
-- Module      : Network.AWS.AuditManager.ListNotifications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all Audit Manager notifications.
module Network.AWS.AuditManager.ListNotifications
  ( -- * Creating a Request
    ListNotifications (..),
    newListNotifications,

    -- * Request Lenses
    listNotifications_nextToken,
    listNotifications_maxResults,

    -- * Destructuring the Response
    ListNotificationsResponse (..),
    newListNotificationsResponse,

    -- * Response Lenses
    listNotificationsResponse_nextToken,
    listNotificationsResponse_notifications,
    listNotificationsResponse_httpStatus,
  )
where

import Network.AWS.AuditManager.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListNotifications' smart constructor.
data ListNotifications = ListNotifications'
  { -- | The pagination token used to fetch the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Represents the maximum number of results per page, or per API request
    -- call.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListNotifications' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listNotifications_nextToken' - The pagination token used to fetch the next set of results.
--
-- 'maxResults', 'listNotifications_maxResults' - Represents the maximum number of results per page, or per API request
-- call.
newListNotifications ::
  ListNotifications
newListNotifications =
  ListNotifications'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The pagination token used to fetch the next set of results.
listNotifications_nextToken :: Lens.Lens' ListNotifications (Prelude.Maybe Prelude.Text)
listNotifications_nextToken = Lens.lens (\ListNotifications' {nextToken} -> nextToken) (\s@ListNotifications' {} a -> s {nextToken = a} :: ListNotifications)

-- | Represents the maximum number of results per page, or per API request
-- call.
listNotifications_maxResults :: Lens.Lens' ListNotifications (Prelude.Maybe Prelude.Natural)
listNotifications_maxResults = Lens.lens (\ListNotifications' {maxResults} -> maxResults) (\s@ListNotifications' {} a -> s {maxResults = a} :: ListNotifications)

instance Core.AWSRequest ListNotifications where
  type
    AWSResponse ListNotifications =
      ListNotificationsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListNotificationsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "notifications" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListNotifications

instance Prelude.NFData ListNotifications

instance Core.ToHeaders ListNotifications where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListNotifications where
  toPath = Prelude.const "/notifications"

instance Core.ToQuery ListNotifications where
  toQuery ListNotifications' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListNotificationsResponse' smart constructor.
data ListNotificationsResponse = ListNotificationsResponse'
  { -- | The pagination token used to fetch the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The returned list of notifications.
    notifications :: Prelude.Maybe [Notification],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListNotificationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listNotificationsResponse_nextToken' - The pagination token used to fetch the next set of results.
--
-- 'notifications', 'listNotificationsResponse_notifications' - The returned list of notifications.
--
-- 'httpStatus', 'listNotificationsResponse_httpStatus' - The response's http status code.
newListNotificationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListNotificationsResponse
newListNotificationsResponse pHttpStatus_ =
  ListNotificationsResponse'
    { nextToken =
        Prelude.Nothing,
      notifications = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The pagination token used to fetch the next set of results.
listNotificationsResponse_nextToken :: Lens.Lens' ListNotificationsResponse (Prelude.Maybe Prelude.Text)
listNotificationsResponse_nextToken = Lens.lens (\ListNotificationsResponse' {nextToken} -> nextToken) (\s@ListNotificationsResponse' {} a -> s {nextToken = a} :: ListNotificationsResponse)

-- | The returned list of notifications.
listNotificationsResponse_notifications :: Lens.Lens' ListNotificationsResponse (Prelude.Maybe [Notification])
listNotificationsResponse_notifications = Lens.lens (\ListNotificationsResponse' {notifications} -> notifications) (\s@ListNotificationsResponse' {} a -> s {notifications = a} :: ListNotificationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listNotificationsResponse_httpStatus :: Lens.Lens' ListNotificationsResponse Prelude.Int
listNotificationsResponse_httpStatus = Lens.lens (\ListNotificationsResponse' {httpStatus} -> httpStatus) (\s@ListNotificationsResponse' {} a -> s {httpStatus = a} :: ListNotificationsResponse)

instance Prelude.NFData ListNotificationsResponse
