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
-- Module      : Network.AWS.EC2.DescribeNetworkInterfacePermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the permissions for your network interfaces.
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeNetworkInterfacePermissions
  ( -- * Creating a Request
    DescribeNetworkInterfacePermissions (..),
    newDescribeNetworkInterfacePermissions,

    -- * Request Lenses
    describeNetworkInterfacePermissions_filters,
    describeNetworkInterfacePermissions_nextToken,
    describeNetworkInterfacePermissions_networkInterfacePermissionIds,
    describeNetworkInterfacePermissions_maxResults,

    -- * Destructuring the Response
    DescribeNetworkInterfacePermissionsResponse (..),
    newDescribeNetworkInterfacePermissionsResponse,

    -- * Response Lenses
    describeNetworkInterfacePermissionsResponse_networkInterfacePermissions,
    describeNetworkInterfacePermissionsResponse_nextToken,
    describeNetworkInterfacePermissionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for DescribeNetworkInterfacePermissions.
--
-- /See:/ 'newDescribeNetworkInterfacePermissions' smart constructor.
data DescribeNetworkInterfacePermissions = DescribeNetworkInterfacePermissions'
  { -- | One or more filters.
    --
    -- -   @network-interface-permission.network-interface-permission-id@ - The
    --     ID of the permission.
    --
    -- -   @network-interface-permission.network-interface-id@ - The ID of the
    --     network interface.
    --
    -- -   @network-interface-permission.aws-account-id@ - The Amazon Web
    --     Services account ID.
    --
    -- -   @network-interface-permission.aws-service@ - The Amazon Web Service.
    --
    -- -   @network-interface-permission.permission@ - The type of permission
    --     (@INSTANCE-ATTACH@ | @EIP-ASSOCIATE@).
    filters :: Prelude.Maybe [Filter],
    -- | The token to request the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | One or more network interface permission IDs.
    networkInterfacePermissionIds :: Prelude.Maybe [Prelude.Text],
    -- | The maximum number of results to return in a single call. To retrieve
    -- the remaining results, make another call with the returned @NextToken@
    -- value. If this parameter is not specified, up to 50 results are returned
    -- by default.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeNetworkInterfacePermissions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'describeNetworkInterfacePermissions_filters' - One or more filters.
--
-- -   @network-interface-permission.network-interface-permission-id@ - The
--     ID of the permission.
--
-- -   @network-interface-permission.network-interface-id@ - The ID of the
--     network interface.
--
-- -   @network-interface-permission.aws-account-id@ - The Amazon Web
--     Services account ID.
--
-- -   @network-interface-permission.aws-service@ - The Amazon Web Service.
--
-- -   @network-interface-permission.permission@ - The type of permission
--     (@INSTANCE-ATTACH@ | @EIP-ASSOCIATE@).
--
-- 'nextToken', 'describeNetworkInterfacePermissions_nextToken' - The token to request the next page of results.
--
-- 'networkInterfacePermissionIds', 'describeNetworkInterfacePermissions_networkInterfacePermissionIds' - One or more network interface permission IDs.
--
-- 'maxResults', 'describeNetworkInterfacePermissions_maxResults' - The maximum number of results to return in a single call. To retrieve
-- the remaining results, make another call with the returned @NextToken@
-- value. If this parameter is not specified, up to 50 results are returned
-- by default.
newDescribeNetworkInterfacePermissions ::
  DescribeNetworkInterfacePermissions
newDescribeNetworkInterfacePermissions =
  DescribeNetworkInterfacePermissions'
    { filters =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      networkInterfacePermissionIds =
        Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | One or more filters.
--
-- -   @network-interface-permission.network-interface-permission-id@ - The
--     ID of the permission.
--
-- -   @network-interface-permission.network-interface-id@ - The ID of the
--     network interface.
--
-- -   @network-interface-permission.aws-account-id@ - The Amazon Web
--     Services account ID.
--
-- -   @network-interface-permission.aws-service@ - The Amazon Web Service.
--
-- -   @network-interface-permission.permission@ - The type of permission
--     (@INSTANCE-ATTACH@ | @EIP-ASSOCIATE@).
describeNetworkInterfacePermissions_filters :: Lens.Lens' DescribeNetworkInterfacePermissions (Prelude.Maybe [Filter])
describeNetworkInterfacePermissions_filters = Lens.lens (\DescribeNetworkInterfacePermissions' {filters} -> filters) (\s@DescribeNetworkInterfacePermissions' {} a -> s {filters = a} :: DescribeNetworkInterfacePermissions) Prelude.. Lens.mapping Lens.coerced

-- | The token to request the next page of results.
describeNetworkInterfacePermissions_nextToken :: Lens.Lens' DescribeNetworkInterfacePermissions (Prelude.Maybe Prelude.Text)
describeNetworkInterfacePermissions_nextToken = Lens.lens (\DescribeNetworkInterfacePermissions' {nextToken} -> nextToken) (\s@DescribeNetworkInterfacePermissions' {} a -> s {nextToken = a} :: DescribeNetworkInterfacePermissions)

-- | One or more network interface permission IDs.
describeNetworkInterfacePermissions_networkInterfacePermissionIds :: Lens.Lens' DescribeNetworkInterfacePermissions (Prelude.Maybe [Prelude.Text])
describeNetworkInterfacePermissions_networkInterfacePermissionIds = Lens.lens (\DescribeNetworkInterfacePermissions' {networkInterfacePermissionIds} -> networkInterfacePermissionIds) (\s@DescribeNetworkInterfacePermissions' {} a -> s {networkInterfacePermissionIds = a} :: DescribeNetworkInterfacePermissions) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to return in a single call. To retrieve
-- the remaining results, make another call with the returned @NextToken@
-- value. If this parameter is not specified, up to 50 results are returned
-- by default.
describeNetworkInterfacePermissions_maxResults :: Lens.Lens' DescribeNetworkInterfacePermissions (Prelude.Maybe Prelude.Natural)
describeNetworkInterfacePermissions_maxResults = Lens.lens (\DescribeNetworkInterfacePermissions' {maxResults} -> maxResults) (\s@DescribeNetworkInterfacePermissions' {} a -> s {maxResults = a} :: DescribeNetworkInterfacePermissions)

instance
  Core.AWSPager
    DescribeNetworkInterfacePermissions
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeNetworkInterfacePermissionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeNetworkInterfacePermissionsResponse_networkInterfacePermissions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeNetworkInterfacePermissions_nextToken
          Lens..~ rs
          Lens.^? describeNetworkInterfacePermissionsResponse_nextToken
            Prelude.. Lens._Just

instance
  Core.AWSRequest
    DescribeNetworkInterfacePermissions
  where
  type
    AWSResponse DescribeNetworkInterfacePermissions =
      DescribeNetworkInterfacePermissionsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeNetworkInterfacePermissionsResponse'
            Prelude.<$> ( x Core..@? "networkInterfacePermissions"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
              Prelude.<*> (x Core..@? "nextToken")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeNetworkInterfacePermissions

instance
  Prelude.NFData
    DescribeNetworkInterfacePermissions

instance
  Core.ToHeaders
    DescribeNetworkInterfacePermissions
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    DescribeNetworkInterfacePermissions
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeNetworkInterfacePermissions
  where
  toQuery DescribeNetworkInterfacePermissions' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "DescribeNetworkInterfacePermissions" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        Core.toQuery
          (Core.toQueryList "Filter" Prelude.<$> filters),
        "NextToken" Core.=: nextToken,
        Core.toQuery
          ( Core.toQueryList "NetworkInterfacePermissionId"
              Prelude.<$> networkInterfacePermissionIds
          ),
        "MaxResults" Core.=: maxResults
      ]

-- | Contains the output for DescribeNetworkInterfacePermissions.
--
-- /See:/ 'newDescribeNetworkInterfacePermissionsResponse' smart constructor.
data DescribeNetworkInterfacePermissionsResponse = DescribeNetworkInterfacePermissionsResponse'
  { -- | The network interface permissions.
    networkInterfacePermissions :: Prelude.Maybe [NetworkInterfacePermission],
    -- | The token to use to retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeNetworkInterfacePermissionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'networkInterfacePermissions', 'describeNetworkInterfacePermissionsResponse_networkInterfacePermissions' - The network interface permissions.
--
-- 'nextToken', 'describeNetworkInterfacePermissionsResponse_nextToken' - The token to use to retrieve the next page of results.
--
-- 'httpStatus', 'describeNetworkInterfacePermissionsResponse_httpStatus' - The response's http status code.
newDescribeNetworkInterfacePermissionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeNetworkInterfacePermissionsResponse
newDescribeNetworkInterfacePermissionsResponse
  pHttpStatus_ =
    DescribeNetworkInterfacePermissionsResponse'
      { networkInterfacePermissions =
          Prelude.Nothing,
        nextToken = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The network interface permissions.
describeNetworkInterfacePermissionsResponse_networkInterfacePermissions :: Lens.Lens' DescribeNetworkInterfacePermissionsResponse (Prelude.Maybe [NetworkInterfacePermission])
describeNetworkInterfacePermissionsResponse_networkInterfacePermissions = Lens.lens (\DescribeNetworkInterfacePermissionsResponse' {networkInterfacePermissions} -> networkInterfacePermissions) (\s@DescribeNetworkInterfacePermissionsResponse' {} a -> s {networkInterfacePermissions = a} :: DescribeNetworkInterfacePermissionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token to use to retrieve the next page of results.
describeNetworkInterfacePermissionsResponse_nextToken :: Lens.Lens' DescribeNetworkInterfacePermissionsResponse (Prelude.Maybe Prelude.Text)
describeNetworkInterfacePermissionsResponse_nextToken = Lens.lens (\DescribeNetworkInterfacePermissionsResponse' {nextToken} -> nextToken) (\s@DescribeNetworkInterfacePermissionsResponse' {} a -> s {nextToken = a} :: DescribeNetworkInterfacePermissionsResponse)

-- | The response's http status code.
describeNetworkInterfacePermissionsResponse_httpStatus :: Lens.Lens' DescribeNetworkInterfacePermissionsResponse Prelude.Int
describeNetworkInterfacePermissionsResponse_httpStatus = Lens.lens (\DescribeNetworkInterfacePermissionsResponse' {httpStatus} -> httpStatus) (\s@DescribeNetworkInterfacePermissionsResponse' {} a -> s {httpStatus = a} :: DescribeNetworkInterfacePermissionsResponse)

instance
  Prelude.NFData
    DescribeNetworkInterfacePermissionsResponse
