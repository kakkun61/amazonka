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
-- Module      : Network.AWS.MacieV2.ListMembers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the accounts that are associated with an
-- Amazon Macie administrator account.
--
-- This operation returns paginated results.
module Network.AWS.MacieV2.ListMembers
  ( -- * Creating a Request
    ListMembers (..),
    newListMembers,

    -- * Request Lenses
    listMembers_nextToken,
    listMembers_onlyAssociated,
    listMembers_maxResults,

    -- * Destructuring the Response
    ListMembersResponse (..),
    newListMembersResponse,

    -- * Response Lenses
    listMembersResponse_members,
    listMembersResponse_nextToken,
    listMembersResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListMembers' smart constructor.
data ListMembers = ListMembers'
  { -- | The nextToken string that specifies which page of results to return in a
    -- paginated response.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Specifies which accounts to include in the response, based on the status
    -- of an account\'s relationship with the administrator account. By
    -- default, the response includes only current member accounts. To include
    -- all accounts, set this value to false.
    onlyAssociated :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to include in each page of a paginated
    -- response.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListMembers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listMembers_nextToken' - The nextToken string that specifies which page of results to return in a
-- paginated response.
--
-- 'onlyAssociated', 'listMembers_onlyAssociated' - Specifies which accounts to include in the response, based on the status
-- of an account\'s relationship with the administrator account. By
-- default, the response includes only current member accounts. To include
-- all accounts, set this value to false.
--
-- 'maxResults', 'listMembers_maxResults' - The maximum number of items to include in each page of a paginated
-- response.
newListMembers ::
  ListMembers
newListMembers =
  ListMembers'
    { nextToken = Prelude.Nothing,
      onlyAssociated = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The nextToken string that specifies which page of results to return in a
-- paginated response.
listMembers_nextToken :: Lens.Lens' ListMembers (Prelude.Maybe Prelude.Text)
listMembers_nextToken = Lens.lens (\ListMembers' {nextToken} -> nextToken) (\s@ListMembers' {} a -> s {nextToken = a} :: ListMembers)

-- | Specifies which accounts to include in the response, based on the status
-- of an account\'s relationship with the administrator account. By
-- default, the response includes only current member accounts. To include
-- all accounts, set this value to false.
listMembers_onlyAssociated :: Lens.Lens' ListMembers (Prelude.Maybe Prelude.Text)
listMembers_onlyAssociated = Lens.lens (\ListMembers' {onlyAssociated} -> onlyAssociated) (\s@ListMembers' {} a -> s {onlyAssociated = a} :: ListMembers)

-- | The maximum number of items to include in each page of a paginated
-- response.
listMembers_maxResults :: Lens.Lens' ListMembers (Prelude.Maybe Prelude.Natural)
listMembers_maxResults = Lens.lens (\ListMembers' {maxResults} -> maxResults) (\s@ListMembers' {} a -> s {maxResults = a} :: ListMembers)

instance Core.AWSPager ListMembers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listMembersResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listMembersResponse_members Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listMembers_nextToken
          Lens..~ rs
          Lens.^? listMembersResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListMembers where
  type AWSResponse ListMembers = ListMembersResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListMembersResponse'
            Prelude.<$> (x Core..?> "members" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListMembers

instance Prelude.NFData ListMembers

instance Core.ToHeaders ListMembers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListMembers where
  toPath = Prelude.const "/members"

instance Core.ToQuery ListMembers where
  toQuery ListMembers' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "onlyAssociated" Core.=: onlyAssociated,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListMembersResponse' smart constructor.
data ListMembersResponse = ListMembersResponse'
  { -- | An array of objects, one for each account that\'s associated with the
    -- administrator account and meets the criteria specified by the
    -- onlyAssociated request parameter.
    members :: Prelude.Maybe [Member],
    -- | The string to use in a subsequent request to get the next page of
    -- results in a paginated response. This value is null if there are no
    -- additional pages.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListMembersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'members', 'listMembersResponse_members' - An array of objects, one for each account that\'s associated with the
-- administrator account and meets the criteria specified by the
-- onlyAssociated request parameter.
--
-- 'nextToken', 'listMembersResponse_nextToken' - The string to use in a subsequent request to get the next page of
-- results in a paginated response. This value is null if there are no
-- additional pages.
--
-- 'httpStatus', 'listMembersResponse_httpStatus' - The response's http status code.
newListMembersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListMembersResponse
newListMembersResponse pHttpStatus_ =
  ListMembersResponse'
    { members = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of objects, one for each account that\'s associated with the
-- administrator account and meets the criteria specified by the
-- onlyAssociated request parameter.
listMembersResponse_members :: Lens.Lens' ListMembersResponse (Prelude.Maybe [Member])
listMembersResponse_members = Lens.lens (\ListMembersResponse' {members} -> members) (\s@ListMembersResponse' {} a -> s {members = a} :: ListMembersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The string to use in a subsequent request to get the next page of
-- results in a paginated response. This value is null if there are no
-- additional pages.
listMembersResponse_nextToken :: Lens.Lens' ListMembersResponse (Prelude.Maybe Prelude.Text)
listMembersResponse_nextToken = Lens.lens (\ListMembersResponse' {nextToken} -> nextToken) (\s@ListMembersResponse' {} a -> s {nextToken = a} :: ListMembersResponse)

-- | The response's http status code.
listMembersResponse_httpStatus :: Lens.Lens' ListMembersResponse Prelude.Int
listMembersResponse_httpStatus = Lens.lens (\ListMembersResponse' {httpStatus} -> httpStatus) (\s@ListMembersResponse' {} a -> s {httpStatus = a} :: ListMembersResponse)

instance Prelude.NFData ListMembersResponse
