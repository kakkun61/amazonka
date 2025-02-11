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
-- Module      : Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A transition rule that describes when noncurrent objects transition to a
-- specified storage class.
--
-- /See:/ 'newAwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails' smart constructor.
data AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails = AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails'
  { -- | The number of days that an object is noncurrent before Amazon S3 can
    -- perform the associated action.
    days :: Prelude.Maybe Prelude.Int,
    -- | The class of storage to change the object to after the object is
    -- noncurrent for the specified number of days.
    storageClass :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'days', 'awsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails_days' - The number of days that an object is noncurrent before Amazon S3 can
-- perform the associated action.
--
-- 'storageClass', 'awsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails_storageClass' - The class of storage to change the object to after the object is
-- noncurrent for the specified number of days.
newAwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails ::
  AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails
newAwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails =
  AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails'
    { days =
        Prelude.Nothing,
      storageClass =
        Prelude.Nothing
    }

-- | The number of days that an object is noncurrent before Amazon S3 can
-- perform the associated action.
awsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails_days :: Lens.Lens' AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails (Prelude.Maybe Prelude.Int)
awsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails_days = Lens.lens (\AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails' {days} -> days) (\s@AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails' {} a -> s {days = a} :: AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails)

-- | The class of storage to change the object to after the object is
-- noncurrent for the specified number of days.
awsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails_storageClass :: Lens.Lens' AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails (Prelude.Maybe Prelude.Text)
awsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails_storageClass = Lens.lens (\AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails' {storageClass} -> storageClass) (\s@AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails' {} a -> s {storageClass = a} :: AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails)

instance
  Core.FromJSON
    AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails
  where
  parseJSON =
    Core.withObject
      "AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails"
      ( \x ->
          AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails'
            Prelude.<$> (x Core..:? "Days")
              Prelude.<*> (x Core..:? "StorageClass")
      )

instance
  Prelude.Hashable
    AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails

instance
  Prelude.NFData
    AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails

instance
  Core.ToJSON
    AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails
  where
  toJSON
    AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("Days" Core..=) Prelude.<$> days,
              ("StorageClass" Core..=) Prelude.<$> storageClass
            ]
        )
