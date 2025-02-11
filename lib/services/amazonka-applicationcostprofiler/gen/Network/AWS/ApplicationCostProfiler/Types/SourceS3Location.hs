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
-- Module      : Network.AWS.ApplicationCostProfiler.Types.SourceS3Location
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationCostProfiler.Types.SourceS3Location where

import Network.AWS.ApplicationCostProfiler.Types.S3BucketRegion
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents the Amazon Simple Storage Service (Amazon S3) location where
-- usage data is read from.
--
-- /See:/ 'newSourceS3Location' smart constructor.
data SourceS3Location = SourceS3Location'
  { -- | Region of the bucket. Only required for Regions that are disabled by
    -- default. For more infomration about Regions that are disabled by
    -- default, see
    -- <https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable Enabling a Region>
    -- in the /AWS General Reference guide/.
    region :: Prelude.Maybe S3BucketRegion,
    -- | Name of the bucket.
    bucket :: Prelude.Text,
    -- | Key of the object.
    key :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SourceS3Location' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'region', 'sourceS3Location_region' - Region of the bucket. Only required for Regions that are disabled by
-- default. For more infomration about Regions that are disabled by
-- default, see
-- <https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable Enabling a Region>
-- in the /AWS General Reference guide/.
--
-- 'bucket', 'sourceS3Location_bucket' - Name of the bucket.
--
-- 'key', 'sourceS3Location_key' - Key of the object.
newSourceS3Location ::
  -- | 'bucket'
  Prelude.Text ->
  -- | 'key'
  Prelude.Text ->
  SourceS3Location
newSourceS3Location pBucket_ pKey_ =
  SourceS3Location'
    { region = Prelude.Nothing,
      bucket = pBucket_,
      key = pKey_
    }

-- | Region of the bucket. Only required for Regions that are disabled by
-- default. For more infomration about Regions that are disabled by
-- default, see
-- <https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable Enabling a Region>
-- in the /AWS General Reference guide/.
sourceS3Location_region :: Lens.Lens' SourceS3Location (Prelude.Maybe S3BucketRegion)
sourceS3Location_region = Lens.lens (\SourceS3Location' {region} -> region) (\s@SourceS3Location' {} a -> s {region = a} :: SourceS3Location)

-- | Name of the bucket.
sourceS3Location_bucket :: Lens.Lens' SourceS3Location Prelude.Text
sourceS3Location_bucket = Lens.lens (\SourceS3Location' {bucket} -> bucket) (\s@SourceS3Location' {} a -> s {bucket = a} :: SourceS3Location)

-- | Key of the object.
sourceS3Location_key :: Lens.Lens' SourceS3Location Prelude.Text
sourceS3Location_key = Lens.lens (\SourceS3Location' {key} -> key) (\s@SourceS3Location' {} a -> s {key = a} :: SourceS3Location)

instance Prelude.Hashable SourceS3Location

instance Prelude.NFData SourceS3Location

instance Core.ToJSON SourceS3Location where
  toJSON SourceS3Location' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("region" Core..=) Prelude.<$> region,
            Prelude.Just ("bucket" Core..= bucket),
            Prelude.Just ("key" Core..= key)
          ]
      )
