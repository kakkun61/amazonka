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
-- Module      : Network.AWS.MacieV2.ListOrganizationAdminAccounts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the delegated Amazon Macie administrator
-- account for an Amazon Web Services organization.
--
-- This operation returns paginated results.
module Network.AWS.MacieV2.ListOrganizationAdminAccounts
  ( -- * Creating a Request
    ListOrganizationAdminAccounts (..),
    newListOrganizationAdminAccounts,

    -- * Request Lenses
    listOrganizationAdminAccounts_nextToken,
    listOrganizationAdminAccounts_maxResults,

    -- * Destructuring the Response
    ListOrganizationAdminAccountsResponse (..),
    newListOrganizationAdminAccountsResponse,

    -- * Response Lenses
    listOrganizationAdminAccountsResponse_adminAccounts,
    listOrganizationAdminAccountsResponse_nextToken,
    listOrganizationAdminAccountsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListOrganizationAdminAccounts' smart constructor.
data ListOrganizationAdminAccounts = ListOrganizationAdminAccounts'
  { -- | The nextToken string that specifies which page of results to return in a
    -- paginated response.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to include in each page of a paginated
    -- response.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListOrganizationAdminAccounts' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listOrganizationAdminAccounts_nextToken' - The nextToken string that specifies which page of results to return in a
-- paginated response.
--
-- 'maxResults', 'listOrganizationAdminAccounts_maxResults' - The maximum number of items to include in each page of a paginated
-- response.
newListOrganizationAdminAccounts ::
  ListOrganizationAdminAccounts
newListOrganizationAdminAccounts =
  ListOrganizationAdminAccounts'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The nextToken string that specifies which page of results to return in a
-- paginated response.
listOrganizationAdminAccounts_nextToken :: Lens.Lens' ListOrganizationAdminAccounts (Prelude.Maybe Prelude.Text)
listOrganizationAdminAccounts_nextToken = Lens.lens (\ListOrganizationAdminAccounts' {nextToken} -> nextToken) (\s@ListOrganizationAdminAccounts' {} a -> s {nextToken = a} :: ListOrganizationAdminAccounts)

-- | The maximum number of items to include in each page of a paginated
-- response.
listOrganizationAdminAccounts_maxResults :: Lens.Lens' ListOrganizationAdminAccounts (Prelude.Maybe Prelude.Natural)
listOrganizationAdminAccounts_maxResults = Lens.lens (\ListOrganizationAdminAccounts' {maxResults} -> maxResults) (\s@ListOrganizationAdminAccounts' {} a -> s {maxResults = a} :: ListOrganizationAdminAccounts)

instance Core.AWSPager ListOrganizationAdminAccounts where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listOrganizationAdminAccountsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listOrganizationAdminAccountsResponse_adminAccounts
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listOrganizationAdminAccounts_nextToken
          Lens..~ rs
          Lens.^? listOrganizationAdminAccountsResponse_nextToken
            Prelude.. Lens._Just

instance
  Core.AWSRequest
    ListOrganizationAdminAccounts
  where
  type
    AWSResponse ListOrganizationAdminAccounts =
      ListOrganizationAdminAccountsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListOrganizationAdminAccountsResponse'
            Prelude.<$> (x Core..?> "adminAccounts" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListOrganizationAdminAccounts

instance Prelude.NFData ListOrganizationAdminAccounts

instance Core.ToHeaders ListOrganizationAdminAccounts where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListOrganizationAdminAccounts where
  toPath = Prelude.const "/admin"

instance Core.ToQuery ListOrganizationAdminAccounts where
  toQuery ListOrganizationAdminAccounts' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListOrganizationAdminAccountsResponse' smart constructor.
data ListOrganizationAdminAccountsResponse = ListOrganizationAdminAccountsResponse'
  { -- | An array of objects, one for each delegated Amazon Macie administrator
    -- account for the organization. Only one of these accounts can have a
    -- status of ENABLED.
    adminAccounts :: Prelude.Maybe [AdminAccount],
    -- | The string to use in a subsequent request to get the next page of
    -- results in a paginated response. This value is null if there are no
    -- additional pages.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListOrganizationAdminAccountsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'adminAccounts', 'listOrganizationAdminAccountsResponse_adminAccounts' - An array of objects, one for each delegated Amazon Macie administrator
-- account for the organization. Only one of these accounts can have a
-- status of ENABLED.
--
-- 'nextToken', 'listOrganizationAdminAccountsResponse_nextToken' - The string to use in a subsequent request to get the next page of
-- results in a paginated response. This value is null if there are no
-- additional pages.
--
-- 'httpStatus', 'listOrganizationAdminAccountsResponse_httpStatus' - The response's http status code.
newListOrganizationAdminAccountsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListOrganizationAdminAccountsResponse
newListOrganizationAdminAccountsResponse pHttpStatus_ =
  ListOrganizationAdminAccountsResponse'
    { adminAccounts =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of objects, one for each delegated Amazon Macie administrator
-- account for the organization. Only one of these accounts can have a
-- status of ENABLED.
listOrganizationAdminAccountsResponse_adminAccounts :: Lens.Lens' ListOrganizationAdminAccountsResponse (Prelude.Maybe [AdminAccount])
listOrganizationAdminAccountsResponse_adminAccounts = Lens.lens (\ListOrganizationAdminAccountsResponse' {adminAccounts} -> adminAccounts) (\s@ListOrganizationAdminAccountsResponse' {} a -> s {adminAccounts = a} :: ListOrganizationAdminAccountsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The string to use in a subsequent request to get the next page of
-- results in a paginated response. This value is null if there are no
-- additional pages.
listOrganizationAdminAccountsResponse_nextToken :: Lens.Lens' ListOrganizationAdminAccountsResponse (Prelude.Maybe Prelude.Text)
listOrganizationAdminAccountsResponse_nextToken = Lens.lens (\ListOrganizationAdminAccountsResponse' {nextToken} -> nextToken) (\s@ListOrganizationAdminAccountsResponse' {} a -> s {nextToken = a} :: ListOrganizationAdminAccountsResponse)

-- | The response's http status code.
listOrganizationAdminAccountsResponse_httpStatus :: Lens.Lens' ListOrganizationAdminAccountsResponse Prelude.Int
listOrganizationAdminAccountsResponse_httpStatus = Lens.lens (\ListOrganizationAdminAccountsResponse' {httpStatus} -> httpStatus) (\s@ListOrganizationAdminAccountsResponse' {} a -> s {httpStatus = a} :: ListOrganizationAdminAccountsResponse)

instance
  Prelude.NFData
    ListOrganizationAdminAccountsResponse
