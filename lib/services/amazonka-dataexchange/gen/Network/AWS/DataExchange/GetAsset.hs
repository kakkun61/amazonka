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
-- Module      : Network.AWS.DataExchange.GetAsset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation returns information about an asset.
module Network.AWS.DataExchange.GetAsset
  ( -- * Creating a Request
    GetAsset (..),
    newGetAsset,

    -- * Request Lenses
    getAsset_revisionId,
    getAsset_assetId,
    getAsset_dataSetId,

    -- * Destructuring the Response
    GetAssetResponse (..),
    newGetAssetResponse,

    -- * Response Lenses
    getAssetResponse_arn,
    getAssetResponse_createdAt,
    getAssetResponse_sourceId,
    getAssetResponse_dataSetId,
    getAssetResponse_name,
    getAssetResponse_assetDetails,
    getAssetResponse_id,
    getAssetResponse_assetType,
    getAssetResponse_updatedAt,
    getAssetResponse_revisionId,
    getAssetResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataExchange.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAsset' smart constructor.
data GetAsset = GetAsset'
  { -- | The unique identifier for a revision.
    revisionId :: Prelude.Text,
    -- | The unique identifier for an asset.
    assetId :: Prelude.Text,
    -- | The unique identifier for a data set.
    dataSetId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAsset' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'revisionId', 'getAsset_revisionId' - The unique identifier for a revision.
--
-- 'assetId', 'getAsset_assetId' - The unique identifier for an asset.
--
-- 'dataSetId', 'getAsset_dataSetId' - The unique identifier for a data set.
newGetAsset ::
  -- | 'revisionId'
  Prelude.Text ->
  -- | 'assetId'
  Prelude.Text ->
  -- | 'dataSetId'
  Prelude.Text ->
  GetAsset
newGetAsset pRevisionId_ pAssetId_ pDataSetId_ =
  GetAsset'
    { revisionId = pRevisionId_,
      assetId = pAssetId_,
      dataSetId = pDataSetId_
    }

-- | The unique identifier for a revision.
getAsset_revisionId :: Lens.Lens' GetAsset Prelude.Text
getAsset_revisionId = Lens.lens (\GetAsset' {revisionId} -> revisionId) (\s@GetAsset' {} a -> s {revisionId = a} :: GetAsset)

-- | The unique identifier for an asset.
getAsset_assetId :: Lens.Lens' GetAsset Prelude.Text
getAsset_assetId = Lens.lens (\GetAsset' {assetId} -> assetId) (\s@GetAsset' {} a -> s {assetId = a} :: GetAsset)

-- | The unique identifier for a data set.
getAsset_dataSetId :: Lens.Lens' GetAsset Prelude.Text
getAsset_dataSetId = Lens.lens (\GetAsset' {dataSetId} -> dataSetId) (\s@GetAsset' {} a -> s {dataSetId = a} :: GetAsset)

instance Core.AWSRequest GetAsset where
  type AWSResponse GetAsset = GetAssetResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAssetResponse'
            Prelude.<$> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "CreatedAt")
            Prelude.<*> (x Core..?> "SourceId")
            Prelude.<*> (x Core..?> "DataSetId")
            Prelude.<*> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "AssetDetails")
            Prelude.<*> (x Core..?> "Id")
            Prelude.<*> (x Core..?> "AssetType")
            Prelude.<*> (x Core..?> "UpdatedAt")
            Prelude.<*> (x Core..?> "RevisionId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAsset

instance Prelude.NFData GetAsset

instance Core.ToHeaders GetAsset where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetAsset where
  toPath GetAsset' {..} =
    Prelude.mconcat
      [ "/v1/data-sets/",
        Core.toBS dataSetId,
        "/revisions/",
        Core.toBS revisionId,
        "/assets/",
        Core.toBS assetId
      ]

instance Core.ToQuery GetAsset where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAssetResponse' smart constructor.
data GetAssetResponse = GetAssetResponse'
  { -- | The ARN for the asset.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The date and time that the asset was created, in ISO 8601 format.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The asset ID of the owned asset corresponding to the entitled asset
    -- being viewed. This parameter is returned when an asset owner is viewing
    -- the entitled copy of its owned asset.
    sourceId :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the data set associated with this asset.
    dataSetId :: Prelude.Maybe Prelude.Text,
    -- | The name of the asset. When importing from Amazon S3, the S3 object key
    -- is used as the asset name. When exporting to Amazon S3, the asset name
    -- is used as default target S3 object key.
    name :: Prelude.Maybe Prelude.Text,
    -- | Information about the asset.
    assetDetails :: Prelude.Maybe AssetDetails,
    -- | The unique identifier for the asset.
    id :: Prelude.Maybe Prelude.Text,
    -- | The type of asset that is added to a data set.
    assetType :: Prelude.Maybe AssetType,
    -- | The date and time that the asset was last updated, in ISO 8601 format.
    updatedAt :: Prelude.Maybe Core.POSIX,
    -- | The unique identifier for the revision associated with this asset.
    revisionId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAssetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'getAssetResponse_arn' - The ARN for the asset.
--
-- 'createdAt', 'getAssetResponse_createdAt' - The date and time that the asset was created, in ISO 8601 format.
--
-- 'sourceId', 'getAssetResponse_sourceId' - The asset ID of the owned asset corresponding to the entitled asset
-- being viewed. This parameter is returned when an asset owner is viewing
-- the entitled copy of its owned asset.
--
-- 'dataSetId', 'getAssetResponse_dataSetId' - The unique identifier for the data set associated with this asset.
--
-- 'name', 'getAssetResponse_name' - The name of the asset. When importing from Amazon S3, the S3 object key
-- is used as the asset name. When exporting to Amazon S3, the asset name
-- is used as default target S3 object key.
--
-- 'assetDetails', 'getAssetResponse_assetDetails' - Information about the asset.
--
-- 'id', 'getAssetResponse_id' - The unique identifier for the asset.
--
-- 'assetType', 'getAssetResponse_assetType' - The type of asset that is added to a data set.
--
-- 'updatedAt', 'getAssetResponse_updatedAt' - The date and time that the asset was last updated, in ISO 8601 format.
--
-- 'revisionId', 'getAssetResponse_revisionId' - The unique identifier for the revision associated with this asset.
--
-- 'httpStatus', 'getAssetResponse_httpStatus' - The response's http status code.
newGetAssetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAssetResponse
newGetAssetResponse pHttpStatus_ =
  GetAssetResponse'
    { arn = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      sourceId = Prelude.Nothing,
      dataSetId = Prelude.Nothing,
      name = Prelude.Nothing,
      assetDetails = Prelude.Nothing,
      id = Prelude.Nothing,
      assetType = Prelude.Nothing,
      updatedAt = Prelude.Nothing,
      revisionId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN for the asset.
getAssetResponse_arn :: Lens.Lens' GetAssetResponse (Prelude.Maybe Prelude.Text)
getAssetResponse_arn = Lens.lens (\GetAssetResponse' {arn} -> arn) (\s@GetAssetResponse' {} a -> s {arn = a} :: GetAssetResponse)

-- | The date and time that the asset was created, in ISO 8601 format.
getAssetResponse_createdAt :: Lens.Lens' GetAssetResponse (Prelude.Maybe Prelude.UTCTime)
getAssetResponse_createdAt = Lens.lens (\GetAssetResponse' {createdAt} -> createdAt) (\s@GetAssetResponse' {} a -> s {createdAt = a} :: GetAssetResponse) Prelude.. Lens.mapping Core._Time

-- | The asset ID of the owned asset corresponding to the entitled asset
-- being viewed. This parameter is returned when an asset owner is viewing
-- the entitled copy of its owned asset.
getAssetResponse_sourceId :: Lens.Lens' GetAssetResponse (Prelude.Maybe Prelude.Text)
getAssetResponse_sourceId = Lens.lens (\GetAssetResponse' {sourceId} -> sourceId) (\s@GetAssetResponse' {} a -> s {sourceId = a} :: GetAssetResponse)

-- | The unique identifier for the data set associated with this asset.
getAssetResponse_dataSetId :: Lens.Lens' GetAssetResponse (Prelude.Maybe Prelude.Text)
getAssetResponse_dataSetId = Lens.lens (\GetAssetResponse' {dataSetId} -> dataSetId) (\s@GetAssetResponse' {} a -> s {dataSetId = a} :: GetAssetResponse)

-- | The name of the asset. When importing from Amazon S3, the S3 object key
-- is used as the asset name. When exporting to Amazon S3, the asset name
-- is used as default target S3 object key.
getAssetResponse_name :: Lens.Lens' GetAssetResponse (Prelude.Maybe Prelude.Text)
getAssetResponse_name = Lens.lens (\GetAssetResponse' {name} -> name) (\s@GetAssetResponse' {} a -> s {name = a} :: GetAssetResponse)

-- | Information about the asset.
getAssetResponse_assetDetails :: Lens.Lens' GetAssetResponse (Prelude.Maybe AssetDetails)
getAssetResponse_assetDetails = Lens.lens (\GetAssetResponse' {assetDetails} -> assetDetails) (\s@GetAssetResponse' {} a -> s {assetDetails = a} :: GetAssetResponse)

-- | The unique identifier for the asset.
getAssetResponse_id :: Lens.Lens' GetAssetResponse (Prelude.Maybe Prelude.Text)
getAssetResponse_id = Lens.lens (\GetAssetResponse' {id} -> id) (\s@GetAssetResponse' {} a -> s {id = a} :: GetAssetResponse)

-- | The type of asset that is added to a data set.
getAssetResponse_assetType :: Lens.Lens' GetAssetResponse (Prelude.Maybe AssetType)
getAssetResponse_assetType = Lens.lens (\GetAssetResponse' {assetType} -> assetType) (\s@GetAssetResponse' {} a -> s {assetType = a} :: GetAssetResponse)

-- | The date and time that the asset was last updated, in ISO 8601 format.
getAssetResponse_updatedAt :: Lens.Lens' GetAssetResponse (Prelude.Maybe Prelude.UTCTime)
getAssetResponse_updatedAt = Lens.lens (\GetAssetResponse' {updatedAt} -> updatedAt) (\s@GetAssetResponse' {} a -> s {updatedAt = a} :: GetAssetResponse) Prelude.. Lens.mapping Core._Time

-- | The unique identifier for the revision associated with this asset.
getAssetResponse_revisionId :: Lens.Lens' GetAssetResponse (Prelude.Maybe Prelude.Text)
getAssetResponse_revisionId = Lens.lens (\GetAssetResponse' {revisionId} -> revisionId) (\s@GetAssetResponse' {} a -> s {revisionId = a} :: GetAssetResponse)

-- | The response's http status code.
getAssetResponse_httpStatus :: Lens.Lens' GetAssetResponse Prelude.Int
getAssetResponse_httpStatus = Lens.lens (\GetAssetResponse' {httpStatus} -> httpStatus) (\s@GetAssetResponse' {} a -> s {httpStatus = a} :: GetAssetResponse)

instance Prelude.NFData GetAssetResponse
