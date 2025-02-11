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
-- Module      : Network.AWS.Redshift.DescribePartners
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the partner integrations defined for a
-- cluster.
module Network.AWS.Redshift.DescribePartners
  ( -- * Creating a Request
    DescribePartners (..),
    newDescribePartners,

    -- * Request Lenses
    describePartners_partnerName,
    describePartners_databaseName,
    describePartners_accountId,
    describePartners_clusterIdentifier,

    -- * Destructuring the Response
    DescribePartnersResponse (..),
    newDescribePartnersResponse,

    -- * Response Lenses
    describePartnersResponse_partnerIntegrationInfoList,
    describePartnersResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribePartners' smart constructor.
data DescribePartners = DescribePartners'
  { -- | The name of the partner that is being described. If partner name is not
    -- specified, then all partner integrations are described.
    partnerName :: Prelude.Maybe Prelude.Text,
    -- | The name of the database whose partner integration is being described.
    -- If database name is not specified, then all databases in the cluster are
    -- described.
    databaseName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services account ID that owns the cluster.
    accountId :: Prelude.Text,
    -- | The cluster identifier of the cluster whose partner integration is being
    -- described.
    clusterIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePartners' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'partnerName', 'describePartners_partnerName' - The name of the partner that is being described. If partner name is not
-- specified, then all partner integrations are described.
--
-- 'databaseName', 'describePartners_databaseName' - The name of the database whose partner integration is being described.
-- If database name is not specified, then all databases in the cluster are
-- described.
--
-- 'accountId', 'describePartners_accountId' - The Amazon Web Services account ID that owns the cluster.
--
-- 'clusterIdentifier', 'describePartners_clusterIdentifier' - The cluster identifier of the cluster whose partner integration is being
-- described.
newDescribePartners ::
  -- | 'accountId'
  Prelude.Text ->
  -- | 'clusterIdentifier'
  Prelude.Text ->
  DescribePartners
newDescribePartners pAccountId_ pClusterIdentifier_ =
  DescribePartners'
    { partnerName = Prelude.Nothing,
      databaseName = Prelude.Nothing,
      accountId = pAccountId_,
      clusterIdentifier = pClusterIdentifier_
    }

-- | The name of the partner that is being described. If partner name is not
-- specified, then all partner integrations are described.
describePartners_partnerName :: Lens.Lens' DescribePartners (Prelude.Maybe Prelude.Text)
describePartners_partnerName = Lens.lens (\DescribePartners' {partnerName} -> partnerName) (\s@DescribePartners' {} a -> s {partnerName = a} :: DescribePartners)

-- | The name of the database whose partner integration is being described.
-- If database name is not specified, then all databases in the cluster are
-- described.
describePartners_databaseName :: Lens.Lens' DescribePartners (Prelude.Maybe Prelude.Text)
describePartners_databaseName = Lens.lens (\DescribePartners' {databaseName} -> databaseName) (\s@DescribePartners' {} a -> s {databaseName = a} :: DescribePartners)

-- | The Amazon Web Services account ID that owns the cluster.
describePartners_accountId :: Lens.Lens' DescribePartners Prelude.Text
describePartners_accountId = Lens.lens (\DescribePartners' {accountId} -> accountId) (\s@DescribePartners' {} a -> s {accountId = a} :: DescribePartners)

-- | The cluster identifier of the cluster whose partner integration is being
-- described.
describePartners_clusterIdentifier :: Lens.Lens' DescribePartners Prelude.Text
describePartners_clusterIdentifier = Lens.lens (\DescribePartners' {clusterIdentifier} -> clusterIdentifier) (\s@DescribePartners' {} a -> s {clusterIdentifier = a} :: DescribePartners)

instance Core.AWSRequest DescribePartners where
  type
    AWSResponse DescribePartners =
      DescribePartnersResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribePartnersResult"
      ( \s h x ->
          DescribePartnersResponse'
            Prelude.<$> ( x Core..@? "PartnerIntegrationInfoList"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may
                              (Core.parseXMLList "PartnerIntegrationInfo")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribePartners

instance Prelude.NFData DescribePartners

instance Core.ToHeaders DescribePartners where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribePartners where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribePartners where
  toQuery DescribePartners' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribePartners" :: Prelude.ByteString),
        "Version"
          Core.=: ("2012-12-01" :: Prelude.ByteString),
        "PartnerName" Core.=: partnerName,
        "DatabaseName" Core.=: databaseName,
        "AccountId" Core.=: accountId,
        "ClusterIdentifier" Core.=: clusterIdentifier
      ]

-- | /See:/ 'newDescribePartnersResponse' smart constructor.
data DescribePartnersResponse = DescribePartnersResponse'
  { -- | A list of partner integrations.
    partnerIntegrationInfoList :: Prelude.Maybe [PartnerIntegrationInfo],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePartnersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'partnerIntegrationInfoList', 'describePartnersResponse_partnerIntegrationInfoList' - A list of partner integrations.
--
-- 'httpStatus', 'describePartnersResponse_httpStatus' - The response's http status code.
newDescribePartnersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribePartnersResponse
newDescribePartnersResponse pHttpStatus_ =
  DescribePartnersResponse'
    { partnerIntegrationInfoList =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of partner integrations.
describePartnersResponse_partnerIntegrationInfoList :: Lens.Lens' DescribePartnersResponse (Prelude.Maybe [PartnerIntegrationInfo])
describePartnersResponse_partnerIntegrationInfoList = Lens.lens (\DescribePartnersResponse' {partnerIntegrationInfoList} -> partnerIntegrationInfoList) (\s@DescribePartnersResponse' {} a -> s {partnerIntegrationInfoList = a} :: DescribePartnersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describePartnersResponse_httpStatus :: Lens.Lens' DescribePartnersResponse Prelude.Int
describePartnersResponse_httpStatus = Lens.lens (\DescribePartnersResponse' {httpStatus} -> httpStatus) (\s@DescribePartnersResponse' {} a -> s {httpStatus = a} :: DescribePartnersResponse)

instance Prelude.NFData DescribePartnersResponse
