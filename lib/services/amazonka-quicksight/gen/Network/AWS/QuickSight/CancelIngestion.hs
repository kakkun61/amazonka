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
-- Module      : Network.AWS.QuickSight.CancelIngestion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels an ongoing ingestion of data into SPICE.
module Network.AWS.QuickSight.CancelIngestion
  ( -- * Creating a Request
    CancelIngestion (..),
    newCancelIngestion,

    -- * Request Lenses
    cancelIngestion_awsAccountId,
    cancelIngestion_dataSetId,
    cancelIngestion_ingestionId,

    -- * Destructuring the Response
    CancelIngestionResponse (..),
    newCancelIngestionResponse,

    -- * Response Lenses
    cancelIngestionResponse_requestId,
    cancelIngestionResponse_arn,
    cancelIngestionResponse_ingestionId,
    cancelIngestionResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCancelIngestion' smart constructor.
data CancelIngestion = CancelIngestion'
  { -- | The Amazon Web Services account ID.
    awsAccountId :: Prelude.Text,
    -- | The ID of the dataset used in the ingestion.
    dataSetId :: Prelude.Text,
    -- | An ID for the ingestion.
    ingestionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelIngestion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'cancelIngestion_awsAccountId' - The Amazon Web Services account ID.
--
-- 'dataSetId', 'cancelIngestion_dataSetId' - The ID of the dataset used in the ingestion.
--
-- 'ingestionId', 'cancelIngestion_ingestionId' - An ID for the ingestion.
newCancelIngestion ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'dataSetId'
  Prelude.Text ->
  -- | 'ingestionId'
  Prelude.Text ->
  CancelIngestion
newCancelIngestion
  pAwsAccountId_
  pDataSetId_
  pIngestionId_ =
    CancelIngestion'
      { awsAccountId = pAwsAccountId_,
        dataSetId = pDataSetId_,
        ingestionId = pIngestionId_
      }

-- | The Amazon Web Services account ID.
cancelIngestion_awsAccountId :: Lens.Lens' CancelIngestion Prelude.Text
cancelIngestion_awsAccountId = Lens.lens (\CancelIngestion' {awsAccountId} -> awsAccountId) (\s@CancelIngestion' {} a -> s {awsAccountId = a} :: CancelIngestion)

-- | The ID of the dataset used in the ingestion.
cancelIngestion_dataSetId :: Lens.Lens' CancelIngestion Prelude.Text
cancelIngestion_dataSetId = Lens.lens (\CancelIngestion' {dataSetId} -> dataSetId) (\s@CancelIngestion' {} a -> s {dataSetId = a} :: CancelIngestion)

-- | An ID for the ingestion.
cancelIngestion_ingestionId :: Lens.Lens' CancelIngestion Prelude.Text
cancelIngestion_ingestionId = Lens.lens (\CancelIngestion' {ingestionId} -> ingestionId) (\s@CancelIngestion' {} a -> s {ingestionId = a} :: CancelIngestion)

instance Core.AWSRequest CancelIngestion where
  type
    AWSResponse CancelIngestion =
      CancelIngestionResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CancelIngestionResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "IngestionId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CancelIngestion

instance Prelude.NFData CancelIngestion

instance Core.ToHeaders CancelIngestion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath CancelIngestion where
  toPath CancelIngestion' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/data-sets/",
        Core.toBS dataSetId,
        "/ingestions/",
        Core.toBS ingestionId
      ]

instance Core.ToQuery CancelIngestion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCancelIngestionResponse' smart constructor.
data CancelIngestionResponse = CancelIngestionResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the data ingestion.
    arn :: Prelude.Maybe Prelude.Text,
    -- | An ID for the ingestion.
    ingestionId :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelIngestionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'cancelIngestionResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'arn', 'cancelIngestionResponse_arn' - The Amazon Resource Name (ARN) for the data ingestion.
--
-- 'ingestionId', 'cancelIngestionResponse_ingestionId' - An ID for the ingestion.
--
-- 'status', 'cancelIngestionResponse_status' - The HTTP status of the request.
newCancelIngestionResponse ::
  -- | 'status'
  Prelude.Int ->
  CancelIngestionResponse
newCancelIngestionResponse pStatus_ =
  CancelIngestionResponse'
    { requestId =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      ingestionId = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
cancelIngestionResponse_requestId :: Lens.Lens' CancelIngestionResponse (Prelude.Maybe Prelude.Text)
cancelIngestionResponse_requestId = Lens.lens (\CancelIngestionResponse' {requestId} -> requestId) (\s@CancelIngestionResponse' {} a -> s {requestId = a} :: CancelIngestionResponse)

-- | The Amazon Resource Name (ARN) for the data ingestion.
cancelIngestionResponse_arn :: Lens.Lens' CancelIngestionResponse (Prelude.Maybe Prelude.Text)
cancelIngestionResponse_arn = Lens.lens (\CancelIngestionResponse' {arn} -> arn) (\s@CancelIngestionResponse' {} a -> s {arn = a} :: CancelIngestionResponse)

-- | An ID for the ingestion.
cancelIngestionResponse_ingestionId :: Lens.Lens' CancelIngestionResponse (Prelude.Maybe Prelude.Text)
cancelIngestionResponse_ingestionId = Lens.lens (\CancelIngestionResponse' {ingestionId} -> ingestionId) (\s@CancelIngestionResponse' {} a -> s {ingestionId = a} :: CancelIngestionResponse)

-- | The HTTP status of the request.
cancelIngestionResponse_status :: Lens.Lens' CancelIngestionResponse Prelude.Int
cancelIngestionResponse_status = Lens.lens (\CancelIngestionResponse' {status} -> status) (\s@CancelIngestionResponse' {} a -> s {status = a} :: CancelIngestionResponse)

instance Prelude.NFData CancelIngestionResponse
