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
-- Module      : Network.AWS.Pi.GetDimensionKeyDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the attributes of the specified dimension group for a DB instance or
-- data source. For example, if you specify a SQL ID,
-- @GetDimensionKeyDetails@ retrieves the full text of the dimension
-- @db.sql.statement@ associated with this ID. This operation is useful
-- because @GetResourceMetrics@ and @DescribeDimensionKeys@ don\'t support
-- retrieval of large SQL statement text.
module Network.AWS.Pi.GetDimensionKeyDetails
  ( -- * Creating a Request
    GetDimensionKeyDetails (..),
    newGetDimensionKeyDetails,

    -- * Request Lenses
    getDimensionKeyDetails_requestedDimensions,
    getDimensionKeyDetails_serviceType,
    getDimensionKeyDetails_identifier,
    getDimensionKeyDetails_group,
    getDimensionKeyDetails_groupIdentifier,

    -- * Destructuring the Response
    GetDimensionKeyDetailsResponse (..),
    newGetDimensionKeyDetailsResponse,

    -- * Response Lenses
    getDimensionKeyDetailsResponse_dimensions,
    getDimensionKeyDetailsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pi.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetDimensionKeyDetails' smart constructor.
data GetDimensionKeyDetails = GetDimensionKeyDetails'
  { -- | A list of dimensions to retrieve the detail data for within the given
    -- dimension group. For the dimension group @db.sql@, specify either the
    -- full dimension name @db.sql.statement@ or the short dimension name
    -- @statement@. If you don\'t specify this parameter, Performance Insights
    -- returns all dimension data within the specified dimension group.
    requestedDimensions :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The AWS service for which Performance Insights returns data. The only
    -- valid value is @RDS@.
    serviceType :: ServiceType,
    -- | The ID for a data source from which to gather dimension data. This ID
    -- must be immutable and unique within an AWS Region. When a DB instance is
    -- the data source, specify its @DbiResourceId@ value. For example, specify
    -- @db-ABCDEFGHIJKLMNOPQRSTU1VW2X@.
    identifier :: Prelude.Text,
    -- | The name of the dimension group. The only valid value is @db.sql@.
    -- Performance Insights searches the specified group for the dimension
    -- group ID.
    group' :: Prelude.Text,
    -- | The ID of the dimension group from which to retrieve dimension details.
    -- For dimension group @db.sql@, the group ID is @db.sql.id@.
    groupIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDimensionKeyDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestedDimensions', 'getDimensionKeyDetails_requestedDimensions' - A list of dimensions to retrieve the detail data for within the given
-- dimension group. For the dimension group @db.sql@, specify either the
-- full dimension name @db.sql.statement@ or the short dimension name
-- @statement@. If you don\'t specify this parameter, Performance Insights
-- returns all dimension data within the specified dimension group.
--
-- 'serviceType', 'getDimensionKeyDetails_serviceType' - The AWS service for which Performance Insights returns data. The only
-- valid value is @RDS@.
--
-- 'identifier', 'getDimensionKeyDetails_identifier' - The ID for a data source from which to gather dimension data. This ID
-- must be immutable and unique within an AWS Region. When a DB instance is
-- the data source, specify its @DbiResourceId@ value. For example, specify
-- @db-ABCDEFGHIJKLMNOPQRSTU1VW2X@.
--
-- 'group'', 'getDimensionKeyDetails_group' - The name of the dimension group. The only valid value is @db.sql@.
-- Performance Insights searches the specified group for the dimension
-- group ID.
--
-- 'groupIdentifier', 'getDimensionKeyDetails_groupIdentifier' - The ID of the dimension group from which to retrieve dimension details.
-- For dimension group @db.sql@, the group ID is @db.sql.id@.
newGetDimensionKeyDetails ::
  -- | 'serviceType'
  ServiceType ->
  -- | 'identifier'
  Prelude.Text ->
  -- | 'group''
  Prelude.Text ->
  -- | 'groupIdentifier'
  Prelude.Text ->
  GetDimensionKeyDetails
newGetDimensionKeyDetails
  pServiceType_
  pIdentifier_
  pGroup_
  pGroupIdentifier_ =
    GetDimensionKeyDetails'
      { requestedDimensions =
          Prelude.Nothing,
        serviceType = pServiceType_,
        identifier = pIdentifier_,
        group' = pGroup_,
        groupIdentifier = pGroupIdentifier_
      }

-- | A list of dimensions to retrieve the detail data for within the given
-- dimension group. For the dimension group @db.sql@, specify either the
-- full dimension name @db.sql.statement@ or the short dimension name
-- @statement@. If you don\'t specify this parameter, Performance Insights
-- returns all dimension data within the specified dimension group.
getDimensionKeyDetails_requestedDimensions :: Lens.Lens' GetDimensionKeyDetails (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
getDimensionKeyDetails_requestedDimensions = Lens.lens (\GetDimensionKeyDetails' {requestedDimensions} -> requestedDimensions) (\s@GetDimensionKeyDetails' {} a -> s {requestedDimensions = a} :: GetDimensionKeyDetails) Prelude.. Lens.mapping Lens.coerced

-- | The AWS service for which Performance Insights returns data. The only
-- valid value is @RDS@.
getDimensionKeyDetails_serviceType :: Lens.Lens' GetDimensionKeyDetails ServiceType
getDimensionKeyDetails_serviceType = Lens.lens (\GetDimensionKeyDetails' {serviceType} -> serviceType) (\s@GetDimensionKeyDetails' {} a -> s {serviceType = a} :: GetDimensionKeyDetails)

-- | The ID for a data source from which to gather dimension data. This ID
-- must be immutable and unique within an AWS Region. When a DB instance is
-- the data source, specify its @DbiResourceId@ value. For example, specify
-- @db-ABCDEFGHIJKLMNOPQRSTU1VW2X@.
getDimensionKeyDetails_identifier :: Lens.Lens' GetDimensionKeyDetails Prelude.Text
getDimensionKeyDetails_identifier = Lens.lens (\GetDimensionKeyDetails' {identifier} -> identifier) (\s@GetDimensionKeyDetails' {} a -> s {identifier = a} :: GetDimensionKeyDetails)

-- | The name of the dimension group. The only valid value is @db.sql@.
-- Performance Insights searches the specified group for the dimension
-- group ID.
getDimensionKeyDetails_group :: Lens.Lens' GetDimensionKeyDetails Prelude.Text
getDimensionKeyDetails_group = Lens.lens (\GetDimensionKeyDetails' {group'} -> group') (\s@GetDimensionKeyDetails' {} a -> s {group' = a} :: GetDimensionKeyDetails)

-- | The ID of the dimension group from which to retrieve dimension details.
-- For dimension group @db.sql@, the group ID is @db.sql.id@.
getDimensionKeyDetails_groupIdentifier :: Lens.Lens' GetDimensionKeyDetails Prelude.Text
getDimensionKeyDetails_groupIdentifier = Lens.lens (\GetDimensionKeyDetails' {groupIdentifier} -> groupIdentifier) (\s@GetDimensionKeyDetails' {} a -> s {groupIdentifier = a} :: GetDimensionKeyDetails)

instance Core.AWSRequest GetDimensionKeyDetails where
  type
    AWSResponse GetDimensionKeyDetails =
      GetDimensionKeyDetailsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDimensionKeyDetailsResponse'
            Prelude.<$> (x Core..?> "Dimensions" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDimensionKeyDetails

instance Prelude.NFData GetDimensionKeyDetails

instance Core.ToHeaders GetDimensionKeyDetails where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "PerformanceInsightsv20180227.GetDimensionKeyDetails" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetDimensionKeyDetails where
  toJSON GetDimensionKeyDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RequestedDimensions" Core..=)
              Prelude.<$> requestedDimensions,
            Prelude.Just ("ServiceType" Core..= serviceType),
            Prelude.Just ("Identifier" Core..= identifier),
            Prelude.Just ("Group" Core..= group'),
            Prelude.Just
              ("GroupIdentifier" Core..= groupIdentifier)
          ]
      )

instance Core.ToPath GetDimensionKeyDetails where
  toPath = Prelude.const "/"

instance Core.ToQuery GetDimensionKeyDetails where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetDimensionKeyDetailsResponse' smart constructor.
data GetDimensionKeyDetailsResponse = GetDimensionKeyDetailsResponse'
  { -- | The details for the requested dimensions.
    dimensions :: Prelude.Maybe [DimensionKeyDetail],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDimensionKeyDetailsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dimensions', 'getDimensionKeyDetailsResponse_dimensions' - The details for the requested dimensions.
--
-- 'httpStatus', 'getDimensionKeyDetailsResponse_httpStatus' - The response's http status code.
newGetDimensionKeyDetailsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDimensionKeyDetailsResponse
newGetDimensionKeyDetailsResponse pHttpStatus_ =
  GetDimensionKeyDetailsResponse'
    { dimensions =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The details for the requested dimensions.
getDimensionKeyDetailsResponse_dimensions :: Lens.Lens' GetDimensionKeyDetailsResponse (Prelude.Maybe [DimensionKeyDetail])
getDimensionKeyDetailsResponse_dimensions = Lens.lens (\GetDimensionKeyDetailsResponse' {dimensions} -> dimensions) (\s@GetDimensionKeyDetailsResponse' {} a -> s {dimensions = a} :: GetDimensionKeyDetailsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getDimensionKeyDetailsResponse_httpStatus :: Lens.Lens' GetDimensionKeyDetailsResponse Prelude.Int
getDimensionKeyDetailsResponse_httpStatus = Lens.lens (\GetDimensionKeyDetailsResponse' {httpStatus} -> httpStatus) (\s@GetDimensionKeyDetailsResponse' {} a -> s {httpStatus = a} :: GetDimensionKeyDetailsResponse)

instance
  Prelude.NFData
    GetDimensionKeyDetailsResponse
