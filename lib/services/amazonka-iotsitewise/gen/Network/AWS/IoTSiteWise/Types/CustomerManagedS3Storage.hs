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
-- Module      : Network.AWS.IoTSiteWise.Types.CustomerManagedS3Storage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.CustomerManagedS3Storage where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about a customer managed Amazon S3 bucket.
--
-- /See:/ 'newCustomerManagedS3Storage' smart constructor.
data CustomerManagedS3Storage = CustomerManagedS3Storage'
  { -- | The
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
    -- of the Amazon S3 object. For more information about how to find the ARN
    -- for an Amazon S3 object, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-arn-format.html Amazon S3 resources>
    -- in the /Amazon Simple Storage Service User Guide/.
    s3ResourceArn :: Prelude.Text,
    -- | The
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
    -- of the Identity and Access Management role that allows IoT SiteWise to
    -- send data to Amazon S3.
    roleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CustomerManagedS3Storage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3ResourceArn', 'customerManagedS3Storage_s3ResourceArn' - The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the Amazon S3 object. For more information about how to find the ARN
-- for an Amazon S3 object, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-arn-format.html Amazon S3 resources>
-- in the /Amazon Simple Storage Service User Guide/.
--
-- 'roleArn', 'customerManagedS3Storage_roleArn' - The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the Identity and Access Management role that allows IoT SiteWise to
-- send data to Amazon S3.
newCustomerManagedS3Storage ::
  -- | 's3ResourceArn'
  Prelude.Text ->
  -- | 'roleArn'
  Prelude.Text ->
  CustomerManagedS3Storage
newCustomerManagedS3Storage pS3ResourceArn_ pRoleArn_ =
  CustomerManagedS3Storage'
    { s3ResourceArn =
        pS3ResourceArn_,
      roleArn = pRoleArn_
    }

-- | The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the Amazon S3 object. For more information about how to find the ARN
-- for an Amazon S3 object, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-arn-format.html Amazon S3 resources>
-- in the /Amazon Simple Storage Service User Guide/.
customerManagedS3Storage_s3ResourceArn :: Lens.Lens' CustomerManagedS3Storage Prelude.Text
customerManagedS3Storage_s3ResourceArn = Lens.lens (\CustomerManagedS3Storage' {s3ResourceArn} -> s3ResourceArn) (\s@CustomerManagedS3Storage' {} a -> s {s3ResourceArn = a} :: CustomerManagedS3Storage)

-- | The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the Identity and Access Management role that allows IoT SiteWise to
-- send data to Amazon S3.
customerManagedS3Storage_roleArn :: Lens.Lens' CustomerManagedS3Storage Prelude.Text
customerManagedS3Storage_roleArn = Lens.lens (\CustomerManagedS3Storage' {roleArn} -> roleArn) (\s@CustomerManagedS3Storage' {} a -> s {roleArn = a} :: CustomerManagedS3Storage)

instance Core.FromJSON CustomerManagedS3Storage where
  parseJSON =
    Core.withObject
      "CustomerManagedS3Storage"
      ( \x ->
          CustomerManagedS3Storage'
            Prelude.<$> (x Core..: "s3ResourceArn")
            Prelude.<*> (x Core..: "roleArn")
      )

instance Prelude.Hashable CustomerManagedS3Storage

instance Prelude.NFData CustomerManagedS3Storage

instance Core.ToJSON CustomerManagedS3Storage where
  toJSON CustomerManagedS3Storage' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("s3ResourceArn" Core..= s3ResourceArn),
            Prelude.Just ("roleArn" Core..= roleArn)
          ]
      )
