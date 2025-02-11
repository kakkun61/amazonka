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
-- Module      : Network.AWS.Nimble.ListLaunchProfileMembers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get all users in a given launch profile membership.
--
-- This operation returns paginated results.
module Network.AWS.Nimble.ListLaunchProfileMembers
  ( -- * Creating a Request
    ListLaunchProfileMembers (..),
    newListLaunchProfileMembers,

    -- * Request Lenses
    listLaunchProfileMembers_nextToken,
    listLaunchProfileMembers_maxResults,
    listLaunchProfileMembers_studioId,
    listLaunchProfileMembers_launchProfileId,

    -- * Destructuring the Response
    ListLaunchProfileMembersResponse (..),
    newListLaunchProfileMembersResponse,

    -- * Response Lenses
    listLaunchProfileMembersResponse_members,
    listLaunchProfileMembersResponse_nextToken,
    listLaunchProfileMembersResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Nimble.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListLaunchProfileMembers' smart constructor.
data ListLaunchProfileMembers = ListLaunchProfileMembers'
  { -- | The token for the next set of results, or null if there are no more
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to be returned per request.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The studio ID.
    studioId :: Prelude.Text,
    -- | The launch profile ID.
    launchProfileId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLaunchProfileMembers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLaunchProfileMembers_nextToken' - The token for the next set of results, or null if there are no more
-- results.
--
-- 'maxResults', 'listLaunchProfileMembers_maxResults' - The maximum number of results to be returned per request.
--
-- 'studioId', 'listLaunchProfileMembers_studioId' - The studio ID.
--
-- 'launchProfileId', 'listLaunchProfileMembers_launchProfileId' - The launch profile ID.
newListLaunchProfileMembers ::
  -- | 'studioId'
  Prelude.Text ->
  -- | 'launchProfileId'
  Prelude.Text ->
  ListLaunchProfileMembers
newListLaunchProfileMembers
  pStudioId_
  pLaunchProfileId_ =
    ListLaunchProfileMembers'
      { nextToken =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        studioId = pStudioId_,
        launchProfileId = pLaunchProfileId_
      }

-- | The token for the next set of results, or null if there are no more
-- results.
listLaunchProfileMembers_nextToken :: Lens.Lens' ListLaunchProfileMembers (Prelude.Maybe Prelude.Text)
listLaunchProfileMembers_nextToken = Lens.lens (\ListLaunchProfileMembers' {nextToken} -> nextToken) (\s@ListLaunchProfileMembers' {} a -> s {nextToken = a} :: ListLaunchProfileMembers)

-- | The maximum number of results to be returned per request.
listLaunchProfileMembers_maxResults :: Lens.Lens' ListLaunchProfileMembers (Prelude.Maybe Prelude.Natural)
listLaunchProfileMembers_maxResults = Lens.lens (\ListLaunchProfileMembers' {maxResults} -> maxResults) (\s@ListLaunchProfileMembers' {} a -> s {maxResults = a} :: ListLaunchProfileMembers)

-- | The studio ID.
listLaunchProfileMembers_studioId :: Lens.Lens' ListLaunchProfileMembers Prelude.Text
listLaunchProfileMembers_studioId = Lens.lens (\ListLaunchProfileMembers' {studioId} -> studioId) (\s@ListLaunchProfileMembers' {} a -> s {studioId = a} :: ListLaunchProfileMembers)

-- | The launch profile ID.
listLaunchProfileMembers_launchProfileId :: Lens.Lens' ListLaunchProfileMembers Prelude.Text
listLaunchProfileMembers_launchProfileId = Lens.lens (\ListLaunchProfileMembers' {launchProfileId} -> launchProfileId) (\s@ListLaunchProfileMembers' {} a -> s {launchProfileId = a} :: ListLaunchProfileMembers)

instance Core.AWSPager ListLaunchProfileMembers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listLaunchProfileMembersResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listLaunchProfileMembersResponse_members
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listLaunchProfileMembers_nextToken
          Lens..~ rs
          Lens.^? listLaunchProfileMembersResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListLaunchProfileMembers where
  type
    AWSResponse ListLaunchProfileMembers =
      ListLaunchProfileMembersResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListLaunchProfileMembersResponse'
            Prelude.<$> (x Core..?> "members" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListLaunchProfileMembers

instance Prelude.NFData ListLaunchProfileMembers

instance Core.ToHeaders ListLaunchProfileMembers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListLaunchProfileMembers where
  toPath ListLaunchProfileMembers' {..} =
    Prelude.mconcat
      [ "/2020-08-01/studios/",
        Core.toBS studioId,
        "/launch-profiles/",
        Core.toBS launchProfileId,
        "/membership"
      ]

instance Core.ToQuery ListLaunchProfileMembers where
  toQuery ListLaunchProfileMembers' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListLaunchProfileMembersResponse' smart constructor.
data ListLaunchProfileMembersResponse = ListLaunchProfileMembersResponse'
  { -- | A list of members.
    members :: Prelude.Maybe [LaunchProfileMembership],
    -- | The token for the next set of results, or null if there are no more
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLaunchProfileMembersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'members', 'listLaunchProfileMembersResponse_members' - A list of members.
--
-- 'nextToken', 'listLaunchProfileMembersResponse_nextToken' - The token for the next set of results, or null if there are no more
-- results.
--
-- 'httpStatus', 'listLaunchProfileMembersResponse_httpStatus' - The response's http status code.
newListLaunchProfileMembersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListLaunchProfileMembersResponse
newListLaunchProfileMembersResponse pHttpStatus_ =
  ListLaunchProfileMembersResponse'
    { members =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of members.
listLaunchProfileMembersResponse_members :: Lens.Lens' ListLaunchProfileMembersResponse (Prelude.Maybe [LaunchProfileMembership])
listLaunchProfileMembersResponse_members = Lens.lens (\ListLaunchProfileMembersResponse' {members} -> members) (\s@ListLaunchProfileMembersResponse' {} a -> s {members = a} :: ListLaunchProfileMembersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token for the next set of results, or null if there are no more
-- results.
listLaunchProfileMembersResponse_nextToken :: Lens.Lens' ListLaunchProfileMembersResponse (Prelude.Maybe Prelude.Text)
listLaunchProfileMembersResponse_nextToken = Lens.lens (\ListLaunchProfileMembersResponse' {nextToken} -> nextToken) (\s@ListLaunchProfileMembersResponse' {} a -> s {nextToken = a} :: ListLaunchProfileMembersResponse)

-- | The response's http status code.
listLaunchProfileMembersResponse_httpStatus :: Lens.Lens' ListLaunchProfileMembersResponse Prelude.Int
listLaunchProfileMembersResponse_httpStatus = Lens.lens (\ListLaunchProfileMembersResponse' {httpStatus} -> httpStatus) (\s@ListLaunchProfileMembersResponse' {} a -> s {httpStatus = a} :: ListLaunchProfileMembersResponse)

instance
  Prelude.NFData
    ListLaunchProfileMembersResponse
