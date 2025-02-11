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
-- Module      : Network.AWS.DataExchange.DeleteAsset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation deletes an asset.
module Network.AWS.DataExchange.DeleteAsset
  ( -- * Creating a Request
    DeleteAsset (..),
    newDeleteAsset,

    -- * Request Lenses
    deleteAsset_revisionId,
    deleteAsset_assetId,
    deleteAsset_dataSetId,

    -- * Destructuring the Response
    DeleteAssetResponse (..),
    newDeleteAssetResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataExchange.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteAsset' smart constructor.
data DeleteAsset = DeleteAsset'
  { -- | The unique identifier for a revision.
    revisionId :: Prelude.Text,
    -- | The unique identifier for an asset.
    assetId :: Prelude.Text,
    -- | The unique identifier for a data set.
    dataSetId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAsset' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'revisionId', 'deleteAsset_revisionId' - The unique identifier for a revision.
--
-- 'assetId', 'deleteAsset_assetId' - The unique identifier for an asset.
--
-- 'dataSetId', 'deleteAsset_dataSetId' - The unique identifier for a data set.
newDeleteAsset ::
  -- | 'revisionId'
  Prelude.Text ->
  -- | 'assetId'
  Prelude.Text ->
  -- | 'dataSetId'
  Prelude.Text ->
  DeleteAsset
newDeleteAsset pRevisionId_ pAssetId_ pDataSetId_ =
  DeleteAsset'
    { revisionId = pRevisionId_,
      assetId = pAssetId_,
      dataSetId = pDataSetId_
    }

-- | The unique identifier for a revision.
deleteAsset_revisionId :: Lens.Lens' DeleteAsset Prelude.Text
deleteAsset_revisionId = Lens.lens (\DeleteAsset' {revisionId} -> revisionId) (\s@DeleteAsset' {} a -> s {revisionId = a} :: DeleteAsset)

-- | The unique identifier for an asset.
deleteAsset_assetId :: Lens.Lens' DeleteAsset Prelude.Text
deleteAsset_assetId = Lens.lens (\DeleteAsset' {assetId} -> assetId) (\s@DeleteAsset' {} a -> s {assetId = a} :: DeleteAsset)

-- | The unique identifier for a data set.
deleteAsset_dataSetId :: Lens.Lens' DeleteAsset Prelude.Text
deleteAsset_dataSetId = Lens.lens (\DeleteAsset' {dataSetId} -> dataSetId) (\s@DeleteAsset' {} a -> s {dataSetId = a} :: DeleteAsset)

instance Core.AWSRequest DeleteAsset where
  type AWSResponse DeleteAsset = DeleteAssetResponse
  request = Request.delete defaultService
  response = Response.receiveNull DeleteAssetResponse'

instance Prelude.Hashable DeleteAsset

instance Prelude.NFData DeleteAsset

instance Core.ToHeaders DeleteAsset where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteAsset where
  toPath DeleteAsset' {..} =
    Prelude.mconcat
      [ "/v1/data-sets/",
        Core.toBS dataSetId,
        "/revisions/",
        Core.toBS revisionId,
        "/assets/",
        Core.toBS assetId
      ]

instance Core.ToQuery DeleteAsset where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteAssetResponse' smart constructor.
data DeleteAssetResponse = DeleteAssetResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAssetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteAssetResponse ::
  DeleteAssetResponse
newDeleteAssetResponse = DeleteAssetResponse'

instance Prelude.NFData DeleteAssetResponse
