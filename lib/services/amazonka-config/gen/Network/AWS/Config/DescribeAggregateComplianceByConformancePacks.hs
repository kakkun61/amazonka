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
-- Module      : Network.AWS.Config.DescribeAggregateComplianceByConformancePacks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the conformance packs and their associated compliance
-- status with the count of compliant and noncompliant Config rules within
-- each conformance pack. Also returns the total rule count which includes
-- compliant rules, noncompliant rules, and rules that cannot be evaluated
-- due to insufficient data.
--
-- The results can return an empty result page, but if you have a
-- @nextToken@, the results are displayed on the next page.
--
-- This operation returns paginated results.
module Network.AWS.Config.DescribeAggregateComplianceByConformancePacks
  ( -- * Creating a Request
    DescribeAggregateComplianceByConformancePacks (..),
    newDescribeAggregateComplianceByConformancePacks,

    -- * Request Lenses
    describeAggregateComplianceByConformancePacks_filters,
    describeAggregateComplianceByConformancePacks_nextToken,
    describeAggregateComplianceByConformancePacks_limit,
    describeAggregateComplianceByConformancePacks_configurationAggregatorName,

    -- * Destructuring the Response
    DescribeAggregateComplianceByConformancePacksResponse (..),
    newDescribeAggregateComplianceByConformancePacksResponse,

    -- * Response Lenses
    describeAggregateComplianceByConformancePacksResponse_aggregateComplianceByConformancePacks,
    describeAggregateComplianceByConformancePacksResponse_nextToken,
    describeAggregateComplianceByConformancePacksResponse_httpStatus,
  )
where

import Network.AWS.Config.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeAggregateComplianceByConformancePacks' smart constructor.
data DescribeAggregateComplianceByConformancePacks = DescribeAggregateComplianceByConformancePacks'
  { -- | Filters the result by @AggregateConformancePackComplianceFilters@
    -- object.
    filters :: Prelude.Maybe AggregateConformancePackComplianceFilters,
    -- | The @nextToken@ string returned on a previous page that you use to get
    -- the next page of results in a paginated response.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of conformance packs compliance details returned on
    -- each page. The default is maximum. If you specify 0, Config uses the
    -- default.
    limit :: Prelude.Maybe Prelude.Natural,
    -- | The name of the configuration aggregator.
    configurationAggregatorName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAggregateComplianceByConformancePacks' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'describeAggregateComplianceByConformancePacks_filters' - Filters the result by @AggregateConformancePackComplianceFilters@
-- object.
--
-- 'nextToken', 'describeAggregateComplianceByConformancePacks_nextToken' - The @nextToken@ string returned on a previous page that you use to get
-- the next page of results in a paginated response.
--
-- 'limit', 'describeAggregateComplianceByConformancePacks_limit' - The maximum number of conformance packs compliance details returned on
-- each page. The default is maximum. If you specify 0, Config uses the
-- default.
--
-- 'configurationAggregatorName', 'describeAggregateComplianceByConformancePacks_configurationAggregatorName' - The name of the configuration aggregator.
newDescribeAggregateComplianceByConformancePacks ::
  -- | 'configurationAggregatorName'
  Prelude.Text ->
  DescribeAggregateComplianceByConformancePacks
newDescribeAggregateComplianceByConformancePacks
  pConfigurationAggregatorName_ =
    DescribeAggregateComplianceByConformancePacks'
      { filters =
          Prelude.Nothing,
        nextToken = Prelude.Nothing,
        limit = Prelude.Nothing,
        configurationAggregatorName =
          pConfigurationAggregatorName_
      }

-- | Filters the result by @AggregateConformancePackComplianceFilters@
-- object.
describeAggregateComplianceByConformancePacks_filters :: Lens.Lens' DescribeAggregateComplianceByConformancePacks (Prelude.Maybe AggregateConformancePackComplianceFilters)
describeAggregateComplianceByConformancePacks_filters = Lens.lens (\DescribeAggregateComplianceByConformancePacks' {filters} -> filters) (\s@DescribeAggregateComplianceByConformancePacks' {} a -> s {filters = a} :: DescribeAggregateComplianceByConformancePacks)

-- | The @nextToken@ string returned on a previous page that you use to get
-- the next page of results in a paginated response.
describeAggregateComplianceByConformancePacks_nextToken :: Lens.Lens' DescribeAggregateComplianceByConformancePacks (Prelude.Maybe Prelude.Text)
describeAggregateComplianceByConformancePacks_nextToken = Lens.lens (\DescribeAggregateComplianceByConformancePacks' {nextToken} -> nextToken) (\s@DescribeAggregateComplianceByConformancePacks' {} a -> s {nextToken = a} :: DescribeAggregateComplianceByConformancePacks)

-- | The maximum number of conformance packs compliance details returned on
-- each page. The default is maximum. If you specify 0, Config uses the
-- default.
describeAggregateComplianceByConformancePacks_limit :: Lens.Lens' DescribeAggregateComplianceByConformancePacks (Prelude.Maybe Prelude.Natural)
describeAggregateComplianceByConformancePacks_limit = Lens.lens (\DescribeAggregateComplianceByConformancePacks' {limit} -> limit) (\s@DescribeAggregateComplianceByConformancePacks' {} a -> s {limit = a} :: DescribeAggregateComplianceByConformancePacks)

-- | The name of the configuration aggregator.
describeAggregateComplianceByConformancePacks_configurationAggregatorName :: Lens.Lens' DescribeAggregateComplianceByConformancePacks Prelude.Text
describeAggregateComplianceByConformancePacks_configurationAggregatorName = Lens.lens (\DescribeAggregateComplianceByConformancePacks' {configurationAggregatorName} -> configurationAggregatorName) (\s@DescribeAggregateComplianceByConformancePacks' {} a -> s {configurationAggregatorName = a} :: DescribeAggregateComplianceByConformancePacks)

instance
  Core.AWSPager
    DescribeAggregateComplianceByConformancePacks
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeAggregateComplianceByConformancePacksResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeAggregateComplianceByConformancePacksResponse_aggregateComplianceByConformancePacks
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeAggregateComplianceByConformancePacks_nextToken
          Lens..~ rs
            Lens.^? describeAggregateComplianceByConformancePacksResponse_nextToken
              Prelude.. Lens._Just

instance
  Core.AWSRequest
    DescribeAggregateComplianceByConformancePacks
  where
  type
    AWSResponse
      DescribeAggregateComplianceByConformancePacks =
      DescribeAggregateComplianceByConformancePacksResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAggregateComplianceByConformancePacksResponse'
            Prelude.<$> ( x Core..?> "AggregateComplianceByConformancePacks"
                            Core..!@ Prelude.mempty
                        )
              Prelude.<*> (x Core..?> "NextToken")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeAggregateComplianceByConformancePacks

instance
  Prelude.NFData
    DescribeAggregateComplianceByConformancePacks

instance
  Core.ToHeaders
    DescribeAggregateComplianceByConformancePacks
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StarlingDoveService.DescribeAggregateComplianceByConformancePacks" ::
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
    DescribeAggregateComplianceByConformancePacks
  where
  toJSON
    DescribeAggregateComplianceByConformancePacks' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("Filters" Core..=) Prelude.<$> filters,
              ("NextToken" Core..=) Prelude.<$> nextToken,
              ("Limit" Core..=) Prelude.<$> limit,
              Prelude.Just
                ( "ConfigurationAggregatorName"
                    Core..= configurationAggregatorName
                )
            ]
        )

