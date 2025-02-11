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
-- Module      : Network.AWS.MemoryDb.DescribeParameterGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of parameter group descriptions. If a parameter group
-- name is specified, the list contains only the descriptions for that
-- group.
module Network.AWS.MemoryDb.DescribeParameterGroups
  ( -- * Creating a Request
    DescribeParameterGroups (..),
    newDescribeParameterGroups,

    -- * Request Lenses
    describeParameterGroups_nextToken,
    describeParameterGroups_maxResults,
    describeParameterGroups_parameterGroupName,

    -- * Destructuring the Response
    DescribeParameterGroupsResponse (..),
    newDescribeParameterGroupsResponse,

    -- * Response Lenses
    describeParameterGroupsResponse_nextToken,
    describeParameterGroupsResponse_parameterGroups,
    describeParameterGroupsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MemoryDb.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeParameterGroups' smart constructor.
data DescribeParameterGroups = DescribeParameterGroups'
  { -- | An optional argument to pass in case the total number of records exceeds
    -- the value of MaxResults. If nextToken is returned, there are more
    -- results available. The value of nextToken is a unique pagination token
    -- for each page. Make the call again using the returned token to retrieve
    -- the next page. Keep all other arguments unchanged.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified MaxResults value, a token is included
    -- in the response so that the remaining results can be retrieved.
    maxResults :: Prelude.Maybe Prelude.Int,
    -- | The name of a specific parameter group to return details for.
    parameterGroupName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeParameterGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeParameterGroups_nextToken' - An optional argument to pass in case the total number of records exceeds
-- the value of MaxResults. If nextToken is returned, there are more
-- results available. The value of nextToken is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
--
-- 'maxResults', 'describeParameterGroups_maxResults' - The maximum number of records to include in the response. If more
-- records exist than the specified MaxResults value, a token is included
-- in the response so that the remaining results can be retrieved.
--
-- 'parameterGroupName', 'describeParameterGroups_parameterGroupName' - The name of a specific parameter group to return details for.
newDescribeParameterGroups ::
  DescribeParameterGroups
newDescribeParameterGroups =
  DescribeParameterGroups'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      parameterGroupName = Prelude.Nothing
    }

-- | An optional argument to pass in case the total number of records exceeds
-- the value of MaxResults. If nextToken is returned, there are more
-- results available. The value of nextToken is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
describeParameterGroups_nextToken :: Lens.Lens' DescribeParameterGroups (Prelude.Maybe Prelude.Text)
describeParameterGroups_nextToken = Lens.lens (\DescribeParameterGroups' {nextToken} -> nextToken) (\s@DescribeParameterGroups' {} a -> s {nextToken = a} :: DescribeParameterGroups)

-- | The maximum number of records to include in the response. If more
-- records exist than the specified MaxResults value, a token is included
-- in the response so that the remaining results can be retrieved.
describeParameterGroups_maxResults :: Lens.Lens' DescribeParameterGroups (Prelude.Maybe Prelude.Int)
describeParameterGroups_maxResults = Lens.lens (\DescribeParameterGroups' {maxResults} -> maxResults) (\s@DescribeParameterGroups' {} a -> s {maxResults = a} :: DescribeParameterGroups)

-- | The name of a specific parameter group to return details for.
describeParameterGroups_parameterGroupName :: Lens.Lens' DescribeParameterGroups (Prelude.Maybe Prelude.Text)
describeParameterGroups_parameterGroupName = Lens.lens (\DescribeParameterGroups' {parameterGroupName} -> parameterGroupName) (\s@DescribeParameterGroups' {} a -> s {parameterGroupName = a} :: DescribeParameterGroups)

instance Core.AWSRequest DescribeParameterGroups where
  type
    AWSResponse DescribeParameterGroups =
      DescribeParameterGroupsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeParameterGroupsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "ParameterGroups"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeParameterGroups

instance Prelude.NFData DescribeParameterGroups

instance Core.ToHeaders DescribeParameterGroups where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonMemoryDB.DescribeParameterGroups" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeParameterGroups where
  toJSON DescribeParameterGroups' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("ParameterGroupName" Core..=)
              Prelude.<$> parameterGroupName
          ]
      )

instance Core.ToPath DescribeParameterGroups where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeParameterGroups where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeParameterGroupsResponse' smart constructor.
data DescribeParameterGroupsResponse = DescribeParameterGroupsResponse'
  { -- | An optional argument to pass in case the total number of records exceeds
    -- the value of MaxResults. If nextToken is returned, there are more
    -- results available. The value of nextToken is a unique pagination token
    -- for each page. Make the call again using the returned token to retrieve
    -- the next page. Keep all other arguments unchanged.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of parameter groups. Each element in the list contains detailed
    -- information about one parameter group.
    parameterGroups :: Prelude.Maybe [ParameterGroup],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeParameterGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeParameterGroupsResponse_nextToken' - An optional argument to pass in case the total number of records exceeds
-- the value of MaxResults. If nextToken is returned, there are more
-- results available. The value of nextToken is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
--
-- 'parameterGroups', 'describeParameterGroupsResponse_parameterGroups' - A list of parameter groups. Each element in the list contains detailed
-- information about one parameter group.
--
-- 'httpStatus', 'describeParameterGroupsResponse_httpStatus' - The response's http status code.
newDescribeParameterGroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeParameterGroupsResponse
newDescribeParameterGroupsResponse pHttpStatus_ =
  DescribeParameterGroupsResponse'
    { nextToken =
        Prelude.Nothing,
      parameterGroups = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An optional argument to pass in case the total number of records exceeds
-- the value of MaxResults. If nextToken is returned, there are more
-- results available. The value of nextToken is a unique pagination token
-- for each page. Make the call again using the returned token to retrieve
-- the next page. Keep all other arguments unchanged.
describeParameterGroupsResponse_nextToken :: Lens.Lens' DescribeParameterGroupsResponse (Prelude.Maybe Prelude.Text)
describeParameterGroupsResponse_nextToken = Lens.lens (\DescribeParameterGroupsResponse' {nextToken} -> nextToken) (\s@DescribeParameterGroupsResponse' {} a -> s {nextToken = a} :: DescribeParameterGroupsResponse)

-- | A list of parameter groups. Each element in the list contains detailed
-- information about one parameter group.
describeParameterGroupsResponse_parameterGroups :: Lens.Lens' DescribeParameterGroupsResponse (Prelude.Maybe [ParameterGroup])
describeParameterGroupsResponse_parameterGroups = Lens.lens (\DescribeParameterGroupsResponse' {parameterGroups} -> parameterGroups) (\s@DescribeParameterGroupsResponse' {} a -> s {parameterGroups = a} :: DescribeParameterGroupsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeParameterGroupsResponse_httpStatus :: Lens.Lens' DescribeParameterGroupsResponse Prelude.Int
describeParameterGroupsResponse_httpStatus = Lens.lens (\DescribeParameterGroupsResponse' {httpStatus} -> httpStatus) (\s@DescribeParameterGroupsResponse' {} a -> s {httpStatus = a} :: DescribeParameterGroupsResponse)

instance
  Prelude.NFData
    DescribeParameterGroupsResponse
