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
-- Module      : Network.AWS.SecurityHub.Types.AwsS3BucketNotificationConfigurationFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsS3BucketNotificationConfigurationFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.AwsS3BucketNotificationConfigurationS3KeyFilter

-- | Filtering information for the notifications. The filtering is based on
-- Amazon S3 key names.
--
-- /See:/ 'newAwsS3BucketNotificationConfigurationFilter' smart constructor.
data AwsS3BucketNotificationConfigurationFilter = AwsS3BucketNotificationConfigurationFilter'
  { -- | Details for an Amazon S3 filter.
    s3KeyFilter :: Prelude.Maybe AwsS3BucketNotificationConfigurationS3KeyFilter
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsS3BucketNotificationConfigurationFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3KeyFilter', 'awsS3BucketNotificationConfigurationFilter_s3KeyFilter' - Details for an Amazon S3 filter.
newAwsS3BucketNotificationConfigurationFilter ::
  AwsS3BucketNotificationConfigurationFilter
newAwsS3BucketNotificationConfigurationFilter =
  AwsS3BucketNotificationConfigurationFilter'
    { s3KeyFilter =
        Prelude.Nothing
    }

-- | Details for an Amazon S3 filter.
awsS3BucketNotificationConfigurationFilter_s3KeyFilter :: Lens.Lens' AwsS3BucketNotificationConfigurationFilter (Prelude.Maybe AwsS3BucketNotificationConfigurationS3KeyFilter)
awsS3BucketNotificationConfigurationFilter_s3KeyFilter = Lens.lens (\AwsS3BucketNotificationConfigurationFilter' {s3KeyFilter} -> s3KeyFilter) (\s@AwsS3BucketNotificationConfigurationFilter' {} a -> s {s3KeyFilter = a} :: AwsS3BucketNotificationConfigurationFilter)

instance
  Core.FromJSON
    AwsS3BucketNotificationConfigurationFilter
  where
  parseJSON =
    Core.withObject
      "AwsS3BucketNotificationConfigurationFilter"
      ( \x ->
          AwsS3BucketNotificationConfigurationFilter'
            Prelude.<$> (x Core..:? "S3KeyFilter")
      )

instance
  Prelude.Hashable
    AwsS3BucketNotificationConfigurationFilter

instance
  Prelude.NFData
    AwsS3BucketNotificationConfigurationFilter

instance
  Core.ToJSON
    AwsS3BucketNotificationConfigurationFilter
  where
  toJSON
    AwsS3BucketNotificationConfigurationFilter' {..} =
      Core.object
        ( Prelude.catMaybes
            [("S3KeyFilter" Core..=) Prelude.<$> s3KeyFilter]
        )
