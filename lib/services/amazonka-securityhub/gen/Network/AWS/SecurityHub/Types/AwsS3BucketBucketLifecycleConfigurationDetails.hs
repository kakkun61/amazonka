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
-- Module      : Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationRulesDetails

-- | The lifecycle configuration for the objects in the S3 bucket.
--
-- /See:/ 'newAwsS3BucketBucketLifecycleConfigurationDetails' smart constructor.
data AwsS3BucketBucketLifecycleConfigurationDetails = AwsS3BucketBucketLifecycleConfigurationDetails'
  { -- | The lifecycle rules.
    rules :: Prelude.Maybe [AwsS3BucketBucketLifecycleConfigurationRulesDetails]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsS3BucketBucketLifecycleConfigurationDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rules', 'awsS3BucketBucketLifecycleConfigurationDetails_rules' - The lifecycle rules.
newAwsS3BucketBucketLifecycleConfigurationDetails ::
  AwsS3BucketBucketLifecycleConfigurationDetails
newAwsS3BucketBucketLifecycleConfigurationDetails =
  AwsS3BucketBucketLifecycleConfigurationDetails'
    { rules =
        Prelude.Nothing
    }

-- | The lifecycle rules.
awsS3BucketBucketLifecycleConfigurationDetails_rules :: Lens.Lens' AwsS3BucketBucketLifecycleConfigurationDetails (Prelude.Maybe [AwsS3BucketBucketLifecycleConfigurationRulesDetails])
awsS3BucketBucketLifecycleConfigurationDetails_rules = Lens.lens (\AwsS3BucketBucketLifecycleConfigurationDetails' {rules} -> rules) (\s@AwsS3BucketBucketLifecycleConfigurationDetails' {} a -> s {rules = a} :: AwsS3BucketBucketLifecycleConfigurationDetails) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromJSON
    AwsS3BucketBucketLifecycleConfigurationDetails
  where
  parseJSON =
    Core.withObject
      "AwsS3BucketBucketLifecycleConfigurationDetails"
      ( \x ->
          AwsS3BucketBucketLifecycleConfigurationDetails'
            Prelude.<$> (x Core..:? "Rules" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    AwsS3BucketBucketLifecycleConfigurationDetails

instance
  Prelude.NFData
    AwsS3BucketBucketLifecycleConfigurationDetails

instance
  Core.ToJSON
    AwsS3BucketBucketLifecycleConfigurationDetails
  where
  toJSON
    AwsS3BucketBucketLifecycleConfigurationDetails' {..} =
      Core.object
        ( Prelude.catMaybes
            [("Rules" Core..=) Prelude.<$> rules]
        )
