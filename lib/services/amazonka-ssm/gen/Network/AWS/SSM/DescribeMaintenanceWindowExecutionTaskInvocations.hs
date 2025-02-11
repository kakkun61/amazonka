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
-- Module      : Network.AWS.SSM.DescribeMaintenanceWindowExecutionTaskInvocations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the individual task executions (one per target) for a
-- particular task run as part of a maintenance window execution.
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeMaintenanceWindowExecutionTaskInvocations
  ( -- * Creating a Request
    DescribeMaintenanceWindowExecutionTaskInvocations (..),
    newDescribeMaintenanceWindowExecutionTaskInvocations,

    -- * Request Lenses
    describeMaintenanceWindowExecutionTaskInvocations_filters,
    describeMaintenanceWindowExecutionTaskInvocations_nextToken,
    describeMaintenanceWindowExecutionTaskInvocations_maxResults,
    describeMaintenanceWindowExecutionTaskInvocations_windowExecutionId,
    describeMaintenanceWindowExecutionTaskInvocations_taskId,

    -- * Destructuring the Response
    DescribeMaintenanceWindowExecutionTaskInvocationsResponse (..),
    newDescribeMaintenanceWindowExecutionTaskInvocationsResponse,

    -- * Response Lenses
    describeMaintenanceWindowExecutionTaskInvocationsResponse_windowExecutionTaskInvocationIdentities,
    describeMaintenanceWindowExecutionTaskInvocationsResponse_nextToken,
    describeMaintenanceWindowExecutionTaskInvocationsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSM.Types

-- | /See:/ 'newDescribeMaintenanceWindowExecutionTaskInvocations' smart constructor.
data DescribeMaintenanceWindowExecutionTaskInvocations = DescribeMaintenanceWindowExecutionTaskInvocations'
  { -- | Optional filters used to scope down the returned task invocations. The
    -- supported filter key is @STATUS@ with the corresponding values
    -- @PENDING@, @IN_PROGRESS@, @SUCCESS@, @FAILED@, @TIMED_OUT@,
    -- @CANCELLING@, and @CANCELLED@.
    filters :: Prelude.Maybe [MaintenanceWindowFilter],
    -- | The token for the next set of items to return. (You received this token
    -- from a previous call.)
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to return for this call. The call also
    -- returns a token that you can specify in a subsequent call to get the
    -- next set of results.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the maintenance window execution the task is part of.
    windowExecutionId :: Prelude.Text,
    -- | The ID of the specific task in the maintenance window task that should
    -- be retrieved.
    taskId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeMaintenanceWindowExecutionTaskInvocations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'describeMaintenanceWindowExecutionTaskInvocations_filters' - Optional filters used to scope down the returned task invocations. The
-- supported filter key is @STATUS@ with the corresponding values
-- @PENDING@, @IN_PROGRESS@, @SUCCESS@, @FAILED@, @TIMED_OUT@,
-- @CANCELLING@, and @CANCELLED@.
--
-- 'nextToken', 'describeMaintenanceWindowExecutionTaskInvocations_nextToken' - The token for the next set of items to return. (You received this token
-- from a previous call.)
--
-- 'maxResults', 'describeMaintenanceWindowExecutionTaskInvocations_maxResults' - The maximum number of items to return for this call. The call also
-- returns a token that you can specify in a subsequent call to get the
-- next set of results.
--
-- 'windowExecutionId', 'describeMaintenanceWindowExecutionTaskInvocations_windowExecutionId' - The ID of the maintenance window execution the task is part of.
--
-- 'taskId', 'describeMaintenanceWindowExecutionTaskInvocations_taskId' - The ID of the specific task in the maintenance window task that should
-- be retrieved.
newDescribeMaintenanceWindowExecutionTaskInvocations ::
  -- | 'windowExecutionId'
  Prelude.Text ->
  -- | 'taskId'
  Prelude.Text ->
  DescribeMaintenanceWindowExecutionTaskInvocations
newDescribeMaintenanceWindowExecutionTaskInvocations
  pWindowExecutionId_
  pTaskId_ =
    DescribeMaintenanceWindowExecutionTaskInvocations'
      { filters =
          Prelude.Nothing,
        nextToken =
          Prelude.Nothing,
        maxResults =
          Prelude.Nothing,
        windowExecutionId =
          pWindowExecutionId_,
        taskId = pTaskId_
      }

-- | Optional filters used to scope down the returned task invocations. The
-- supported filter key is @STATUS@ with the corresponding values
-- @PENDING@, @IN_PROGRESS@, @SUCCESS@, @FAILED@, @TIMED_OUT@,
-- @CANCELLING@, and @CANCELLED@.
describeMaintenanceWindowExecutionTaskInvocations_filters :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocations (Prelude.Maybe [MaintenanceWindowFilter])
describeMaintenanceWindowExecutionTaskInvocations_filters = Lens.lens (\DescribeMaintenanceWindowExecutionTaskInvocations' {filters} -> filters) (\s@DescribeMaintenanceWindowExecutionTaskInvocations' {} a -> s {filters = a} :: DescribeMaintenanceWindowExecutionTaskInvocations) Prelude.. Lens.mapping Lens.coerced

-- | The token for the next set of items to return. (You received this token
-- from a previous call.)
describeMaintenanceWindowExecutionTaskInvocations_nextToken :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocations (Prelude.Maybe Prelude.Text)
describeMaintenanceWindowExecutionTaskInvocations_nextToken = Lens.lens (\DescribeMaintenanceWindowExecutionTaskInvocations' {nextToken} -> nextToken) (\s@DescribeMaintenanceWindowExecutionTaskInvocations' {} a -> s {nextToken = a} :: DescribeMaintenanceWindowExecutionTaskInvocations)

-- | The maximum number of items to return for this call. The call also
-- returns a token that you can specify in a subsequent call to get the
-- next set of results.
describeMaintenanceWindowExecutionTaskInvocations_maxResults :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocations (Prelude.Maybe Prelude.Natural)
describeMaintenanceWindowExecutionTaskInvocations_maxResults = Lens.lens (\DescribeMaintenanceWindowExecutionTaskInvocations' {maxResults} -> maxResults) (\s@DescribeMaintenanceWindowExecutionTaskInvocations' {} a -> s {maxResults = a} :: DescribeMaintenanceWindowExecutionTaskInvocations)

-- | The ID of the maintenance window execution the task is part of.
describeMaintenanceWindowExecutionTaskInvocations_windowExecutionId :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocations Prelude.Text
describeMaintenanceWindowExecutionTaskInvocations_windowExecutionId = Lens.lens (\DescribeMaintenanceWindowExecutionTaskInvocations' {windowExecutionId} -> windowExecutionId) (\s@DescribeMaintenanceWindowExecutionTaskInvocations' {} a -> s {windowExecutionId = a} :: DescribeMaintenanceWindowExecutionTaskInvocations)

-- | The ID of the specific task in the maintenance window task that should
-- be retrieved.
describeMaintenanceWindowExecutionTaskInvocations_taskId :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocations Prelude.Text
describeMaintenanceWindowExecutionTaskInvocations_taskId = Lens.lens (\DescribeMaintenanceWindowExecutionTaskInvocations' {taskId} -> taskId) (\s@DescribeMaintenanceWindowExecutionTaskInvocations' {} a -> s {taskId = a} :: DescribeMaintenanceWindowExecutionTaskInvocations)

instance
  Core.AWSPager
    DescribeMaintenanceWindowExecutionTaskInvocations
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeMaintenanceWindowExecutionTaskInvocationsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeMaintenanceWindowExecutionTaskInvocationsResponse_windowExecutionTaskInvocationIdentities
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeMaintenanceWindowExecutionTaskInvocations_nextToken
          Lens..~ rs
            Lens.^? describeMaintenanceWindowExecutionTaskInvocationsResponse_nextToken
              Prelude.. Lens._Just

instance
  Core.AWSRequest
    DescribeMaintenanceWindowExecutionTaskInvocations
  where
  type
    AWSResponse
      DescribeMaintenanceWindowExecutionTaskInvocations =
      DescribeMaintenanceWindowExecutionTaskInvocationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeMaintenanceWindowExecutionTaskInvocationsResponse'
            Prelude.<$> ( x Core..?> "WindowExecutionTaskInvocationIdentities"
                            Core..!@ Prelude.mempty
                        )
              Prelude.<*> (x Core..?> "NextToken")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeMaintenanceWindowExecutionTaskInvocations

instance
  Prelude.NFData
    DescribeMaintenanceWindowExecutionTaskInvocations

instance
  Core.ToHeaders
    DescribeMaintenanceWindowExecutionTaskInvocations
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonSSM.DescribeMaintenanceWindowExecutionTaskInvocations" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    DescribeMaintenanceWindowExecutionTaskInvocations
  where
  toJSON
    DescribeMaintenanceWindowExecutionTaskInvocations' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("Filters" Core..=) Prelude.<$> filters,
              ("NextToken" Core..=) Prelude.<$> nextToken,
              ("MaxResults" Core..=) Prelude.<$> maxResults,
              Prelude.Just
                ("WindowExecutionId" Core..= windowExecutionId),
              Prelude.Just ("TaskId" Core..= taskId)
            ]
        )

