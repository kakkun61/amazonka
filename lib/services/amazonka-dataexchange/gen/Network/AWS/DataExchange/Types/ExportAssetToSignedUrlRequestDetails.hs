{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DataExchange.Types.ExportAssetToSignedUrlRequestDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataExchange.Types.ExportAssetToSignedUrlRequestDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Details of the operation to be performed by the job.
--
-- /See:/ 'newExportAssetToSignedUrlRequestDetails' smart constructor.
data ExportAssetToSignedUrlRequestDetails = ExportAssetToSignedUrlRequestDetails'
  { -- | The unique identifier for the data set associated with this export job.
    dataSetId :: Prelude.Text,
    -- | The unique identifier for the asset that is exported to a signed URL.
    assetId :: Prelude.Text,
    -- | The unique identifier for the revision associated with this export
    -- request.
    revisionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExportAssetToSignedUrlRequestDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataSetId', 'exportAssetToSignedUrlRequestDetails_dataSetId' - The unique identifier for the data set associated with this export job.
--
-- 'assetId', 'exportAssetToSignedUrlRequestDetails_assetId' - The unique identifier for the asset that is exported to a signed URL.
--
-- 'revisionId', 'exportAssetToSignedUrlRequestDetails_revisionId' - The unique identifier for the revision associated with this export
-- request.
newExportAssetToSignedUrlRequestDetails ::
  -- | 'dataSetId'
  Prelude.Text ->
  -- | 'assetId'
  Prelude.Text ->
  -- | 'revisionId'
  Prelude.Text ->
  ExportAssetToSignedUrlRequestDetails
newExportAssetToSignedUrlRequestDetails
  pDataSetId_
  pAssetId_
  pRevisionId_ =
    ExportAssetToSignedUrlRequestDetails'
      { dataSetId =
          pDataSetId_,
        assetId = pAssetId_,
        revisionId = pRevisionId_
      }

-- | The unique identifier for the data set associated with this export job.
exportAssetToSignedUrlRequestDetails_dataSetId :: Lens.Lens' ExportAssetToSignedUrlRequestDetails Prelude.Text
exportAssetToSignedUrlRequestDetails_dataSetId = Lens.lens (\ExportAssetToSignedUrlRequestDetails' {dataSetId} -> dataSetId) (\s@ExportAssetToSignedUrlRequestDetails' {} a -> s {dataSetId = a} :: ExportAssetToSignedUrlRequestDetails)

-- | The unique identifier for the asset that is exported to a signed URL.
exportAssetToSignedUrlRequestDetails_assetId :: Lens.Lens' ExportAssetToSignedUrlRequestDetails Prelude.Text
exportAssetToSignedUrlRequestDetails_assetId = Lens.lens (\ExportAssetToSignedUrlRequestDetails' {assetId} -> assetId) (\s@ExportAssetToSignedUrlRequestDetails' {} a -> s {assetId = a} :: ExportAssetToSignedUrlRequestDetails)

-- | The unique identifier for the revision associated with this export
-- request.
exportAssetToSignedUrlRequestDetails_revisionId :: Lens.Lens' ExportAssetToSignedUrlRequestDetails Prelude.Text
exportAssetToSignedUrlRequestDetails_revisionId = Lens.lens (\ExportAssetToSignedUrlRequestDetails' {revisionId} -> revisionId) (\s@ExportAssetToSignedUrlRequestDetails' {} a -> s {revisionId = a} :: ExportAssetToSignedUrlRequestDetails)

instance
  Prelude.Hashable
    ExportAssetToSignedUrlRequestDetails

instance
  Prelude.NFData
    ExportAssetToSignedUrlRequestDetails

instance
  Core.ToJSON
    ExportAssetToSignedUrlRequestDetails
  where
  toJSON ExportAssetToSignedUrlRequestDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("DataSetId" Core..= dataSetId),
            Prelude.Just ("AssetId" Core..= assetId),
            Prelude.Just ("RevisionId" Core..= revisionId)
          ]
      )
