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
-- Module      : Network.AWS.Amplify.ListBranches
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the branches of an Amplify app.
--
-- This operation returns paginated results.
module Network.AWS.Amplify.ListBranches
  ( -- * Creating a Request
    ListBranches (..),
    newListBranches,

    -- * Request Lenses
    listBranches_nextToken,
    listBranches_maxResults,
    listBranches_appId,

    -- * Destructuring the Response
    ListBranchesResponse (..),
    newListBranchesResponse,

    -- * Response Lenses
    listBranchesResponse_nextToken,
    listBranchesResponse_httpStatus,
    listBranchesResponse_branches,
  )
where

import Network.AWS.Amplify.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request structure for the list branches request.
--
-- /See:/ 'newListBranches' smart constructor.
data ListBranches = ListBranches'
  { -- | A pagination token. Set to null to start listing branches from the
    -- start. If a non-null pagination token is returned in a result, pass its
    -- value in here to list more branches.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of records to list in a single response.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique ID for an Amplify app.
    appId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBranches' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBranches_nextToken' - A pagination token. Set to null to start listing branches from the
-- start. If a non-null pagination token is returned in a result, pass its
-- value in here to list more branches.
--
-- 'maxResults', 'listBranches_maxResults' - The maximum number of records to list in a single response.
--
-- 'appId', 'listBranches_appId' - The unique ID for an Amplify app.
newListBranches ::
  -- | 'appId'
  Prelude.Text ->
  ListBranches
newListBranches pAppId_ =
  ListBranches'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      appId = pAppId_
    }

-- | A pagination token. Set to null to start listing branches from the
-- start. If a non-null pagination token is returned in a result, pass its
-- value in here to list more branches.
listBranches_nextToken :: Lens.Lens' ListBranches (Prelude.Maybe Prelude.Text)
listBranches_nextToken = Lens.lens (\ListBranches' {nextToken} -> nextToken) (\s@ListBranches' {} a -> s {nextToken = a} :: ListBranches)

-- | The maximum number of records to list in a single response.
listBranches_maxResults :: Lens.Lens' ListBranches (Prelude.Maybe Prelude.Natural)
listBranches_maxResults = Lens.lens (\ListBranches' {maxResults} -> maxResults) (\s@ListBranches' {} a -> s {maxResults = a} :: ListBranches)

-- | The unique ID for an Amplify app.
listBranches_appId :: Lens.Lens' ListBranches Prelude.Text
listBranches_appId = Lens.lens (\ListBranches' {appId} -> appId) (\s@ListBranches' {} a -> s {appId = a} :: ListBranches)

instance Core.AWSPager ListBranches where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listBranchesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listBranchesResponse_branches) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listBranches_nextToken
          Lens..~ rs
          Lens.^? listBranchesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListBranches where
  type AWSResponse ListBranches = ListBranchesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListBranchesResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "branches" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListBranches

instance Prelude.NFData ListBranches

instance Core.ToHeaders ListBranches where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListBranches where
  toPath ListBranches' {..} =
    Prelude.mconcat
      ["/apps/", Core.toBS appId, "/branches"]

instance Core.ToQuery ListBranches where
  toQuery ListBranches' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | The result structure for the list branches request.
--
-- /See:/ 'newListBranchesResponse' smart constructor.
data ListBranchesResponse = ListBranchesResponse'
  { -- | A pagination token. If a non-null pagination token is returned in a
    -- result, pass its value in another request to retrieve more entries.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of branches for an Amplify app.
    branches :: [Branch]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBranchesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBranchesResponse_nextToken' - A pagination token. If a non-null pagination token is returned in a
-- result, pass its value in another request to retrieve more entries.
--
-- 'httpStatus', 'listBranchesResponse_httpStatus' - The response's http status code.
--
-- 'branches', 'listBranchesResponse_branches' - A list of branches for an Amplify app.
newListBranchesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListBranchesResponse
newListBranchesResponse pHttpStatus_ =
  ListBranchesResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      branches = Prelude.mempty
    }

-- | A pagination token. If a non-null pagination token is returned in a
-- result, pass its value in another request to retrieve more entries.
listBranchesResponse_nextToken :: Lens.Lens' ListBranchesResponse (Prelude.Maybe Prelude.Text)
listBranchesResponse_nextToken = Lens.lens (\ListBranchesResponse' {nextToken} -> nextToken) (\s@ListBranchesResponse' {} a -> s {nextToken = a} :: ListBranchesResponse)

-- | The response's http status code.
listBranchesResponse_httpStatus :: Lens.Lens' ListBranchesResponse Prelude.Int
listBranchesResponse_httpStatus = Lens.lens (\ListBranchesResponse' {httpStatus} -> httpStatus) (\s@ListBranchesResponse' {} a -> s {httpStatus = a} :: ListBranchesResponse)

-- | A list of branches for an Amplify app.
listBranchesResponse_branches :: Lens.Lens' ListBranchesResponse [Branch]
listBranchesResponse_branches = Lens.lens (\ListBranchesResponse' {branches} -> branches) (\s@ListBranchesResponse' {} a -> s {branches = a} :: ListBranchesResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListBranchesResponse
