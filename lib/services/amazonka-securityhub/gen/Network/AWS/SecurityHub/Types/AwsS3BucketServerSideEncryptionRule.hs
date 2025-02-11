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
-- Module      : Network.AWS.SecurityHub.Types.AwsS3BucketServerSideEncryptionRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsS3BucketServerSideEncryptionRule where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.AwsS3BucketServerSideEncryptionByDefault

-- | An encryption rule to apply to the S3 bucket.
--
-- /See:/ 'newAwsS3BucketServerSideEncryptionRule' smart constructor.
data AwsS3BucketServerSideEncryptionRule = AwsS3BucketServerSideEncryptionRule'
  { -- | Specifies the default server-side encryption to apply to new objects in
    -- the bucket. If a @PUT@ object request doesn\'t specify any server-side
    -- encryption, this default encryption is applied.
    applyServerSideEncryptionByDefault :: Prelude.Maybe AwsS3BucketServerSideEncryptionByDefault
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsS3BucketServerSideEncryptionRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applyServerSideEncryptionByDefault', 'awsS3BucketServerSideEncryptionRule_applyServerSideEncryptionByDefault' - Specifies the default server-side encryption to apply to new objects in
-- the bucket. If a @PUT@ object request doesn\'t specify any server-side
-- encryption, this default encryption is applied.
newAwsS3BucketServerSideEncryptionRule ::
  AwsS3BucketServerSideEncryptionRule
newAwsS3BucketServerSideEncryptionRule =
  AwsS3BucketServerSideEncryptionRule'
    { applyServerSideEncryptionByDefault =
        Prelude.Nothing
    }

-- | Specifies the default server-side encryption to apply to new objects in
-- the bucket. If a @PUT@ object request doesn\'t specify any server-side
-- encryption, this default encryption is applied.
awsS3BucketServerSideEncryptionRule_applyServerSideEncryptionByDefault :: Lens.Lens' AwsS3BucketServerSideEncryptionRule (Prelude.Maybe AwsS3BucketServerSideEncryptionByDefault)
awsS3BucketServerSideEncryptionRule_applyServerSideEncryptionByDefault = Lens.lens (\AwsS3BucketServerSideEncryptionRule' {applyServerSideEncryptionByDefault} -> applyServerSideEncryptionByDefault) (\s@AwsS3BucketServerSideEncryptionRule' {} a -> s {applyServerSideEncryptionByDefault = a} :: AwsS3BucketServerSideEncryptionRule)

instance
  Core.FromJSON
    AwsS3BucketServerSideEncryptionRule
  where
  parseJSON =
    Core.withObject
      "AwsS3BucketServerSideEncryptionRule"
      ( \x ->
          AwsS3BucketServerSideEncryptionRule'
            Prelude.<$> (x Core..:? "ApplyServerSideEncryptionByDefault")
      )

instance
  Prelude.Hashable
    AwsS3BucketServerSideEncryptionRule

instance
  Prelude.NFData
    AwsS3BucketServerSideEncryptionRule

instance
  Core.ToJSON
    AwsS3BucketServerSideEncryptionRule
  where
  toJSON AwsS3BucketServerSideEncryptionRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ApplyServerSideEncryptionByDefault" Core..=)
              Prelude.<$> applyServerSideEncryptionByDefault
          ]
      )
