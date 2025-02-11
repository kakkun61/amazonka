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
-- Module      : Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A tag that is assigned to matching objects.
--
-- /See:/ 'newAwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails' smart constructor.
data AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails = AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails'
  { -- | The tag value.
    value :: Prelude.Maybe Prelude.Text,
    -- | The tag key.
    key :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails_value' - The tag value.
--
-- 'key', 'awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails_key' - The tag key.
newAwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails ::
  AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails
newAwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails =
  AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails'
    { value =
        Prelude.Nothing,
      key =
        Prelude.Nothing
    }

-- | The tag value.
awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails_value :: Lens.Lens' AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails (Prelude.Maybe Prelude.Text)
awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails_value = Lens.lens (\AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails' {value} -> value) (\s@AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails' {} a -> s {value = a} :: AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails)

-- | The tag key.
awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails_key :: Lens.Lens' AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails (Prelude.Maybe Prelude.Text)
awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails_key = Lens.lens (\AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails' {key} -> key) (\s@AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails' {} a -> s {key = a} :: AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails)

instance
  Core.FromJSON
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails
  where
  parseJSON =
    Core.withObject
      "AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails"
      ( \x ->
          AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails'
            Prelude.<$> (x Core..:? "Value") Prelude.<*> (x Core..:? "Key")
      )

instance
  Prelude.Hashable
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails

instance
  Prelude.NFData
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails

instance
  Core.ToJSON
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails
  where
  toJSON
    AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("Value" Core..=) Prelude.<$> value,
              ("Key" Core..=) Prelude.<$> key
            ]
        )
