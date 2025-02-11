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
-- Module      : Network.AWS.QuickSight.ListThemeVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the versions of the themes in the current Amazon Web Services
-- account.
--
-- This operation returns paginated results.
module Network.AWS.QuickSight.ListThemeVersions
  ( -- * Creating a Request
    ListThemeVersions (..),
    newListThemeVersions,

    -- * Request Lenses
    listThemeVersions_nextToken,
    listThemeVersions_maxResults,
    listThemeVersions_awsAccountId,
    listThemeVersions_themeId,

    -- * Destructuring the Response
    ListThemeVersionsResponse (..),
    newListThemeVersionsResponse,

    -- * Response Lenses
    listThemeVersionsResponse_requestId,
    listThemeVersionsResponse_themeVersionSummaryList,
    listThemeVersionsResponse_nextToken,
    listThemeVersionsResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListThemeVersions' smart constructor.
data ListThemeVersions = ListThemeVersions'
  { -- | The token for the next set of results, or null if there are no more
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to be returned per request.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the Amazon Web Services account that contains the themes that
    -- you\'re listing.
    awsAccountId :: Prelude.Text,
    -- | The ID for the theme.
    themeId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListThemeVersions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listThemeVersions_nextToken' - The token for the next set of results, or null if there are no more
-- results.
--
-- 'maxResults', 'listThemeVersions_maxResults' - The maximum number of results to be returned per request.
--
-- 'awsAccountId', 'listThemeVersions_awsAccountId' - The ID of the Amazon Web Services account that contains the themes that
-- you\'re listing.
--
-- 'themeId', 'listThemeVersions_themeId' - The ID for the theme.
newListThemeVersions ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'themeId'
  Prelude.Text ->
  ListThemeVersions
newListThemeVersions pAwsAccountId_ pThemeId_ =
  ListThemeVersions'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      awsAccountId = pAwsAccountId_,
      themeId = pThemeId_
    }

-- | The token for the next set of results, or null if there are no more
-- results.
listThemeVersions_nextToken :: Lens.Lens' ListThemeVersions (Prelude.Maybe Prelude.Text)
listThemeVersions_nextToken = Lens.lens (\ListThemeVersions' {nextToken} -> nextToken) (\s@ListThemeVersions' {} a -> s {nextToken = a} :: ListThemeVersions)

-- | The maximum number of results to be returned per request.
listThemeVersions_maxResults :: Lens.Lens' ListThemeVersions (Prelude.Maybe Prelude.Natural)
listThemeVersions_maxResults = Lens.lens (\ListThemeVersions' {maxResults} -> maxResults) (\s@ListThemeVersions' {} a -> s {maxResults = a} :: ListThemeVersions)

-- | The ID of the Amazon Web Services account that contains the themes that
-- you\'re listing.
listThemeVersions_awsAccountId :: Lens.Lens' ListThemeVersions Prelude.Text
listThemeVersions_awsAccountId = Lens.lens (\ListThemeVersions' {awsAccountId} -> awsAccountId) (\s@ListThemeVersions' {} a -> s {awsAccountId = a} :: ListThemeVersions)

-- | The ID for the theme.
listThemeVersions_themeId :: Lens.Lens' ListThemeVersions Prelude.Text
listThemeVersions_themeId = Lens.lens (\ListThemeVersions' {themeId} -> themeId) (\s@ListThemeVersions' {} a -> s {themeId = a} :: ListThemeVersions)

instance Core.AWSPager ListThemeVersions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listThemeVersionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listThemeVersionsResponse_themeVersionSummaryList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listThemeVersions_nextToken
          Lens..~ rs
          Lens.^? listThemeVersionsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListThemeVersions where
  type
    AWSResponse ListThemeVersions =
      ListThemeVersionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListThemeVersionsResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> ( x Core..?> "ThemeVersionSummaryList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListThemeVersions

instance Prelude.NFData ListThemeVersions

instance Core.ToHeaders ListThemeVersions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListThemeVersions where
  toPath ListThemeVersions' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/themes/",
        Core.toBS themeId,
        "/versions"
      ]

instance Core.ToQuery ListThemeVersions where
  toQuery ListThemeVersions' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListThemeVersionsResponse' smart constructor.
data ListThemeVersionsResponse = ListThemeVersionsResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | A structure containing a list of all the versions of the specified
    -- theme.
    themeVersionSummaryList :: Prelude.Maybe [ThemeVersionSummary],
    -- | The token for the next set of results, or null if there are no more
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListThemeVersionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'listThemeVersionsResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'themeVersionSummaryList', 'listThemeVersionsResponse_themeVersionSummaryList' - A structure containing a list of all the versions of the specified
-- theme.
--
-- 'nextToken', 'listThemeVersionsResponse_nextToken' - The token for the next set of results, or null if there are no more
-- results.
--
-- 'status', 'listThemeVersionsResponse_status' - The HTTP status of the request.
newListThemeVersionsResponse ::
  -- | 'status'
  Prelude.Int ->
  ListThemeVersionsResponse
newListThemeVersionsResponse pStatus_ =
  ListThemeVersionsResponse'
    { requestId =
        Prelude.Nothing,
      themeVersionSummaryList = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
listThemeVersionsResponse_requestId :: Lens.Lens' ListThemeVersionsResponse (Prelude.Maybe Prelude.Text)
listThemeVersionsResponse_requestId = Lens.lens (\ListThemeVersionsResponse' {requestId} -> requestId) (\s@ListThemeVersionsResponse' {} a -> s {requestId = a} :: ListThemeVersionsResponse)

-- | A structure containing a list of all the versions of the specified
-- theme.
listThemeVersionsResponse_themeVersionSummaryList :: Lens.Lens' ListThemeVersionsResponse (Prelude.Maybe [ThemeVersionSummary])
listThemeVersionsResponse_themeVersionSummaryList = Lens.lens (\ListThemeVersionsResponse' {themeVersionSummaryList} -> themeVersionSummaryList) (\s@ListThemeVersionsResponse' {} a -> s {themeVersionSummaryList = a} :: ListThemeVersionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token for the next set of results, or null if there are no more
-- results.
listThemeVersionsResponse_nextToken :: Lens.Lens' ListThemeVersionsResponse (Prelude.Maybe Prelude.Text)
listThemeVersionsResponse_nextToken = Lens.lens (\ListThemeVersionsResponse' {nextToken} -> nextToken) (\s@ListThemeVersionsResponse' {} a -> s {nextToken = a} :: ListThemeVersionsResponse)

-- | The HTTP status of the request.
listThemeVersionsResponse_status :: Lens.Lens' ListThemeVersionsResponse Prelude.Int
listThemeVersionsResponse_status = Lens.lens (\ListThemeVersionsResponse' {status} -> status) (\s@ListThemeVersionsResponse' {} a -> s {status = a} :: ListThemeVersionsResponse)

instance Prelude.NFData ListThemeVersionsResponse
