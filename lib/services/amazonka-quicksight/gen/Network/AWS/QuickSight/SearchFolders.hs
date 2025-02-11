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
-- Module      : Network.AWS.QuickSight.SearchFolders
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches the subfolders in a folder.
module Network.AWS.QuickSight.SearchFolders
  ( -- * Creating a Request
    SearchFolders (..),
    newSearchFolders,

    -- * Request Lenses
    searchFolders_nextToken,
    searchFolders_maxResults,
    searchFolders_awsAccountId,
    searchFolders_filters,

    -- * Destructuring the Response
    SearchFoldersResponse (..),
    newSearchFoldersResponse,

    -- * Response Lenses
    searchFoldersResponse_requestId,
    searchFoldersResponse_nextToken,
    searchFoldersResponse_folderSummaryList,
    searchFoldersResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newSearchFolders' smart constructor.
data SearchFolders = SearchFolders'
  { -- | The token for the next set of results, or null if there are no more
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to be returned per request.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The AWS account ID.
    awsAccountId :: Prelude.Text,
    -- | The filters to apply to the search. Currently, you can search only by
    -- the parent folder ARN. For example,
    -- @\"Filters\": [ { \"Name\": \"PARENT_FOLDER_ARN\", \"Operator\": \"StringEquals\", \"Value\": \"arn:aws:quicksight:us-east-1:1:folder\/folderId\" } ]@.
    filters :: [FolderSearchFilter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchFolders' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'searchFolders_nextToken' - The token for the next set of results, or null if there are no more
-- results.
--
-- 'maxResults', 'searchFolders_maxResults' - The maximum number of results to be returned per request.
--
-- 'awsAccountId', 'searchFolders_awsAccountId' - The AWS account ID.
--
-- 'filters', 'searchFolders_filters' - The filters to apply to the search. Currently, you can search only by
-- the parent folder ARN. For example,
-- @\"Filters\": [ { \"Name\": \"PARENT_FOLDER_ARN\", \"Operator\": \"StringEquals\", \"Value\": \"arn:aws:quicksight:us-east-1:1:folder\/folderId\" } ]@.
newSearchFolders ::
  -- | 'awsAccountId'
  Prelude.Text ->
  SearchFolders
newSearchFolders pAwsAccountId_ =
  SearchFolders'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      awsAccountId = pAwsAccountId_,
      filters = Prelude.mempty
    }

-- | The token for the next set of results, or null if there are no more
-- results.
searchFolders_nextToken :: Lens.Lens' SearchFolders (Prelude.Maybe Prelude.Text)
searchFolders_nextToken = Lens.lens (\SearchFolders' {nextToken} -> nextToken) (\s@SearchFolders' {} a -> s {nextToken = a} :: SearchFolders)

-- | The maximum number of results to be returned per request.
searchFolders_maxResults :: Lens.Lens' SearchFolders (Prelude.Maybe Prelude.Natural)
searchFolders_maxResults = Lens.lens (\SearchFolders' {maxResults} -> maxResults) (\s@SearchFolders' {} a -> s {maxResults = a} :: SearchFolders)

-- | The AWS account ID.
searchFolders_awsAccountId :: Lens.Lens' SearchFolders Prelude.Text
searchFolders_awsAccountId = Lens.lens (\SearchFolders' {awsAccountId} -> awsAccountId) (\s@SearchFolders' {} a -> s {awsAccountId = a} :: SearchFolders)

-- | The filters to apply to the search. Currently, you can search only by
-- the parent folder ARN. For example,
-- @\"Filters\": [ { \"Name\": \"PARENT_FOLDER_ARN\", \"Operator\": \"StringEquals\", \"Value\": \"arn:aws:quicksight:us-east-1:1:folder\/folderId\" } ]@.
searchFolders_filters :: Lens.Lens' SearchFolders [FolderSearchFilter]
searchFolders_filters = Lens.lens (\SearchFolders' {filters} -> filters) (\s@SearchFolders' {} a -> s {filters = a} :: SearchFolders) Prelude.. Lens.coerced

instance Core.AWSRequest SearchFolders where
  type
    AWSResponse SearchFolders =
      SearchFoldersResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          SearchFoldersResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "FolderSummaryList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable SearchFolders

instance Prelude.NFData SearchFolders

instance Core.ToHeaders SearchFolders where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON SearchFolders where
  toJSON SearchFolders' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("Filters" Core..= filters)
          ]
      )

instance Core.ToPath SearchFolders where
  toPath SearchFolders' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/search/folders"
      ]

instance Core.ToQuery SearchFolders where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newSearchFoldersResponse' smart constructor.
data SearchFoldersResponse = SearchFoldersResponse'
  { -- | The request ID.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The token for the next set of results, or null if there are no more
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A structure that contains all of the folders in your AWS account. This
    -- structure provides basic information about the folders.
    folderSummaryList :: Prelude.Maybe [FolderSummary],
    -- | The status. If succeeded, the status is @SC_OK@.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchFoldersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'searchFoldersResponse_requestId' - The request ID.
--
-- 'nextToken', 'searchFoldersResponse_nextToken' - The token for the next set of results, or null if there are no more
-- results.
--
-- 'folderSummaryList', 'searchFoldersResponse_folderSummaryList' - A structure that contains all of the folders in your AWS account. This
-- structure provides basic information about the folders.
--
-- 'status', 'searchFoldersResponse_status' - The status. If succeeded, the status is @SC_OK@.
newSearchFoldersResponse ::
  -- | 'status'
  Prelude.Int ->
  SearchFoldersResponse
newSearchFoldersResponse pStatus_ =
  SearchFoldersResponse'
    { requestId = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      folderSummaryList = Prelude.Nothing,
      status = pStatus_
    }

-- | The request ID.
searchFoldersResponse_requestId :: Lens.Lens' SearchFoldersResponse (Prelude.Maybe Prelude.Text)
searchFoldersResponse_requestId = Lens.lens (\SearchFoldersResponse' {requestId} -> requestId) (\s@SearchFoldersResponse' {} a -> s {requestId = a} :: SearchFoldersResponse)

-- | The token for the next set of results, or null if there are no more
-- results.
searchFoldersResponse_nextToken :: Lens.Lens' SearchFoldersResponse (Prelude.Maybe Prelude.Text)
searchFoldersResponse_nextToken = Lens.lens (\SearchFoldersResponse' {nextToken} -> nextToken) (\s@SearchFoldersResponse' {} a -> s {nextToken = a} :: SearchFoldersResponse)

-- | A structure that contains all of the folders in your AWS account. This
-- structure provides basic information about the folders.
searchFoldersResponse_folderSummaryList :: Lens.Lens' SearchFoldersResponse (Prelude.Maybe [FolderSummary])
searchFoldersResponse_folderSummaryList = Lens.lens (\SearchFoldersResponse' {folderSummaryList} -> folderSummaryList) (\s@SearchFoldersResponse' {} a -> s {folderSummaryList = a} :: SearchFoldersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The status. If succeeded, the status is @SC_OK@.
searchFoldersResponse_status :: Lens.Lens' SearchFoldersResponse Prelude.Int
searchFoldersResponse_status = Lens.lens (\SearchFoldersResponse' {status} -> status) (\s@SearchFoldersResponse' {} a -> s {status = a} :: SearchFoldersResponse)

instance Prelude.NFData SearchFoldersResponse
