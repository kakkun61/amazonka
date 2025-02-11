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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.S3ApplicationCodeLocationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.S3ApplicationCodeLocationDescription where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the location of an application\'s code stored in an S3 bucket.
--
-- /See:/ 'newS3ApplicationCodeLocationDescription' smart constructor.
data S3ApplicationCodeLocationDescription = S3ApplicationCodeLocationDescription'
  { -- | The version of the object containing the application code.
    objectVersion :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the S3 bucket containing the
    -- application code.
    bucketARN :: Prelude.Text,
    -- | The file key for the object containing the application code.
    fileKey :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3ApplicationCodeLocationDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'objectVersion', 's3ApplicationCodeLocationDescription_objectVersion' - The version of the object containing the application code.
--
-- 'bucketARN', 's3ApplicationCodeLocationDescription_bucketARN' - The Amazon Resource Name (ARN) for the S3 bucket containing the
-- application code.
--
-- 'fileKey', 's3ApplicationCodeLocationDescription_fileKey' - The file key for the object containing the application code.
newS3ApplicationCodeLocationDescription ::
  -- | 'bucketARN'
  Prelude.Text ->
  -- | 'fileKey'
  Prelude.Text ->
  S3ApplicationCodeLocationDescription
newS3ApplicationCodeLocationDescription
  pBucketARN_
  pFileKey_ =
    S3ApplicationCodeLocationDescription'
      { objectVersion =
          Prelude.Nothing,
        bucketARN = pBucketARN_,
        fileKey = pFileKey_
      }

-- | The version of the object containing the application code.
s3ApplicationCodeLocationDescription_objectVersion :: Lens.Lens' S3ApplicationCodeLocationDescription (Prelude.Maybe Prelude.Text)
s3ApplicationCodeLocationDescription_objectVersion = Lens.lens (\S3ApplicationCodeLocationDescription' {objectVersion} -> objectVersion) (\s@S3ApplicationCodeLocationDescription' {} a -> s {objectVersion = a} :: S3ApplicationCodeLocationDescription)

-- | The Amazon Resource Name (ARN) for the S3 bucket containing the
-- application code.
s3ApplicationCodeLocationDescription_bucketARN :: Lens.Lens' S3ApplicationCodeLocationDescription Prelude.Text
s3ApplicationCodeLocationDescription_bucketARN = Lens.lens (\S3ApplicationCodeLocationDescription' {bucketARN} -> bucketARN) (\s@S3ApplicationCodeLocationDescription' {} a -> s {bucketARN = a} :: S3ApplicationCodeLocationDescription)

-- | The file key for the object containing the application code.
s3ApplicationCodeLocationDescription_fileKey :: Lens.Lens' S3ApplicationCodeLocationDescription Prelude.Text
s3ApplicationCodeLocationDescription_fileKey = Lens.lens (\S3ApplicationCodeLocationDescription' {fileKey} -> fileKey) (\s@S3ApplicationCodeLocationDescription' {} a -> s {fileKey = a} :: S3ApplicationCodeLocationDescription)

instance
  Core.FromJSON
    S3ApplicationCodeLocationDescription
  where
  parseJSON =
    Core.withObject
      "S3ApplicationCodeLocationDescription"
      ( \x ->
          S3ApplicationCodeLocationDescription'
            Prelude.<$> (x Core..:? "ObjectVersion")
            Prelude.<*> (x Core..: "BucketARN")
            Prelude.<*> (x Core..: "FileKey")
      )

instance
  Prelude.Hashable
    S3ApplicationCodeLocationDescription

instance
  Prelude.NFData
    S3ApplicationCodeLocationDescription
