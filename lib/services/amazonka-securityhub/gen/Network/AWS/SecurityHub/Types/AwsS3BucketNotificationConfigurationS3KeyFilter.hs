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
-- Module      : Network.AWS.SecurityHub.Types.AwsS3BucketNotificationConfigurationS3KeyFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsS3BucketNotificationConfigurationS3KeyFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.AwsS3BucketNotificationConfigurationS3KeyFilterRule

-- | Details for an Amazon S3 filter.
--
-- /See:/ 'newAwsS3BucketNotificationConfigurationS3KeyFilter' smart constructor.
data AwsS3BucketNotificationConfigurationS3KeyFilter = AwsS3BucketNotificationConfigurationS3KeyFilter'
  { -- | The filter rules for the filter.
    filterRules :: Prelude.Maybe [AwsS3BucketNotificationConfigurationS3KeyFilterRule]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsS3BucketNotificationConfigurationS3KeyFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filterRules', 'awsS3BucketNotificationConfigurationS3KeyFilter_filterRules' - The filter rules for the filter.
newAwsS3BucketNotificationConfigurationS3KeyFilter ::
  AwsS3BucketNotificationConfigurationS3KeyFilter
newAwsS3BucketNotificationConfigurationS3KeyFilter =
  AwsS3BucketNotificationConfigurationS3KeyFilter'
    { filterRules =
        Prelude.Nothing
    }

-- | The filter rules for the filter.
awsS3BucketNotificationConfigurationS3KeyFilter_filterRules :: Lens.Lens' AwsS3BucketNotificationConfigurationS3KeyFilter (Prelude.Maybe [AwsS3BucketNotificationConfigurationS3KeyFilterRule])
awsS3BucketNotificationConfigurationS3KeyFilter_filterRules = Lens.lens (\AwsS3BucketNotificationConfigurationS3KeyFilter' {filterRules} -> filterRules) (\s@AwsS3BucketNotificationConfigurationS3KeyFilter' {} a -> s {filterRules = a} :: AwsS3BucketNotificationConfigurationS3KeyFilter) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromJSON
    AwsS3BucketNotificationConfigurationS3KeyFilter
  where
  parseJSON =
    Core.withObject
      "AwsS3BucketNotificationConfigurationS3KeyFilter"
      ( \x ->
          AwsS3BucketNotificationConfigurationS3KeyFilter'
            Prelude.<$> (x Core..:? "FilterRules" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    AwsS3BucketNotificationConfigurationS3KeyFilter

instance
  Prelude.NFData
    AwsS3BucketNotificationConfigurationS3KeyFilter

instance
  Core.ToJSON
    AwsS3BucketNotificationConfigurationS3KeyFilter
  where
  toJSON
    AwsS3BucketNotificationConfigurationS3KeyFilter' {..} =
      Core.object
        ( Prelude.catMaybes
            [("FilterRules" Core..=) Prelude.<$> filterRules]
        )
