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
-- Module      : Network.AWS.Signer.Types.S3Source
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Signer.Types.S3Source where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about the S3 bucket where you saved your unsigned code.
--
-- /See:/ 'newS3Source' smart constructor.
data S3Source = S3Source'
  { -- | Name of the S3 bucket.
    bucketName :: Prelude.Text,
    -- | Key name of the bucket object that contains your unsigned code.
    key :: Prelude.Text,
    -- | Version of your source image in your version enabled S3 bucket.
    version :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3Source' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucketName', 's3Source_bucketName' - Name of the S3 bucket.
--
-- 'key', 's3Source_key' - Key name of the bucket object that contains your unsigned code.
--
-- 'version', 's3Source_version' - Version of your source image in your version enabled S3 bucket.
newS3Source ::
  -- | 'bucketName'
  Prelude.Text ->
  -- | 'key'
  Prelude.Text ->
  -- | 'version'
  Prelude.Text ->
  S3Source
newS3Source pBucketName_ pKey_ pVersion_ =
  S3Source'
    { bucketName = pBucketName_,
      key = pKey_,
      version = pVersion_
    }

-- | Name of the S3 bucket.
s3Source_bucketName :: Lens.Lens' S3Source Prelude.Text
s3Source_bucketName = Lens.lens (\S3Source' {bucketName} -> bucketName) (\s@S3Source' {} a -> s {bucketName = a} :: S3Source)

-- | Key name of the bucket object that contains your unsigned code.
s3Source_key :: Lens.Lens' S3Source Prelude.Text
s3Source_key = Lens.lens (\S3Source' {key} -> key) (\s@S3Source' {} a -> s {key = a} :: S3Source)

-- | Version of your source image in your version enabled S3 bucket.
s3Source_version :: Lens.Lens' S3Source Prelude.Text
s3Source_version = Lens.lens (\S3Source' {version} -> version) (\s@S3Source' {} a -> s {version = a} :: S3Source)

instance Core.FromJSON S3Source where
  parseJSON =
    Core.withObject
      "S3Source"
      ( \x ->
          S3Source'
            Prelude.<$> (x Core..: "bucketName")
            Prelude.<*> (x Core..: "key")
            Prelude.<*> (x Core..: "version")
      )

instance Prelude.Hashable S3Source

instance Prelude.NFData S3Source

instance Core.ToJSON S3Source where
  toJSON S3Source' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("bucketName" Core..= bucketName),
            Prelude.Just ("key" Core..= key),
            Prelude.Just ("version" Core..= version)
          ]
      )
