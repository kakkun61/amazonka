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
-- Module      : Network.AWS.DocumentDB.DescribeOrderableDBInstanceOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of orderable instance options for the specified engine.
--
-- This operation returns paginated results.
module Network.AWS.DocumentDB.DescribeOrderableDBInstanceOptions
  ( -- * Creating a Request
    DescribeOrderableDBInstanceOptions (..),
    newDescribeOrderableDBInstanceOptions,

    -- * Request Lenses
    describeOrderableDBInstanceOptions_engineVersion,
    describeOrderableDBInstanceOptions_filters,
    describeOrderableDBInstanceOptions_dbInstanceClass,
    describeOrderableDBInstanceOptions_licenseModel,
    describeOrderableDBInstanceOptions_marker,
    describeOrderableDBInstanceOptions_maxRecords,
    describeOrderableDBInstanceOptions_vpc,
    describeOrderableDBInstanceOptions_engine,

    -- * Destructuring the Response
    DescribeOrderableDBInstanceOptionsResponse (..),
    newDescribeOrderableDBInstanceOptionsResponse,

    -- * Response Lenses
    describeOrderableDBInstanceOptionsResponse_orderableDBInstanceOptions,
    describeOrderableDBInstanceOptionsResponse_marker,
    describeOrderableDBInstanceOptionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DocumentDB.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input to DescribeOrderableDBInstanceOptions.
--
-- /See:/ 'newDescribeOrderableDBInstanceOptions' smart constructor.
data DescribeOrderableDBInstanceOptions = DescribeOrderableDBInstanceOptions'
  { -- | The engine version filter value. Specify this parameter to show only the
    -- available offerings that match the specified engine version.
    engineVersion :: Prelude.Maybe Prelude.Text,
    -- | This parameter is not currently supported.
    filters :: Prelude.Maybe [Filter],
    -- | The instance class filter value. Specify this parameter to show only the
    -- available offerings that match the specified instance class.
    dbInstanceClass :: Prelude.Maybe Prelude.Text,
    -- | The license model filter value. Specify this parameter to show only the
    -- available offerings that match the specified license model.
    licenseModel :: Prelude.Maybe Prelude.Text,
    -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a pagination token
    -- (marker) is included in the response so that the remaining results can
    -- be retrieved.
    --
    -- Default: 100
    --
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Prelude.Maybe Prelude.Int,
    -- | The virtual private cloud (VPC) filter value. Specify this parameter to
    -- show only the available VPC or non-VPC offerings.
    vpc :: Prelude.Maybe Prelude.Bool,
    -- | The name of the engine to retrieve instance options for.
    engine :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeOrderableDBInstanceOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'engineVersion', 'describeOrderableDBInstanceOptions_engineVersion' - The engine version filter value. Specify this parameter to show only the
-- available offerings that match the specified engine version.
--
-- 'filters', 'describeOrderableDBInstanceOptions_filters' - This parameter is not currently supported.
--
-- 'dbInstanceClass', 'describeOrderableDBInstanceOptions_dbInstanceClass' - The instance class filter value. Specify this parameter to show only the
-- available offerings that match the specified instance class.
--
-- 'licenseModel', 'describeOrderableDBInstanceOptions_licenseModel' - The license model filter value. Specify this parameter to show only the
-- available offerings that match the specified license model.
--
-- 'marker', 'describeOrderableDBInstanceOptions_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'maxRecords', 'describeOrderableDBInstanceOptions_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- (marker) is included in the response so that the remaining results can
-- be retrieved.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
--
-- 'vpc', 'describeOrderableDBInstanceOptions_vpc' - The virtual private cloud (VPC) filter value. Specify this parameter to
-- show only the available VPC or non-VPC offerings.
--
-- 'engine', 'describeOrderableDBInstanceOptions_engine' - The name of the engine to retrieve instance options for.
newDescribeOrderableDBInstanceOptions ::
  -- | 'engine'
  Prelude.Text ->
  DescribeOrderableDBInstanceOptions
newDescribeOrderableDBInstanceOptions pEngine_ =
  DescribeOrderableDBInstanceOptions'
    { engineVersion =
        Prelude.Nothing,
      filters = Prelude.Nothing,
      dbInstanceClass = Prelude.Nothing,
      licenseModel = Prelude.Nothing,
      marker = Prelude.Nothing,
      maxRecords = Prelude.Nothing,
      vpc = Prelude.Nothing,
      engine = pEngine_
    }

-- | The engine version filter value. Specify this parameter to show only the
-- available offerings that match the specified engine version.
describeOrderableDBInstanceOptions_engineVersion :: Lens.Lens' DescribeOrderableDBInstanceOptions (Prelude.Maybe Prelude.Text)
describeOrderableDBInstanceOptions_engineVersion = Lens.lens (\DescribeOrderableDBInstanceOptions' {engineVersion} -> engineVersion) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {engineVersion = a} :: DescribeOrderableDBInstanceOptions)

-- | This parameter is not currently supported.
describeOrderableDBInstanceOptions_filters :: Lens.Lens' DescribeOrderableDBInstanceOptions (Prelude.Maybe [Filter])
describeOrderableDBInstanceOptions_filters = Lens.lens (\DescribeOrderableDBInstanceOptions' {filters} -> filters) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {filters = a} :: DescribeOrderableDBInstanceOptions) Prelude.. Lens.mapping Lens.coerced

-- | The instance class filter value. Specify this parameter to show only the
-- available offerings that match the specified instance class.
describeOrderableDBInstanceOptions_dbInstanceClass :: Lens.Lens' DescribeOrderableDBInstanceOptions (Prelude.Maybe Prelude.Text)
describeOrderableDBInstanceOptions_dbInstanceClass = Lens.lens (\DescribeOrderableDBInstanceOptions' {dbInstanceClass} -> dbInstanceClass) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {dbInstanceClass = a} :: DescribeOrderableDBInstanceOptions)

-- | The license model filter value. Specify this parameter to show only the
-- available offerings that match the specified license model.
describeOrderableDBInstanceOptions_licenseModel :: Lens.Lens' DescribeOrderableDBInstanceOptions (Prelude.Maybe Prelude.Text)
describeOrderableDBInstanceOptions_licenseModel = Lens.lens (\DescribeOrderableDBInstanceOptions' {licenseModel} -> licenseModel) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {licenseModel = a} :: DescribeOrderableDBInstanceOptions)

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeOrderableDBInstanceOptions_marker :: Lens.Lens' DescribeOrderableDBInstanceOptions (Prelude.Maybe Prelude.Text)
describeOrderableDBInstanceOptions_marker = Lens.lens (\DescribeOrderableDBInstanceOptions' {marker} -> marker) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {marker = a} :: DescribeOrderableDBInstanceOptions)

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- (marker) is included in the response so that the remaining results can
-- be retrieved.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
describeOrderableDBInstanceOptions_maxRecords :: Lens.Lens' DescribeOrderableDBInstanceOptions (Prelude.Maybe Prelude.Int)
describeOrderableDBInstanceOptions_maxRecords = Lens.lens (\DescribeOrderableDBInstanceOptions' {maxRecords} -> maxRecords) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {maxRecords = a} :: DescribeOrderableDBInstanceOptions)

-- | The virtual private cloud (VPC) filter value. Specify this parameter to
-- show only the available VPC or non-VPC offerings.
describeOrderableDBInstanceOptions_vpc :: Lens.Lens' DescribeOrderableDBInstanceOptions (Prelude.Maybe Prelude.Bool)
describeOrderableDBInstanceOptions_vpc = Lens.lens (\DescribeOrderableDBInstanceOptions' {vpc} -> vpc) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {vpc = a} :: DescribeOrderableDBInstanceOptions)

-- | The name of the engine to retrieve instance options for.
describeOrderableDBInstanceOptions_engine :: Lens.Lens' DescribeOrderableDBInstanceOptions Prelude.Text
describeOrderableDBInstanceOptions_engine = Lens.lens (\DescribeOrderableDBInstanceOptions' {engine} -> engine) (\s@DescribeOrderableDBInstanceOptions' {} a -> s {engine = a} :: DescribeOrderableDBInstanceOptions)

instance
  Core.AWSPager
    DescribeOrderableDBInstanceOptions
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeOrderableDBInstanceOptionsResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeOrderableDBInstanceOptionsResponse_orderableDBInstanceOptions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeOrderableDBInstanceOptions_marker
          Lens..~ rs
          Lens.^? describeOrderableDBInstanceOptionsResponse_marker
            Prelude.. Lens._Just

instance
  Core.AWSRequest
    DescribeOrderableDBInstanceOptions
  where
  type
    AWSResponse DescribeOrderableDBInstanceOptions =
      DescribeOrderableDBInstanceOptionsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeOrderableDBInstanceOptionsResult"
      ( \s h x ->
          DescribeOrderableDBInstanceOptionsResponse'
            Prelude.<$> ( x Core..@? "OrderableDBInstanceOptions"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may
                              (Core.parseXMLList "OrderableDBInstanceOption")
                        )
              Prelude.<*> (x Core..@? "Marker")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeOrderableDBInstanceOptions

instance
  Prelude.NFData
    DescribeOrderableDBInstanceOptions

instance
  Core.ToHeaders
    DescribeOrderableDBInstanceOptions
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    DescribeOrderableDBInstanceOptions
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeOrderableDBInstanceOptions
  where
  toQuery DescribeOrderableDBInstanceOptions' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "DescribeOrderableDBInstanceOptions" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "EngineVersion" Core.=: engineVersion,
        "Filters"
          Core.=: Core.toQuery
            (Core.toQueryList "Filter" Prelude.<$> filters),
        "DBInstanceClass" Core.=: dbInstanceClass,
        "LicenseModel" Core.=: licenseModel,
        "Marker" Core.=: marker,
        "MaxRecords" Core.=: maxRecords,
        "Vpc" Core.=: vpc,
        "Engine" Core.=: engine
      ]

-- | Represents the output of DescribeOrderableDBInstanceOptions.
--
-- /See:/ 'newDescribeOrderableDBInstanceOptionsResponse' smart constructor.
data DescribeOrderableDBInstanceOptionsResponse = DescribeOrderableDBInstanceOptionsResponse'
  { -- | The options that are available for a particular orderable instance.
    orderableDBInstanceOptions :: Prelude.Maybe [OrderableDBInstanceOption],
    -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeOrderableDBInstanceOptionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'orderableDBInstanceOptions', 'describeOrderableDBInstanceOptionsResponse_orderableDBInstanceOptions' - The options that are available for a particular orderable instance.
--
-- 'marker', 'describeOrderableDBInstanceOptionsResponse_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'httpStatus', 'describeOrderableDBInstanceOptionsResponse_httpStatus' - The response's http status code.
newDescribeOrderableDBInstanceOptionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeOrderableDBInstanceOptionsResponse
newDescribeOrderableDBInstanceOptionsResponse
  pHttpStatus_ =
    DescribeOrderableDBInstanceOptionsResponse'
      { orderableDBInstanceOptions =
          Prelude.Nothing,
        marker = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The options that are available for a particular orderable instance.
describeOrderableDBInstanceOptionsResponse_orderableDBInstanceOptions :: Lens.Lens' DescribeOrderableDBInstanceOptionsResponse (Prelude.Maybe [OrderableDBInstanceOption])
describeOrderableDBInstanceOptionsResponse_orderableDBInstanceOptions = Lens.lens (\DescribeOrderableDBInstanceOptionsResponse' {orderableDBInstanceOptions} -> orderableDBInstanceOptions) (\s@DescribeOrderableDBInstanceOptionsResponse' {} a -> s {orderableDBInstanceOptions = a} :: DescribeOrderableDBInstanceOptionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeOrderableDBInstanceOptionsResponse_marker :: Lens.Lens' DescribeOrderableDBInstanceOptionsResponse (Prelude.Maybe Prelude.Text)
describeOrderableDBInstanceOptionsResponse_marker = Lens.lens (\DescribeOrderableDBInstanceOptionsResponse' {marker} -> marker) (\s@DescribeOrderableDBInstanceOptionsResponse' {} a -> s {marker = a} :: DescribeOrderableDBInstanceOptionsResponse)

-- | The response's http status code.
describeOrderableDBInstanceOptionsResponse_httpStatus :: Lens.Lens' DescribeOrderableDBInstanceOptionsResponse Prelude.Int
describeOrderableDBInstanceOptionsResponse_httpStatus = Lens.lens (\DescribeOrderableDBInstanceOptionsResponse' {httpStatus} -> httpStatus) (\s@DescribeOrderableDBInstanceOptionsResponse' {} a -> s {httpStatus = a} :: DescribeOrderableDBInstanceOptionsResponse)

instance
  Prelude.NFData
    DescribeOrderableDBInstanceOptionsResponse
