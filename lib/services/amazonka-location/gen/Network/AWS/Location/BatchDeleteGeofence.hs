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
-- Module      : Network.AWS.Location.BatchDeleteGeofence
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a batch of geofences from a geofence collection.
--
-- This operation deletes the resource permanently.
module Network.AWS.Location.BatchDeleteGeofence
  ( -- * Creating a Request
    BatchDeleteGeofence (..),
    newBatchDeleteGeofence,

    -- * Request Lenses
    batchDeleteGeofence_collectionName,
    batchDeleteGeofence_geofenceIds,

    -- * Destructuring the Response
    BatchDeleteGeofenceResponse (..),
    newBatchDeleteGeofenceResponse,

    -- * Response Lenses
    batchDeleteGeofenceResponse_httpStatus,
    batchDeleteGeofenceResponse_errors,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchDeleteGeofence' smart constructor.
data BatchDeleteGeofence = BatchDeleteGeofence'
  { -- | The geofence collection storing the geofences to be deleted.
    collectionName :: Prelude.Text,
    -- | The batch of geofences to be deleted.
    geofenceIds :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDeleteGeofence' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'collectionName', 'batchDeleteGeofence_collectionName' - The geofence collection storing the geofences to be deleted.
--
-- 'geofenceIds', 'batchDeleteGeofence_geofenceIds' - The batch of geofences to be deleted.
newBatchDeleteGeofence ::
  -- | 'collectionName'
  Prelude.Text ->
  -- | 'geofenceIds'
  Prelude.NonEmpty Prelude.Text ->
  BatchDeleteGeofence
newBatchDeleteGeofence pCollectionName_ pGeofenceIds_ =
  BatchDeleteGeofence'
    { collectionName =
        pCollectionName_,
      geofenceIds = Lens.coerced Lens.# pGeofenceIds_
    }

-- | The geofence collection storing the geofences to be deleted.
batchDeleteGeofence_collectionName :: Lens.Lens' BatchDeleteGeofence Prelude.Text
batchDeleteGeofence_collectionName = Lens.lens (\BatchDeleteGeofence' {collectionName} -> collectionName) (\s@BatchDeleteGeofence' {} a -> s {collectionName = a} :: BatchDeleteGeofence)

-- | The batch of geofences to be deleted.
batchDeleteGeofence_geofenceIds :: Lens.Lens' BatchDeleteGeofence (Prelude.NonEmpty Prelude.Text)
batchDeleteGeofence_geofenceIds = Lens.lens (\BatchDeleteGeofence' {geofenceIds} -> geofenceIds) (\s@BatchDeleteGeofence' {} a -> s {geofenceIds = a} :: BatchDeleteGeofence) Prelude.. Lens.coerced

instance Core.AWSRequest BatchDeleteGeofence where
  type
    AWSResponse BatchDeleteGeofence =
      BatchDeleteGeofenceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchDeleteGeofenceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Errors" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable BatchDeleteGeofence

instance Prelude.NFData BatchDeleteGeofence

instance Core.ToHeaders BatchDeleteGeofence where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchDeleteGeofence where
  toJSON BatchDeleteGeofence' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("GeofenceIds" Core..= geofenceIds)]
      )

instance Core.ToPath BatchDeleteGeofence where
  toPath BatchDeleteGeofence' {..} =
    Prelude.mconcat
      [ "/geofencing/v0/collections/",
        Core.toBS collectionName,
        "/delete-geofences"
      ]

instance Core.ToQuery BatchDeleteGeofence where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchDeleteGeofenceResponse' smart constructor.
data BatchDeleteGeofenceResponse = BatchDeleteGeofenceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Contains error details for each geofence that failed to delete.
    errors :: [BatchDeleteGeofenceError]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDeleteGeofenceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'batchDeleteGeofenceResponse_httpStatus' - The response's http status code.
--
-- 'errors', 'batchDeleteGeofenceResponse_errors' - Contains error details for each geofence that failed to delete.
newBatchDeleteGeofenceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchDeleteGeofenceResponse
newBatchDeleteGeofenceResponse pHttpStatus_ =
  BatchDeleteGeofenceResponse'
    { httpStatus =
        pHttpStatus_,
      errors = Prelude.mempty
    }

-- | The response's http status code.
batchDeleteGeofenceResponse_httpStatus :: Lens.Lens' BatchDeleteGeofenceResponse Prelude.Int
batchDeleteGeofenceResponse_httpStatus = Lens.lens (\BatchDeleteGeofenceResponse' {httpStatus} -> httpStatus) (\s@BatchDeleteGeofenceResponse' {} a -> s {httpStatus = a} :: BatchDeleteGeofenceResponse)

-- | Contains error details for each geofence that failed to delete.
batchDeleteGeofenceResponse_errors :: Lens.Lens' BatchDeleteGeofenceResponse [BatchDeleteGeofenceError]
batchDeleteGeofenceResponse_errors = Lens.lens (\BatchDeleteGeofenceResponse' {errors} -> errors) (\s@BatchDeleteGeofenceResponse' {} a -> s {errors = a} :: BatchDeleteGeofenceResponse) Prelude.. Lens.coerced

instance Prelude.NFData BatchDeleteGeofenceResponse
