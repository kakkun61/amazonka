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
-- Module      : Network.AWS.Panorama.Types.OutPutS3Location
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Panorama.Types.OutPutS3Location where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The location of an output object in Amazon S3.
--
-- /See:/ 'newOutPutS3Location' smart constructor.
data OutPutS3Location = OutPutS3Location'
  { -- | The object\'s bucket.
    bucketName :: Prelude.Text,
    -- | The object\'s key.
    objectKey :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OutPutS3Location' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucketName', 'outPutS3Location_bucketName' - The object\'s bucket.
--
-- 'objectKey', 'outPutS3Location_objectKey' - The object\'s key.
newOutPutS3Location ::
  -- | 'bucketName'
  Prelude.Text ->
  -- | 'objectKey'
  Prelude.Text ->
  OutPutS3Location
newOutPutS3Location pBucketName_ pObjectKey_ =
  OutPutS3Location'
    { bucketName = pBucketName_,
      objectKey = pObjectKey_
    }

-- | The object\'s bucket.
outPutS3Location_bucketName :: Lens.Lens' OutPutS3Location Prelude.Text
outPutS3Location_bucketName = Lens.lens (\OutPutS3Location' {bucketName} -> bucketName) (\s@OutPutS3Location' {} a -> s {bucketName = a} :: OutPutS3Location)

-- | The object\'s key.
outPutS3Location_objectKey :: Lens.Lens' OutPutS3Location Prelude.Text
outPutS3Location_objectKey = Lens.lens (\OutPutS3Location' {objectKey} -> objectKey) (\s@OutPutS3Location' {} a -> s {objectKey = a} :: OutPutS3Location)

instance Core.FromJSON OutPutS3Location where
  parseJSON =
    Core.withObject
      "OutPutS3Location"
      ( \x ->
          OutPutS3Location'
            Prelude.<$> (x Core..: "BucketName")
            Prelude.<*> (x Core..: "ObjectKey")
      )

instance Prelude.Hashable OutPutS3Location

instance Prelude.NFData OutPutS3Location
