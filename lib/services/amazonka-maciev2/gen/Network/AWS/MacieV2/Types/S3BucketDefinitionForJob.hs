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
-- Module      : Network.AWS.MacieV2.Types.S3BucketDefinitionForJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.S3BucketDefinitionForJob where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies an Amazon Web Services account that owns S3 buckets for a
-- classification job to analyze, and one or more specific buckets to
-- analyze for that account.
--
-- /See:/ 'newS3BucketDefinitionForJob' smart constructor.
data S3BucketDefinitionForJob = S3BucketDefinitionForJob'
  { -- | The unique identifier for the Amazon Web Services account that owns the
    -- buckets.
    accountId :: Prelude.Text,
    -- | An array that lists the names of the buckets.
    buckets :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3BucketDefinitionForJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 's3BucketDefinitionForJob_accountId' - The unique identifier for the Amazon Web Services account that owns the
-- buckets.
--
-- 'buckets', 's3BucketDefinitionForJob_buckets' - An array that lists the names of the buckets.
newS3BucketDefinitionForJob ::
  -- | 'accountId'
  Prelude.Text ->
  S3BucketDefinitionForJob
newS3BucketDefinitionForJob pAccountId_ =
  S3BucketDefinitionForJob'
    { accountId = pAccountId_,
      buckets = Prelude.mempty
    }

-- | The unique identifier for the Amazon Web Services account that owns the
-- buckets.
s3BucketDefinitionForJob_accountId :: Lens.Lens' S3BucketDefinitionForJob Prelude.Text
s3BucketDefinitionForJob_accountId = Lens.lens (\S3BucketDefinitionForJob' {accountId} -> accountId) (\s@S3BucketDefinitionForJob' {} a -> s {accountId = a} :: S3BucketDefinitionForJob)

-- | An array that lists the names of the buckets.
s3BucketDefinitionForJob_buckets :: Lens.Lens' S3BucketDefinitionForJob [Prelude.Text]
s3BucketDefinitionForJob_buckets = Lens.lens (\S3BucketDefinitionForJob' {buckets} -> buckets) (\s@S3BucketDefinitionForJob' {} a -> s {buckets = a} :: S3BucketDefinitionForJob) Prelude.. Lens.coerced

instance Core.FromJSON S3BucketDefinitionForJob where
  parseJSON =
    Core.withObject
      "S3BucketDefinitionForJob"
      ( \x ->
          S3BucketDefinitionForJob'
            Prelude.<$> (x Core..: "accountId")
            Prelude.<*> (x Core..:? "buckets" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable S3BucketDefinitionForJob

instance Prelude.NFData S3BucketDefinitionForJob

instance Core.ToJSON S3BucketDefinitionForJob where
  toJSON S3BucketDefinitionForJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("accountId" Core..= accountId),
            Prelude.Just ("buckets" Core..= buckets)
          ]
      )