instance
  Core.ToPath
    DescribeAggregateComplianceByConformancePacks
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeAggregateComplianceByConformancePacks
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAggregateComplianceByConformancePacksResponse' smart constructor.
data DescribeAggregateComplianceByConformancePacksResponse = DescribeAggregateComplianceByConformancePacksResponse'
  { -- | Returns the @AggregateComplianceByConformancePack@ object.
    aggregateComplianceByConformancePacks :: Prelude.Maybe [AggregateComplianceByConformancePack],
    -- | The @nextToken@ string returned on a previous page that you use to get
    -- the next page of results in a paginated response.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAggregateComplianceByConformancePacksResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'aggregateComplianceByConformancePacks', 'describeAggregateComplianceByConformancePacksResponse_aggregateComplianceByConformancePacks' - Returns the @AggregateComplianceByConformancePack@ object.
--
-- 'nextToken', 'describeAggregateComplianceByConformancePacksResponse_nextToken' - The @nextToken@ string returned on a previous page that you use to get
-- the next page of results in a paginated response.
--
-- 'httpStatus', 'describeAggregateComplianceByConformancePacksResponse_httpStatus' - The response's http status code.
newDescribeAggregateComplianceByConformancePacksResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAggregateComplianceByConformancePacksResponse
newDescribeAggregateComplianceByConformancePacksResponse
  pHttpStatus_ =
    DescribeAggregateComplianceByConformancePacksResponse'
      { aggregateComplianceByConformancePacks =
          Prelude.Nothing,
        nextToken =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | Returns the @AggregateComplianceByConformancePack@ object.
describeAggregateComplianceByConformancePacksResponse_aggregateComplianceByConformancePacks :: Lens.Lens' DescribeAggregateComplianceByConformancePacksResponse (Prelude.Maybe [AggregateComplianceByConformancePack])
describeAggregateComplianceByConformancePacksResponse_aggregateComplianceByConformancePacks = Lens.lens (\DescribeAggregateComplianceByConformancePacksResponse' {aggregateComplianceByConformancePacks} -> aggregateComplianceByConformancePacks) (\s@DescribeAggregateComplianceByConformancePacksResponse' {} a -> s {aggregateComplianceByConformancePacks = a} :: DescribeAggregateComplianceByConformancePacksResponse) Prelude.. Lens.mapping Lens.coerced

-- | The @nextToken@ string returned on a previous page that you use to get
-- the next page of results in a paginated response.
describeAggregateComplianceByConformancePacksResponse_nextToken :: Lens.Lens' DescribeAggregateComplianceByConformancePacksResponse (Prelude.Maybe Prelude.Text)
describeAggregateComplianceByConformancePacksResponse_nextToken = Lens.lens (\DescribeAggregateComplianceByConformancePacksResponse' {nextToken} -> nextToken) (\s@DescribeAggregateComplianceByConformancePacksResponse' {} a -> s {nextToken = a} :: DescribeAggregateComplianceByConformancePacksResponse)

-- | The response's http status code.
describeAggregateComplianceByConformancePacksResponse_httpStatus :: Lens.Lens' DescribeAggregateComplianceByConformancePacksResponse Prelude.Int
describeAggregateComplianceByConformancePacksResponse_httpStatus = Lens.lens (\DescribeAggregateComplianceByConformancePacksResponse' {httpStatus} -> httpStatus) (\s@DescribeAggregateComplianceByConformancePacksResponse' {} a -> s {httpStatus = a} :: DescribeAggregateComplianceByConformancePacksResponse)

instance
  Prelude.NFData
    DescribeAggregateComplianceByConformancePacksResponse
