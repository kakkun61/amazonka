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
-- Module      : Network.AWS.MacieV2.Types.BucketCountByEncryptionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.BucketCountByEncryptionType where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about the number of S3 buckets that use certain
-- types of server-side encryption by default or don\'t encrypt new objects
-- by default. For detailed information about these settings, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-encryption.html Setting default server-side encryption behavior for Amazon S3 buckets>
-- in the /Amazon Simple Storage Service User Guide/.
--
-- /See:/ 'newBucketCountByEncryptionType' smart constructor.
data BucketCountByEncryptionType = BucketCountByEncryptionType'
  { -- | The total number of buckets that Amazon Macie doesn\'t have current
    -- encryption metadata for. Macie can\'t provide current data about the
    -- default encryption settings for these buckets.
    unknown :: Prelude.Maybe Prelude.Integer,
    -- | The total number of buckets that use an Amazon S3 managed key to encrypt
    -- new objects by default. These buckets use Amazon S3 managed encryption
    -- (SSE-S3) by default.
    s3Managed :: Prelude.Maybe Prelude.Integer,
    -- | The total number of buckets that don\'t encrypt new objects by default.
    -- Default encryption is disabled for these buckets.
    unencrypted :: Prelude.Maybe Prelude.Integer,
    -- | The total number of buckets that use an KMS key to encrypt new objects
    -- by default, either an Amazon Web Services managed key or a customer
    -- managed key. These buckets use KMS encryption (SSE-KMS) by default.
    kmsManaged :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BucketCountByEncryptionType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'unknown', 'bucketCountByEncryptionType_unknown' - The total number of buckets that Amazon Macie doesn\'t have current
-- encryption metadata for. Macie can\'t provide current data about the
-- default encryption settings for these buckets.
--
-- 's3Managed', 'bucketCountByEncryptionType_s3Managed' - The total number of buckets that use an Amazon S3 managed key to encrypt
-- new objects by default. These buckets use Amazon S3 managed encryption
-- (SSE-S3) by default.
--
-- 'unencrypted', 'bucketCountByEncryptionType_unencrypted' - The total number of buckets that don\'t encrypt new objects by default.
-- Default encryption is disabled for these buckets.
--
-- 'kmsManaged', 'bucketCountByEncryptionType_kmsManaged' - The total number of buckets that use an KMS key to encrypt new objects
-- by default, either an Amazon Web Services managed key or a customer
-- managed key. These buckets use KMS encryption (SSE-KMS) by default.
newBucketCountByEncryptionType ::
  BucketCountByEncryptionType
newBucketCountByEncryptionType =
  BucketCountByEncryptionType'
    { unknown =
        Prelude.Nothing,
      s3Managed = Prelude.Nothing,
      unencrypted = Prelude.Nothing,
      kmsManaged = Prelude.Nothing
    }

-- | The total number of buckets that Amazon Macie doesn\'t have current
-- encryption metadata for. Macie can\'t provide current data about the
-- default encryption settings for these buckets.
bucketCountByEncryptionType_unknown :: Lens.Lens' BucketCountByEncryptionType (Prelude.Maybe Prelude.Integer)
bucketCountByEncryptionType_unknown = Lens.lens (\BucketCountByEncryptionType' {unknown} -> unknown) (\s@BucketCountByEncryptionType' {} a -> s {unknown = a} :: BucketCountByEncryptionType)

-- | The total number of buckets that use an Amazon S3 managed key to encrypt
-- new objects by default. These buckets use Amazon S3 managed encryption
-- (SSE-S3) by default.
bucketCountByEncryptionType_s3Managed :: Lens.Lens' BucketCountByEncryptionType (Prelude.Maybe Prelude.Integer)
bucketCountByEncryptionType_s3Managed = Lens.lens (\BucketCountByEncryptionType' {s3Managed} -> s3Managed) (\s@BucketCountByEncryptionType' {} a -> s {s3Managed = a} :: BucketCountByEncryptionType)

-- | The total number of buckets that don\'t encrypt new objects by default.
-- Default encryption is disabled for these buckets.
bucketCountByEncryptionType_unencrypted :: Lens.Lens' BucketCountByEncryptionType (Prelude.Maybe Prelude.Integer)
bucketCountByEncryptionType_unencrypted = Lens.lens (\BucketCountByEncryptionType' {unencrypted} -> unencrypted) (\s@BucketCountByEncryptionType' {} a -> s {unencrypted = a} :: BucketCountByEncryptionType)

-- | The total number of buckets that use an KMS key to encrypt new objects
-- by default, either an Amazon Web Services managed key or a customer
-- managed key. These buckets use KMS encryption (SSE-KMS) by default.
bucketCountByEncryptionType_kmsManaged :: Lens.Lens' BucketCountByEncryptionType (Prelude.Maybe Prelude.Integer)
bucketCountByEncryptionType_kmsManaged = Lens.lens (\BucketCountByEncryptionType' {kmsManaged} -> kmsManaged) (\s@BucketCountByEncryptionType' {} a -> s {kmsManaged = a} :: BucketCountByEncryptionType)

instance Core.FromJSON BucketCountByEncryptionType where
  parseJSON =
    Core.withObject
      "BucketCountByEncryptionType"
      ( \x ->
          BucketCountByEncryptionType'
            Prelude.<$> (x Core..:? "unknown")
            Prelude.<*> (x Core..:? "s3Managed")
            Prelude.<*> (x Core..:? "unencrypted")
            Prelude.<*> (x Core..:? "kmsManaged")
      )

instance Prelude.Hashable BucketCountByEncryptionType

instance Prelude.NFData BucketCountByEncryptionType
