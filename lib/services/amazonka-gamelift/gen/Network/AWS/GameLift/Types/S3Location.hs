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
-- Module      : Network.AWS.GameLift.Types.S3Location
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.S3Location where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The location in Amazon S3 where build or script files are stored for
-- access by Amazon GameLift. This location is specified in CreateBuild,
-- CreateScript, and UpdateScript requests.
--
-- /See:/ 'newS3Location' smart constructor.
data S3Location = S3Location'
  { -- | An Amazon S3 bucket identifier. This is the name of the S3 bucket.
    --
    -- GameLift currently does not support uploading from Amazon S3 buckets
    -- with names that contain a dot (.).
    bucket :: Prelude.Maybe Prelude.Text,
    -- | The name of the zip file that contains the build files or script files.
    key :: Prelude.Maybe Prelude.Text,
    -- | The version of the file, if object versioning is turned on for the
    -- bucket. Amazon GameLift uses this information when retrieving files from
    -- an S3 bucket that you own. Use this parameter to specify a specific
    -- version of the file. If not set, the latest version of the file is
    -- retrieved.
    objectVersion :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name
    -- (<https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN>)
    -- for an IAM role that allows Amazon GameLift to access the S3 bucket.
    roleArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3Location' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucket', 's3Location_bucket' - An Amazon S3 bucket identifier. This is the name of the S3 bucket.
--
-- GameLift currently does not support uploading from Amazon S3 buckets
-- with names that contain a dot (.).
--
-- 'key', 's3Location_key' - The name of the zip file that contains the build files or script files.
--
-- 'objectVersion', 's3Location_objectVersion' - The version of the file, if object versioning is turned on for the
-- bucket. Amazon GameLift uses this information when retrieving files from
-- an S3 bucket that you own. Use this parameter to specify a specific
-- version of the file. If not set, the latest version of the file is
-- retrieved.
--
-- 'roleArn', 's3Location_roleArn' - The Amazon Resource Name
-- (<https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN>)
-- for an IAM role that allows Amazon GameLift to access the S3 bucket.
newS3Location ::
  S3Location
newS3Location =
  S3Location'
    { bucket = Prelude.Nothing,
      key = Prelude.Nothing,
      objectVersion = Prelude.Nothing,
      roleArn = Prelude.Nothing
    }

-- | An Amazon S3 bucket identifier. This is the name of the S3 bucket.
--
-- GameLift currently does not support uploading from Amazon S3 buckets
-- with names that contain a dot (.).
s3Location_bucket :: Lens.Lens' S3Location (Prelude.Maybe Prelude.Text)
s3Location_bucket = Lens.lens (\S3Location' {bucket} -> bucket) (\s@S3Location' {} a -> s {bucket = a} :: S3Location)

-- | The name of the zip file that contains the build files or script files.
s3Location_key :: Lens.Lens' S3Location (Prelude.Maybe Prelude.Text)
s3Location_key = Lens.lens (\S3Location' {key} -> key) (\s@S3Location' {} a -> s {key = a} :: S3Location)

-- | The version of the file, if object versioning is turned on for the
-- bucket. Amazon GameLift uses this information when retrieving files from
-- an S3 bucket that you own. Use this parameter to specify a specific
-- version of the file. If not set, the latest version of the file is
-- retrieved.
s3Location_objectVersion :: Lens.Lens' S3Location (Prelude.Maybe Prelude.Text)
s3Location_objectVersion = Lens.lens (\S3Location' {objectVersion} -> objectVersion) (\s@S3Location' {} a -> s {objectVersion = a} :: S3Location)

-- | The Amazon Resource Name
-- (<https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN>)
-- for an IAM role that allows Amazon GameLift to access the S3 bucket.
s3Location_roleArn :: Lens.Lens' S3Location (Prelude.Maybe Prelude.Text)
s3Location_roleArn = Lens.lens (\S3Location' {roleArn} -> roleArn) (\s@S3Location' {} a -> s {roleArn = a} :: S3Location)

instance Core.FromJSON S3Location where
  parseJSON =
    Core.withObject
      "S3Location"
      ( \x ->
          S3Location'
            Prelude.<$> (x Core..:? "Bucket")
            Prelude.<*> (x Core..:? "Key")
            Prelude.<*> (x Core..:? "ObjectVersion")
            Prelude.<*> (x Core..:? "RoleArn")
      )

instance Prelude.Hashable S3Location

instance Prelude.NFData S3Location

instance Core.ToJSON S3Location where
  toJSON S3Location' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Bucket" Core..=) Prelude.<$> bucket,
            ("Key" Core..=) Prelude.<$> key,
            ("ObjectVersion" Core..=) Prelude.<$> objectVersion,
            ("RoleArn" Core..=) Prelude.<$> roleArn
          ]
      )
