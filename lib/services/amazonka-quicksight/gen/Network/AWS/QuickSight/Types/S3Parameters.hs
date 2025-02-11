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
-- Module      : Network.AWS.QuickSight.Types.S3Parameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.S3Parameters where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.ManifestFileLocation

-- | The parameters for S3.
--
-- /See:/ 'newS3Parameters' smart constructor.
data S3Parameters = S3Parameters'
  { -- | Location of the Amazon S3 manifest file. This is NULL if the manifest
    -- file was uploaded into Amazon QuickSight.
    manifestFileLocation :: ManifestFileLocation
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3Parameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'manifestFileLocation', 's3Parameters_manifestFileLocation' - Location of the Amazon S3 manifest file. This is NULL if the manifest
-- file was uploaded into Amazon QuickSight.
newS3Parameters ::
  -- | 'manifestFileLocation'
  ManifestFileLocation ->
  S3Parameters
newS3Parameters pManifestFileLocation_ =
  S3Parameters'
    { manifestFileLocation =
        pManifestFileLocation_
    }

-- | Location of the Amazon S3 manifest file. This is NULL if the manifest
-- file was uploaded into Amazon QuickSight.
s3Parameters_manifestFileLocation :: Lens.Lens' S3Parameters ManifestFileLocation
s3Parameters_manifestFileLocation = Lens.lens (\S3Parameters' {manifestFileLocation} -> manifestFileLocation) (\s@S3Parameters' {} a -> s {manifestFileLocation = a} :: S3Parameters)

instance Core.FromJSON S3Parameters where
  parseJSON =
    Core.withObject
      "S3Parameters"
      ( \x ->
          S3Parameters'
            Prelude.<$> (x Core..: "ManifestFileLocation")
      )

instance Prelude.Hashable S3Parameters

instance Prelude.NFData S3Parameters

instance Core.ToJSON S3Parameters where
  toJSON S3Parameters' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "ManifestFileLocation"
                  Core..= manifestFileLocation
              )
          ]
      )
