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
-- Module      : Network.AWS.EC2.DescribeImportImageTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays details about an import virtual machine or import snapshot
-- tasks that are already created.
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeImportImageTasks
  ( -- * Creating a Request
    DescribeImportImageTasks (..),
    newDescribeImportImageTasks,

    -- * Request Lenses
    describeImportImageTasks_filters,
    describeImportImageTasks_importTaskIds,
    describeImportImageTasks_nextToken,
    describeImportImageTasks_dryRun,
    describeImportImageTasks_maxResults,

    -- * Destructuring the Response
    DescribeImportImageTasksResponse (..),
    newDescribeImportImageTasksResponse,

    -- * Response Lenses
    describeImportImageTasksResponse_nextToken,
    describeImportImageTasksResponse_importImageTasks,
    describeImportImageTasksResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeImportImageTasks' smart constructor.
data DescribeImportImageTasks = DescribeImportImageTasks'
  { -- | Filter tasks using the @task-state@ filter and one of the following
    -- values: @active@, @completed@, @deleting@, or @deleted@.
    filters :: Prelude.Maybe [Filter],
    -- | The IDs of the import image tasks.
    importTaskIds :: Prelude.Maybe [Prelude.Text],
    -- | A token that indicates the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of results to return in a single call.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeImportImageTasks' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'describeImportImageTasks_filters' - Filter tasks using the @task-state@ filter and one of the following
-- values: @active@, @completed@, @deleting@, or @deleted@.
--
-- 'importTaskIds', 'describeImportImageTasks_importTaskIds' - The IDs of the import image tasks.
--
-- 'nextToken', 'describeImportImageTasks_nextToken' - A token that indicates the next page of results.
--
-- 'dryRun', 'describeImportImageTasks_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'describeImportImageTasks_maxResults' - The maximum number of results to return in a single call.
newDescribeImportImageTasks ::
  DescribeImportImageTasks
newDescribeImportImageTasks =
  DescribeImportImageTasks'
    { filters =
        Prelude.Nothing,
      importTaskIds = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Filter tasks using the @task-state@ filter and one of the following
-- values: @active@, @completed@, @deleting@, or @deleted@.
describeImportImageTasks_filters :: Lens.Lens' DescribeImportImageTasks (Prelude.Maybe [Filter])
describeImportImageTasks_filters = Lens.lens (\DescribeImportImageTasks' {filters} -> filters) (\s@DescribeImportImageTasks' {} a -> s {filters = a} :: DescribeImportImageTasks) Prelude.. Lens.mapping Lens.coerced

-- | The IDs of the import image tasks.
describeImportImageTasks_importTaskIds :: Lens.Lens' DescribeImportImageTasks (Prelude.Maybe [Prelude.Text])
describeImportImageTasks_importTaskIds = Lens.lens (\DescribeImportImageTasks' {importTaskIds} -> importTaskIds) (\s@DescribeImportImageTasks' {} a -> s {importTaskIds = a} :: DescribeImportImageTasks) Prelude.. Lens.mapping Lens.coerced

-- | A token that indicates the next page of results.
describeImportImageTasks_nextToken :: Lens.Lens' DescribeImportImageTasks (Prelude.Maybe Prelude.Text)
describeImportImageTasks_nextToken = Lens.lens (\DescribeImportImageTasks' {nextToken} -> nextToken) (\s@DescribeImportImageTasks' {} a -> s {nextToken = a} :: DescribeImportImageTasks)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
describeImportImageTasks_dryRun :: Lens.Lens' DescribeImportImageTasks (Prelude.Maybe Prelude.Bool)
describeImportImageTasks_dryRun = Lens.lens (\DescribeImportImageTasks' {dryRun} -> dryRun) (\s@DescribeImportImageTasks' {} a -> s {dryRun = a} :: DescribeImportImageTasks)

-- | The maximum number of results to return in a single call.
describeImportImageTasks_maxResults :: Lens.Lens' DescribeImportImageTasks (Prelude.Maybe Prelude.Int)
describeImportImageTasks_maxResults = Lens.lens (\DescribeImportImageTasks' {maxResults} -> maxResults) (\s@DescribeImportImageTasks' {} a -> s {maxResults = a} :: DescribeImportImageTasks)

instance Core.AWSPager DescribeImportImageTasks where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeImportImageTasksResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeImportImageTasksResponse_importImageTasks
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeImportImageTasks_nextToken
          Lens..~ rs
          Lens.^? describeImportImageTasksResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeImportImageTasks where
  type
    AWSResponse DescribeImportImageTasks =
      DescribeImportImageTasksResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeImportImageTasksResponse'
            Prelude.<$> (x Core..@? "nextToken")
            Prelude.<*> ( x Core..@? "importImageTaskSet"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeImportImageTasks

instance Prelude.NFData DescribeImportImageTasks

instance Core.ToHeaders DescribeImportImageTasks where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeImportImageTasks where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeImportImageTasks where
  toQuery DescribeImportImageTasks' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeImportImageTasks" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        Core.toQuery
          (Core.toQueryList "Filters" Prelude.<$> filters),
        Core.toQuery
          ( Core.toQueryList "ImportTaskId"
              Prelude.<$> importTaskIds
          ),
        "NextToken" Core.=: nextToken,
        "DryRun" Core.=: dryRun,
        "MaxResults" Core.=: maxResults
      ]

-- | /See:/ 'newDescribeImportImageTasksResponse' smart constructor.
data DescribeImportImageTasksResponse = DescribeImportImageTasksResponse'
  { -- | The token to use to get the next page of results. This value is @null@
    -- when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of zero or more import image tasks that are currently active or
    -- were completed or canceled in the previous 7 days.
    importImageTasks :: Prelude.Maybe [ImportImageTask],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeImportImageTasksResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeImportImageTasksResponse_nextToken' - The token to use to get the next page of results. This value is @null@
-- when there are no more results to return.
--
-- 'importImageTasks', 'describeImportImageTasksResponse_importImageTasks' - A list of zero or more import image tasks that are currently active or
-- were completed or canceled in the previous 7 days.
--
-- 'httpStatus', 'describeImportImageTasksResponse_httpStatus' - The response's http status code.
newDescribeImportImageTasksResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeImportImageTasksResponse
newDescribeImportImageTasksResponse pHttpStatus_ =
  DescribeImportImageTasksResponse'
    { nextToken =
        Prelude.Nothing,
      importImageTasks = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use to get the next page of results. This value is @null@
-- when there are no more results to return.
describeImportImageTasksResponse_nextToken :: Lens.Lens' DescribeImportImageTasksResponse (Prelude.Maybe Prelude.Text)
describeImportImageTasksResponse_nextToken = Lens.lens (\DescribeImportImageTasksResponse' {nextToken} -> nextToken) (\s@DescribeImportImageTasksResponse' {} a -> s {nextToken = a} :: DescribeImportImageTasksResponse)

-- | A list of zero or more import image tasks that are currently active or
-- were completed or canceled in the previous 7 days.
describeImportImageTasksResponse_importImageTasks :: Lens.Lens' DescribeImportImageTasksResponse (Prelude.Maybe [ImportImageTask])
describeImportImageTasksResponse_importImageTasks = Lens.lens (\DescribeImportImageTasksResponse' {importImageTasks} -> importImageTasks) (\s@DescribeImportImageTasksResponse' {} a -> s {importImageTasks = a} :: DescribeImportImageTasksResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeImportImageTasksResponse_httpStatus :: Lens.Lens' DescribeImportImageTasksResponse Prelude.Int
describeImportImageTasksResponse_httpStatus = Lens.lens (\DescribeImportImageTasksResponse' {httpStatus} -> httpStatus) (\s@DescribeImportImageTasksResponse' {} a -> s {httpStatus = a} :: DescribeImportImageTasksResponse)

instance
  Prelude.NFData
    DescribeImportImageTasksResponse
