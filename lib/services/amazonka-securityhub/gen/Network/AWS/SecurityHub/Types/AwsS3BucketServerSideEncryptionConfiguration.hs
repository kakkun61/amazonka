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
-- Module      : Network.AWS.SecurityHub.Types.AwsS3BucketServerSideEncryptionConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsS3BucketServerSideEncryptionConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.AwsS3BucketServerSideEncryptionRule

-- | The encryption configuration for the S3 bucket.
--
-- /See:/ 'newAwsS3BucketServerSideEncryptionConfiguration' smart constructor.
data AwsS3BucketServerSideEncryptionConfiguration = AwsS3BucketServerSideEncryptionConfiguration'
  { -- | The encryption rules that are applied to the S3 bucket.
    rules :: Prelude.Maybe [AwsS3BucketServerSideEncryptionRule]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsS3BucketServerSideEncryptionConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rules', 'awsS3BucketServerSideEncryptionConfiguration_rules' - The encryption rules that are applied to the S3 bucket.
newAwsS3BucketServerSideEncryptionConfiguration ::
  AwsS3BucketServerSideEncryptionConfiguration
newAwsS3BucketServerSideEncryptionConfiguration =
  AwsS3BucketServerSideEncryptionConfiguration'
    { rules =
        Prelude.Nothing
    }

-- | The encryption rules that are applied to the S3 bucket.
awsS3BucketServerSideEncryptionConfiguration_rules :: Lens.Lens' AwsS3BucketServerSideEncryptionConfiguration (Prelude.Maybe [AwsS3BucketServerSideEncryptionRule])
awsS3BucketServerSideEncryptionConfiguration_rules = Lens.lens (\AwsS3BucketServerSideEncryptionConfiguration' {rules} -> rules) (\s@AwsS3BucketServerSideEncryptionConfiguration' {} a -> s {rules = a} :: AwsS3BucketServerSideEncryptionConfiguration) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromJSON
    AwsS3BucketServerSideEncryptionConfiguration
  where
  parseJSON =
    Core.withObject
      "AwsS3BucketServerSideEncryptionConfiguration"
      ( \x ->
          AwsS3BucketServerSideEncryptionConfiguration'
            Prelude.<$> (x Core..:? "Rules" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    AwsS3BucketServerSideEncryptionConfiguration

instance
  Prelude.NFData
    AwsS3BucketServerSideEncryptionConfiguration

instance
  Core.ToJSON
    AwsS3BucketServerSideEncryptionConfiguration
  where
  toJSON
    AwsS3BucketServerSideEncryptionConfiguration' {..} =
      Core.object
        ( Prelude.catMaybes
            [("Rules" Core..=) Prelude.<$> rules]
        )
