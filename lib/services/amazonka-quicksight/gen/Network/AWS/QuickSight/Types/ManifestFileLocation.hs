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
-- Module      : Network.AWS.QuickSight.Types.ManifestFileLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.ManifestFileLocation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Amazon S3 manifest file location.
--
-- /See:/ 'newManifestFileLocation' smart constructor.
data ManifestFileLocation = ManifestFileLocation'
  { -- | Amazon S3 bucket.
    bucket :: Prelude.Text,
    -- | Amazon S3 key that identifies an object.
    key :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ManifestFileLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucket', 'manifestFileLocation_bucket' - Amazon S3 bucket.
--
-- 'key', 'manifestFileLocation_key' - Amazon S3 key that identifies an object.
newManifestFileLocation ::
  -- | 'bucket'
  Prelude.Text ->
  -- | 'key'
  Prelude.Text ->
  ManifestFileLocation
newManifestFileLocation pBucket_ pKey_ =
  ManifestFileLocation'
    { bucket = pBucket_,
      key = pKey_
    }

-- | Amazon S3 bucket.
manifestFileLocation_bucket :: Lens.Lens' ManifestFileLocation Prelude.Text
manifestFileLocation_bucket = Lens.lens (\ManifestFileLocation' {bucket} -> bucket) (\s@ManifestFileLocation' {} a -> s {bucket = a} :: ManifestFileLocation)

-- | Amazon S3 key that identifies an object.
manifestFileLocation_key :: Lens.Lens' ManifestFileLocation Prelude.Text
manifestFileLocation_key = Lens.lens (\ManifestFileLocation' {key} -> key) (\s@ManifestFileLocation' {} a -> s {key = a} :: ManifestFileLocation)

instance Core.FromJSON ManifestFileLocation where
  parseJSON =
    Core.withObject
      "ManifestFileLocation"
      ( \x ->
          ManifestFileLocation'
            Prelude.<$> (x Core..: "Bucket") Prelude.<*> (x Core..: "Key")
      )

instance Prelude.Hashable ManifestFileLocation

instance Prelude.NFData ManifestFileLocation

instance Core.ToJSON ManifestFileLocation where
  toJSON ManifestFileLocation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Bucket" Core..= bucket),
            Prelude.Just ("Key" Core..= key)
          ]
      )
