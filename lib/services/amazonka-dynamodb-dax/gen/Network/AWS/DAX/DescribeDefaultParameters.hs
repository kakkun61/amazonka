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
-- Module      : Network.AWS.DAX.DescribeDefaultParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the default system parameter information for the DAX caching
-- software.
--
-- This operation returns paginated results.
module Network.AWS.DAX.DescribeDefaultParameters
  ( -- * Creating a Request
    DescribeDefaultParameters (..),
    newDescribeDefaultParameters,

    -- * Request Lenses
    describeDefaultParameters_nextToken,
    describeDefaultParameters_maxResults,

    -- * Destructuring the Response
    DescribeDefaultParametersResponse (..),
    newDescribeDefaultParametersResponse,

    -- * Response Lenses
    describeDefaultParametersResponse_nextToken,
    describeDefaultParametersResponse_parameters,
    describeDefaultParametersResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DAX.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeDefaultParameters' smart constructor.
data DescribeDefaultParameters = DescribeDefaultParameters'
  { -- | An optional token returned from a prior request. Use this token for
    -- pagination of results from this action. If this parameter is specified,
    -- the response includes only results beyond the token, up to the value
    -- specified by @MaxResults@.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to include in the response. If more
    -- results exist than the specified @MaxResults@ value, a token is included
    -- in the response so that the remaining results can be retrieved.
    --
    -- The value for @MaxResults@ must be between 20 and 100.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDefaultParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeDefaultParameters_nextToken' - An optional token returned from a prior request. Use this token for
-- pagination of results from this action. If this parameter is specified,
-- the response includes only results beyond the token, up to the value
-- specified by @MaxResults@.
--
-- 'maxResults', 'describeDefaultParameters_maxResults' - The maximum number of results to include in the response. If more
-- results exist than the specified @MaxResults@ value, a token is included
-- in the response so that the remaining results can be retrieved.
--
-- The value for @MaxResults@ must be between 20 and 100.
newDescribeDefaultParameters ::
  DescribeDefaultParameters
newDescribeDefaultParameters =
  DescribeDefaultParameters'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | An optional token returned from a prior request. Use this token for
-- pagination of results from this action. If this parameter is specified,
-- the response includes only results beyond the token, up to the value
-- specified by @MaxResults@.
describeDefaultParameters_nextToken :: Lens.Lens' DescribeDefaultParameters (Prelude.Maybe Prelude.Text)
describeDefaultParameters_nextToken = Lens.lens (\DescribeDefaultParameters' {nextToken} -> nextToken) (\s@DescribeDefaultParameters' {} a -> s {nextToken = a} :: DescribeDefaultParameters)

-- | The maximum number of results to include in the response. If more
-- results exist than the specified @MaxResults@ value, a token is included
-- in the response so that the remaining results can be retrieved.
--
-- The value for @MaxResults@ must be between 20 and 100.
describeDefaultParameters_maxResults :: Lens.Lens' DescribeDefaultParameters (Prelude.Maybe Prelude.Int)
describeDefaultParameters_maxResults = Lens.lens (\DescribeDefaultParameters' {maxResults} -> maxResults) (\s@DescribeDefaultParameters' {} a -> s {maxResults = a} :: DescribeDefaultParameters)

instance Core.AWSPager DescribeDefaultParameters where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeDefaultParametersResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeDefaultParametersResponse_parameters
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeDefaultParameters_nextToken
          Lens..~ rs
          Lens.^? describeDefaultParametersResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeDefaultParameters where
  type
    AWSResponse DescribeDefaultParameters =
      DescribeDefaultParametersResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDefaultParametersResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Parameters" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDefaultParameters

instance Prelude.NFData DescribeDefaultParameters

instance Core.ToHeaders DescribeDefaultParameters where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonDAXV3.DescribeDefaultParameters" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeDefaultParameters where
  toJSON DescribeDefaultParameters' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath DescribeDefaultParameters where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeDefaultParameters where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeDefaultParametersResponse' smart constructor.
data DescribeDefaultParametersResponse = DescribeDefaultParametersResponse'
  { -- | Provides an identifier to allow retrieval of paginated results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of parameters. Each element in the list represents one parameter.
    parameters :: Prelude.Maybe [Parameter],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDefaultParametersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeDefaultParametersResponse_nextToken' - Provides an identifier to allow retrieval of paginated results.
--
-- 'parameters', 'describeDefaultParametersResponse_parameters' - A list of parameters. Each element in the list represents one parameter.
--
-- 'httpStatus', 'describeDefaultParametersResponse_httpStatus' - The response's http status code.
newDescribeDefaultParametersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDefaultParametersResponse
newDescribeDefaultParametersResponse pHttpStatus_ =
  DescribeDefaultParametersResponse'
    { nextToken =
        Prelude.Nothing,
      parameters = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Provides an identifier to allow retrieval of paginated results.
describeDefaultParametersResponse_nextToken :: Lens.Lens' DescribeDefaultParametersResponse (Prelude.Maybe Prelude.Text)
describeDefaultParametersResponse_nextToken = Lens.lens (\DescribeDefaultParametersResponse' {nextToken} -> nextToken) (\s@DescribeDefaultParametersResponse' {} a -> s {nextToken = a} :: DescribeDefaultParametersResponse)

-- | A list of parameters. Each element in the list represents one parameter.
describeDefaultParametersResponse_parameters :: Lens.Lens' DescribeDefaultParametersResponse (Prelude.Maybe [Parameter])
describeDefaultParametersResponse_parameters = Lens.lens (\DescribeDefaultParametersResponse' {parameters} -> parameters) (\s@DescribeDefaultParametersResponse' {} a -> s {parameters = a} :: DescribeDefaultParametersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeDefaultParametersResponse_httpStatus :: Lens.Lens' DescribeDefaultParametersResponse Prelude.Int
describeDefaultParametersResponse_httpStatus = Lens.lens (\DescribeDefaultParametersResponse' {httpStatus} -> httpStatus) (\s@DescribeDefaultParametersResponse' {} a -> s {httpStatus = a} :: DescribeDefaultParametersResponse)

instance
  Prelude.NFData
    DescribeDefaultParametersResponse
