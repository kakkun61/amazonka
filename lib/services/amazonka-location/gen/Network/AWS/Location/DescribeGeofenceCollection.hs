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
-- Module      : Network.AWS.Location.DescribeGeofenceCollection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the geofence collection details.
module Network.AWS.Location.DescribeGeofenceCollection
  ( -- * Creating a Request
    DescribeGeofenceCollection (..),
    newDescribeGeofenceCollection,

    -- * Request Lenses
    describeGeofenceCollection_collectionName,

    -- * Destructuring the Response
    DescribeGeofenceCollectionResponse (..),
    newDescribeGeofenceCollectionResponse,

    -- * Response Lenses
    describeGeofenceCollectionResponse_pricingPlanDataSource,
    describeGeofenceCollectionResponse_kmsKeyId,
    describeGeofenceCollectionResponse_tags,
    describeGeofenceCollectionResponse_httpStatus,
    describeGeofenceCollectionResponse_collectionArn,
    describeGeofenceCollectionResponse_collectionName,
    describeGeofenceCollectionResponse_createTime,
    describeGeofenceCollectionResponse_description,
    describeGeofenceCollectionResponse_pricingPlan,
    describeGeofenceCollectionResponse_updateTime,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeGeofenceCollection' smart constructor.
data DescribeGeofenceCollection = DescribeGeofenceCollection'
  { -- | The name of the geofence collection.
    collectionName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeGeofenceCollection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'collectionName', 'describeGeofenceCollection_collectionName' - The name of the geofence collection.
newDescribeGeofenceCollection ::
  -- | 'collectionName'
  Prelude.Text ->
  DescribeGeofenceCollection
newDescribeGeofenceCollection pCollectionName_ =
  DescribeGeofenceCollection'
    { collectionName =
        pCollectionName_
    }

-- | The name of the geofence collection.
describeGeofenceCollection_collectionName :: Lens.Lens' DescribeGeofenceCollection Prelude.Text
describeGeofenceCollection_collectionName = Lens.lens (\DescribeGeofenceCollection' {collectionName} -> collectionName) (\s@DescribeGeofenceCollection' {} a -> s {collectionName = a} :: DescribeGeofenceCollection)

instance Core.AWSRequest DescribeGeofenceCollection where
  type
    AWSResponse DescribeGeofenceCollection =
      DescribeGeofenceCollectionResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeGeofenceCollectionResponse'
            Prelude.<$> (x Core..?> "PricingPlanDataSource")
            Prelude.<*> (x Core..?> "KmsKeyId")
            Prelude.<*> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "CollectionArn")
            Prelude.<*> (x Core..:> "CollectionName")
            Prelude.<*> (x Core..:> "CreateTime")
            Prelude.<*> (x Core..:> "Description")
            Prelude.<*> (x Core..:> "PricingPlan")
            Prelude.<*> (x Core..:> "UpdateTime")
      )

instance Prelude.Hashable DescribeGeofenceCollection

instance Prelude.NFData DescribeGeofenceCollection

instance Core.ToHeaders DescribeGeofenceCollection where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeGeofenceCollection where
  toPath DescribeGeofenceCollection' {..} =
    Prelude.mconcat
      [ "/geofencing/v0/collections/",
        Core.toBS collectionName
      ]

