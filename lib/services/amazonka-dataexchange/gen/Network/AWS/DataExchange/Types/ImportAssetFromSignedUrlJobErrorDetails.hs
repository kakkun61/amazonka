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
-- Module      : Network.AWS.DataExchange.Types.ImportAssetFromSignedUrlJobErrorDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataExchange.Types.ImportAssetFromSignedUrlJobErrorDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about the job error.
--
-- /See:/ 'newImportAssetFromSignedUrlJobErrorDetails' smart constructor.
data ImportAssetFromSignedUrlJobErrorDetails = ImportAssetFromSignedUrlJobErrorDetails'
  { -- | Information about the job error.
    assetName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportAssetFromSignedUrlJobErrorDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'assetName', 'importAssetFromSignedUrlJobErrorDetails_assetName' - Information about the job error.
newImportAssetFromSignedUrlJobErrorDetails ::
  -- | 'assetName'
  Prelude.Text ->
  ImportAssetFromSignedUrlJobErrorDetails
newImportAssetFromSignedUrlJobErrorDetails
  pAssetName_ =
    ImportAssetFromSignedUrlJobErrorDetails'
      { assetName =
          pAssetName_
      }

-- | Information about the job error.
importAssetFromSignedUrlJobErrorDetails_assetName :: Lens.Lens' ImportAssetFromSignedUrlJobErrorDetails Prelude.Text
importAssetFromSignedUrlJobErrorDetails_assetName = Lens.lens (\ImportAssetFromSignedUrlJobErrorDetails' {assetName} -> assetName) (\s@ImportAssetFromSignedUrlJobErrorDetails' {} a -> s {assetName = a} :: ImportAssetFromSignedUrlJobErrorDetails)

instance
  Core.FromJSON
    ImportAssetFromSignedUrlJobErrorDetails
  where
  parseJSON =
    Core.withObject
      "ImportAssetFromSignedUrlJobErrorDetails"
      ( \x ->
          ImportAssetFromSignedUrlJobErrorDetails'
            Prelude.<$> (x Core..: "AssetName")
      )

instance
  Prelude.Hashable
    ImportAssetFromSignedUrlJobErrorDetails

instance
  Prelude.NFData
    ImportAssetFromSignedUrlJobErrorDetails
