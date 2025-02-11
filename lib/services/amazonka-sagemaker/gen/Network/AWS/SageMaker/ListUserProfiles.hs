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
-- Module      : Network.AWS.SageMaker.ListUserProfiles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists user profiles.
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListUserProfiles
  ( -- * Creating a Request
    ListUserProfiles (..),
    newListUserProfiles,

    -- * Request Lenses
    listUserProfiles_domainIdEquals,
    listUserProfiles_userProfileNameContains,
    listUserProfiles_nextToken,
    listUserProfiles_sortOrder,
    listUserProfiles_maxResults,
    listUserProfiles_sortBy,

    -- * Destructuring the Response
    ListUserProfilesResponse (..),
    newListUserProfilesResponse,

    -- * Response Lenses
    listUserProfilesResponse_userProfiles,
    listUserProfilesResponse_nextToken,
    listUserProfilesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newListUserProfiles' smart constructor.
data ListUserProfiles = ListUserProfiles'
  { -- | A parameter by which to filter the results.
    domainIdEquals :: Prelude.Maybe Prelude.Text,
    -- | A parameter by which to filter the results.
    userProfileNameContains :: Prelude.Maybe Prelude.Text,
    -- | If the previous response was truncated, you will receive this token. Use
    -- it in your next request to receive the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The sort order for the results. The default is Ascending.
    sortOrder :: Prelude.Maybe SortOrder,
    -- | Returns a list up to a specified limit.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The parameter by which to sort the results. The default is CreationTime.
    sortBy :: Prelude.Maybe UserProfileSortKey
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListUserProfiles' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainIdEquals', 'listUserProfiles_domainIdEquals' - A parameter by which to filter the results.
--
-- 'userProfileNameContains', 'listUserProfiles_userProfileNameContains' - A parameter by which to filter the results.
--
-- 'nextToken', 'listUserProfiles_nextToken' - If the previous response was truncated, you will receive this token. Use
-- it in your next request to receive the next set of results.
--
-- 'sortOrder', 'listUserProfiles_sortOrder' - The sort order for the results. The default is Ascending.
--
-- 'maxResults', 'listUserProfiles_maxResults' - Returns a list up to a specified limit.
--
-- 'sortBy', 'listUserProfiles_sortBy' - The parameter by which to sort the results. The default is CreationTime.
newListUserProfiles ::
  ListUserProfiles
newListUserProfiles =
  ListUserProfiles'
    { domainIdEquals = Prelude.Nothing,
      userProfileNameContains = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      sortOrder = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      sortBy = Prelude.Nothing
    }

-- | A parameter by which to filter the results.
listUserProfiles_domainIdEquals :: Lens.Lens' ListUserProfiles (Prelude.Maybe Prelude.Text)
listUserProfiles_domainIdEquals = Lens.lens (\ListUserProfiles' {domainIdEquals} -> domainIdEquals) (\s@ListUserProfiles' {} a -> s {domainIdEquals = a} :: ListUserProfiles)

-- | A parameter by which to filter the results.
listUserProfiles_userProfileNameContains :: Lens.Lens' ListUserProfiles (Prelude.Maybe Prelude.Text)
listUserProfiles_userProfileNameContains = Lens.lens (\ListUserProfiles' {userProfileNameContains} -> userProfileNameContains) (\s@ListUserProfiles' {} a -> s {userProfileNameContains = a} :: ListUserProfiles)

-- | If the previous response was truncated, you will receive this token. Use
-- it in your next request to receive the next set of results.
listUserProfiles_nextToken :: Lens.Lens' ListUserProfiles (Prelude.Maybe Prelude.Text)
listUserProfiles_nextToken = Lens.lens (\ListUserProfiles' {nextToken} -> nextToken) (\s@ListUserProfiles' {} a -> s {nextToken = a} :: ListUserProfiles)

-- | The sort order for the results. The default is Ascending.
listUserProfiles_sortOrder :: Lens.Lens' ListUserProfiles (Prelude.Maybe SortOrder)
listUserProfiles_sortOrder = Lens.lens (\ListUserProfiles' {sortOrder} -> sortOrder) (\s@ListUserProfiles' {} a -> s {sortOrder = a} :: ListUserProfiles)

-- | Returns a list up to a specified limit.
listUserProfiles_maxResults :: Lens.Lens' ListUserProfiles (Prelude.Maybe Prelude.Natural)
listUserProfiles_maxResults = Lens.lens (\ListUserProfiles' {maxResults} -> maxResults) (\s@ListUserProfiles' {} a -> s {maxResults = a} :: ListUserProfiles)

-- | The parameter by which to sort the results. The default is CreationTime.
listUserProfiles_sortBy :: Lens.Lens' ListUserProfiles (Prelude.Maybe UserProfileSortKey)
listUserProfiles_sortBy = Lens.lens (\ListUserProfiles' {sortBy} -> sortBy) (\s@ListUserProfiles' {} a -> s {sortBy = a} :: ListUserProfiles)

instance Core.AWSPager ListUserProfiles where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listUserProfilesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listUserProfilesResponse_userProfiles
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listUserProfiles_nextToken
          Lens..~ rs
          Lens.^? listUserProfilesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListUserProfiles where
  type
    AWSResponse ListUserProfiles =
      ListUserProfilesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListUserProfilesResponse'
            Prelude.<$> (x Core..?> "UserProfiles" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListUserProfiles

instance Prelude.NFData ListUserProfiles

instance Core.ToHeaders ListUserProfiles where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.ListUserProfiles" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListUserProfiles where
  toJSON ListUserProfiles' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DomainIdEquals" Core..=)
              Prelude.<$> domainIdEquals,
            ("UserProfileNameContains" Core..=)
              Prelude.<$> userProfileNameContains,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("SortOrder" Core..=) Prelude.<$> sortOrder,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("SortBy" Core..=) Prelude.<$> sortBy
          ]
      )

instance Core.ToPath ListUserProfiles where
  toPath = Prelude.const "/"

instance Core.ToQuery ListUserProfiles where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListUserProfilesResponse' smart constructor.
data ListUserProfilesResponse = ListUserProfilesResponse'
  { -- | The list of user profiles.
    userProfiles :: Prelude.Maybe [UserProfileDetails],
    -- | If the previous response was truncated, you will receive this token. Use
    -- it in your next request to receive the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListUserProfilesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userProfiles', 'listUserProfilesResponse_userProfiles' - The list of user profiles.
--
-- 'nextToken', 'listUserProfilesResponse_nextToken' - If the previous response was truncated, you will receive this token. Use
-- it in your next request to receive the next set of results.
--
-- 'httpStatus', 'listUserProfilesResponse_httpStatus' - The response's http status code.
newListUserProfilesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListUserProfilesResponse
newListUserProfilesResponse pHttpStatus_ =
  ListUserProfilesResponse'
    { userProfiles =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of user profiles.
listUserProfilesResponse_userProfiles :: Lens.Lens' ListUserProfilesResponse (Prelude.Maybe [UserProfileDetails])
listUserProfilesResponse_userProfiles = Lens.lens (\ListUserProfilesResponse' {userProfiles} -> userProfiles) (\s@ListUserProfilesResponse' {} a -> s {userProfiles = a} :: ListUserProfilesResponse) Prelude.. Lens.mapping Lens.coerced

-- | If the previous response was truncated, you will receive this token. Use
-- it in your next request to receive the next set of results.
listUserProfilesResponse_nextToken :: Lens.Lens' ListUserProfilesResponse (Prelude.Maybe Prelude.Text)
listUserProfilesResponse_nextToken = Lens.lens (\ListUserProfilesResponse' {nextToken} -> nextToken) (\s@ListUserProfilesResponse' {} a -> s {nextToken = a} :: ListUserProfilesResponse)

-- | The response's http status code.
listUserProfilesResponse_httpStatus :: Lens.Lens' ListUserProfilesResponse Prelude.Int
listUserProfilesResponse_httpStatus = Lens.lens (\ListUserProfilesResponse' {httpStatus} -> httpStatus) (\s@ListUserProfilesResponse' {} a -> s {httpStatus = a} :: ListUserProfilesResponse)

instance Prelude.NFData ListUserProfilesResponse
