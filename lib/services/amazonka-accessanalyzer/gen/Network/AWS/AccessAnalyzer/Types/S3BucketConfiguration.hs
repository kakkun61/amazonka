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
-- Module      : Network.AWS.AccessAnalyzer.Types.S3BucketConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AccessAnalyzer.Types.S3BucketConfiguration where

import Network.AWS.AccessAnalyzer.Types.S3AccessPointConfiguration
import Network.AWS.AccessAnalyzer.Types.S3BucketAclGrantConfiguration
import Network.AWS.AccessAnalyzer.Types.S3PublicAccessBlockConfiguration
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Proposed access control configuration for an Amazon S3 bucket. You can
-- propose a configuration for a new Amazon S3 bucket or an existing Amazon
-- S3 bucket that you own by specifying the Amazon S3 bucket policy, bucket
-- ACLs, bucket BPA settings, Amazon S3 access points, and multi-region
-- access points attached to the bucket. If the configuration is for an
-- existing Amazon S3 bucket and you do not specify the Amazon S3 bucket
-- policy, the access preview uses the existing policy attached to the
-- bucket. If the access preview is for a new resource and you do not
-- specify the Amazon S3 bucket policy, the access preview assumes a bucket
-- without a policy. To propose deletion of an existing bucket policy, you
-- can specify an empty string. For more information about bucket policy
-- limits, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html Bucket Policy Examples>.
--
-- /See:/ 'newS3BucketConfiguration' smart constructor.
data S3BucketConfiguration = S3BucketConfiguration'
  { -- | The configuration of Amazon S3 access points or multi-region access
    -- points for the bucket. You can propose up to 10 new access points per
    -- bucket.
    accessPoints :: Prelude.Maybe (Prelude.HashMap Prelude.Text S3AccessPointConfiguration),
    -- | The proposed block public access configuration for the Amazon S3 bucket.
    bucketPublicAccessBlock :: Prelude.Maybe S3PublicAccessBlockConfiguration,
    -- | The proposed list of ACL grants for the Amazon S3 bucket. You can
    -- propose up to 100 ACL grants per bucket. If the proposed grant
    -- configuration is for an existing bucket, the access preview uses the
    -- proposed list of grant configurations in place of the existing grants.
    -- Otherwise, the access preview uses the existing grants for the bucket.
    bucketAclGrants :: Prelude.Maybe [S3BucketAclGrantConfiguration],
    -- | The proposed bucket policy for the Amazon S3 bucket.
    bucketPolicy :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3BucketConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessPoints', 's3BucketConfiguration_accessPoints' - The configuration of Amazon S3 access points or multi-region access
-- points for the bucket. You can propose up to 10 new access points per
-- bucket.
--
-- 'bucketPublicAccessBlock', 's3BucketConfiguration_bucketPublicAccessBlock' - The proposed block public access configuration for the Amazon S3 bucket.
--
-- 'bucketAclGrants', 's3BucketConfiguration_bucketAclGrants' - The proposed list of ACL grants for the Amazon S3 bucket. You can
-- propose up to 100 ACL grants per bucket. If the proposed grant
-- configuration is for an existing bucket, the access preview uses the
-- proposed list of grant configurations in place of the existing grants.
-- Otherwise, the access preview uses the existing grants for the bucket.
--
-- 'bucketPolicy', 's3BucketConfiguration_bucketPolicy' - The proposed bucket policy for the Amazon S3 bucket.
newS3BucketConfiguration ::
  S3BucketConfiguration
newS3BucketConfiguration =
  S3BucketConfiguration'
    { accessPoints =
        Prelude.Nothing,
      bucketPublicAccessBlock = Prelude.Nothing,
      bucketAclGrants = Prelude.Nothing,
      bucketPolicy = Prelude.Nothing
    }

-- | The configuration of Amazon S3 access points or multi-region access
-- points for the bucket. You can propose up to 10 new access points per
-- bucket.
s3BucketConfiguration_accessPoints :: Lens.Lens' S3BucketConfiguration (Prelude.Maybe (Prelude.HashMap Prelude.Text S3AccessPointConfiguration))
s3BucketConfiguration_accessPoints = Lens.lens (\S3BucketConfiguration' {accessPoints} -> accessPoints) (\s@S3BucketConfiguration' {} a -> s {accessPoints = a} :: S3BucketConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The proposed block public access configuration for the Amazon S3 bucket.
s3BucketConfiguration_bucketPublicAccessBlock :: Lens.Lens' S3BucketConfiguration (Prelude.Maybe S3PublicAccessBlockConfiguration)
s3BucketConfiguration_bucketPublicAccessBlock = Lens.lens (\S3BucketConfiguration' {bucketPublicAccessBlock} -> bucketPublicAccessBlock) (\s@S3BucketConfiguration' {} a -> s {bucketPublicAccessBlock = a} :: S3BucketConfiguration)

-- | The proposed list of ACL grants for the Amazon S3 bucket. You can
-- propose up to 100 ACL grants per bucket. If the proposed grant
-- configuration is for an existing bucket, the access preview uses the
-- proposed list of grant configurations in place of the existing grants.
-- Otherwise, the access preview uses the existing grants for the bucket.
s3BucketConfiguration_bucketAclGrants :: Lens.Lens' S3BucketConfiguration (Prelude.Maybe [S3BucketAclGrantConfiguration])
s3BucketConfiguration_bucketAclGrants = Lens.lens (\S3BucketConfiguration' {bucketAclGrants} -> bucketAclGrants) (\s@S3BucketConfiguration' {} a -> s {bucketAclGrants = a} :: S3BucketConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The proposed bucket policy for the Amazon S3 bucket.
s3BucketConfiguration_bucketPolicy :: Lens.Lens' S3BucketConfiguration (Prelude.Maybe Prelude.Text)
s3BucketConfiguration_bucketPolicy = Lens.lens (\S3BucketConfiguration' {bucketPolicy} -> bucketPolicy) (\s@S3BucketConfiguration' {} a -> s {bucketPolicy = a} :: S3BucketConfiguration)

instance Core.FromJSON S3BucketConfiguration where
  parseJSON =
    Core.withObject
      "S3BucketConfiguration"
      ( \x ->
          S3BucketConfiguration'
            Prelude.<$> (x Core..:? "accessPoints" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "bucketPublicAccessBlock")
            Prelude.<*> ( x Core..:? "bucketAclGrants"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "bucketPolicy")
      )

instance Prelude.Hashable S3BucketConfiguration

instance Prelude.NFData S3BucketConfiguration

instance Core.ToJSON S3BucketConfiguration where
  toJSON S3BucketConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("accessPoints" Core..=) Prelude.<$> accessPoints,
            ("bucketPublicAccessBlock" Core..=)
              Prelude.<$> bucketPublicAccessBlock,
            ("bucketAclGrants" Core..=)
              Prelude.<$> bucketAclGrants,
            ("bucketPolicy" Core..=) Prelude.<$> bucketPolicy
          ]
      )
