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
-- Module      : Network.AWS.QuickSight.DescribeIngestion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a SPICE ingestion.
module Network.AWS.QuickSight.DescribeIngestion
  ( -- * Creating a Request
    DescribeIngestion (..),
    newDescribeIngestion,

    -- * Request Lenses
    describeIngestion_awsAccountId,
    describeIngestion_dataSetId,
    describeIngestion_ingestionId,

    -- * Destructuring the Response
    DescribeIngestionResponse (..),
    newDescribeIngestionResponse,

    -- * Response Lenses
    describeIngestionResponse_requestId,
    describeIngestionResponse_ingestion,
    describeIngestionResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeIngestion' smart constructor.
data DescribeIngestion = DescribeIngestion'
  { -- | The Amazon Web Services account ID.
    awsAccountId :: Prelude.Text,
    -- | The ID of the dataset used in the ingestion.
    dataSetId :: Prelude.Text,
    -- | An ID for the ingestion.
    ingestionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeIngestion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'describeIngestion_awsAccountId' - The Amazon Web Services account ID.
--
-- 'dataSetId', 'describeIngestion_dataSetId' - The ID of the dataset used in the ingestion.
--
-- 'ingestionId', 'describeIngestion_ingestionId' - An ID for the ingestion.
newDescribeIngestion ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'dataSetId'
  Prelude.Text ->
  -- | 'ingestionId'
  Prelude.Text ->
  DescribeIngestion
newDescribeIngestion
  pAwsAccountId_
  pDataSetId_
  pIngestionId_ =
    DescribeIngestion'
      { awsAccountId = pAwsAccountId_,
        dataSetId = pDataSetId_,
        ingestionId = pIngestionId_
      }

-- | The Amazon Web Services account ID.
describeIngestion_awsAccountId :: Lens.Lens' DescribeIngestion Prelude.Text
describeIngestion_awsAccountId = Lens.lens (\DescribeIngestion' {awsAccountId} -> awsAccountId) (\s@DescribeIngestion' {} a -> s {awsAccountId = a} :: DescribeIngestion)

-- | The ID of the dataset used in the ingestion.
describeIngestion_dataSetId :: Lens.Lens' DescribeIngestion Prelude.Text
describeIngestion_dataSetId = Lens.lens (\DescribeIngestion' {dataSetId} -> dataSetId) (\s@DescribeIngestion' {} a -> s {dataSetId = a} :: DescribeIngestion)

-- | An ID for the ingestion.
describeIngestion_ingestionId :: Lens.Lens' DescribeIngestion Prelude.Text
describeIngestion_ingestionId = Lens.lens (\DescribeIngestion' {ingestionId} -> ingestionId) (\s@DescribeIngestion' {} a -> s {ingestionId = a} :: DescribeIngestion)

instance Core.AWSRequest DescribeIngestion where
  type
    AWSResponse DescribeIngestion =
      DescribeIngestionResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeIngestionResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Ingestion")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeIngestion

instance Prelude.NFData DescribeIngestion

instance Core.ToHeaders DescribeIngestion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeIngestion where
  toPath DescribeIngestion' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/data-sets/",
        Core.toBS dataSetId,
        "/ingestions/",
        Core.toBS ingestionId
      ]

instance Core.ToQuery DescribeIngestion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeIngestionResponse' smart constructor.
data DescribeIngestionResponse = DescribeIngestionResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | Information about the ingestion.
    ingestion :: Prelude.Maybe Ingestion,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeIngestionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'describeIngestionResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'ingestion', 'describeIngestionResponse_ingestion' - Information about the ingestion.
--
-- 'status', 'describeIngestionResponse_status' - The HTTP status of the request.
newDescribeIngestionResponse ::
  -- | 'status'
  Prelude.Int ->
  DescribeIngestionResponse
newDescribeIngestionResponse pStatus_ =
  DescribeIngestionResponse'
    { requestId =
        Prelude.Nothing,
      ingestion = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
describeIngestionResponse_requestId :: Lens.Lens' DescribeIngestionResponse (Prelude.Maybe Prelude.Text)
describeIngestionResponse_requestId = Lens.lens (\DescribeIngestionResponse' {requestId} -> requestId) (\s@DescribeIngestionResponse' {} a -> s {requestId = a} :: DescribeIngestionResponse)

-- | Information about the ingestion.
describeIngestionResponse_ingestion :: Lens.Lens' DescribeIngestionResponse (Prelude.Maybe Ingestion)
describeIngestionResponse_ingestion = Lens.lens (\DescribeIngestionResponse' {ingestion} -> ingestion) (\s@DescribeIngestionResponse' {} a -> s {ingestion = a} :: DescribeIngestionResponse)

-- | The HTTP status of the request.
describeIngestionResponse_status :: Lens.Lens' DescribeIngestionResponse Prelude.Int
describeIngestionResponse_status = Lens.lens (\DescribeIngestionResponse' {status} -> status) (\s@DescribeIngestionResponse' {} a -> s {status = a} :: DescribeIngestionResponse)

instance Prelude.NFData DescribeIngestionResponse
