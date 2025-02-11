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
-- Module      : Network.AWS.Backup.ListBackupPlanVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns version metadata of your backup plans, including Amazon Resource
-- Names (ARNs), backup plan IDs, creation and deletion dates, plan names,
-- and version IDs.
module Network.AWS.Backup.ListBackupPlanVersions
  ( -- * Creating a Request
    ListBackupPlanVersions (..),
    newListBackupPlanVersions,

    -- * Request Lenses
    listBackupPlanVersions_nextToken,
    listBackupPlanVersions_maxResults,
    listBackupPlanVersions_backupPlanId,

    -- * Destructuring the Response
    ListBackupPlanVersionsResponse (..),
    newListBackupPlanVersionsResponse,

    -- * Response Lenses
    listBackupPlanVersionsResponse_backupPlanVersionsList,
    listBackupPlanVersionsResponse_nextToken,
    listBackupPlanVersionsResponse_httpStatus,
  )
where

import Network.AWS.Backup.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListBackupPlanVersions' smart constructor.
data ListBackupPlanVersions = ListBackupPlanVersions'
  { -- | The next item following a partial list of returned items. For example,
    -- if a request is made to return @maxResults@ number of items, @NextToken@
    -- allows you to return more items in your list starting at the location
    -- pointed to by the next token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to be returned.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Uniquely identifies a backup plan.
    backupPlanId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBackupPlanVersions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBackupPlanVersions_nextToken' - The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
--
-- 'maxResults', 'listBackupPlanVersions_maxResults' - The maximum number of items to be returned.
--
-- 'backupPlanId', 'listBackupPlanVersions_backupPlanId' - Uniquely identifies a backup plan.
newListBackupPlanVersions ::
  -- | 'backupPlanId'
  Prelude.Text ->
  ListBackupPlanVersions
newListBackupPlanVersions pBackupPlanId_ =
  ListBackupPlanVersions'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      backupPlanId = pBackupPlanId_
    }

-- | The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
listBackupPlanVersions_nextToken :: Lens.Lens' ListBackupPlanVersions (Prelude.Maybe Prelude.Text)
listBackupPlanVersions_nextToken = Lens.lens (\ListBackupPlanVersions' {nextToken} -> nextToken) (\s@ListBackupPlanVersions' {} a -> s {nextToken = a} :: ListBackupPlanVersions)

-- | The maximum number of items to be returned.
listBackupPlanVersions_maxResults :: Lens.Lens' ListBackupPlanVersions (Prelude.Maybe Prelude.Natural)
listBackupPlanVersions_maxResults = Lens.lens (\ListBackupPlanVersions' {maxResults} -> maxResults) (\s@ListBackupPlanVersions' {} a -> s {maxResults = a} :: ListBackupPlanVersions)

-- | Uniquely identifies a backup plan.
listBackupPlanVersions_backupPlanId :: Lens.Lens' ListBackupPlanVersions Prelude.Text
listBackupPlanVersions_backupPlanId = Lens.lens (\ListBackupPlanVersions' {backupPlanId} -> backupPlanId) (\s@ListBackupPlanVersions' {} a -> s {backupPlanId = a} :: ListBackupPlanVersions)

instance Core.AWSRequest ListBackupPlanVersions where
  type
    AWSResponse ListBackupPlanVersions =
      ListBackupPlanVersionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListBackupPlanVersionsResponse'
            Prelude.<$> ( x Core..?> "BackupPlanVersionsList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListBackupPlanVersions

instance Prelude.NFData ListBackupPlanVersions

instance Core.ToHeaders ListBackupPlanVersions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListBackupPlanVersions where
  toPath ListBackupPlanVersions' {..} =
    Prelude.mconcat
      [ "/backup/plans/",
        Core.toBS backupPlanId,
        "/versions/"
      ]

instance Core.ToQuery ListBackupPlanVersions where
  toQuery ListBackupPlanVersions' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListBackupPlanVersionsResponse' smart constructor.
data ListBackupPlanVersionsResponse = ListBackupPlanVersionsResponse'
  { -- | An array of version list items containing metadata about your backup
    -- plans.
    backupPlanVersionsList :: Prelude.Maybe [BackupPlansListMember],
    -- | The next item following a partial list of returned items. For example,
    -- if a request is made to return @maxResults@ number of items, @NextToken@
    -- allows you to return more items in your list starting at the location
    -- pointed to by the next token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBackupPlanVersionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupPlanVersionsList', 'listBackupPlanVersionsResponse_backupPlanVersionsList' - An array of version list items containing metadata about your backup
-- plans.
--
-- 'nextToken', 'listBackupPlanVersionsResponse_nextToken' - The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
--
-- 'httpStatus', 'listBackupPlanVersionsResponse_httpStatus' - The response's http status code.
newListBackupPlanVersionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListBackupPlanVersionsResponse
newListBackupPlanVersionsResponse pHttpStatus_ =
  ListBackupPlanVersionsResponse'
    { backupPlanVersionsList =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of version list items containing metadata about your backup
-- plans.
listBackupPlanVersionsResponse_backupPlanVersionsList :: Lens.Lens' ListBackupPlanVersionsResponse (Prelude.Maybe [BackupPlansListMember])
listBackupPlanVersionsResponse_backupPlanVersionsList = Lens.lens (\ListBackupPlanVersionsResponse' {backupPlanVersionsList} -> backupPlanVersionsList) (\s@ListBackupPlanVersionsResponse' {} a -> s {backupPlanVersionsList = a} :: ListBackupPlanVersionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The next item following a partial list of returned items. For example,
-- if a request is made to return @maxResults@ number of items, @NextToken@
-- allows you to return more items in your list starting at the location
-- pointed to by the next token.
listBackupPlanVersionsResponse_nextToken :: Lens.Lens' ListBackupPlanVersionsResponse (Prelude.Maybe Prelude.Text)
listBackupPlanVersionsResponse_nextToken = Lens.lens (\ListBackupPlanVersionsResponse' {nextToken} -> nextToken) (\s@ListBackupPlanVersionsResponse' {} a -> s {nextToken = a} :: ListBackupPlanVersionsResponse)

-- | The response's http status code.
listBackupPlanVersionsResponse_httpStatus :: Lens.Lens' ListBackupPlanVersionsResponse Prelude.Int
listBackupPlanVersionsResponse_httpStatus = Lens.lens (\ListBackupPlanVersionsResponse' {httpStatus} -> httpStatus) (\s@ListBackupPlanVersionsResponse' {} a -> s {httpStatus = a} :: ListBackupPlanVersionsResponse)

instance
  Prelude.NFData
    ListBackupPlanVersionsResponse