instance
  Core.ToPath
    DescribeMaintenanceWindowExecutionTaskInvocations
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeMaintenanceWindowExecutionTaskInvocations
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeMaintenanceWindowExecutionTaskInvocationsResponse' smart constructor.
data DescribeMaintenanceWindowExecutionTaskInvocationsResponse = DescribeMaintenanceWindowExecutionTaskInvocationsResponse'
  { -- | Information about the task invocation results per invocation.
    windowExecutionTaskInvocationIdentities :: Prelude.Maybe [MaintenanceWindowExecutionTaskInvocationIdentity],
    -- | The token to use when requesting the next set of items. If there are no
    -- additional items to return, the string is empty.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeMaintenanceWindowExecutionTaskInvocationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'windowExecutionTaskInvocationIdentities', 'describeMaintenanceWindowExecutionTaskInvocationsResponse_windowExecutionTaskInvocationIdentities' - Information about the task invocation results per invocation.
--
-- 'nextToken', 'describeMaintenanceWindowExecutionTaskInvocationsResponse_nextToken' - The token to use when requesting the next set of items. If there are no
-- additional items to return, the string is empty.
--
-- 'httpStatus', 'describeMaintenanceWindowExecutionTaskInvocationsResponse_httpStatus' - The response's http status code.
newDescribeMaintenanceWindowExecutionTaskInvocationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeMaintenanceWindowExecutionTaskInvocationsResponse
newDescribeMaintenanceWindowExecutionTaskInvocationsResponse
  pHttpStatus_ =
    DescribeMaintenanceWindowExecutionTaskInvocationsResponse'
      { windowExecutionTaskInvocationIdentities =
          Prelude.Nothing,
        nextToken =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | Information about the task invocation results per invocation.
describeMaintenanceWindowExecutionTaskInvocationsResponse_windowExecutionTaskInvocationIdentities :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocationsResponse (Prelude.Maybe [MaintenanceWindowExecutionTaskInvocationIdentity])
describeMaintenanceWindowExecutionTaskInvocationsResponse_windowExecutionTaskInvocationIdentities = Lens.lens (\DescribeMaintenanceWindowExecutionTaskInvocationsResponse' {windowExecutionTaskInvocationIdentities} -> windowExecutionTaskInvocationIdentities) (\s@DescribeMaintenanceWindowExecutionTaskInvocationsResponse' {} a -> s {windowExecutionTaskInvocationIdentities = a} :: DescribeMaintenanceWindowExecutionTaskInvocationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token to use when requesting the next set of items. If there are no
-- additional items to return, the string is empty.
describeMaintenanceWindowExecutionTaskInvocationsResponse_nextToken :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocationsResponse (Prelude.Maybe Prelude.Text)
describeMaintenanceWindowExecutionTaskInvocationsResponse_nextToken = Lens.lens (\DescribeMaintenanceWindowExecutionTaskInvocationsResponse' {nextToken} -> nextToken) (\s@DescribeMaintenanceWindowExecutionTaskInvocationsResponse' {} a -> s {nextToken = a} :: DescribeMaintenanceWindowExecutionTaskInvocationsResponse)

-- | The response's http status code.
describeMaintenanceWindowExecutionTaskInvocationsResponse_httpStatus :: Lens.Lens' DescribeMaintenanceWindowExecutionTaskInvocationsResponse Prelude.Int
describeMaintenanceWindowExecutionTaskInvocationsResponse_httpStatus = Lens.lens (\DescribeMaintenanceWindowExecutionTaskInvocationsResponse' {httpStatus} -> httpStatus) (\s@DescribeMaintenanceWindowExecutionTaskInvocationsResponse' {} a -> s {httpStatus = a} :: DescribeMaintenanceWindowExecutionTaskInvocationsResponse)

instance
  Prelude.NFData
    DescribeMaintenanceWindowExecutionTaskInvocationsResponse
