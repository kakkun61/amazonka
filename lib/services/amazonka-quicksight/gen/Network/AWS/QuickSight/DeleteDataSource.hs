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
-- Module      : Network.AWS.QuickSight.DeleteDataSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the data source permanently. This operation breaks all the
-- datasets that reference the deleted data source.
module Network.AWS.QuickSight.DeleteDataSource
  ( -- * Creating a Request
    DeleteDataSource (..),
    newDeleteDataSource,

    -- * Request Lenses
    deleteDataSource_awsAccountId,
    deleteDataSource_dataSourceId,

    -- * Destructuring the Response
    DeleteDataSourceResponse (..),
    newDeleteDataSourceResponse,

    -- * Response Lenses
    deleteDataSourceResponse_requestId,
    deleteDataSourceResponse_arn,
    deleteDataSourceResponse_dataSourceId,
    deleteDataSourceResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDataSource' smart constructor.
data DeleteDataSource = DeleteDataSource'
  { -- | The Amazon Web Services account ID.
    awsAccountId :: Prelude.Text,
    -- | The ID of the data source. This ID is unique per Amazon Web Services
    -- Region for each Amazon Web Services account.
    dataSourceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDataSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'deleteDataSource_awsAccountId' - The Amazon Web Services account ID.
--
-- 'dataSourceId', 'deleteDataSource_dataSourceId' - The ID of the data source. This ID is unique per Amazon Web Services
-- Region for each Amazon Web Services account.
newDeleteDataSource ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'dataSourceId'
  Prelude.Text ->
  DeleteDataSource
newDeleteDataSource pAwsAccountId_ pDataSourceId_ =
  DeleteDataSource'
    { awsAccountId = pAwsAccountId_,
      dataSourceId = pDataSourceId_
    }

-- | The Amazon Web Services account ID.
deleteDataSource_awsAccountId :: Lens.Lens' DeleteDataSource Prelude.Text
deleteDataSource_awsAccountId = Lens.lens (\DeleteDataSource' {awsAccountId} -> awsAccountId) (\s@DeleteDataSource' {} a -> s {awsAccountId = a} :: DeleteDataSource)

-- | The ID of the data source. This ID is unique per Amazon Web Services
-- Region for each Amazon Web Services account.
deleteDataSource_dataSourceId :: Lens.Lens' DeleteDataSource Prelude.Text
deleteDataSource_dataSourceId = Lens.lens (\DeleteDataSource' {dataSourceId} -> dataSourceId) (\s@DeleteDataSource' {} a -> s {dataSourceId = a} :: DeleteDataSource)

instance Core.AWSRequest DeleteDataSource where
  type
    AWSResponse DeleteDataSource =
      DeleteDataSourceResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteDataSourceResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "DataSourceId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteDataSource

instance Prelude.NFData DeleteDataSource

instance Core.ToHeaders DeleteDataSource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteDataSource where
  toPath DeleteDataSource' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/data-sources/",
        Core.toBS dataSourceId
      ]

instance Core.ToQuery DeleteDataSource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDataSourceResponse' smart constructor.
data DeleteDataSourceResponse = DeleteDataSourceResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the data source that you deleted.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The ID of the data source. This ID is unique per Amazon Web Services
    -- Region for each Amazon Web Services account.
    dataSourceId :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDataSourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'deleteDataSourceResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'arn', 'deleteDataSourceResponse_arn' - The Amazon Resource Name (ARN) of the data source that you deleted.
--
-- 'dataSourceId', 'deleteDataSourceResponse_dataSourceId' - The ID of the data source. This ID is unique per Amazon Web Services
-- Region for each Amazon Web Services account.
--
-- 'status', 'deleteDataSourceResponse_status' - The HTTP status of the request.
newDeleteDataSourceResponse ::
  -- | 'status'
  Prelude.Int ->
  DeleteDataSourceResponse
newDeleteDataSourceResponse pStatus_ =
  DeleteDataSourceResponse'
    { requestId =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      dataSourceId = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
deleteDataSourceResponse_requestId :: Lens.Lens' DeleteDataSourceResponse (Prelude.Maybe Prelude.Text)
deleteDataSourceResponse_requestId = Lens.lens (\DeleteDataSourceResponse' {requestId} -> requestId) (\s@DeleteDataSourceResponse' {} a -> s {requestId = a} :: DeleteDataSourceResponse)

-- | The Amazon Resource Name (ARN) of the data source that you deleted.
deleteDataSourceResponse_arn :: Lens.Lens' DeleteDataSourceResponse (Prelude.Maybe Prelude.Text)
deleteDataSourceResponse_arn = Lens.lens (\DeleteDataSourceResponse' {arn} -> arn) (\s@DeleteDataSourceResponse' {} a -> s {arn = a} :: DeleteDataSourceResponse)

-- | The ID of the data source. This ID is unique per Amazon Web Services
-- Region for each Amazon Web Services account.
deleteDataSourceResponse_dataSourceId :: Lens.Lens' DeleteDataSourceResponse (Prelude.Maybe Prelude.Text)
deleteDataSourceResponse_dataSourceId = Lens.lens (\DeleteDataSourceResponse' {dataSourceId} -> dataSourceId) (\s@DeleteDataSourceResponse' {} a -> s {dataSourceId = a} :: DeleteDataSourceResponse)

-- | The HTTP status of the request.
deleteDataSourceResponse_status :: Lens.Lens' DeleteDataSourceResponse Prelude.Int
deleteDataSourceResponse_status = Lens.lens (\DeleteDataSourceResponse' {status} -> status) (\s@DeleteDataSourceResponse' {} a -> s {status = a} :: DeleteDataSourceResponse)

instance Prelude.NFData DeleteDataSourceResponse