instance Core.ToQuery DescribeGeofenceCollection where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeGeofenceCollectionResponse' smart constructor.
data DescribeGeofenceCollectionResponse = DescribeGeofenceCollectionResponse'
  { -- | The specified data provider for the geofence collection.
    pricingPlanDataSource :: Prelude.Maybe Prelude.Text,
    -- | A key identifier for an
    -- <https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html AWS KMS customer managed key>
    -- assigned to the Amazon Location resource
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | Displays the key, value pairs of tags associated with this resource.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The Amazon Resource Name (ARN) for the geofence collection resource.
    -- Used when you need to specify a resource across all AWS.
    --
    -- -   Format example:
    --     @arn:aws:geo:region:account-id:geofence-collection\/ExampleGeofenceCollection@
    collectionArn :: Prelude.Text,
    -- | The name of the geofence collection.
    collectionName :: Prelude.Text,
    -- | The timestamp for when the geofence resource was created in
    -- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
    -- format: @YYYY-MM-DDThh:mm:ss.sssZ@
    createTime :: Core.POSIX,
    -- | The optional description for the geofence collection.
    description :: Prelude.Text,
    -- | The pricing plan selected for the specified geofence collection.
    --
    -- For additional details and restrictions on each pricing plan option, see
    -- the
    -- <https://aws.amazon.com/location/pricing/ Amazon Location Service pricing page>.
    pricingPlan :: PricingPlan,
    -- | The timestamp for when the geofence collection was last updated in
    -- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
    -- format: @YYYY-MM-DDThh:mm:ss.sssZ@
    updateTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeGeofenceCollectionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pricingPlanDataSource', 'describeGeofenceCollectionResponse_pricingPlanDataSource' - The specified data provider for the geofence collection.
--
-- 'kmsKeyId', 'describeGeofenceCollectionResponse_kmsKeyId' - A key identifier for an
-- <https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html AWS KMS customer managed key>
-- assigned to the Amazon Location resource
--
-- 'tags', 'describeGeofenceCollectionResponse_tags' - Displays the key, value pairs of tags associated with this resource.
--
-- 'httpStatus', 'describeGeofenceCollectionResponse_httpStatus' - The response's http status code.
--
-- 'collectionArn', 'describeGeofenceCollectionResponse_collectionArn' - The Amazon Resource Name (ARN) for the geofence collection resource.
-- Used when you need to specify a resource across all AWS.
--
-- -   Format example:
--     @arn:aws:geo:region:account-id:geofence-collection\/ExampleGeofenceCollection@
--
-- 'collectionName', 'describeGeofenceCollectionResponse_collectionName' - The name of the geofence collection.
--
-- 'createTime', 'describeGeofenceCollectionResponse_createTime' - The timestamp for when the geofence resource was created in
-- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
-- format: @YYYY-MM-DDThh:mm:ss.sssZ@
--
-- 'description', 'describeGeofenceCollectionResponse_description' - The optional description for the geofence collection.
--
-- 'pricingPlan', 'describeGeofenceCollectionResponse_pricingPlan' - The pricing plan selected for the specified geofence collection.
--
-- For additional details and restrictions on each pricing plan option, see
-- the
-- <https://aws.amazon.com/location/pricing/ Amazon Location Service pricing page>.
--
-- 'updateTime', 'describeGeofenceCollectionResponse_updateTime' - The timestamp for when the geofence collection was last updated in
-- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
-- format: @YYYY-MM-DDThh:mm:ss.sssZ@
newDescribeGeofenceCollectionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'collectionArn'
  Prelude.Text ->
  -- | 'collectionName'
  Prelude.Text ->
  -- | 'createTime'
  Prelude.UTCTime ->
  -- | 'description'
  Prelude.Text ->
  -- | 'pricingPlan'
  PricingPlan ->
  -- | 'updateTime'
  Prelude.UTCTime ->
  DescribeGeofenceCollectionResponse
newDescribeGeofenceCollectionResponse
  pHttpStatus_
  pCollectionArn_
  pCollectionName_
  pCreateTime_
  pDescription_
  pPricingPlan_
  pUpdateTime_ =
    DescribeGeofenceCollectionResponse'
      { pricingPlanDataSource =
          Prelude.Nothing,
        kmsKeyId = Prelude.Nothing,
        tags = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        collectionArn = pCollectionArn_,
        collectionName = pCollectionName_,
        createTime =
          Core._Time Lens.# pCreateTime_,
        description = pDescription_,
        pricingPlan = pPricingPlan_,
        updateTime =
          Core._Time Lens.# pUpdateTime_
      }

-- | The specified data provider for the geofence collection.
describeGeofenceCollectionResponse_pricingPlanDataSource :: Lens.Lens' DescribeGeofenceCollectionResponse (Prelude.Maybe Prelude.Text)
describeGeofenceCollectionResponse_pricingPlanDataSource = Lens.lens (\DescribeGeofenceCollectionResponse' {pricingPlanDataSource} -> pricingPlanDataSource) (\s@DescribeGeofenceCollectionResponse' {} a -> s {pricingPlanDataSource = a} :: DescribeGeofenceCollectionResponse)

-- | A key identifier for an
-- <https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html AWS KMS customer managed key>
-- assigned to the Amazon Location resource
describeGeofenceCollectionResponse_kmsKeyId :: Lens.Lens' DescribeGeofenceCollectionResponse (Prelude.Maybe Prelude.Text)
describeGeofenceCollectionResponse_kmsKeyId = Lens.lens (\DescribeGeofenceCollectionResponse' {kmsKeyId} -> kmsKeyId) (\s@DescribeGeofenceCollectionResponse' {} a -> s {kmsKeyId = a} :: DescribeGeofenceCollectionResponse)

-- | Displays the key, value pairs of tags associated with this resource.
describeGeofenceCollectionResponse_tags :: Lens.Lens' DescribeGeofenceCollectionResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeGeofenceCollectionResponse_tags = Lens.lens (\DescribeGeofenceCollectionResponse' {tags} -> tags) (\s@DescribeGeofenceCollectionResponse' {} a -> s {tags = a} :: DescribeGeofenceCollectionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeGeofenceCollectionResponse_httpStatus :: Lens.Lens' DescribeGeofenceCollectionResponse Prelude.Int
describeGeofenceCollectionResponse_httpStatus = Lens.lens (\DescribeGeofenceCollectionResponse' {httpStatus} -> httpStatus) (\s@DescribeGeofenceCollectionResponse' {} a -> s {httpStatus = a} :: DescribeGeofenceCollectionResponse)

-- | The Amazon Resource Name (ARN) for the geofence collection resource.
-- Used when you need to specify a resource across all AWS.
--
-- -   Format example:
--     @arn:aws:geo:region:account-id:geofence-collection\/ExampleGeofenceCollection@
describeGeofenceCollectionResponse_collectionArn :: Lens.Lens' DescribeGeofenceCollectionResponse Prelude.Text
describeGeofenceCollectionResponse_collectionArn = Lens.lens (\DescribeGeofenceCollectionResponse' {collectionArn} -> collectionArn) (\s@DescribeGeofenceCollectionResponse' {} a -> s {collectionArn = a} :: DescribeGeofenceCollectionResponse)

-- | The name of the geofence collection.
describeGeofenceCollectionResponse_collectionName :: Lens.Lens' DescribeGeofenceCollectionResponse Prelude.Text
describeGeofenceCollectionResponse_collectionName = Lens.lens (\DescribeGeofenceCollectionResponse' {collectionName} -> collectionName) (\s@DescribeGeofenceCollectionResponse' {} a -> s {collectionName = a} :: DescribeGeofenceCollectionResponse)

-- | The timestamp for when the geofence resource was created in
-- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
-- format: @YYYY-MM-DDThh:mm:ss.sssZ@
describeGeofenceCollectionResponse_createTime :: Lens.Lens' DescribeGeofenceCollectionResponse Prelude.UTCTime
describeGeofenceCollectionResponse_createTime = Lens.lens (\DescribeGeofenceCollectionResponse' {createTime} -> createTime) (\s@DescribeGeofenceCollectionResponse' {} a -> s {createTime = a} :: DescribeGeofenceCollectionResponse) Prelude.. Core._Time

-- | The optional description for the geofence collection.
describeGeofenceCollectionResponse_description :: Lens.Lens' DescribeGeofenceCollectionResponse Prelude.Text
describeGeofenceCollectionResponse_description = Lens.lens (\DescribeGeofenceCollectionResponse' {description} -> description) (\s@DescribeGeofenceCollectionResponse' {} a -> s {description = a} :: DescribeGeofenceCollectionResponse)

-- | The pricing plan selected for the specified geofence collection.
--
-- For additional details and restrictions on each pricing plan option, see
-- the
-- <https://aws.amazon.com/location/pricing/ Amazon Location Service pricing page>.
describeGeofenceCollectionResponse_pricingPlan :: Lens.Lens' DescribeGeofenceCollectionResponse PricingPlan
describeGeofenceCollectionResponse_pricingPlan = Lens.lens (\DescribeGeofenceCollectionResponse' {pricingPlan} -> pricingPlan) (\s@DescribeGeofenceCollectionResponse' {} a -> s {pricingPlan = a} :: DescribeGeofenceCollectionResponse)

-- | The timestamp for when the geofence collection was last updated in
-- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
-- format: @YYYY-MM-DDThh:mm:ss.sssZ@
describeGeofenceCollectionResponse_updateTime :: Lens.Lens' DescribeGeofenceCollectionResponse Prelude.UTCTime
describeGeofenceCollectionResponse_updateTime = Lens.lens (\DescribeGeofenceCollectionResponse' {updateTime} -> updateTime) (\s@DescribeGeofenceCollectionResponse' {} a -> s {updateTime = a} :: DescribeGeofenceCollectionResponse) Prelude.. Core._Time

instance
  Prelude.NFData
    DescribeGeofenceCollectionResponse
