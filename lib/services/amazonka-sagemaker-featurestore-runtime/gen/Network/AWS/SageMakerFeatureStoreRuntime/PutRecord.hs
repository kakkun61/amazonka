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
-- Module      : Network.AWS.SageMakerFeatureStoreRuntime.PutRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used for data ingestion into the @FeatureStore@. The @PutRecord@ API
-- writes to both the @OnlineStore@ and @OfflineStore@. If the record is
-- the latest record for the @recordIdentifier@, the record is written to
-- both the @OnlineStore@ and @OfflineStore@. If the record is a historic
-- record, it is written only to the @OfflineStore@.
module Network.AWS.SageMakerFeatureStoreRuntime.PutRecord
  ( -- * Creating a Request
    PutRecord (..),
    newPutRecord,

    -- * Request Lenses
    putRecord_featureGroupName,
    putRecord_record,

    -- * Destructuring the Response
    PutRecordResponse (..),
    newPutRecordResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMakerFeatureStoreRuntime.Types

-- | /See:/ 'newPutRecord' smart constructor.
data PutRecord = PutRecord'
  { -- | The name of the feature group that you want to insert the record into.
    featureGroupName :: Prelude.Text,
    -- | List of FeatureValues to be inserted. This will be a full over-write. If
    -- you only want to update few of the feature values, do the following:
    --
    -- -   Use @GetRecord@ to retrieve the latest record.
    --
    -- -   Update the record returned from @GetRecord@.
    --
    -- -   Use @PutRecord@ to update feature values.
    record :: Prelude.NonEmpty FeatureValue
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutRecord' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'featureGroupName', 'putRecord_featureGroupName' - The name of the feature group that you want to insert the record into.
--
-- 'record', 'putRecord_record' - List of FeatureValues to be inserted. This will be a full over-write. If
-- you only want to update few of the feature values, do the following:
--
-- -   Use @GetRecord@ to retrieve the latest record.
--
-- -   Update the record returned from @GetRecord@.
--
-- -   Use @PutRecord@ to update feature values.
newPutRecord ::
  -- | 'featureGroupName'
  Prelude.Text ->
  -- | 'record'
  Prelude.NonEmpty FeatureValue ->
  PutRecord
newPutRecord pFeatureGroupName_ pRecord_ =
  PutRecord'
    { featureGroupName = pFeatureGroupName_,
      record = Lens.coerced Lens.# pRecord_
    }

-- | The name of the feature group that you want to insert the record into.
putRecord_featureGroupName :: Lens.Lens' PutRecord Prelude.Text
putRecord_featureGroupName = Lens.lens (\PutRecord' {featureGroupName} -> featureGroupName) (\s@PutRecord' {} a -> s {featureGroupName = a} :: PutRecord)

-- | List of FeatureValues to be inserted. This will be a full over-write. If
-- you only want to update few of the feature values, do the following:
--
-- -   Use @GetRecord@ to retrieve the latest record.
--
-- -   Update the record returned from @GetRecord@.
--
-- -   Use @PutRecord@ to update feature values.
putRecord_record :: Lens.Lens' PutRecord (Prelude.NonEmpty FeatureValue)
putRecord_record = Lens.lens (\PutRecord' {record} -> record) (\s@PutRecord' {} a -> s {record = a} :: PutRecord) Prelude.. Lens.coerced

instance Core.AWSRequest PutRecord where
  type AWSResponse PutRecord = PutRecordResponse
  request = Request.putJSON defaultService
  response = Response.receiveNull PutRecordResponse'

instance Prelude.Hashable PutRecord

instance Prelude.NFData PutRecord

instance Core.ToHeaders PutRecord where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutRecord where
  toJSON PutRecord' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Record" Core..= record)]
      )

instance Core.ToPath PutRecord where
  toPath PutRecord' {..} =
    Prelude.mconcat
      ["/FeatureGroup/", Core.toBS featureGroupName]

instance Core.ToQuery PutRecord where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutRecordResponse' smart constructor.
data PutRecordResponse = PutRecordResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutRecordResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newPutRecordResponse ::
  PutRecordResponse
newPutRecordResponse = PutRecordResponse'

instance Prelude.NFData PutRecordResponse
