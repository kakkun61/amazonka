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
-- Module      : Network.AWS.Chime.ListRoomMemberships
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the membership details for the specified room in an Amazon Chime
-- Enterprise account, such as the members\' IDs, email addresses, and
-- names.
module Network.AWS.Chime.ListRoomMemberships
  ( -- * Creating a Request
    ListRoomMemberships (..),
    newListRoomMemberships,

    -- * Request Lenses
    listRoomMemberships_nextToken,
    listRoomMemberships_maxResults,
    listRoomMemberships_accountId,
    listRoomMemberships_roomId,

    -- * Destructuring the Response
    ListRoomMembershipsResponse (..),
    newListRoomMembershipsResponse,

    -- * Response Lenses
    listRoomMembershipsResponse_nextToken,
    listRoomMembershipsResponse_roomMemberships,
    listRoomMembershipsResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListRoomMemberships' smart constructor.
data ListRoomMemberships = ListRoomMemberships'
  { -- | The token to use to retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in a single call.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The room ID.
    roomId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRoomMemberships' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRoomMemberships_nextToken' - The token to use to retrieve the next page of results.
--
-- 'maxResults', 'listRoomMemberships_maxResults' - The maximum number of results to return in a single call.
--
-- 'accountId', 'listRoomMemberships_accountId' - The Amazon Chime account ID.
--
-- 'roomId', 'listRoomMemberships_roomId' - The room ID.
newListRoomMemberships ::
  -- | 'accountId'
  Prelude.Text ->
  -- | 'roomId'
  Prelude.Text ->
  ListRoomMemberships
newListRoomMemberships pAccountId_ pRoomId_ =
  ListRoomMemberships'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      accountId = pAccountId_,
      roomId = pRoomId_
    }

-- | The token to use to retrieve the next page of results.
listRoomMemberships_nextToken :: Lens.Lens' ListRoomMemberships (Prelude.Maybe Prelude.Text)
listRoomMemberships_nextToken = Lens.lens (\ListRoomMemberships' {nextToken} -> nextToken) (\s@ListRoomMemberships' {} a -> s {nextToken = a} :: ListRoomMemberships)

-- | The maximum number of results to return in a single call.
listRoomMemberships_maxResults :: Lens.Lens' ListRoomMemberships (Prelude.Maybe Prelude.Natural)
listRoomMemberships_maxResults = Lens.lens (\ListRoomMemberships' {maxResults} -> maxResults) (\s@ListRoomMemberships' {} a -> s {maxResults = a} :: ListRoomMemberships)

-- | The Amazon Chime account ID.
listRoomMemberships_accountId :: Lens.Lens' ListRoomMemberships Prelude.Text
listRoomMemberships_accountId = Lens.lens (\ListRoomMemberships' {accountId} -> accountId) (\s@ListRoomMemberships' {} a -> s {accountId = a} :: ListRoomMemberships)

-- | The room ID.
listRoomMemberships_roomId :: Lens.Lens' ListRoomMemberships Prelude.Text
listRoomMemberships_roomId = Lens.lens (\ListRoomMemberships' {roomId} -> roomId) (\s@ListRoomMemberships' {} a -> s {roomId = a} :: ListRoomMemberships)

instance Core.AWSRequest ListRoomMemberships where
  type
    AWSResponse ListRoomMemberships =
      ListRoomMembershipsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListRoomMembershipsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "RoomMemberships"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListRoomMemberships

instance Prelude.NFData ListRoomMemberships

instance Core.ToHeaders ListRoomMemberships where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListRoomMemberships where
  toPath ListRoomMemberships' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS accountId,
        "/rooms/",
        Core.toBS roomId,
        "/memberships"
      ]

instance Core.ToQuery ListRoomMemberships where
  toQuery ListRoomMemberships' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListRoomMembershipsResponse' smart constructor.
data ListRoomMembershipsResponse = ListRoomMembershipsResponse'
  { -- | The token to use to retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The room membership details.
    roomMemberships :: Prelude.Maybe [RoomMembership],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRoomMembershipsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRoomMembershipsResponse_nextToken' - The token to use to retrieve the next page of results.
--
-- 'roomMemberships', 'listRoomMembershipsResponse_roomMemberships' - The room membership details.
--
-- 'httpStatus', 'listRoomMembershipsResponse_httpStatus' - The response's http status code.
newListRoomMembershipsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListRoomMembershipsResponse
newListRoomMembershipsResponse pHttpStatus_ =
  ListRoomMembershipsResponse'
    { nextToken =
        Prelude.Nothing,
      roomMemberships = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use to retrieve the next page of results.
listRoomMembershipsResponse_nextToken :: Lens.Lens' ListRoomMembershipsResponse (Prelude.Maybe Prelude.Text)
listRoomMembershipsResponse_nextToken = Lens.lens (\ListRoomMembershipsResponse' {nextToken} -> nextToken) (\s@ListRoomMembershipsResponse' {} a -> s {nextToken = a} :: ListRoomMembershipsResponse)

-- | The room membership details.
listRoomMembershipsResponse_roomMemberships :: Lens.Lens' ListRoomMembershipsResponse (Prelude.Maybe [RoomMembership])
listRoomMembershipsResponse_roomMemberships = Lens.lens (\ListRoomMembershipsResponse' {roomMemberships} -> roomMemberships) (\s@ListRoomMembershipsResponse' {} a -> s {roomMemberships = a} :: ListRoomMembershipsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listRoomMembershipsResponse_httpStatus :: Lens.Lens' ListRoomMembershipsResponse Prelude.Int
listRoomMembershipsResponse_httpStatus = Lens.lens (\ListRoomMembershipsResponse' {httpStatus} -> httpStatus) (\s@ListRoomMembershipsResponse' {} a -> s {httpStatus = a} :: ListRoomMembershipsResponse)

instance Prelude.NFData ListRoomMembershipsResponse
