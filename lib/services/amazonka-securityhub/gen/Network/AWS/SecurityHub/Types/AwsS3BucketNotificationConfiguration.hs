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
-- Module      : Network.AWS.SecurityHub.Types.AwsS3BucketNotificationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsS3BucketNotificationConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.AwsS3BucketNotificationConfigurationDetail

-- | The notification configuration for the S3 bucket.
--
-- /See:/ 'newAwsS3BucketNotificationConfiguration' smart constructor.
data AwsS3BucketNotificationConfiguration = AwsS3BucketNotificationConfiguration'
  { -- | Configurations for S3 bucket notifications.
    configurations :: Prelude.Maybe [AwsS3BucketNotificationConfigurationDetail]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsS3BucketNotificationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configurations', 'awsS3BucketNotificationConfiguration_configurations' - Configurations for S3 bucket notifications.
newAwsS3BucketNotificationConfiguration ::
  AwsS3BucketNotificationConfiguration
newAwsS3BucketNotificationConfiguration =
  AwsS3BucketNotificationConfiguration'
    { configurations =
        Prelude.Nothing
    }

-- | Configurations for S3 bucket notifications.
awsS3BucketNotificationConfiguration_configurations :: Lens.Lens' AwsS3BucketNotificationConfiguration (Prelude.Maybe [AwsS3BucketNotificationConfigurationDetail])
awsS3BucketNotificationConfiguration_configurations = Lens.lens (\AwsS3BucketNotificationConfiguration' {configurations} -> configurations) (\s@AwsS3BucketNotificationConfiguration' {} a -> s {configurations = a} :: AwsS3BucketNotificationConfiguration) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromJSON
    AwsS3BucketNotificationConfiguration
  where
  parseJSON =
    Core.withObject
      "AwsS3BucketNotificationConfiguration"
      ( \x ->
          AwsS3BucketNotificationConfiguration'
            Prelude.<$> ( x Core..:? "Configurations"
                            Core..!= Prelude.mempty
                        )
      )

instance
  Prelude.Hashable
    AwsS3BucketNotificationConfiguration

instance
  Prelude.NFData
    AwsS3BucketNotificationConfiguration

instance
  Core.ToJSON
    AwsS3BucketNotificationConfiguration
  where
  toJSON AwsS3BucketNotificationConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Configurations" Core..=)
              Prelude.<$> configurations
          ]
      )
