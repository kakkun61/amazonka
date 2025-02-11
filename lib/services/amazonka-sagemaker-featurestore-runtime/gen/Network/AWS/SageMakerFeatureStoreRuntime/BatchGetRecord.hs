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
-- Module      : Network.AWS.SageMakerFeatureStoreRuntime.BatchGetRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a batch of @Records@ from a @FeatureGroup@.
module Network.AWS.SageMakerFeatureStoreRuntime.BatchGetRecord
  ( -- * Creating a Request
    BatchGetRecord (..),
    newBatchGetRecord,

    -- * Request Lenses
    batchGetRecord_identifiers,

    -- * Destructuring the Response
    BatchGetRecordResponse (..),
    newBatchGetRecordResponse,

    -- * Response Lenses
    batchGetRecordResponse_httpStatus,
    batchGetRecordResponse_records,
    batchGetRecordResponse_errors,
    batchGetRecordResponse_unprocessedIdentifiers,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMakerFeatureStoreRuntime.Types

-- | /See:/ 'newBatchGetRecord' smart constructor.
data BatchGetRecord = BatchGetRecord'
  { -- | A list of @FeatureGroup@ names, with their corresponding
    -- @RecordIdentifier@ value, and Feature name that have been requested to
    -- be retrieved in batch.
    identifiers :: Prelude.NonEmpty BatchGetRecordIdentifier
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchGetRecord' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'identifiers', 'batchGetRecord_identifiers' - A list of @FeatureGroup@ names, with their corresponding
-- @RecordIdentifier@ value, and Feature name that have been requested to
-- be retrieved in batch.
newBatchGetRecord ::
  -- | 'identifiers'
  Prelude.NonEmpty BatchGetRecordIdentifier ->
  BatchGetRecord
newBatchGetRecord pIdentifiers_ =
  BatchGetRecord'
    { identifiers =
        Lens.coerced Lens.# pIdentifiers_
    }

-- | A list of @FeatureGroup@ names, with their corresponding
-- @RecordIdentifier@ value, and Feature name that have been requested to
-- be retrieved in batch.
batchGetRecord_identifiers :: Lens.Lens' BatchGetRecord (Prelude.NonEmpty BatchGetRecordIdentifier)
batchGetRecord_identifiers = Lens.lens (\BatchGetRecord' {identifiers} -> identifiers) (\s@BatchGetRecord' {} a -> s {identifiers = a} :: BatchGetRecord) Prelude.. Lens.coerced

instance Core.AWSRequest BatchGetRecord where
  type
    AWSResponse BatchGetRecord =
      BatchGetRecordResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchGetRecordResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Records" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Errors" Core..!@ Prelude.mempty)
            Prelude.<*> ( x Core..?> "UnprocessedIdentifiers"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable BatchGetRecord

instance Prelude.NFData BatchGetRecord

instance Core.ToHeaders BatchGetRecord where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchGetRecord where
  toJSON BatchGetRecord' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Identifiers" Core..= identifiers)]
      )

instance Core.ToPath BatchGetRecord where
  toPath = Prelude.const "/BatchGetRecord"

instance Core.ToQuery BatchGetRecord where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchGetRecordResponse' smart constructor.
data BatchGetRecordResponse = BatchGetRecordResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of Records you requested to be retrieved in batch.
    records :: [BatchGetRecordResultDetail],
    -- | A list of errors that have occured when retrieving a batch of Records.
    errors :: [BatchGetRecordError],
    -- | A unprocessed list of @FeatureGroup@ names, with their corresponding
    -- @RecordIdentifier@ value, and Feature name.
    unprocessedIdentifiers :: [BatchGetRecordIdentifier]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchGetRecordResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'batchGetRecordResponse_httpStatus' - The response's http status code.
--
-- 'records', 'batchGetRecordResponse_records' - A list of Records you requested to be retrieved in batch.
--
-- 'errors', 'batchGetRecordResponse_errors' - A list of errors that have occured when retrieving a batch of Records.
--
-- 'unprocessedIdentifiers', 'batchGetRecordResponse_unprocessedIdentifiers' - A unprocessed list of @FeatureGroup@ names, with their corresponding
-- @RecordIdentifier@ value, and Feature name.
newBatchGetRecordResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchGetRecordResponse
newBatchGetRecordResponse pHttpStatus_ =
  BatchGetRecordResponse'
    { httpStatus = pHttpStatus_,
      records = Prelude.mempty,
      errors = Prelude.mempty,
      unprocessedIdentifiers = Prelude.mempty
    }

-- | The response's http status code.
batchGetRecordResponse_httpStatus :: Lens.Lens' BatchGetRecordResponse Prelude.Int
batchGetRecordResponse_httpStatus = Lens.lens (\BatchGetRecordResponse' {httpStatus} -> httpStatus) (\s@BatchGetRecordResponse' {} a -> s {httpStatus = a} :: BatchGetRecordResponse)

-- | A list of Records you requested to be retrieved in batch.
batchGetRecordResponse_records :: Lens.Lens' BatchGetRecordResponse [BatchGetRecordResultDetail]
batchGetRecordResponse_records = Lens.lens (\BatchGetRecordResponse' {records} -> records) (\s@BatchGetRecordResponse' {} a -> s {records = a} :: BatchGetRecordResponse) Prelude.. Lens.coerced

-- | A list of errors that have occured when retrieving a batch of Records.
batchGetRecordResponse_errors :: Lens.Lens' BatchGetRecordResponse [BatchGetRecordError]
batchGetRecordResponse_errors = Lens.lens (\BatchGetRecordResponse' {errors} -> errors) (\s@BatchGetRecordResponse' {} a -> s {errors = a} :: BatchGetRecordResponse) Prelude.. Lens.coerced

-- | A unprocessed list of @FeatureGroup@ names, with their corresponding
-- @RecordIdentifier@ value, and Feature name.
batchGetRecordResponse_unprocessedIdentifiers :: Lens.Lens' BatchGetRecordResponse [BatchGetRecordIdentifier]
batchGetRecordResponse_unprocessedIdentifiers = Lens.lens (\BatchGetRecordResponse' {unprocessedIdentifiers} -> unprocessedIdentifiers) (\s@BatchGetRecordResponse' {} a -> s {unprocessedIdentifiers = a} :: BatchGetRecordResponse) Prelude.. Lens.coerced

instance Prelude.NFData BatchGetRecordResponse
