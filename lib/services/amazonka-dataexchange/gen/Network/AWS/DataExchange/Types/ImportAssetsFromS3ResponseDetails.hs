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
-- Module      : Network.AWS.DataExchange.Types.ImportAssetsFromS3ResponseDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataExchange.Types.ImportAssetsFromS3ResponseDetails where

import qualified Network.AWS.Core as Core
import Network.AWS.DataExchange.Types.AssetSourceEntry
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Details from an import from Amazon S3 response.
--
-- /See:/ 'newImportAssetsFromS3ResponseDetails' smart constructor.
data ImportAssetsFromS3ResponseDetails = ImportAssetsFromS3ResponseDetails'
  { -- | The unique identifier for the data set associated with this import job.
    dataSetId :: Prelude.Text,
    -- | Is a list of Amazon S3 bucket and object key pairs.
    assetSources :: [AssetSourceEntry],
    -- | The unique identifier for the revision associated with this import
    -- response.
    revisionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportAssetsFromS3ResponseDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataSetId', 'importAssetsFromS3ResponseDetails_dataSetId' - The unique identifier for the data set associated with this import job.
--
-- 'assetSources', 'importAssetsFromS3ResponseDetails_assetSources' - Is a list of Amazon S3 bucket and object key pairs.
--
-- 'revisionId', 'importAssetsFromS3ResponseDetails_revisionId' - The unique identifier for the revision associated with this import
-- response.
newImportAssetsFromS3ResponseDetails ::
  -- | 'dataSetId'
  Prelude.Text ->
  -- | 'revisionId'
  Prelude.Text ->
  ImportAssetsFromS3ResponseDetails
newImportAssetsFromS3ResponseDetails
  pDataSetId_
  pRevisionId_ =
    ImportAssetsFromS3ResponseDetails'
      { dataSetId =
          pDataSetId_,
        assetSources = Prelude.mempty,
        revisionId = pRevisionId_
      }

-- | The unique identifier for the data set associated with this import job.
importAssetsFromS3ResponseDetails_dataSetId :: Lens.Lens' ImportAssetsFromS3ResponseDetails Prelude.Text
importAssetsFromS3ResponseDetails_dataSetId = Lens.lens (\ImportAssetsFromS3ResponseDetails' {dataSetId} -> dataSetId) (\s@ImportAssetsFromS3ResponseDetails' {} a -> s {dataSetId = a} :: ImportAssetsFromS3ResponseDetails)

-- | Is a list of Amazon S3 bucket and object key pairs.
importAssetsFromS3ResponseDetails_assetSources :: Lens.Lens' ImportAssetsFromS3ResponseDetails [AssetSourceEntry]
importAssetsFromS3ResponseDetails_assetSources = Lens.lens (\ImportAssetsFromS3ResponseDetails' {assetSources} -> assetSources) (\s@ImportAssetsFromS3ResponseDetails' {} a -> s {assetSources = a} :: ImportAssetsFromS3ResponseDetails) Prelude.. Lens.coerced

-- | The unique identifier for the revision associated with this import
-- response.
importAssetsFromS3ResponseDetails_revisionId :: Lens.Lens' ImportAssetsFromS3ResponseDetails Prelude.Text
importAssetsFromS3ResponseDetails_revisionId = Lens.lens (\ImportAssetsFromS3ResponseDetails' {revisionId} -> revisionId) (\s@ImportAssetsFromS3ResponseDetails' {} a -> s {revisionId = a} :: ImportAssetsFromS3ResponseDetails)

instance
  Core.FromJSON
    ImportAssetsFromS3ResponseDetails
  where
  parseJSON =
    Core.withObject
      "ImportAssetsFromS3ResponseDetails"
      ( \x ->
          ImportAssetsFromS3ResponseDetails'
            Prelude.<$> (x Core..: "DataSetId")
            Prelude.<*> (x Core..:? "AssetSources" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "RevisionId")
      )

instance
  Prelude.Hashable
    ImportAssetsFromS3ResponseDetails

instance
  Prelude.NFData
    ImportAssetsFromS3ResponseDetails
